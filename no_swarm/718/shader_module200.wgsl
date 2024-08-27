struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<u32, 16> = array<u32, 16>(0u, 15274u, 97984u, 13439u, 1u, 1u, 26178u, 29944u, 4294967295u, 68344u, 12803u, 0u, 1u, 4294967295u, 32616u, 46807u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(global0.a)));
    var var_1 = Struct_2(var_0.a);
    let var_2 = global2[_wgslsmith_index_u32(6733u, 16u)];
    var var_3 = -1i;
    var_0 = Struct_2(global0.a);
    return vec4<bool>(any(!(!arg_0)), any(arg_0), true, false);
}

fn func_3() -> vec4<bool> {
    global1 = Struct_1(_wgslsmith_mod_i32(2147483647i, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 26144i, 2147483647i), vec3<i32>(11133i, 0i, global1.a)), -23405i)), 8660u, -1i, 27332i);
    var var_0 = !(!func_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~0u));
    var_0 = !vec4<bool>(var_0.x == any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) == global0.a.x, u_input.e < global1.d);
    global1 = Struct_1(u_input.e, abs(51780u), firstLeadingBit(1i), ((~u_input.e << ((1u ^ u_input.b.x) % 32u)) ^ (i32(-1i) * -global1.d)) ^ (-_wgslsmith_add_i32(global1.d, 2147483647i) | ~(~0i)));
    var_0 = select(vec4<bool>(all(func_2(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.xxy, true), 76676u).wyx), all(select(vec3<bool>(false, true, var_0.x), !var_0.yyx, select(var_0.zzw, var_0.xyw, vec3<bool>(var_0.x, var_0.x, var_0.x)))), func_2(!(!var_0.zyy), _wgslsmith_add_u32(_wgslsmith_mod_u32(global1.b, global1.b), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 16u)], 25747u))).x, all(vec3<bool>(false, true, var_0.x && true))), vec4<bool>(true, !(_wgslsmith_f_op_f32(ceil(global0.a.x)) >= _wgslsmith_f_op_f32(select(global0.a.x, 797f, false))), true || (global0.a.x < global0.a.x), var_0.x), all(vec2<bool>(var_0.x, !all(vec2<bool>(var_0.x, true)))));
    return vec4<bool>(false, true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) + _wgslsmith_f_op_f32(floor(global0.a.x))) < -609f, var_0.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    global2 = array<u32, 16>();
    var var_0 = !any(func_2(vec3<bool>(true, true, true), 4294967295u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-648f - global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - arg_1.a.x) + 2424f)))));
    global0 = arg_1;
    global0 = Struct_2(var_1.a);
    return select(!func_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), 4294967295u), !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true), func_3(), true), vec4<bool>(!(_wgslsmith_f_op_f32(1740f - global0.a.x) == -994f), true, all(func_3().yy), _wgslsmith_f_op_f32(floor(-822f)) >= _wgslsmith_f_op_f32(global0.a.x - -591f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_i32(global1.d, select(_wgslsmith_div_i32(_wgslsmith_mult_i32(global1.d, global1.a), 13615i), -reverseBits(global1.d), true & (403u < global1.b))), _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(u_input.d.x, u_input.a.x)), -7993i, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -34811i, 29653i) | (vec2<i32>(-26685i, 1i) << (select(u_input.b.yy, vec2<u32>(u_input.a.x, global1.b), true) % vec2<u32>(32u))), ~firstLeadingBit(vec2<i32>(1i, 1i))));
    let var_1 = all(select(!select(func_1(Struct_1(6594i, 11635u, 16552i, 23886i), Struct_2(global0.a)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), !func_2(vec3<bool>(true, true, true), max(global2[_wgslsmith_index_u32(108762u, 16u)], 1u)), func_3()));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1114f, -1737f, global0.a.x))))) + vec3<f32>(_wgslsmith_f_op_f32(1435f - global0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1540f + -582f), _wgslsmith_f_op_f32(-global0.a.x))))));
    global1 = Struct_1(-6647i, var_0.b, -_wgslsmith_div_i32(select(var_0.a, var_0.c, false) << (203u % 32u), select(~(-1000i), u_input.e, true)), ~(-1i));
    global2 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1224f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(max(global0.a.x, 251f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, 984f) * global0.a))))), ~(~_wgslsmith_clamp_vec3_i32(max(vec3<i32>(global1.a, global1.a, 27162i), vec3<i32>(2850i, -2147483647i, 39876i)), vec3<i32>(u_input.e, -2147483647i, var_0.c), vec3<i32>(9840i, 17491i, 2147483647i) ^ vec3<i32>(0i, -4742i, u_input.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -570f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -642f), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)) * vec4<f32>(global0.a.x, 955f, 1275f, 1838f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, -540f, global0.a.x, _wgslsmith_f_op_f32(ceil(global0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(global0.a.x - global0.a.x), _wgslsmith_f_op_f32(max(508f, 505f)), -226f)))));
}

