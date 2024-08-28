struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(1u, 4294967295u, 36510u, 26586u, 1u, 10214u, 26259u, 4294967295u, 1u, 4294967295u, 90327u, 57425u, 4294967295u, 3392u, 30011u, 1u, 1u, 0u, 55261u);

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: vec2<u32>;

var<private> global3: f32;

var<private> global4: array<u32, 32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    let var_0 = true;
    global0 = array<u32, 19>();
    let var_1 = 68122u;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~min(~vec3<u32>(u_input.b, 0u, 0u), countOneBits(vec3<u32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23954u, 19u)], 32u)], global2.x, 4294967295u))), ~vec3<u32>(countOneBits(global0[_wgslsmith_index_u32(21613u, 19u)]), firstLeadingBit(35213u), min(4294967295u, arg_1))), _wgslsmith_clamp_u32(var_1, _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 19u)], 32u)], 0u)), reverseBits(select(vec3<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(9574u, 19u)]), vec3<u32>(global4[_wgslsmith_index_u32(arg_1, 32u)], u_input.a, var_1), vec3<bool>(false, false, var_0)))), _wgslsmith_mult_u32(2345u, 0u)));
    let var_3 = Struct_1(~arg_1, !(!(!vec3<bool>(var_0, var_0, false))), 15998u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(450f)))) - -446f));
    return var_3.d;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = -2147483647i;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(arg_0.a)), Struct_1(~1u, vec3<bool>(true, !(false || arg_1), !any(arg_2.b.xx)), abs(_wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0.b.a, 0u, 30898u), vec3<u32>(1u, 4294967295u, 80405u)), vec3<u32>(40072u, global2.x, arg_0.b.c))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1293f, _wgslsmith_div_f32(arg_0.c, arg_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d + arg_0.a.x)))), arg_2.d);
    let var_2 = arg_0;
    var var_3 = ~_wgslsmith_mult_u32(0u, max(~select(arg_0.b.a, 0u, true), countOneBits(global0[_wgslsmith_index_u32(reverseBits(global2.x), 19u)])));
    let var_4 = Struct_1(17524u, var_2.b.b, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.d * 2220f) - _wgslsmith_f_op_f32(floor(-1000f))));
    return var_1.b.d;
}

fn func_2(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-304f, 1000f)), _wgslsmith_f_op_f32(1000f - 1852f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(-2231f, -786f), Struct_1(1u, vec3<bool>(false, true, false), global2.x, -604f), 2585f), false, Struct_1(global0[_wgslsmith_index_u32(21612u, 19u)], vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(global2.x, 19u)], 1746f)))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-897f, -344f)) - 1103f) - _wgslsmith_div_f32(-729f, _wgslsmith_f_op_f32(max(-625f, -1421f)))), 900f, 763f) + vec4<f32>(1f, 1f, 1f, 1f));
    var var_1 = _wgslsmith_f_op_f32(2147f + var_0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(270f - -340f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x))))))), Struct_1(global4[_wgslsmith_index_u32(u_input.a, 32u)], select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, false, true, true)), all(vec4<bool>(false, true, true, true)), true)), 4294967295u, 149f), var_0.x);
    var var_3 = var_2;
    global3 = _wgslsmith_f_op_f32(-727f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), -618f), _wgslsmith_f_op_f32(func_1(vec2<bool>(var_2.b.b.x, false), 4294967295u << (0u % 32u)))))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(trunc(var_2.c)), _wgslsmith_f_op_f32(f32(-1f) * -1204f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(var_0.zwz, var_0.zyx)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x * var_0.x), _wgslsmith_f_op_f32(-421f * 1000f), _wgslsmith_f_op_f32(trunc(var_3.a.x))))) * var_0.wxy), 4294967295u, 400f, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(-2147483647i >= _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, 6068i, u_input.e), vec3<i32>(-61589i, u_input.d, 1i)), vec3<i32>(_wgslsmith_clamp_i32(1i, -1i, u_input.e), -1i, _wgslsmith_add_i32(u_input.e, 1i))), true, true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))) || all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), any(vec4<bool>(false, true, true, true)))));
    global3 = _wgslsmith_f_op_f32(func_1(select(!(!(!vec2<bool>(var_0.x, var_0.x))), var_0.yw, var_0.yw), 16322u));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2156f, -218f))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, ~(~(~18504u))), ~select(_wgslsmith_add_vec3_u32(vec3<u32>(37197u, 19747u, 44802u), vec3<u32>(17248u, 26712u, 41965u)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 20802u, global2.x), !var_0.yzz) & _wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 19u)], global4[_wgslsmith_index_u32(global2.x, 32u)])), vec3<u32>(~global2.x, 17699u << (u_input.b % 32u), ~1u)));
    global4 = array<u32, 32>();
    global0 = array<u32, 19>();
    global1 = array<vec4<bool>, 18>();
    let x = u_input.a;
    s_output = func_2(vec2<i32>(i32(-1i) * -2147483647i, u_input.d));
}

