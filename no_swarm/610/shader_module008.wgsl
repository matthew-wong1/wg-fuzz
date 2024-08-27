struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    var var_0 = u_input.d;
    var_0 = vec4<i32>(-1i, reverseBits(-var_0.x), var_0.x, -2147483647i);
    var var_1 = Struct_3(arg_1.a, Struct_1(vec3<bool>(true, true, true), vec4<u32>(abs(u_input.b.x), 4294967295u, arg_2.d.x, ~u_input.c.x), arg_1.a.a.x | _wgslsmith_add_u32(firstLeadingBit(arg_1.b.b.x), ~u_input.b.x), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, arg_1.a.a.x, u_input.c.x, 10175u), u_input.b))));
    let var_2 = arg_1.a.c.b;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-511f, -140f)))))))));
    return arg_1.a.b.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = select(vec4<bool>(69833u >= firstTrailingBit(u_input.c.x), true, !(arg_0.x != 6720u) != (true || all(vec3<bool>(true, true, true))), false), select(vec4<bool>(true, false, all(vec4<bool>(false, false, false, true)), any(vec3<bool>(false, false, false)) & any(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(all(vec2<bool>(false, true)), arg_0.x != arg_0.x, func_3(true, Struct_3(Struct_2(arg_0.ww, vec2<bool>(false, true), Struct_1(vec3<bool>(false, true, false), arg_0, 0u, vec4<u32>(u_input.c.x, 84487u, 77790u, u_input.b.x))), Struct_1(vec3<bool>(true, true, true), vec4<u32>(u_input.b.x, u_input.c.x, 29647u, 5394u), u_input.b.x, vec4<u32>(69199u, arg_0.x, 1u, arg_0.x))), Struct_1(vec3<bool>(false, true, true), arg_0, 90383u, vec4<u32>(0u, 15736u, u_input.b.x, arg_0.x))), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), 14769u == u_input.b.x));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -9204i), ~vec2<i32>(1i, u_input.a)), ~(-arg_1.x)), min(firstLeadingBit(29364i), u_input.d.x));
    var_0 = vec4<bool>(all(var_0.yx), !(!any(select(vec3<bool>(var_0.x, var_0.x, true), var_0.wxz, var_0.x))), true | (var_0.x & true), all(select(!vec4<bool>(true, true, false, var_0.x), !select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)), var_0.x)));
    var_0 = select(vec4<bool>(false, !all(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), 30341u > _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(0u, arg_0.x)), true), !select(!(!vec4<bool>(false, var_0.x, true, true)), vec4<bool>(!var_0.x, var_0.x, !var_0.x, var_0.x), all(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))), all(vec4<bool>(true, var_0.x, var_0.x, false)));
    let var_2 = Struct_1(select(var_0.xzx, !vec3<bool>(!var_0.x, 0u == u_input.c.x, true), true), vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(arg_0.x, ~12763u)), ~abs(arg_0.x), arg_0.x, abs(reverseBits(~0u))), _wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_dot_vec3_u32(arg_0.zxy, abs(u_input.c))), vec4<u32>(41821u, arg_0.x, 44656u, countOneBits(10658u)) >> (select(vec4<u32>(1u & arg_0.x, abs(96548u), arg_0.x & 62713u, ~arg_0.x), u_input.b, vec4<bool>(u_input.b.x == 4294967295u, var_0.x, true, true)) % vec4<u32>(32u)));
    return Struct_3(Struct_2(max(abs(~arg_0.zz), vec2<u32>(arg_0.x, 4294967295u) ^ select(arg_0.zw, vec2<u32>(4294967295u, var_2.d.x), vec2<bool>(true, true))), !vec2<bool>(var_2.a.x, all(vec2<bool>(true, var_0.x))), var_2), var_2);
}

fn func_1() -> Struct_3 {
    return func_2(u_input.b, u_input.d.yw | -max(u_input.d.zy, -vec2<i32>(u_input.d.x, 2147483647i)));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(arg_0.a.c.d.zx, arg_0.a.a)), vec2<u32>(72956u, firstTrailingBit(1u))), func_1().a.c.a.yx, arg_0.a.c), arg_0.a.c);
    var var_1 = var_0.a.c;
    var_1 = func_2(_wgslsmith_sub_vec4_u32(~(~(~arg_0.b.b)), vec4<u32>(_wgslsmith_sub_u32(~u_input.b.x, u_input.c.x | 0u), _wgslsmith_clamp_u32(reverseBits(u_input.c.x), firstTrailingBit(u_input.b.x), var_0.b.c >> (arg_0.b.c % 32u)), var_1.c, 18608u)), u_input.d.wy).b;
    var_1 = var_0.b;
    let var_2 = 31238u;
    return Struct_2(_wgslsmith_sub_vec2_u32(select(var_1.b.zy & (vec2<u32>(var_0.b.b.x, arg_0.b.c) & u_input.c.zz), vec2<u32>(_wgslsmith_clamp_u32(15334u, 50775u, 1u), 1u), select(false, false, true) | !var_0.b.a.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(8966u, var_0.b.c), ~var_1.b.yx)), select(arg_0.b.a.xy, select(vec2<bool>(!var_0.b.a.x, var_0.b.a.x), func_1().a.c.a.zx, true), select(!(!vec2<bool>(arg_0.b.a.x, var_0.a.c.a.x)), func_2(var_0.a.c.d, vec2<i32>(arg_1, -1i)).a.b, !var_0.b.a.yy)), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(func_1(), -abs(u_input.d.x)), func_1().b);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(793f - 1f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f + -162f) - _wgslsmith_f_op_f32(trunc(-214f))), 1783f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-518f, _wgslsmith_f_op_f32(-1648f * -797f)))), var_0.a.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -608f) - _wgslsmith_f_op_f32(1404f + -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(408f, 639f)))), -269f, !var_0.a.b.x)));
    let var_2 = var_0.b;
    let var_3 = u_input.d.xy;
    var var_4 = Struct_3(var_0.a, func_4(func_2(~var_2.b, vec2<i32>(0i, abs(37544i))), u_input.a).c);
    let var_5 = var_3.x;
    var_4 = func_2(var_0.b.b, _wgslsmith_clamp_vec2_i32(u_input.d.zx, var_3, vec2<i32>(u_input.a, _wgslsmith_div_i32(-61575i, u_input.d.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(40990i, u_input.a, 10292i, 0i), vec4<i32>(1i, 0i, 2147483647i, -4665i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1151f - 1f), ~(~(~4294967295u)), var_3.x);
}

