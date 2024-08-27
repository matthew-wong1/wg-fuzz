struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec4<i32> {
    var var_0 = true;
    var var_1 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(748f))))) - 1f), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, arg_0, ~856u), select(~min(vec3<u32>(arg_0, 1u, 1u), vec3<u32>(1u, arg_0, 0u)), vec3<u32>(arg_0, _wgslsmith_sub_u32(u_input.b.x, 0u), 0u), any(vec2<bool>(false, true)))));
    return -min(-_wgslsmith_div_vec4_i32(vec4<i32>(-77950i, var_1.a, 2147483647i, arg_1), vec4<i32>(arg_1, -2147483647i, arg_1, -8582i)), -vec4<i32>(var_1.a ^ var_1.a, -45213i & arg_1, var_1.a, 9603i | arg_1));
}

fn func_3(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, 39262i, 42851i), firstTrailingBit(arg_0.x)), -604f, ~reverseBits(vec3<u32>(u_input.c.x, u_input.b.x, u_input.a))), vec4<u32>(_wgslsmith_sub_u32(u_input.a, 30882u) ^ 5998u, 0u, 1u, ~select(u_input.a, u_input.c.x, false)), vec3<i32>((i32(-1i) * -7444i) >> ((0u ^ u_input.a) % 32u), -abs(arg_0.x), select(arg_0.x, -arg_0.x, arg_0.x >= arg_0.x)), -323f, false), vec3<u32>(abs(abs(~u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.c)), countOneBits(~(~u_input.a))));
    let var_1 = var_0.a.a.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d, var_0.a.a.b) - vec2<f32>(var_0.a.d, -252f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.d, 498f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-459f, -520f), vec2<f32>(var_0.a.a.b, 646f))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.a.b)), var_0.a.a.b) * vec2<f32>(-1131f, -610f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.d, var_0.a.d)))));
    let var_3 = !select(any(!(!vec4<bool>(var_0.a.e, false, false, var_0.a.e))), false, select(false, true | !var_0.a.e, !any(vec2<bool>(var_0.a.e, true))));
    var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))));
    return Struct_4(var_2.x == var_2.x);
}

fn func_1() -> Struct_1 {
    let var_0 = func_3(func_2(63987u, ~0i));
    var var_1 = Struct_3(Struct_2(Struct_1(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-503f, 329f)) + -1943f), ~(~vec3<u32>(0u, u_input.c.x, 0u))), ~abs(vec4<u32>(69146u, u_input.b.x, u_input.c.x, u_input.c.x)) << (vec4<u32>(u_input.b.x, min(u_input.b.x, u_input.c.x), 13859u, ~1u) % vec4<u32>(32u)), select(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-67738i, 0i, -1i), vec3<i32>(-34843i, 73304i, -1i), vec3<bool>(true, false, true)) >> (~vec3<u32>(57733u, 9632u, u_input.a) % vec3<u32>(32u)), all(vec2<bool>(false, false)) && true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1746f))), true), u_input.b.xwx);
    var_1 = Struct_3(var_1.a, ~_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(55995u), _wgslsmith_mod_u32(u_input.c.x, 4294967295u), firstLeadingBit(0u)), vec3<u32>(1u, ~26529u, 55223u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.b - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_1.a.d))) + 662f);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.b - _wgslsmith_f_op_f32(-var_1.a.a.b)) * -365f)));
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_1(), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.a, u_input.c.x), u_input.b), u_input.c << (u_input.b % vec4<u32>(32u)), select(vec4<u32>(1u, u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.c.x), vec4<bool>(false, false, false, true))), -vec3<i32>(max(2147483647i, 2147483647i), 1i, 3091i), _wgslsmith_f_op_f32(-740f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(2117f))))), select(false, false, select(all(vec4<bool>(false, false, false, false)), false, true))), abs(firstLeadingBit(vec3<u32>(~u_input.b.x, ~u_input.b.x, u_input.c.x & 4294967295u))));
    var var_1 = var_0.a;
    let var_2 = var_0.a;
    var var_3 = vec3<u32>(firstTrailingBit(~(var_0.b.x & 0u)), ~_wgslsmith_div_u32(countOneBits(39032u), _wgslsmith_div_u32(~67357u, _wgslsmith_dot_vec3_u32(var_2.b.zwy, vec3<u32>(u_input.b.x, var_1.a.c.x, var_2.a.c.x)))), var_2.a.c.x);
    var_3 = var_1.a.c;
    var var_4 = select(!select(select(select(vec3<bool>(var_2.e, true, true), vec3<bool>(false, true, false), var_0.a.e), vec3<bool>(false, var_2.e, var_1.e), var_1.e), vec3<bool>(all(vec4<bool>(var_0.a.e, var_0.a.e, var_1.e, false)), !var_2.e, all(vec4<bool>(true, false, var_1.e, true))), var_0.a.e), vec3<bool>(false, var_2.e, var_1.e || true), select(!vec3<bool>(all(vec3<bool>(false, var_2.e, false)), true, func_3(vec4<i32>(-11568i, 3432i, -2147483647i, var_1.a.a)).a), !select(vec3<bool>(false, var_1.e, var_0.a.e), !vec3<bool>(var_0.a.e, var_1.e, var_1.e), var_2.e), var_1.e));
    var_1 = var_0.a;
    var var_5 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_f_op_f32(-var_1.a.b))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(264f, _wgslsmith_f_op_f32(min(-494f, var_1.a.b))))))));
    var var_6 = var_0.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1272f + var_2.d) * var_5.x))))), ~abs(vec3<u32>(var_3.x, ~1u, _wgslsmith_clamp_u32(u_input.b.x, var_2.b.x, var_1.a.c.x))));
}

