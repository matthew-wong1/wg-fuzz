struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<i32>, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    global0 = Struct_4(global0.a, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d, 1u, 55148u) | ~vec3<u32>(0u, 0u, global0.b)), reverseBits(vec3<u32>(4294967295u, global0.b, 1u) << (global0.d.d % vec3<u32>(32u)))), global0.c, global0.d);
    let var_0 = vec3<bool>(arg_0.x, true, arg_0.x);
    let var_1 = ~_wgslsmith_add_i32(1725i << (1u % 32u), -2147483647i);
    global1 = array<vec3<i32>, 7>();
    var var_2 = Struct_2(global0.a.a);
    return Struct_4(Struct_2(var_2.a), _wgslsmith_add_u32(global0.d.d.x, 1u ^ ~_wgslsmith_mod_u32(global0.b, global0.d.d.x)), global0.d.a, global0.d);
}

fn func_3() -> f32 {
    let var_0 = ~((global0.d.d.x | u_input.d) | u_input.d);
    var var_1 = global0.a.a.a;
    var_1 = _wgslsmith_f_op_f32(-283f - 638f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(893f, -940f, global0.a.a.a, 1088f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-652f, 1195f, global0.d.c.x, 626f) - vec4<f32>(global0.a.a.a, global0.a.a.a, global0.a.a.a, global0.c.x)), vec4<bool>(true, false, true, false))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2515f, -204f, global0.d.b.x, -348f), vec4<f32>(1313f, global0.d.a.x, -1073f, global0.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1512f, 682f, 993f, -1000f))))), vec4<f32>(1171f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(421f * global0.c.x), _wgslsmith_f_op_f32(-415f * global0.a.a.a)), global0.c.x, -376f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global0.c.x)), _wgslsmith_f_op_f32(round(-1073f)), -833f, _wgslsmith_f_op_f32(global0.d.c.x + -1214f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, global0.d.b.x, global0.c.x, -119f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.d.b.x, -1271f, global0.d.b.x, -2620f))), false))))));
    global1 = array<vec3<i32>, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x - -251f), _wgslsmith_f_op_f32(select(var_2.x, -122f, true))), _wgslsmith_f_op_f32(ceil(-629f)), true)) - _wgslsmith_f_op_f32(-global0.d.a.x)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_5 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.d.c)));
    global0 = func_2(!(!vec2<bool>(!arg_2, all(vec3<bool>(arg_2, arg_2, false)))));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.a)), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(-func_2(vec2<bool>(true, true)).d.c), _wgslsmith_f_op_vec3_f32(ceil(global0.d.c)), global0.d.d);
    var var_3 = 4294967295u;
    return Struct_5(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.d.xx, _wgslsmith_div_vec2_u32(vec2<u32>(49667u, 1u), ~vec2<u32>(1u, 0u))), vec2<u32>(arg_0.d.x, ~countOneBits(arg_0.d.x))), vec3<u32>(~4294967295u, u_input.d, _wgslsmith_dot_vec4_u32(reverseBits(min(vec4<u32>(23332u, 1u, 1u, 4294967295u), vec4<u32>(arg_0.d.x, 27670u, 1u, 0u))), abs(~vec4<u32>(var_2.d.x, 1u, var_2.d.x, arg_3)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = global0.a;
    var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1186f + -237f))), _wgslsmith_f_op_f32(sign(arg_1.a.a.a)))));
    let var_1 = select(vec2<bool>(true, true), !(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), !(!vec2<bool>(true, all(vec2<bool>(true, false)))));
    var var_2 = Struct_2(arg_1.a.a);
    var var_3 = Struct_5(arg_1.d.d.xy, arg_1.d.d);
    return func_2(select(select(var_1, var_1, vec2<bool>(true, false & var_1.x)), vec2<bool>(var_1.x, var_1.x), !any(!vec3<bool>(false, var_1.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 79867i;
    var_0 = ~(~u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-594f, 994f), vec2<f32>(-908f, global0.c.x), select(vec2<bool>(true, true), vec2<bool>(true, true), true))))));
    global0 = Struct_4(global0.a, ~(~1u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-135f, global0.c.x) + var_1))), vec2<f32>(_wgslsmith_div_f32(global0.d.c.x, _wgslsmith_f_op_f32(max(152f, var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -634f))), global0.d);
    var var_2 = global0.a;
    global0 = func_4(func_1(global0.d, Struct_2(global0.a.a), select(false, -285f > _wgslsmith_f_op_f32(select(-1307f, 176f, true)), select(true, u_input.d > 0u, all(vec2<bool>(false, true)))), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 69842u, 4294967295u, 24594u), vec4<u32>(u_input.c, global0.d.d.x, 0u, global0.b))) ^ countOneBits(~3486u)), Struct_4(global0.a, 4697u, var_1, Struct_3(global0.d.b.zz, global0.d.b, vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.a.a.a)), _wgslsmith_f_op_f32(max(156f, -2333f)), _wgslsmith_f_op_f32(-global0.d.c.x)), vec3<u32>(0u, u_input.d, min(0u, u_input.c)))), -abs(~(vec4<i32>(33847i, -2147483647i, -1i, u_input.b) | vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.a))));
    global0 = func_2(!select(vec2<bool>(true, true), vec2<bool>(select(false, true, false), true), !select(false, true, false)));
    var var_3 = func_2(vec2<bool>(true, !any(vec3<bool>(true, true, true))));
    var var_4 = func_4(Struct_5(~global0.d.d.yz, countOneBits(select(var_3.d.d, global0.d.d >> (vec3<u32>(var_3.d.d.x, global0.b, 30923u) % vec3<u32>(32u)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))))), Struct_4(func_2(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec3<bool>(false, true, false)))).a, 0u, var_1, var_3.d), select(min(-(vec4<i32>(u_input.a, u_input.b, 1i, u_input.a) >> (vec4<u32>(global0.b, 26629u, 4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, u_input.a), countOneBits(vec4<i32>(u_input.a, u_input.a, -3786i, u_input.b)))), reverseBits(abs(-vec4<i32>(-2147483647i, 3314i, 10974i, 25137i))), select(any(vec2<bool>(false, false)), false, true) | !(-2147483647i <= u_input.a))).d;
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_add_i32(-1i, -25329i) << (_wgslsmith_mult_u32(u_input.d, countOneBits(0u)) % 32u), reverseBits(-2166i << (var_3.d.d.x % 32u)) << (4294967295u % 32u)));
}

