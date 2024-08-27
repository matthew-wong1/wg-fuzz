struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-711f, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global0.a);
    let var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(global0.b, global0.b), global0.b)));
    let var_2 = abs(0u);
    let var_3 = ~(~(-u_input.a & (-2147483647i | u_input.a)) | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -u_input.a, 50856i), -vec3<i32>(u_input.a, u_input.d, -10449i) ^ (vec3<i32>(u_input.d, u_input.d, u_input.d) >> (vec3<u32>(var_2, u_input.c.x, u_input.b.x) % vec3<u32>(32u)))));
    var var_4 = !(!vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, 1i, 15149i), vec3<i32>(2147483647i, 2147483647i, 0i)) < u_input.a, true, false, true));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1002f)))));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(244f))), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(exp2(global0.a))))), _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + global0.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(382f, 784f, 1304f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, global0.a, -1045f))), vec3<f32>(1239f, _wgslsmith_f_op_f32(ceil(-1223f)), _wgslsmith_f_op_f32(ceil(367f))))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1114f * 156f)))))), 296f));
    let var_2 = ~u_input.c.yx;
    let var_3 = Struct_1(~firstTrailingBit(reverseBits(vec3<u32>(0u, u_input.c.x, var_2.x))), select(vec4<bool>(true, !(arg_1.b & false), all(vec3<bool>(true, true, true)), true), vec4<bool>(false, arg_1.b, _wgslsmith_f_op_f32(trunc(-814f)) > -1433f, select(any(vec4<bool>(true, global0.b, global0.b, true)), true, arg_1.b)), vec4<bool>(true, true, any(select(vec3<bool>(arg_1.b, global0.b, false), vec3<bool>(true, true, false), true)), global0.b)), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(62586u, u_input.b.x, var_2.x, 1u), firstLeadingBit(vec4<u32>(1u, 94662u, var_2.x, u_input.e)))));
    var var_4 = !var_3.b.wzz;
    return func_2();
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b.x, countOneBits(u_input.b.x), 1u), vec3<u32>(u_input.b.x, u_input.b.x, ~26980u), u_input.c), (max(vec3<u32>(105961u, 0u, 1u), u_input.c) >> (vec3<u32>(0u, u_input.b.x, 0u) % vec3<u32>(32u))) >> (select(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.e, 1u, 0u)), countOneBits(u_input.b), vec3<bool>(true, global0.b, false)) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_mod_u32(u_input.e, u_input.e), 1u, _wgslsmith_mod_u32(u_input.e, 4294967295u))), !vec4<bool>(global0.b | !global0.b, !(arg_0.a.x > global0.a), global0.b, !select(true, false, false)), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(39826u), u_input.b.x, u_input.b.x), select(vec3<u32>(u_input.b.x, u_input.c.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(159u, 48553u, u_input.e), u_input.b), !vec3<bool>(global0.b, false, true))), u_input.e, u_input.e));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_2 = vec4<i32>(~_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.d, u_input.a, u_input.a, 19854i) << (var_0.c % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.a, -30853i, u_input.a), ~vec4<i32>(-21185i, u_input.d, u_input.d, 0i))), -2147483647i, ~(-u_input.d), i32(-1i) * -3613i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.x))))));
    var_0 = Struct_1(~vec3<u32>(~u_input.c.x, 1u, var_0.a.x), vec4<bool>(global0.b, true, any(vec2<bool>(false & global0.b, any(vec2<bool>(false, false)))), all(var_0.b.yzy)), ~abs(vec4<u32>(~var_0.c.x, ~52748u, u_input.e, var_0.c.x)));
    return Struct_3(1189f, (~_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.b.xy) & select(var_0.a.x, var_0.c.x, true)) >= (40168u | (0u << (var_0.a.x % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a));
    var var_1 = select(arg_3.xx, !select(select(!arg_3.zy, vec2<bool>(false, arg_3.x), !vec2<bool>(global0.b, global0.b)), vec2<bool>(u_input.d == u_input.a, false == arg_3.x), !any(vec4<bool>(arg_3.x, true, arg_0.b, false))), (u_input.c.x >> (u_input.c.x % 32u)) != u_input.b.x);
    let var_2 = select(!select(select(vec4<bool>(false, arg_3.x, global0.b, arg_0.b), !vec4<bool>(arg_0.b, true, var_1.x, global0.b), !vec4<bool>(true, false, var_1.x, false)), vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_0.b, true, false, var_1.x))), !(!select(!vec4<bool>(false, true, arg_0.b, var_1.x), !vec4<bool>(true, arg_0.b, var_1.x, false), !var_1.x)), ~abs(_wgslsmith_mod_u32(u_input.c.x, 10828u)) != ~(~abs(u_input.b.x)));
    var_0 = arg_2.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-809f, arg_2.a.x)), 1783f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1651f - global0.a) + arg_0.a), 389f));
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1798f), arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_3(func_1(u_input.d, Struct_3(-1042f, true))), u_input.d, func_2(), select(select(!vec3<bool>(global0.b, global0.b, global0.b), !(!vec3<bool>(true, global0.b, true)), !any(vec3<bool>(global0.b, global0.b, true))), !(!select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(true, global0.b, global0.b), false)), true));
    let var_1 = max(u_input.b, max(~(vec3<u32>(u_input.e, u_input.c.x, 11229u) ^ vec3<u32>(1696u, u_input.c.x, u_input.b.x)), ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, _wgslsmith_f_op_f32(-global0.a))));
}

