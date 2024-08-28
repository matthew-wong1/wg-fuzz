struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: bool;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = !all(vec3<bool>(true, true, !(-2147483647i <= u_input.e)));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    let var_2 = u_input.b.x >> (firstTrailingBit(select(~u_input.d.x, ~min(28533u, 64649u), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))))) % 32u);
    global0 = array<Struct_1, 9>();
    var_0 = any(vec2<bool>(any(vec3<bool>(false, true, true)), true));
    return select(select(vec2<bool>(any(vec3<bool>(true, true, true)), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, ~1u <= u_input.d.x)), select(vec2<bool>(!any(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, true, false))), vec2<bool>(false, _wgslsmith_f_op_f32(trunc(1595f)) < 1588f), false), false);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(~u_input.a);
    var var_1 = vec2<u32>(~1u, ~var_0.a);
    return select(select(vec2<bool>(false, true), vec2<bool>(~u_input.a != reverseBits(26854u), true), vec2<bool>(true, true)), func_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1487f, -447f)), -1181f)))), all(!vec4<bool>(any(vec4<bool>(true, true, false, false)), true, all(vec2<bool>(true, false)), true)));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec2_i32(-(~((u_input.b << (u_input.d.zz % vec2<u32>(32u))) ^ u_input.b)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, 598i, -29403i), -22153i), arg_0) | vec2<i32>(i32(-1i) * -13762i, _wgslsmith_sub_i32(1i, arg_0)));
    var var_1 = arg_1.x;
    let var_2 = select(vec2<i32>(i32(-1i) * -u_input.e, min(arg_0, -1i)), ~u_input.b, func_2()) | -(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.b, u_input.b));
    let var_3 = !vec3<bool>(func_2().x, arg_2.x, true);
    var var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1060f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1612f)))), _wgslsmith_f_op_f32(-867f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1210f * 1508f) + _wgslsmith_f_op_f32(1111f + -839f)))));
    return u_input.d.xy;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(arg_1.x, 9u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(661f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a - var_0.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 367f, 1000f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, -1329f, -307f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -307f)), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_1.x))));
    var var_2 = Struct_3(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false | (9308u < arg_3.a)), vec4<bool>(true, true, true, false), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false)), Struct_2(6184u), arg_3, Struct_1(_wgslsmith_f_op_f32(max(1f, 1144f))));
    let var_3 = global0[_wgslsmith_index_u32(~arg_0, 9u)];
    return Struct_1(_wgslsmith_f_op_f32(var_0.a + var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !all(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, select(false, false, false)), true));
    global1 = true;
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-410f, 583f, -1218f, 519f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(767f, -444f, 569f, -1728f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1405f, -156f, -291f, -351f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-515f, -1155f, -723f, -224f) * vec4<f32>(1913f, -958f, -180f, -1212f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 163f, 1013f, 174f)))))));
    let var_1 = func_4(countOneBits(~3715u), ~_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.a, u_input.c)), func_1(u_input.b.x, vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(~u_input.a, u_input.a >> (75468u % 32u), firstTrailingBit(51844u), 4294967295u)), vec4<u32>(u_input.c, _wgslsmith_div_u32(1u, 1u), u_input.a | u_input.d.x, 24715u) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, u_input.a, u_input.c), vec4<u32>(0u, 0u, u_input.d.x, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, u_input.c, u_input.c), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(13556u, 1u, u_input.a, 92241u), vec4<u32>(u_input.a, 57980u, 4294967295u, 0u)), ~vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.a)), ~vec4<u32>(u_input.a, 1u, 34392u, 1u))), Struct_2(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.c, u_input.a), vec2<u32>(4860u, u_input.d.x), false), vec2<u32>(48986u, 1u))));
    let var_2 = vec4<u32>(select(u_input.d.x, 8461u, func_3(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 29234u, u_input.c, 47621u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 64837u)), u_input.d.yy, _wgslsmith_clamp_vec4_u32(vec4<u32>(35330u, 11803u, u_input.d.x, 20525u), vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.d.x), vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.c)), Struct_2(u_input.c))).x), 13599u, 4294967295u, ~reverseBits(u_input.c));
    let var_3 = true;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(round(var_1.a)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(961f, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(-var_0.x), var_3))), -784f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1280f, _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.b ^ u_input.b) >> (u_input.d.zz % vec2<u32>(32u)), vec2<i32>(10413i, -reverseBits(-2147483647i))), u_input.b.x, 1i);
}

