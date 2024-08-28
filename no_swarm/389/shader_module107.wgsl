struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1) -> i32 {
    var var_0 = false;
    var_0 = false;
    var_0 = any(arg_1.b);
    return abs(-(i32(-1i) * -(40711i | arg_2.b)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = Struct_3(Struct_2(false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.d.x, -2077f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1585f, 793f)))), _wgslsmith_f_op_vec2_f32(-arg_0.d), true)), vec4<i32>(-1i, 3756i, _wgslsmith_mult_i32(u_input.a, 0i), ~(~2147483647i)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -244f)))), -func_3(arg_1.b, Struct_4(arg_0.a.zzz, select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), Struct_1(select(vec4<u32>(arg_0.c, arg_0.c, arg_1.a.x, 25425u), arg_1.a, vec4<bool>(false, false, false, true)), arg_1.b)), arg_0.b);
    global0 = array<vec2<i32>, 26>();
    return arg_0.a.x;
}

fn func_1() -> bool {
    var var_0 = -(((global0[_wgslsmith_index_u32(1u, 26u)] >> (_wgslsmith_mod_vec2_u32(vec2<u32>(68367u, 4294967295u), vec2<u32>(6098u, 3967u)) % vec2<u32>(32u))) | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(49656u, 14154u, 34753u), vec3<u32>(12227u, 59069u, 0u)) & 107895u, 26u)]) | _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_div_vec2_i32(vec2<i32>(21480i, u_input.a), global0[_wgslsmith_index_u32(57516u, 26u)]) ^ (global0[_wgslsmith_index_u32(4294967295u, 26u)] & global0[_wgslsmith_index_u32(51801u, 26u)])));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-285f, 929f)), -374f, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1503f, 395f, false)), -212f)), _wgslsmith_f_op_f32(f32(-1f) * -104f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(218f * -364f), _wgslsmith_f_op_f32(-1224f * -1687f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(781f, -1000f, 1890f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1141f, -116f, 925f)))))), vec3<bool>(true, true, false));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.x + 574f), _wgslsmith_f_op_f32(func_2(Struct_5(vec4<f32>(var_1.a.x, -795f, 655f, -1000f), 0u, 4294967295u, var_1.a.yx), Struct_1(vec4<u32>(0u, 1u, 33327u, 4294967295u), u_input.a), 2151f))))), _wgslsmith_f_op_f32(f32(-1f) * -926f))), 362f, _wgslsmith_f_op_f32(func_2(Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 290f, var_1.a.x, var_1.a.x) - vec4<f32>(-312f, var_1.a.x, var_1.a.x, var_1.a.x))), min(_wgslsmith_mult_u32(15583u, 0u), 1u), 1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.a.yx), var_1.a.zx, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))))), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(18759u, 26655u, 40364u, 1u), vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(1u, 20783u, 4294967295u, 1u))), u_input.b), var_1.a.x)), var_1.a.x);
    var var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(min(1004f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(var_2.x + var_2.x)))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(114f, -777f)))), _wgslsmith_clamp_u32(1u, 1u, ~1u), 34936u, vec2<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(-904f - _wgslsmith_f_op_f32(func_2(Struct_5(vec4<f32>(-462f, var_1.a.x, 1245f, -895f), 1u, 0u, var_1.a.xz), Struct_1(vec4<u32>(38467u, 6220u, 4294967295u, 4294967295u), 19612i), _wgslsmith_f_op_f32(max(var_2.x, -474f)))))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(abs(var_3.b), _wgslsmith_mod_u32(10676u, var_3.c)), 16078u), 26u)] | -max(global0[_wgslsmith_index_u32(max(34388u, var_3.c), 26u)] ^ _wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(var_3.c, 26u)], vec2<i32>(-39577i, u_input.b)), -vec2<i32>(var_0.x, u_input.a));
    return !select(u_input.b < var_0.x, !(!(!var_1.b.x)), all(select(vec4<bool>(var_1.b.x, false, true, false), !vec4<bool>(false, true, var_1.b.x, var_1.b.x), all(vec2<bool>(var_1.b.x, false)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> bool {
    let var_0 = true;
    let var_1 = !vec4<bool>(var_0, var_0, _wgslsmith_f_op_f32(-1f) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), 204f, true)), all(!select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, false, false, false), false)));
    global0 = array<vec2<i32>, 26>();
    let var_2 = ~(~5621u);
    var var_3 = -1i;
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -330f;
    let var_1 = 4294967295u;
    var var_2 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_0 <= var_0), vec4<bool>(var_0 < var_0, var_0 <= var_0, true, all(vec4<bool>(true, true, false, true))), false));
    var_2 = !(true | any(vec3<bool>(true, true, true))) & !func_4(vec2<bool>(select(false, false, false), func_1()), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))));
    var_2 = any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), any(vec3<bool>(true, true, true))), vec4<bool>(func_4(vec2<bool>(true, false), Struct_4(vec3<f32>(var_0, var_0, -1000f), vec3<bool>(false, false, false))), true, false, all(vec2<bool>(true, true))), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, false)))) || any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec4<bool>(true, false, false, false)), 7042u >= var_1, 21308u < var_1, 71729u < var_1), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, min(~vec4<u32>(max(var_1, 1u), ~var_1, ~var_1, _wgslsmith_div_u32(var_1, 2772u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 38777u, var_1) << (vec4<u32>(4294967295u, 0u, 38124u, var_1) % vec4<u32>(32u)), ~vec4<u32>(0u, 36174u, 10891u, 65870u)) & firstTrailingBit(min(vec4<u32>(39774u, 21123u, var_1, var_1), vec4<u32>(var_1, var_1, 0u, 4294967295u)))), ~global0[_wgslsmith_index_u32(~reverseBits(var_1 >> (4294967295u % 32u)), 26u)], vec2<u32>(1u, 1u) << (firstLeadingBit(~vec2<u32>(1u, var_1)) % vec2<u32>(32u)), u_input.a);
}

