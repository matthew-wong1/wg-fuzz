struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-37757i, 1i, -1i, -16404i);

var<private> global1: array<u32, 24>;

var<private> global2: array<f32, 2>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = -1211f;
    var var_1 = Struct_1(_wgslsmith_mod_u32(abs(u_input.e), global1[_wgslsmith_index_u32(~24625u, 24u)]));
    global2 = array<f32, 2>();
    var var_2 = false;
    let var_3 = vec4<i32>(global0.x, reverseBits(_wgslsmith_div_i32(global0.x, _wgslsmith_mult_i32(global0.x, global0.x))), -28037i, 1i) >> (min(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(var_1.a, u_input.a.x, u_input.d.x, global1[_wgslsmith_index_u32(1u, 24u)])), vec4<u32>(var_1.a, 38699u, 4294967295u, var_1.a)), vec4<u32>(0u, _wgslsmith_clamp_u32(var_1.a, var_1.a, _wgslsmith_add_u32(99543u, 16791u)), 26094u, u_input.e)) % vec4<u32>(32u));
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, -1i, 1i), vec3<i32>(var_3.x, 0i, 12999i)), _wgslsmith_mod_vec3_i32(var_3.xyy, vec3<i32>(var_3.x, -2147483647i, var_3.x))), -727i), var_3);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = 45514u;
    var var_1 = !vec4<bool>(any(vec3<bool>(true, true, true)), !any(vec3<bool>(true, true, true)), false, _wgslsmith_f_op_f32(exp2(arg_0)) >= arg_0);
    let var_2 = true;
    global0 = vec4<i32>(select(0i, u_input.c, all(select(vec4<bool>(var_2, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_2, true, var_1.x, var_1.x)))), _wgslsmith_div_i32(func_3(vec2<bool>(false, true)), ~_wgslsmith_dot_vec3_i32(arg_2, arg_2)), -1i, 1i) ^ ~vec4<i32>(u_input.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1.a, u_input.a.x), u_input.a.wzx) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), select(vec2<i32>(1i, arg_2.x), global0.wy, vec2<bool>(false, var_1.x))), -_wgslsmith_mult_i32(2147483647i, global0.x), -_wgslsmith_add_i32(-40627i, -12225i));
    var_0 = arg_1.a;
    return Struct_1(_wgslsmith_clamp_u32(u_input.d.x, ~4294967295u, ~arg_1.a));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = func_2(_wgslsmith_div_f32(-475f, 1619f), Struct_1(u_input.d.x), arg_0.xxy);
    var var_1 = ~(~_wgslsmith_mult_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 14176u, var_0.a), u_input.a)), vec4<u32>(u_input.e, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.d.x), 24u)], min(4294967295u, 11043u), var_0.a)));
    let var_2 = true;
    var_1 = ~u_input.a;
    let var_3 = Struct_1(~(~6971u));
    return max(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(reverseBits(35848u >> (var_3.a % 32u))), ~_wgslsmith_mod_u32(~var_3.a, max(var_3.a, u_input.a.x))), 24u)], ~var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(4294967295u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 84678u), 2u)] * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1081f + -957f))))) * global2[_wgslsmith_index_u32(4294967295u, 2u)]);
    var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_1(select(~(~vec4<i32>(global0.x, global0.x, 41727i, global0.x)), vec4<i32>(-33907i, 1i, ~(-1i), u_input.b.x >> (26254u % 32u)), vec4<bool>(true, true, true, true))), 2u)] * _wgslsmith_f_op_f32(abs(-369f)));
    var var_2 = Struct_1(~(~abs(abs(55706u))));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-894f + 2604f), global2[_wgslsmith_index_u32(var_0.a, 2u)])), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.a, 4294967295u), 1u) & var_2.a, 2u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a, 24u)], 2u)], global2[_wgslsmith_index_u32(56053u, 2u)])))), vec2<f32>(-167f, -999f)))));
    global2 = array<f32, 2>();
    global1 = array<u32, 24>();
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-530f, var_3.x)), var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~global0.x), ~(~_wgslsmith_add_vec3_u32(u_input.a.xzz | vec3<u32>(20832u, var_2.a, var_0.a), ~u_input.a.xwz)));
}

