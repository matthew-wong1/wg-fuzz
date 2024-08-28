struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(1000f, 2094f, 245f, -715f), vec4<f32>(-961f, -115f, -1509f, 1815f), vec4<f32>(524f, -727f, -334f, 182f), vec4<f32>(-723f, 837f, 1000f, -1289f), vec4<f32>(-889f, -380f, 369f, -126f), vec4<f32>(-137f, 505f, 621f, 613f), vec4<f32>(-825f, -846f, -1000f, -1685f), vec4<f32>(1529f, -1000f, 732f, -1085f), vec4<f32>(-128f, -922f, 1858f, -2376f), vec4<f32>(168f, -313f, 482f, -208f), vec4<f32>(-452f, 395f, 2080f, 565f), vec4<f32>(-2369f, 1277f, -1045f, -399f), vec4<f32>(609f, 534f, 1433f, 444f), vec4<f32>(-831f, -438f, -614f, -825f));

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-5138i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-43790i, 1i, 2147483647i), vec3<i32>(-1i, -238i, -1i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -7007i), vec3<i32>(-137i, 4850i, 0i), vec3<i32>(-33045i, -3874i, i32(-2147483648)), vec3<i32>(1i, 0i, -1i), vec3<i32>(i32(-2147483648), 63397i, 0i), vec3<i32>(17992i, -1i, 1i));

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-276f, vec4<bool>(true, false, true, true)), Struct_1(312f, vec4<bool>(true, true, false, false)), Struct_1(-1421f, vec4<bool>(false, false, true, true)), Struct_1(1000f, vec4<bool>(true, false, false, false)), Struct_1(521f, vec4<bool>(true, true, true, true)), Struct_1(286f, vec4<bool>(true, false, true, true)), Struct_1(-2340f, vec4<bool>(false, true, true, false)), Struct_1(-457f, vec4<bool>(true, false, true, true)));

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec2<bool> {
    global2 = array<vec3<i32>, 11>();
    global3 = array<Struct_1, 8>();
    global0 = array<vec4<f32>, 14>();
    global1 = array<Struct_1, 1>();
    var var_0 = any(select(global4.b.yz, vec2<bool>(arg_0.a.b.x, !(global4.b.x != global4.b.x)), !(!global4.b.x & (global4.b.x && false))));
    return !select(select(vec2<bool>(true, true), !vec2<bool>(global4.b.x, global4.b.x), arg_0.a.b.xy), select(vec2<bool>(true, !arg_1.a.b.x), !select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_1.a.b.x, arg_1.b), arg_0.a.b.zx), global4.b.yx), vec2<bool>(arg_0.a.b.x, true));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<f32> {
    global3 = array<Struct_1, 8>();
    global0 = array<vec4<f32>, 14>();
    var var_0 = Struct_2(arg_0.a, !arg_0.b);
    global0 = array<vec4<f32>, 14>();
    var var_1 = select(!vec2<bool>(!(var_0.b | false), true), !(!vec2<bool>(true, arg_1.x > arg_1.x)), !func_3(Struct_2(arg_0.a, false && arg_0.b), arg_0, -345f));
    return vec2<f32>(-313f, arg_0.a.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(370f)), vec4<bool>(!var_0, var_0, !global4.b.x, true)), global4.b.x);
    global1 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_f_op_f32(select(var_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1177f, global4.a)) + 411f), var_0));
    var var_3 = Struct_2(Struct_1(1000f, select(select(select(vec4<bool>(true, var_0, false, global4.b.x), vec4<bool>(true, global4.b.x, global4.b.x, true), vec4<bool>(false, global4.b.x, false, true)), select(global4.b, vec4<bool>(true, var_0, global4.b.x, false), false), false), vec4<bool>(any(global4.b), true, 1071f <= arg_1.x, any(var_1.a.b.zy)), select(vec4<bool>(var_1.a.b.x, var_1.b, false, false), select(var_1.a.b, vec4<bool>(false, global4.b.x, global4.b.x, var_1.a.b.x), global4.b), !var_1.b))), var_0);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2000f * _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(-var_1.a.a)), vec4<bool>(true | func_3(Struct_2(var_1.a, true), Struct_2(Struct_1(-1782f, vec4<bool>(true, false, global4.b.x, true)), true), _wgslsmith_div_f32(-1241f, global4.a)).x, true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_1.a.a)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1395f, -600f)) * var_2), any(select(vec3<bool>(var_3.a.b.x, false, true), select(vec3<bool>(var_0, var_3.b, false), global4.b.yxx, false), select(var_3.a.b.yzw, vec3<bool>(var_0, false, var_0), global4.b.xxz)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1668f));
    global4 = func_4(-global2[_wgslsmith_index_u32(1u, 11u)] ^ -(-global2[_wgslsmith_index_u32(1u, 11u)] << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -218f) - vec2<f32>(arg_0.a.a, -619f)), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(arg_1, vec4<bool>(true, true, true, global4.b.x)), false), vec2<u32>(14225u, 0u)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4.a, global4.a))) * vec2<f32>(-1744f, global4.a)))), _wgslsmith_clamp_i32(max(u_input.a, ~u_input.a) ^ u_input.a, 2147483647i, min(-73806i, min(-78026i, 31023i) ^ ~u_input.a)), _wgslsmith_div_i32(u_input.a, 1i));
    global2 = array<vec3<i32>, 11>();
    var var_1 = arg_0;
    global0 = array<vec4<f32>, 14>();
    return _wgslsmith_f_op_f32(max(arg_0.a.a, _wgslsmith_f_op_f32(floor(159f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f));
    let var_1 = abs(max(vec2<i32>(2147483647i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, countOneBits(0i)), -max(vec2<i32>(u_input.a, -39669i), vec2<i32>(1104i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-28732i, -1i)))));
    let var_2 = max(_wgslsmith_div_vec3_u32(vec3<u32>(~(~4294967295u), firstTrailingBit(1u) ^ 44094u, 1u), vec3<u32>(1u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(29523u, 70110u, 7604u, 10173u), vec4<u32>(1u, 51220u, 3125u, 1u)), ~72415u, true), select(countOneBits(19804u), firstLeadingBit(4294967295u), global4.a > 1010f))), vec3<u32>(~(~_wgslsmith_sub_u32(9512u, 1u)), ~1u, 69882u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(var_0, global4.b), true), global4.a, true)), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(global3[_wgslsmith_index_u32(54234u, 8u)], global4.b.x), vec2<u32>(40779u, var_2.x))).x))), 288f, _wgslsmith_f_op_f32(679f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) - _wgslsmith_f_op_f32(floor(global4.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, -762f, -725f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global4.a, global4.a)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2249f, 250f, var_0))), any(vec4<bool>(false, global4.b.x, global4.b.x, global4.b.x)))))), ~0u ^ (~firstLeadingBit(var_2.x) & ~var_2.x), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_div_i32(248i, u_input.a)), -2147483647i >> (~var_2.x % 32u)) | _wgslsmith_sub_i32(u_input.a, -1i));
}

