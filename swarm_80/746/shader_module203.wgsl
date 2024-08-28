struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(180f, 1196f, 111f));

var<private> global2: array<u32, 15>;

var<private> global3: vec4<i32> = vec4<i32>(24029i, 2147483647i, 73509i, 2147483647i);

var<private> global4: f32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global0 = array<f32, 23>();
    var var_0 = vec4<f32>(654f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~(~(~93535u)), 23u)], global0[_wgslsmith_index_u32(abs(~7709u), 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(445f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1625f) - -506f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(648f, 701f, 290f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(19320u, 23u)], global1.a.x, -490f)))))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * -107f)));
    return _wgslsmith_div_f32(global1.a.x, _wgslsmith_div_f32(-528f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~49492u, 23u)]))))));
}

fn func_2() -> u32 {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var var_0 = reverseBits(2147483647i) == global3.x;
    var_0 = any(select(select(vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(false, false, true, false)), true), all(vec3<bool>(false, false, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), vec2<bool>(true, true)));
    let var_1 = select(select(!vec2<bool>(global3.x <= 1i, any(vec3<bool>(true, true, false))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), vec2<bool>(true, true)), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, false), true));
    let var_2 = !(!(!vec3<bool>(global3.x >= global3.x, any(var_1), var_1.x)));
    return global2[_wgslsmith_index_u32(abs(u_input.b), 15u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global4 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32((global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), 15u)] | ~4294967295u) | ~u_input.b, 25110u, firstTrailingBit(1u | (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)] & global2[_wgslsmith_index_u32(u_input.a.x, 15u)]))), 23u)] - global0[_wgslsmith_index_u32(func_2(), 23u)]);
    var var_0 = !any(select(vec4<bool>(true, true, arg_1.a.x >= arg_1.a.x, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(max(-1338f, 380f)) > global1.a.x));
    let var_1 = vec2<u32>(0u, 1u);
    let var_2 = vec2<bool>(all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true))), false);
    var var_3 = vec2<i32>(_wgslsmith_add_i32(1i, global3.x), global3.x);
    return _wgslsmith_f_op_f32(-937f * -190f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * -651f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(37634u, 23u)]), -920f, 4294967295u <= global2[_wgslsmith_index_u32(9325u, 15u)]))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 1315u) << (min(17327u, 0u) % 32u), 15u)], u_input.a.x), 23u)]), global1.a);
    global0 = array<f32, 23>();
    global4 = _wgslsmith_f_op_f32(step(var_0.x, global1.a.x));
    global0 = array<f32, 23>();
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(global1.a), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(70585u, 23u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 15u)], 23u)], 1005f)))), _wgslsmith_f_op_f32(-545f * 604f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.a, _wgslsmith_f_op_vec3_f32(-global1.a))))));
    var var_1 = ~(~min(vec4<i32>(-6212i, global3.x, -25032i, -1i) >> (vec4<u32>(59467u, 4294967295u, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27190u, 15u)], 15u)]) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(16526i, -2147483647i, 17821i, global3.x), vec4<i32>(-10595i, global3.x, global3.x, global3.x)))) & select(vec4<i32>(1i, -reverseBits(-1i), global3.x, ~0i), ~firstLeadingBit(vec4<i32>(global3.x, -1i, -17960i, global3.x)), ~_wgslsmith_mult_u32(u_input.b, 1u) >= ~(~global2[_wgslsmith_index_u32(u_input.b, 15u)]));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2211f + -801f));
    global3 = -min(reverseBits(firstTrailingBit(vec4<i32>(var_1.x, -2147483647i, var_1.x, 8552i)) ^ countOneBits(vec4<i32>(global3.x, 31260i, 2147483647i, var_1.x))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_1.x, global3.x, var_1.x, var_1.x), vec4<i32>(1i, 0i, 2147483647i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-20479i, -54457i, -15902i, global3.x), vec4<i32>(global3.x, global3.x, global3.x, -1i)), abs(vec4<i32>(var_1.x, 21923i, 2147483647i, 1i))), select(-vec4<i32>(6388i, var_1.x, var_1.x, -1i), -vec4<i32>(1i, global3.x, global3.x, var_1.x), vec4<bool>(false, true, false, true))));
    var_1 = -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~reverseBits(vec4<i32>(global3.x, var_1.x, -18086i, -43996i)), ~abs(vec4<i32>(2147483647i, var_1.x, var_1.x, global3.x))), ~firstLeadingBit(vec4<i32>(global3.x, var_1.x, -1i, var_1.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, -11571i, 14967i, -2147483647i) ^ vec4<i32>(var_1.x, -2147483647i, global3.x, var_1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global3.x, global3.x, var_1.x), vec4<i32>(-2147483647i, 1i, var_1.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.xz, vec4<u32>(_wgslsmith_sub_u32(112u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)]), 4294967295u, 1u, 1u));
}

