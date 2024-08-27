struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: array<bool, 7>;

var<private> global2: Struct_1 = Struct_1(0u);

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(0u), Struct_1(4687u), Struct_1(1u), Struct_1(8319u), Struct_1(4294967295u), Struct_1(1222u), Struct_1(96132u), Struct_1(0u), Struct_1(4294967295u), Struct_1(69717u), Struct_1(1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = Struct_1(~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, 10997u, u_input.a.x), u_input.a.xxw))));
    global0 = array<vec3<i32>, 30>();
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-374f - -157f) - -829f), -1138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) - -1416f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-912f, 412f, -1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 166f, -1227f), vec3<f32>(1140f, -1067f, -494f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(470f, 1448f, 1395f), vec3<f32>(-598f, -1163f, 1000f), vec3<bool>(arg_0, false, arg_0))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1474f, 948f, -1936f)))))))));
    global1 = array<bool, 7>();
    var var_2 = ~(i32(-1i) * -arg_2);
    return _wgslsmith_mult_u32(global2.a, global2.a);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = vec4<bool>(true, true, !(!(!(global1[_wgslsmith_index_u32(5372u, 7u)] & global1[_wgslsmith_index_u32(global2.a, 7u)]))), global1[_wgslsmith_index_u32(4294967295u, 7u)] && all(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(global1[_wgslsmith_index_u32(16679u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(3815u, 7u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2.a, 7u)])))));
    global0 = array<vec3<i32>, 30>();
    var var_1 = Struct_1(global2.a);
    var_0 = vec4<bool>(true, all(!(!vec4<bool>(true, var_0.x, false, var_0.x))), all(var_0.yyx), any(vec4<bool>(!all(vec2<bool>(true, true)), !(!global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), true, true)));
    var var_2 = Struct_1(min(min(arg_2.a, 32264u), _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, select(arg_0.x, var_1.a, false)), ~(~u_input.a.x))));
    return -2842i;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = vec4<bool>(any(select(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(29428u, 7u)]), vec3<bool>(arg_3, global1[_wgslsmith_index_u32(5337u, 7u)], arg_3), vec3<bool>(true, false, false)), select(!vec3<bool>(false, true, arg_3), !vec3<bool>(global1[_wgslsmith_index_u32(49432u, 7u)], false, true), arg_3 && arg_3), !(arg_3 | arg_3))), ~(~abs(arg_1.a)) == ~4294967295u, true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), -1705f) + arg_0) <= _wgslsmith_f_op_f32(-arg_0));
    global2 = arg_1;
    var var_1 = true;
    var var_2 = _wgslsmith_mod_vec3_i32(max(_wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(67361u, 30u)], vec3<i32>(1i, 1i, -27047i), global0[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(global2.a, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]) ^ global0[_wgslsmith_index_u32(~u_input.a.x, 30u)], vec3<i32>(48264i, 11050i, i32(-1i) * -1i)), vec3<i32>(-2147483647i, ~8802i >> (1u % 32u), 1i)), vec3<i32>(-1i, ~(~countOneBits(0i)), 1i));
    global3 = array<Struct_1, 11>();
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    let var_0 = global2.a << (select(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, global2.a), _wgslsmith_add_u32(1u, ~4294967295u)), arg_0.a, !all(arg_3)) % 32u);
    let var_1 = arg_0;
    global3 = array<Struct_1, 11>();
    global3 = array<Struct_1, 11>();
    global1 = array<bool, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-952f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~0u);
    global0 = array<vec3<i32>, 30>();
    global2 = global3[_wgslsmith_index_u32(~func_1(global1[_wgslsmith_index_u32(61139u, 7u)], !(!(!global1[_wgslsmith_index_u32(global2.a, 7u)])), -(-2147483647i << (global2.a % 32u)) ^ -2147483647i), 11u)];
    global2 = global3[_wgslsmith_index_u32(var_0.a, 11u)];
    let var_1 = Struct_1(1221u);
    let var_2 = ~func_2(~vec2<u32>(min(var_0.a, u_input.a.x), var_1.a), _wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(~0i, -1305i)), Struct_1(~0u), ~countOneBits(global2.a) << (_wgslsmith_clamp_u32(select(var_0.a, 0u, global1[_wgslsmith_index_u32(11289u, 7u)]), u_input.a.x, var_0.a) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_add_u32(var_1.a, 1u), global2.a & abs(~1u), global1[_wgslsmith_index_u32(reverseBits(~global2.a), 7u)]), -411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(func_3(385f, Struct_1(4294967295u), var_1, global1[_wgslsmith_index_u32(0u, 7u)])), select(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], false)), vec2<bool>(false, global1[_wgslsmith_index_u32(global2.a, 7u)]), true), var_2, vec2<bool>(global1[_wgslsmith_index_u32(max(var_1.a, 4294967295u), 7u)], all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(global2.a, 7u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(831f, -147f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1521f)), _wgslsmith_f_op_f32(min(-866f, -1652f)))), vec2<f32>(-313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(592f)))), all(vec3<bool>(true, !global1[_wgslsmith_index_u32(var_1.a, 7u)], true)))));
}

