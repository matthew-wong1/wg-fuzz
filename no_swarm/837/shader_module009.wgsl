struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<i32, 13> = array<i32, 13>(i32(-2147483648), -1i, 33066i, -1826i, 67491i, -27061i, -33126i, 0i, 18010i, -13060i, 30944i, 0i, -23072i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec2<i32> {
    global1 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(189f, -974f))) * 1138f))));
    global1 = array<i32, 13>();
    let var_1 = _wgslsmith_f_op_f32(abs(var_0));
    global0 = array<i32, 30>();
    return _wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 13u)], min(0i, global0[_wgslsmith_index_u32(40484u, 30u)])), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: bool) -> vec3<u32> {
    var var_0 = ~vec2<i32>(1i, _wgslsmith_add_i32(-1i, ~global1[_wgslsmith_index_u32(abs(4294967295u), 13u)]));
    let var_1 = arg_1.a;
    global1 = array<i32, 13>();
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1421f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2055f) * _wgslsmith_f_op_f32(f32(-1f) * -515f)), -650f)));
    global1 = array<i32, 13>();
    return min(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 53147u)), vec3<u32>(1u, _wgslsmith_div_u32(99676u, ~3426u), 27902u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 67192u) << (min(vec3<u32>(u_input.a.x, 4294967295u, 29624u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 54217u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 83151u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(~u_input.a.x, u_input.a.x, 1u)) | _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(19503u), u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<f32> {
    global1 = array<i32, 13>();
    let var_0 = arg_2;
    var var_1 = !var_0.x;
    global0 = array<i32, 30>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(919f, arg_1.a))))), _wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(min(2013f, arg_1.a)));
    return vec4<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1312f)) * _wgslsmith_f_op_f32(min(arg_1.a, var_2.x))), 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))))), _wgslsmith_f_op_f32(-1207f - 817f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1.a)))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(21627i, (_wgslsmith_dot_vec2_i32(vec2<i32>(28908i, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec2<i32>(global0[_wgslsmith_index_u32(36213u, 30u)], -38936i)) >> ((1u >> (u_input.a.x % 32u)) % 32u)) | _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(19095u, 30u)], global1[_wgslsmith_index_u32(9159u, 13u)], global0[_wgslsmith_index_u32(107083u, 30u)]), vec3<i32>(-39221i, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], -55809i)))) | func_2();
    let var_1 = -2147483647i;
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(true, Struct_3(-1000f, func_3(true, Struct_2(false), vec3<bool>(false, false, false), false), 1u << (1u % 32u)), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, all(vec2<bool>(true, true)))))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, global1[_wgslsmith_index_u32(19294u, 13u)] != var_0.x, true)), select(vec3<bool>(3735i > global0[_wgslsmith_index_u32(u_input.a.x, 30u)], all(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, true, false))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(true, any(vec4<bool>(false, true, false, false)), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    var var_3 = var_2.b;
    global0 = array<i32, 30>();
    return Struct_1(all(vec4<bool>(var_2.a, any(vec3<bool>(var_2.c.x, true, false)), !(false != var_2.a), all(vec2<bool>(var_2.a, var_2.a)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.b, var_2.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 1000f, var_2.b.x, var_3.x) + vec4<f32>(614f, var_2.b.x, var_2.b.x, var_3.x))))))), vec3<bool>(var_2.c.x, true, var_2.c.x | var_2.a), 28523u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    let var_0 = -198f;
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_1 = func_1();
    var var_2 = Struct_2(all(!(!vec4<bool>(var_1.c.x, true, var_1.a, false))));
    let x = u_input.a;
    s_output = StorageBuffer(max(func_3((var_2.a & var_2.a) != all(var_1.c), Struct_2(!var_2.a), !(!var_1.c), true).x, 1u), ~vec3<u32>(var_1.d | u_input.a.x, var_1.d, var_1.d), ~_wgslsmith_mult_u32(~_wgslsmith_div_u32(116142u, var_1.d), ~u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 30u)], -9218i), -global0[_wgslsmith_index_u32(0u, 30u)]) >> (~1u % 32u), vec2<f32>(1000f, 1759f));
}

