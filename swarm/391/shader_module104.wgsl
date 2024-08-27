struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-1754f, -407f, -693f, -165f, 475f, 644f, 540f, -1052f, -391f, -464f, 253f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_0 = firstTrailingBit(abs(vec3<i32>(u_input.b.x, select(15195i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), arg_1.x), 1i)));
    var var_1 = -vec2<i32>(countOneBits(-1i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(21266i, -1i, 2147483647i, -1283i) >> (vec4<u32>(arg_2.a, arg_2.a, 2538u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, u_input.b.x, var_0.x, u_input.b.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -1i, 72838i, u_input.b.x), vec4<i32>(24853i, 1i, -674i, -14858i))));
    let var_2 = arg_0.b;
    return var_2;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = u_input.b.x;
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_0, vec2<bool>(false, true), arg_3.a)), _wgslsmith_f_op_f32(-1812f * arg_2.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, 595f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(538f, -554f) + vec2<f32>(879f, -136f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-480f, -231f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1134f, -428f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.b, 917f) + vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -267f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1297f, global0[_wgslsmith_index_u32(4294967295u, 11u)]))), vec2<bool>(true, true))))), !any(vec3<bool>(true, true, true))));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(39797u, arg_0.a, 37919u), vec3<u32>(arg_3.a.a, arg_0.a, u_input.a)), -772f));
    return ~vec4<u32>(26208u, _wgslsmith_mod_u32(arg_0.a, ~(~u_input.a)), 4294967295u, ~(~(arg_3.a.a << (9808u % 32u))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<f32, 11>();
    let var_0 = Struct_2(arg_3.a);
    global0 = array<f32, 11>();
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(func_2(Struct_1(u_input.a, global0[_wgslsmith_index_u32(0u, 11u)]), -2011f, Struct_1(4294967295u, arg_1.x), var_0), ~select(vec4<u32>(47157u, u_input.a, var_0.a.a, 73611u), vec4<u32>(u_input.a, arg_3.a.a, 4294967295u, var_0.a.a), arg_2.x)) ^ ~select(~6771u, reverseBits(u_input.a), true), arg_1.x);
    let var_2 = vec4<f32>(-1000f, -281f, var_0.a.b, var_0.a.b);
    return Struct_1(29640u, 478f);
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(u_input.a, 148f);
    var var_1 = -countOneBits(~(-vec2<i32>(29675i, u_input.b.x)) ^ -(~vec2<i32>(25273i, 1i)));
    var var_2 = abs(vec4<u32>(4294967295u, 1u, func_1(firstLeadingBit(var_1.x), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b, -219f)), var_0.b), vec2<bool>(true, true), Struct_2(arg_0)).a, u_input.a));
    var_1 = vec2<i32>(-(~var_1.x), firstLeadingBit(~var_1.x));
    let var_3 = Struct_2(arg_0);
    return !(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(u_input.b.x == u_input.b.x, true, true), func_4(func_1(u_input.b.x, vec2<f32>(-483f, global0[_wgslsmith_index_u32(u_input.a, 11u)]), vec2<bool>(true, true), Struct_2(Struct_1(u_input.a, global0[_wgslsmith_index_u32(44836u, 11u)])))), func_4(Struct_1(u_input.a, global0[_wgslsmith_index_u32(201u, 11u)]))));
    var var_1 = 100429u;
    let var_2 = func_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.b.x ^ ~u_input.b.x, ~(~(-1i))), ~_wgslsmith_mod_i32(1i, u_input.b.x) << (_wgslsmith_div_u32(u_input.a | u_input.a, func_2(Struct_1(u_input.a, -119f), global0[_wgslsmith_index_u32(u_input.a, 11u)], Struct_1(u_input.a, global0[_wgslsmith_index_u32(22153u, 11u)]), Struct_2(Struct_1(u_input.a, -205f))).x) % 32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -304f) + _wgslsmith_div_vec2_f32(vec2<f32>(-195f, global0[_wgslsmith_index_u32(35217u, 11u)]), vec2<f32>(728f, global0[_wgslsmith_index_u32(u_input.a, 11u)]))))), var_0.zy, Struct_2(func_1((u_input.b.x | u_input.b.x) >> (35216u % 32u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), !var_0.xx, Struct_2(Struct_1(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 11u)])))));
    var var_3 = Struct_1(51842u, -388f);
    var_3 = Struct_1(abs(7076u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(465f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 11u)] + global0[_wgslsmith_index_u32(41420u, 11u)])), reverseBits(var_2.a) > 0u))));
    var var_4 = var_0.x;
    let var_5 = Struct_2(Struct_1(0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b - var_2.b))), 1352f, all(select(var_0.zz, vec2<bool>(var_0.x, true), var_0.x))))));
    var var_6 = -1000f;
    let var_7 = -9895i & select(u_input.b.x, u_input.b.x, func_4(Struct_1(var_2.a >> (4294967295u % 32u), -964f)).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_5.a.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 35591u), vec2<u32>(17709u, 39510u)), abs(vec2<u32>(u_input.a, 1u)))) ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_2.a), ~vec2<u32>(u_input.a, var_2.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b.x, select(3401i, var_7, var_0.x)), vec3<i32>(var_7, min(var_7, var_7), -firstLeadingBit(u_input.b.x))), ~abs(var_7), min(1u >> (~firstTrailingBit(var_5.a.a) % 32u), ~1u));
}

