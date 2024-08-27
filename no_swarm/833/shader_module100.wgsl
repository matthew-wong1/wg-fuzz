struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(42682u, 20804u, 81052u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 0u, 55916u), vec3<u32>(1u, 40371u, 4294967295u), vec3<u32>(116808u, 8854u, 4423u), vec3<u32>(16480u, 0u, 1u), vec3<u32>(1u, 0u, 29964u), vec3<u32>(14165u, 54133u, 4294967295u), vec3<u32>(26283u, 0u, 4294967295u), vec3<u32>(72111u, 60729u, 0u), vec3<u32>(0u, 1u, 85090u), vec3<u32>(4294967295u, 41697u, 0u), vec3<u32>(40259u, 0u, 0u), vec3<u32>(1u, 33856u, 1u), vec3<u32>(1u, 11917u, 0u), vec3<u32>(63533u, 25029u, 9702u), vec3<u32>(4294967295u, 0u, 65441u), vec3<u32>(48712u, 0u, 1u), vec3<u32>(0u, 14656u, 1u), vec3<u32>(1u, 24550u, 1u), vec3<u32>(0u, 4294967295u, 26063u), vec3<u32>(1u, 1u, 37882u), vec3<u32>(13245u, 87094u, 60311u), vec3<u32>(0u, 39082u, 0u), vec3<u32>(1u, 48698u, 3289u), vec3<u32>(95910u, 18617u, 57673u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(71822u, 80552u, 36199u), vec3<u32>(13356u, 4294967295u, 36938u), vec3<u32>(105453u, 1u, 0u), vec3<u32>(4294967295u, 48322u, 4294967295u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    global0 = array<vec3<u32>, 31>();
    var var_0 = !(!(!any(vec2<bool>(true, true))));
    let var_1 = Struct_3(vec3<u32>(4493u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 31u)], ~abs(global0[_wgslsmith_index_u32(0u, 31u)])), ~55939u), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true), vec3<bool>(all(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, false, false, true)), true), true), !vec3<bool>(all(vec3<bool>(false, true, true)), true, true), vec3<bool>(any(vec4<bool>(true, true, false, false)) || true, !select(false, false, true), true)), Struct_1(!all(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-259f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1567f))), true))));
    let var_2 = var_1;
    var_0 = any(var_1.b);
    return vec4<bool>(true, !(!(-2147483647i >= arg_0.x) || var_1.b.x), true, true);
}

fn func_2() -> vec2<i32> {
    let var_0 = ~countOneBits(max(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-60194i, u_input.a, 1i), vec3<i32>(24956i, u_input.a, 2478i)), vec3<i32>(-2147483647i, 2147483647i, u_input.a)), firstLeadingBit(min(vec3<i32>(2147483647i, u_input.a, -28882i), vec3<i32>(-1i, u_input.a, 0i)))));
    var var_1 = Struct_1(true & (all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true)) && false), true, 307f);
    var var_2 = Struct_2(true, -1492f, Struct_1(var_1.b, all(select(func_3(vec3<i32>(2147483647i, 0i, u_input.a)), !vec4<bool>(false, var_1.a, var_1.a, true), select(vec4<bool>(false, var_1.b, false, false), vec4<bool>(false, var_1.a, false, var_1.b), var_1.b))), var_1.c), 1u);
    var_2 = Struct_2(!(u_input.a != -(~(-39616i))), var_1.c, var_2.c, _wgslsmith_add_u32(4294967295u, var_2.d));
    global0 = array<vec3<u32>, 31>();
    return var_0.zz;
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = ~(~0u);
    global0 = array<vec3<u32>, 31>();
    var_0 = ~(~min(1u, reverseBits(0u))) << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(42377u, _wgslsmith_add_u32(23654u, 50913u), ~4294967295u, _wgslsmith_div_u32(77158u, 18307u)), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)) % 32u);
    var_0 = ~select(abs(1u), 4294967295u, any(vec4<bool>(true, all(vec4<bool>(true, arg_0, false, arg_0)), !arg_0, true)));
    global0 = array<vec3<u32>, 31>();
    return -vec2<i32>(_wgslsmith_dot_vec2_i32(func_2(), -vec2<i32>(1i, u_input.a)), -1i) & (-select(-vec2<i32>(-1i, u_input.a), ~vec2<i32>(u_input.a, 14740i), vec2<bool>(false, true)) | vec2<i32>(max(-u_input.a, u_input.a), -1i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    return Struct_3(_wgslsmith_sub_vec3_u32(~(~(vec3<u32>(0u, 4294967295u, 1u) ^ global0[_wgslsmith_index_u32(arg_1.d, 31u)])), vec3<u32>(1u, _wgslsmith_clamp_u32(4294967295u << (0u % 32u), arg_1.d >> (53918u % 32u), 24513u), 1u)), !(!vec3<bool>(false, func_3(vec3<i32>(u_input.a, arg_0.x, u_input.a)).x, select(arg_1.c.a, false, arg_1.a))), Struct_1(arg_1.a, arg_1.a, 683f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 31>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, 2180f, -962f)) + vec3<f32>(1543f, -1005f, -705f)))))), vec3<f32>(-225f, -813f, 553f));
    let var_1 = func_4(-func_1(false), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1092f)) <= -271f, var_0.x, Struct_1(false, true, -1300f), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = max(vec2<u32>(_wgslsmith_add_u32(min(11478u, 43412u), abs(0u)) ^ func_4(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), Struct_2(false, var_1.c.c, var_1.c, var_1.a.x), 427f).a.x, var_1.a.x), select(~_wgslsmith_clamp_vec2_u32(var_1.a.xx, ~var_1.a.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.x, 1u), vec2<u32>(7620u, 1u))), ~(~select(var_1.a.xy, vec2<u32>(1u, 1u), var_1.c.b)), var_1.c.a && var_1.c.a));
    var var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -980f);
    var var_5 = var_2.x;
    let var_6 = _wgslsmith_mod_u32(var_2.x, _wgslsmith_div_u32(var_1.a.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_dot_vec3_i32(-firstTrailingBit(select(vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(u_input.a, -1i, 7025i), var_1.b)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-18721i, u_input.a, u_input.a)), -vec3<i32>(-2147483647i, u_input.a, 8669i)), -max(vec3<i32>(5449i, u_input.a, u_input.a), vec3<i32>(-38356i, u_input.a, 1i)))), ~var_1.a.x, _wgslsmith_mod_u32(countOneBits(var_1.a.x), var_2.x));
}

