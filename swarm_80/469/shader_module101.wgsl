struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -1000f, 2465f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 145f) - vec3<f32>(arg_0, arg_0, -762f))))))), !(true != ((u_input.c >= u_input.c) & any(vec2<bool>(false, true)))));
    let var_1 = true;
    global0 = array<vec2<u32>, 23>();
    let var_2 = var_0.a.zy;
    var var_3 = _wgslsmith_f_op_f32(-var_0.a.x);
    return min(u_input.d.x << (u_input.a % 32u), 38929i);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = select(~(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, u_input.c) ^ vec4<i32>(arg_0.x ^ 0i, i32(-1i) * -2147483647i, ~0i, u_input.d.x)), vec4<i32>(abs(~37874i), 1i, arg_0.x, ~func_3(arg_1.a.x)) << (reverseBits(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.e, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.e, 4294967295u, u_input.b.x, 1u), arg_2.x), vec4<u32>(u_input.e, 114u, 0u, u_input.b.x) | vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b.x))) % vec4<u32>(32u)), select(vec4<bool>(arg_2.x, (-57489i << (u_input.a % 32u)) >= -13936i, all(vec4<bool>(false, arg_1.b, true, false)), all(select(vec4<bool>(true, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, true, arg_1.b, true), vec4<bool>(false, true, true, false)))), select(vec4<bool>(false, true, arg_1.b | arg_1.b, all(vec4<bool>(arg_2.x, false, arg_2.x, true))), vec4<bool>(arg_1.b || arg_1.b, arg_0.x < arg_0.x, all(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)), false), vec4<bool>(u_input.e <= u_input.a, u_input.b.x != u_input.e, all(vec2<bool>(true, false)), true)), vec4<bool>(true, all(vec2<bool>(arg_1.b, arg_1.b)), arg_1.b, all(vec4<bool>(arg_1.b, false, true, false)) || all(vec3<bool>(false, arg_2.x, arg_2.x)))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1074f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-705f, 564f))), arg_1.b)), 1048f), select(true, false & (arg_2.x | true), all(!(!vec4<bool>(arg_1.b, arg_1.b, arg_2.x, arg_2.x)))));
    let var_2 = Struct_1(var_1.a, true);
    var var_3 = arg_1.a.x;
    let var_4 = vec4<i32>(i32(-1i) * -31760i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(var_0, vec4<i32>(14656i, arg_0.x, -2147483647i, 2147483647i)), select(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -2147483647i), var_0, vec4<bool>(arg_2.x, false, arg_2.x, var_2.b))), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_0.x, arg_0.x, var_0.x) & var_0, -vec4<i32>(-17340i, 24455i, 39210i, -50137i)))), ~5793i, u_input.c);
    return var_0.zyw;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    global0 = array<vec2<u32>, 23>();
    let var_0 = ~abs(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, 65021i, 15576i, u_input.d.x), select(vec4<i32>(11307i, u_input.c, 13317i, u_input.c), vec4<i32>(55044i, -41421i, u_input.d.x, u_input.d.x), arg_1.b)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(27647u, 8278u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)));
    var var_1 = vec4<u32>(~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 95815u, 84200u, 36724u), select(vec4<u32>(0u, u_input.a, 47470u, 4294967295u), vec4<u32>(u_input.a, 0u, 0u, u_input.b.x), vec4<bool>(true, arg_1.b, false, true)))), 4294967295u, ~u_input.a, ~(0u >> (u_input.b.x % 32u)));
    var var_2 = ~_wgslsmith_dot_vec3_i32(func_2(-var_0.zyz, Struct_1(arg_1.a, false), vec3<bool>(true, false, arg_1.b)), ~max(vec3<i32>(-1i, var_0.x, u_input.c), vec3<i32>(var_0.x, u_input.d.x, u_input.c))) << (~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 45846u, var_1.x), vec3<u32>(1u, u_input.a, 31166u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(25928u, 0u, u_input.a), var_1.zwx), _wgslsmith_add_vec3_u32(var_1.xyx, vec3<u32>(u_input.e, var_1.x, 0u)))) % 32u);
    let var_3 = reverseBits(var_0.x);
    return _wgslsmith_mod_i32(var_0.x, -countOneBits(var_3)) < -_wgslsmith_dot_vec4_i32(~(~var_0), max(~var_0, abs(vec4<i32>(var_0.x, 0i, 20187i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    let var_0 = select(vec4<bool>(func_1(vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, 1487f)), true)), 8629u <= u_input.a, reverseBits(_wgslsmith_div_i32(u_input.c, -41959i)) == -countOneBits(-1i), any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)))), vec4<bool>(1i <= abs(u_input.d.x ^ -1i), func_1(vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-281f, -1551f, 1245f), vec3<f32>(-256f, 280f, 1881f), vec3<bool>(false, false, true))), false)), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), 2147483647i <= u_input.c)), any(vec4<bool>(false, false, false, false)) != all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), !all(vec4<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true)), true, all(vec3<bool>(true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, 3879i, u_input.b.x, max(-2147483647i, 0i) | (u_input.c >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(28911u, 4294967295u), select(87040u, u_input.e, var_0.x)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2521f)), _wgslsmith_f_op_f32(f32(-1f) * -1179f), true))));
}

