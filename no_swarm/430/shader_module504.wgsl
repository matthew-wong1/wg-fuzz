struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(896u);

var<private> global1: f32 = -734f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> vec4<u32> {
    global1 = _wgslsmith_f_op_f32(abs(arg_1.a.d.x));
    global1 = 880f;
    global0 = array<u32, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.d.yw)));
    global0 = array<u32, 1>();
    return countOneBits(_wgslsmith_add_vec4_u32(countOneBits(~(vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], 0u, 19399u, 28384u) << (vec4<u32>(0u, 1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)]) % vec4<u32>(32u)))), firstTrailingBit(abs(~vec4<u32>(u_input.b.x, 77229u, u_input.b.x, u_input.b.x)))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = -6066i;
    var var_2 = !any(!vec4<bool>(true, true, all(vec2<bool>(var_0.a, arg_3.a)), global0[_wgslsmith_index_u32(u_input.b.x, 1u)] < 0u));
    var var_3 = ~abs(vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 1u)], global0[_wgslsmith_index_u32(37733u, 1u)], 4294967295u, arg_1.x) | countOneBits(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23718u, 1u)], 1u)], 61424u, 4294967295u))) >> (abs(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.x, 4294967295u, 1u, u_input.b.x) >> ((vec4<u32>(32298u, 1108u, arg_1.x, 1u) >> (vec4<u32>(28462u, u_input.b.x, 20732u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), func_3(Struct_1(var_0.a, 21790i, arg_2.x, vec4<f32>(arg_0, var_0.c, -2448f, arg_3.d.x)), Struct_2(var_0), -1362f))) % vec4<u32>(32u));
    var_3 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_3.x, u_input.b.x, 1u) | _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], var_3.x, var_3.x, global0[_wgslsmith_index_u32(44322u, 1u)]), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 43188u)), abs(vec4<u32>(52771u, 4341u, global0[_wgslsmith_index_u32(8674u, 1u)], arg_1.x))));
    return Struct_1(!var_0.a, ~var_0.b, _wgslsmith_f_op_f32(round(853f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) * _wgslsmith_f_op_f32(295f * 418f)), -918f, _wgslsmith_f_op_f32(select(-114f, _wgslsmith_div_f32(1141f, arg_2.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, arg_2.x))) + _wgslsmith_f_op_vec4_f32(-arg_3.d)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0.a.a;
    var var_1 = var_0;
    var var_2 = 287f;
    var_1 = (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 19708i, u_input.a), arg_1.b) << (u_input.b.x % 32u)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, arg_0.a.b), -(-vec3<i32>(u_input.a, 1i, arg_0.a.b) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b, 2147483647i, arg_1.b), vec3<i32>(-1i, -31463i, -1i))));
    var var_3 = arg_0;
    return Struct_1(any(select(vec3<bool>(all(vec2<bool>(true, true)), var_0 && true, arg_0.a.a), select(select(vec3<bool>(false, var_3.a.a, true), vec3<bool>(var_3.a.a, true, var_0), var_0), select(vec3<bool>(arg_1.a, false, true), vec3<bool>(false, var_3.a.a, var_3.a.a), var_3.a.a), vec3<bool>(arg_1.a, false, var_3.a.a)), var_0)), ~(i32(-1i) * -34767i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-472f, _wgslsmith_f_op_f32(round(var_3.a.d.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, arg_1.d.x, 968f, -1749f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1763f, 307f, 1118f), vec4<f32>(145f, arg_1.c, 523f, 1791f)))))))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_4(Struct_2(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1443f + 377f), _wgslsmith_f_op_f32(-1633f * -223f))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(16239u, 1u)], arg_0), vec2<u32>(1u, 4294967295u)), ~vec2<u32>(arg_0, 20155u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1180f, 1325f)), Struct_1(true, u_input.a & -59157i, _wgslsmith_f_op_f32(-2127f * -2143f), vec4<f32>(1822f, 890f, 250f, -1748f)))), Struct_1(true, countOneBits(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -802f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_div_vec4_f32(vec4<f32>(200f, 798f, -1264f, 418f), vec4<f32>(1054f, 1000f, 681f, -1232f)))))), ~(-vec2<i32>(2147483647i, -2147483647i)) | firstTrailingBit(-vec2<i32>(0i, 34220i)));
    let var_1 = select(vec3<bool>(all(select(vec3<bool>(true, false, true), select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), false), !var_0.a)), var_0.a, !var_0.a), !(!vec3<bool>(var_0.a, true, all(vec3<bool>(false, true, var_0.a)))), var_0.a && !var_0.a);
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(min(-1974f, 1110f))))))));
    let var_2 = func_4(Struct_2(Struct_1(false, _wgslsmith_sub_i32(abs(var_0.b), -32648i >> (global0[_wgslsmith_index_u32(arg_0, 1u)] % 32u)), var_0.c, var_0.d)), var_0, -(~abs(vec2<i32>(30283i, -1i))) << (u_input.b % vec2<u32>(32u)));
    var var_3 = var_0.a;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = 7712u;
    var var_2 = func_1(93803u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(6429i, 23164i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.d - vec4<f32>(var_2.c, var_2.d.x, 115f, var_2.c)) + _wgslsmith_f_op_vec4_f32(var_2.d - var_2.d)))), _wgslsmith_f_op_vec4_f32(var_2.d + _wgslsmith_f_op_vec4_f32(-var_2.d))), 691f, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, 0i, u_input.a), -vec3<i32>(46117i, 48207i, 44010i)), (vec3<i32>(41755i, var_2.b, 2147483647i) ^ vec3<i32>(-2147483647i, var_2.b, u_input.a)) & -vec3<i32>(u_input.a, -4662i, var_2.b)) ^ _wgslsmith_sub_vec3_i32(~vec3<i32>(18041i, -2147483647i, 19263i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-14607i, 45281i, var_2.b), vec3<i32>(-12698i, var_2.b, -2147483647i), vec3<i32>(var_2.b, -6718i, var_2.b)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a, -1i, var_2.b)), vec3<i32>(-1i, u_input.a, u_input.a))), ~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.b.x), vec3<u32>(var_0.x, var_0.x, 0u), vec3<u32>(global0[_wgslsmith_index_u32(25857u, 1u)], 4294967295u, 4294967295u)) & vec3<u32>(var_1, 19203u, global0[_wgslsmith_index_u32(23742u, 1u)]), (vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], var_0.x) & vec3<u32>(2867u, var_1, u_input.b.x)) ^ firstLeadingBit(vec3<u32>(var_1, var_0.x, u_input.b.x)), select(select(vec3<bool>(false, true, var_2.a), vec3<bool>(var_2.a, var_2.a, true), var_2.a), vec3<bool>(true, true, false), select(vec3<bool>(false, var_2.a, true), vec3<bool>(var_2.a, true, false), false))));
}

