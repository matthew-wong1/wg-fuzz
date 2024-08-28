struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<i32, 27> = array<i32, 27>(-1i, 1i, 0i, -1i, -53104i, 1i, -1i, -12600i, 15783i, -1i, 0i, i32(-2147483648), 25256i, 0i, -1i, -1i, i32(-2147483648), 19188i, -30319i, 2147483647i, 10396i, 1i, -27138i, -34748i, 1i, -1i, -45936i);

var<private> global3: array<f32, 1> = array<f32, 1>(1000f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_4, arg_3: vec3<i32>) -> i32 {
    global3 = array<f32, 1>();
    let var_0 = abs(min(4294967295u, _wgslsmith_div_u32(global1.a, u_input.a.x)));
    return -2147483647i;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_4) -> u32 {
    return countOneBits(1u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(~(~(global1.a >> (u_input.b % 32u)) | 1u), u_input.a.x);
    let var_1 = global1.e.zz;
    global2 = array<i32, 27>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1728f)) * global3[_wgslsmith_index_u32(23432u, 1u)]);
    var var_3 = Struct_1(4431u, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~firstLeadingBit(func_3(Struct_2(global1.d.x, Struct_1(4294967295u, global3[_wgslsmith_index_u32(arg_0, 1u)], vec4<i32>(-53959i, -87326i, global1.c.x, 5189i), global1.d, vec3<f32>(var_1.x, 309f, 176f))), u_input.c.yw, Struct_4(vec3<f32>(var_1.x, -554f, global1.e.x), global1.c.x, Struct_2(global3[_wgslsmith_index_u32(global1.a, 1u)], Struct_1(67123u, global1.e.x, vec4<i32>(44920i, global1.c.x, 1i, global1.c.x), global1.d, vec3<f32>(905f, 864f, -1270f))), false))), 1u)] - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~u_input.a.x, 1u)]), any(vec4<bool>(true, false, false, false))))), _wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, global2[_wgslsmith_index_u32(global1.a, 27u)], 29101i, -2147483647i) >> (min(select(vec4<u32>(arg_0, 4294967295u, global1.a, 13396u), vec4<u32>(1u, arg_0, u_input.b, arg_0), true), vec4<u32>(global1.a, 6790u, 42467u, arg_0)) % vec4<u32>(32u)), ~abs(-global1.c)), global1.d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.e)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 1u)], global3[_wgslsmith_index_u32(arg_0, 1u)], var_1.x), vec3<f32>(global1.d.x, var_1.x, 422f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d.xxw))))));
    return Struct_1(u_input.a.x, _wgslsmith_f_op_f32(ceil(var_1.x)), u_input.c, _wgslsmith_f_op_vec4_f32(global1.d - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_3.d)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), -923f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(588f, -826f), _wgslsmith_f_op_f32(-global1.d.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(-1199f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -836f), _wgslsmith_f_op_f32(-global1.d.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = global1.e;
    var var_1 = func_2(1u);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(step(arg_0.b, 894f)), _wgslsmith_f_op_f32(-var_1.d.x)), var_1.d.wxy)), _wgslsmith_mod_i32(var_1.c.x, u_input.c.x), Struct_2(_wgslsmith_f_op_f32(-1609f * -546f), func_2(~select(u_input.a.x, arg_0.a, arg_1))), !arg_1);
    let var_3 = vec3<i32>(5107i, ~(-2147483647i), -var_2.b);
    let var_4 = _wgslsmith_mod_u32(86612u, 33442u);
    return Struct_2(522f, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(false, true || all(vec3<bool>(true, false, true))));
    let var_1 = Struct_4(global1.d.xyy, ~u_input.c.x, Struct_2(global1.d.x, Struct_1(1u, -408f, ~vec4<i32>(global1.c.x, -2147483647i, u_input.c.x, -2147483647i), _wgslsmith_f_op_vec4_f32(global1.d + global1.d), global1.e)), !(true || (_wgslsmith_f_op_f32(max(global1.b, 932f)) > _wgslsmith_f_op_f32(-global1.b))));
    let var_2 = max(0i, ~func_1(!vec3<bool>(var_1.d, true, var_1.d), _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.zx), var_1, abs(var_1.c.b.c.wyy))) << (22u % 32u);
    let var_3 = func_4(func_2(~(var_1.c.b.a & ~global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-874f, -1544f)) + _wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_f32(2799f - _wgslsmith_f_op_f32(1144f * -1549f))) >= _wgslsmith_f_op_f32(f32(-1f) * -131f));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1052f, var_1.c.a, _wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-428f, var_1.c.b.b, -1000f, _wgslsmith_f_op_f32(abs(831f))) + var_1.c.b.d)));
    var var_5 = var_1;
    let var_6 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(394f)))), func_4(Struct_1(~(~4294967295u), -913f, var_3.b.c, var_4, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5.c.b.e))), var_1.d | true), var_3.b.c, (vec2<i32>(i32(-1i) * -46806i, func_4(var_1.c.b, var_5.d).b.c.x) << (u_input.a.xx % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_i32(u_input.c.yz, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(12071i, global1.c.x), global1.c.zx), var_5.c.b.c.x), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 27u)], 2147483647i, 28093i, u_input.c.x), var_5.c.b.c), abs(u_input.c.x))), func_4(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1492f), -212f, !var_1.d)), var_1.c.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_3.b.e.x, -1438f, 244f) - global1.d) - var_5.c.b.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, var_3.a, 1267f)), vec3<f32>(1009f, global1.b, -606f), !vec3<bool>(var_5.d, var_5.d, true)))), true));
    var var_7 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1.d.x, var_1.c.b.b)), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(var_1.c.a + _wgslsmith_f_op_f32(-var_6.a))))), func_2(34480u));
    let var_8 = vec3<i32>(var_7.b.c.x, -global1.c.x, ~_wgslsmith_div_i32(func_2(var_1.c.b.a).c.x, var_3.b.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global1.a, ~var_1.c.b.a, var_6.e.b.a));
}

