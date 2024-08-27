struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(61105i, -11706i, i32(-2147483648), -16637i, i32(-2147483648), 2147483647i, 1i);

var<private> global1: array<f32, 26>;

var<private> global2: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(0u, 4294967295u), vec2<u32>(24003u, 27650u), vec2<u32>(1u, 14907u), vec2<u32>(81647u, 4294967295u), vec2<u32>(13994u, 4294967295u), vec2<u32>(33875u, 13583u), vec2<u32>(34544u, 9755u), vec2<u32>(0u, 1u), vec2<u32>(73954u, 4294967295u), vec2<u32>(1u, 56865u), vec2<u32>(50289u, 0u), vec2<u32>(4294967295u, 33116u), vec2<u32>(4294967295u, 36850u), vec2<u32>(8071u, 4294967295u), vec2<u32>(4294967295u, 19854u), vec2<u32>(16835u, 1970u), vec2<u32>(28066u, 93896u), vec2<u32>(33315u, 85416u), vec2<u32>(45401u, 34348u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 74745u), vec2<u32>(1u, 0u), vec2<u32>(0u, 63783u), vec2<u32>(4294967295u, 13299u), vec2<u32>(26853u, 58599u), vec2<u32>(0u, 15939u), vec2<u32>(50732u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(63083u, 1u), vec2<u32>(37727u, 0u), vec2<u32>(0u, 56184u));

var<private> global3: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(1u, 120502u, 27269u, 1u), vec4<u32>(33877u, 1u, 1u, 1u), vec4<u32>(16898u, 7340u, 25672u, 56428u), vec4<u32>(36508u, 0u, 0u, 4294967295u), vec4<u32>(0u, 19834u, 63539u, 0u), vec4<u32>(85313u, 4294967295u, 1u, 75514u), vec4<u32>(0u, 4294967295u, 0u, 12965u), vec4<u32>(4294967295u, 31304u, 1u, 24365u), vec4<u32>(1u, 4294967295u, 1u, 54204u), vec4<u32>(4294967295u, 0u, 82347u, 72132u), vec4<u32>(64317u, 1u, 33196u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(0u, 36377u, 1u, 1u), vec4<u32>(1u, 61105u, 56539u, 4294967295u), vec4<u32>(2480u, 5322u, 0u, 5508u), vec4<u32>(4294967295u, 47267u, 1u, 1u), vec4<u32>(879u, 25080u, 4294967295u, 0u), vec4<u32>(0u, 11509u, 0u, 0u), vec4<u32>(1u, 32132u, 1u, 1u), vec4<u32>(42119u, 1u, 4294967295u, 41610u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 46385u, 0u, 9478u), vec4<u32>(14021u, 45069u, 27451u, 0u), vec4<u32>(40653u, 4294967295u, 121682u, 100502u), vec4<u32>(6836u, 1u, 37635u, 47421u), vec4<u32>(38374u, 0u, 1u, 0u), vec4<u32>(0u, 69001u, 47069u, 44892u), vec4<u32>(42522u, 132927u, 36289u, 6461u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(-43691i, ~(-36694i));
    var var_1 = Struct_1(false);
    let var_2 = Struct_1(!var_1.a);
    let var_3 = 0u;
    global0 = array<i32, 7>();
    return Struct_1(false);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    var var_0 = func_2();
    global0 = array<i32, 7>();
    var var_1 = arg_0;
    let var_2 = global1[_wgslsmith_index_u32(~(~6041u), 26u)];
    global1 = array<f32, 26>();
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2, 26u)]))) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 26u)] - 557f)), _wgslsmith_f_op_f32(step(-287f, -343f)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    global3 = array<vec4<u32>, 28>();
    let var_0 = !(!vec3<bool>(!any(arg_0), arg_0.x, true));
    let var_1 = Struct_1(arg_2 | true);
    var var_2 = false;
    global1 = array<f32, 26>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -787f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(39076u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(false), Struct_1(true), u_input.a.x))))), false);
    global1 = array<f32, 26>();
    global3 = array<vec4<u32>, 28>();
    var var_1 = ~global3[_wgslsmith_index_u32(u_input.a.x, 28u)] >> (vec4<u32>(~4294967295u, u_input.a.x >> (~(~u_input.a.x) % 32u), ~((9386u << (u_input.a.x % 32u)) >> (3044u % 32u)), ~u_input.a.x) % vec4<u32>(32u));
    let var_2 = func_3(!vec2<bool>(var_0.a, !var_0.a || true), vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~min(40467u, var_1.x), ~(~u_input.a.x), (0u >> (var_1.x % 32u)) << (29087u % 32u)), 26u)], global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, 1u), 26u)]), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(global0[_wgslsmith_index_u32(25143u, 7u)], 0i)), -(vec2<i32>(1i, global0[_wgslsmith_index_u32(var_1.x, 7u)]) & vec2<i32>(global0[_wgslsmith_index_u32(23528u, 7u)], 2147483647i))) <= _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 7u)], -22616i, global0[_wgslsmith_index_u32(var_1.x, 7u)], 2147483647i) | vec4<i32>(-1i, -1i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -58925i), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-8096i, 18162i, -1i, -2147483647i), vec4<i32>(-1i, global0[_wgslsmith_index_u32(24524u, 7u)], 652i, 2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_1.x, 26u)], 1324f, -626f) + vec3<f32>(-162f, global1[_wgslsmith_index_u32(var_1.x, 26u)], global1[_wgslsmith_index_u32(var_1.x, 26u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(599f, 903f, 2033f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 342f))), select(var_0.a, var_0.a, true))))), ~global2[_wgslsmith_index_u32(countOneBits(abs(u_input.a.x) << (max(var_1.x, var_1.x) % 32u)), 32u)], _wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(var_1.x, 32u)], ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(14775u, u_input.a.x), vec2<u32>(u_input.a.x, 0u), vec2<bool>(true, true)), vec2<u32>(1u, 0u) & u_input.a.yx)));
}

