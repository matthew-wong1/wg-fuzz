struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 27>;

var<private> global2: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = Struct_2(arg_2.a.b);
    let var_1 = Struct_2(true);
    return !(!select(vec3<bool>(any(vec4<bool>(var_0.a, var_0.a, true, var_1.a)), !var_0.a, var_0.a), vec3<bool>(true, var_0.a, all(vec2<bool>(var_1.a, true))), vec3<bool>(true, true, u_input.a.x < 69478u)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec3_u32(u_input.a.wzx, abs(vec3<u32>(~26812u, 1u, u_input.a.x)));
    var var_1 = global1[_wgslsmith_index_u32(var_0.x, 27u)];
    let var_2 = _wgslsmith_add_i32(20894i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-arg_3, abs(-10842i)), ~max(0i, 58773i))) | u_input.e.x;
    global0 = !(!(true & all(arg_2.wxz)) & any(select(func_2(vec3<f32>(-1716f, 101f, -291f), 13690u, Struct_3(global1[_wgslsmith_index_u32(u_input.d.x, 27u)])), arg_2.xyz, true)));
    let var_3 = var_0.x;
    return Struct_3(global1[_wgslsmith_index_u32(~(~(~(~1u))), 27u)]);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    global0 = (arg_1.x != _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.c * arg_1.x), arg_0.a.c)))) & select(arg_0.a.b, true, !arg_0.a.b);
    global0 = false;
    global1 = array<Struct_1, 27>();
    let var_0 = vec4<i32>(0i >> (abs(u_input.d.x) % 32u), ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.e.x, 25303i), _wgslsmith_mod_i32(u_input.c, 4925i)) >> (~u_input.b % 32u), min(_wgslsmith_mod_i32(reverseBits(~(-1i)), u_input.e.x), -countOneBits(u_input.e.x)), u_input.c);
    let var_1 = u_input.e.x & max(-1i, 37477i);
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    let var_0 = Struct_3(Struct_1(func_3(func_1(4294967295u, _wgslsmith_f_op_f32(step(-850f, -2307f)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), i32(-1i) * -8834i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1411f, 1551f, 1394f, -1154f) * vec4<f32>(923f, 479f, -659f, -1083f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-924f, -292f, 374f, -1364f), vec4<f32>(423f, 104f, -1311f, 1000f)))), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(func_1(63872u, 1065f, vec4<bool>(false, false, true, false), -2116i).a.c)), -1088f))));
    var var_1 = !var_0.a.b;
    var_1 = !var_0.a.a && false;
    global0 = var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.e.zw, u_input.e.wy, u_input.e.xx) ^ u_input.e.zw, u_input.e.x, u_input.e.wxz);
}

