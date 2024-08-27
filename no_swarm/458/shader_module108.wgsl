struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: array<vec3<bool>, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 22u)];
    var var_1 = ~(-(~_wgslsmith_mult_i32(i32(-1i) * -12959i, -4217i)));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(30332u, u_input.a.x, u_input.a.x), vec3<u32>(29982u, 58667u, u_input.a.x), vec3<u32>(u_input.a.x, 85196u, 15716u)), vec3<u32>(min(u_input.a.x, u_input.a.x), max(0u, 4294967295u), max(14633u, 4294967295u))), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(17433u, 1u, u_input.a.x) | vec3<u32>(6685u, 4294967295u, 4294967295u), firstTrailingBit(vec3<u32>(34433u, 44309u, u_input.a.x))))), global1[_wgslsmith_index_u32(~(~(~u_input.a.x)), 22u)], countOneBits(26388i), -_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-18756i, -9624i, 2147483647i, 24425i), vec4<i32>(-17240i, 1i, 2147483647i, -23418i)), 1i, -2147483647i, 1i), vec4<i32>(i32(-1i) * -31486i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -2147483647i), vec3<i32>(-1i, -2147483647i, -1i)), -28602i, ~8235i)));
    let var_3 = arg_0.a.x;
    var var_4 = var_3;
    return true;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(~(~16127u), select(select(!global1[_wgslsmith_index_u32(u_input.a.x, 22u)], vec3<bool>(true, true, true), true), select(global1[_wgslsmith_index_u32(~(~57024u), 22u)], !global1[_wgslsmith_index_u32(7798u, 22u)], select(true, func_3(Struct_2(vec2<f32>(1997f, -787f))), true)), vec3<bool>(_wgslsmith_div_u32(0u, u_input.a.x) <= u_input.a.x, false, any(!global1[_wgslsmith_index_u32(21912u, 22u)]))), 5539i, _wgslsmith_div_vec4_i32(select(~vec4<i32>(-38222i, -21353i, 34914i, 26507i), firstLeadingBit(vec4<i32>(-2147483647i, 50349i, -1i, 48546i)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(51252u, 48677u, 33427u, 13290u), vec4<u32>(0u, 25622u, u_input.a.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(52720u, 1u, u_input.a.x, 53306u))) % vec4<u32>(32u)), ~vec4<i32>(1i, 1i, 1i, 1i)));
    global0 = array<vec2<i32>, 28>();
    let var_1 = _wgslsmith_div_i32(34330i, -2147483647i);
    var var_2 = var_0;
    let var_3 = u_input.a ^ vec2<u32>(var_0.a, 0u);
    return abs(var_0.d.x);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, 1313f)))) - -1584f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)));
    let var_1 = Struct_1(u_input.a.x, !vec3<bool>(all(!global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), abs(arg_0) != arg_0, any(vec4<bool>(false, false, false, true))), arg_0, ~vec4<i32>(i32(-1i) * -6224i, _wgslsmith_add_i32(countOneBits(5362i), func_2()), -arg_0, arg_0));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(644f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(floor(-1487f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1479f, 1137f, -2128f, -484f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, -1033f, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, -131f, var_0, 653f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -820f, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-502f, 536f, -1000f, var_0)))), select(vec4<bool>(!var_1.b.x, var_1.b.x, true, !var_1.b.x), select(!vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x), vec4<bool>(true, true, true, var_1.b.x), all(var_1.b.zx)), true))) * vec4<f32>(331f, var_0, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 - 1000f))), var_0)));
    var var_3 = 0u;
    global1 = array<vec3<bool>, 22>();
    return var_1.c & reverseBits(arg_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> StorageBuffer {
    global0 = array<vec2<i32>, 28>();
    var var_0 = Struct_1(_wgslsmith_div_u32(8404u, u_input.a.x), select(select(global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 22u)], select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 22u)], global1[_wgslsmith_index_u32(1u, 22u)], false), !(!global1[_wgslsmith_index_u32(33116u, 22u)])), vec3<bool>(arg_0.x, arg_0.x, arg_1 < firstLeadingBit(arg_1)), select(true, any(!global1[_wgslsmith_index_u32(1u, 22u)]), true)), ~(~_wgslsmith_dot_vec2_i32(-global0[_wgslsmith_index_u32(31578u, 28u)], vec2<i32>(arg_1, arg_1))), countOneBits(vec4<i32>(-1i, -_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(1u, 28u)], vec2<i32>(-5524i, arg_1)), arg_1, arg_1)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -883f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1179f))))), arg_2, -1215f, -1384f);
    var var_2 = Struct_1(abs(~(u_input.a.x << (~u_input.a.x % 32u))), var_0.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1508i, arg_1, 1i, arg_1), ~firstLeadingBit(vec4<i32>(0i, arg_1, 1i, var_0.c))) << (var_0.a % 32u), var_0.d);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(149f, arg_2, var_1.x, var_1.x) + vec4<f32>(arg_2, -292f, -1000f, 397f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1301f, 1000f, arg_2, 727f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -328f)) * vec4<f32>(arg_2, -964f, 966f, _wgslsmith_f_op_f32(-510f - arg_2)))));
    return StorageBuffer(~(~6646u), _wgslsmith_f_op_vec3_f32(-var_1.www));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = true;
    var var_2 = 1967f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(152f, 674f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1026f - 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1542f + -487f)))))));
    let var_4 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let var_5 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_3.xz, var_3.wy))));
    let x = u_input.a;
    s_output = func_4(select(select(vec2<bool>(false, true), !(!vec2<bool>(false, var_1)), var_1), !(!(!vec2<bool>(var_1, true))), vec2<bool>(!var_1, true)), ~(~func_1(abs(var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-606f - var_3.x)));
}

