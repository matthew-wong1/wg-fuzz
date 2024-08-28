struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(0i, 148f, -8894i, vec3<i32>(1i, -10470i, -52831i), 17758i), Struct_1(i32(-2147483648), -937f, 29181i, vec3<i32>(-16455i, 5198i, 2147483647i), 1i), Struct_1(-1i, 2396f, 39281i, vec3<i32>(-49125i, -6086i, -44301i), 10948i), Struct_1(-29237i, -904f, 0i, vec3<i32>(-1i, 1i, -28265i), 61579i), Struct_1(0i, 1291f, -59454i, vec3<i32>(4807i, i32(-2147483648), -27509i), -55821i), Struct_1(-1i, -317f, 1i, vec3<i32>(11953i, 2147483647i, -1i), -1i), Struct_1(5085i, 875f, -80457i, vec3<i32>(33857i, 2147483647i, -12337i), 2147483647i), Struct_1(2147483647i, -426f, -3634i, vec3<i32>(10320i, 13730i, 26284i), i32(-2147483648)), Struct_1(1i, 1000f, -39816i, vec3<i32>(19073i, -59099i, i32(-2147483648)), 0i), Struct_1(9764i, -792f, i32(-2147483648), vec3<i32>(1826i, 0i, 0i), i32(-2147483648)), Struct_1(-19534i, 1351f, i32(-2147483648), vec3<i32>(-42315i, -35272i, i32(-2147483648)), -33745i), Struct_1(i32(-2147483648), 3179f, -1i, vec3<i32>(-30320i, -4103i, i32(-2147483648)), -42997i), Struct_1(21281i, 536f, 2147483647i, vec3<i32>(i32(-2147483648), -1i, 2147483647i), 0i), Struct_1(25018i, 739f, 20881i, vec3<i32>(-15752i, -16382i, -1i), 38610i), Struct_1(12726i, -718f, 27958i, vec3<i32>(-13145i, 14458i, 2147483647i), 5436i), Struct_1(13980i, 577f, 40100i, vec3<i32>(i32(-2147483648), 1647i, 36706i), 2147483647i), Struct_1(-6553i, 1454f, 2147483647i, vec3<i32>(2147483647i, -18723i, -86358i), 0i), Struct_1(-12885i, -479f, -44002i, vec3<i32>(0i, 44233i, 1i), -49934i), Struct_1(2147483647i, 160f, -26770i, vec3<i32>(-25083i, -17487i, -53701i), 0i), Struct_1(-1i, -229f, i32(-2147483648), vec3<i32>(-26808i, 0i, -52775i), -14878i), Struct_1(-15615i, 111f, 2147483647i, vec3<i32>(-18747i, 1i, -13571i), 0i), Struct_1(28087i, 667f, i32(-2147483648), vec3<i32>(-30892i, -36983i, 63460i), -48897i), Struct_1(2147483647i, -475f, 18187i, vec3<i32>(34131i, -56626i, -66177i), -1i));

var<private> global2: array<Struct_1, 29>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    let var_0 = select(vec2<u32>(0u, ~0u), vec2<u32>(~_wgslsmith_add_u32(~23797u, 0u << (0u % 32u)), 9512u), true);
    let var_1 = false;
    global2 = array<Struct_1, 29>();
    global2 = array<Struct_1, 29>();
    global2 = array<Struct_1, 29>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -293f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(arg_0 + 589f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2509f, -401f, -1209f)))))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec3<u32>) -> f32 {
    var var_0 = 2147483647i;
    global2 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1022f, 235f)), 256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(step(867f, arg_0)))))));
    let var_2 = firstLeadingBit(countOneBits(~(-vec4<i32>(u_input.a, arg_2.a.e, -1i, -2147483647i))));
    let var_3 = global1[_wgslsmith_index_u32(46647u, 23u)];
    return arg_2.a.b;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global0 = !(!vec4<bool>(false, !global0.x, global0.x, all(vec2<bool>(global0.x, true)) | true));
    let var_0 = Struct_3(Struct_1(0i, _wgslsmith_f_op_f32(step(arg_0, 322f)), i32(-1i) * -1i, arg_2.d, select(i32(-1i) * -u_input.a, countOneBits(-102215i), true)));
    global0 = !select(select(select(!vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), select(vec4<bool>(false, global0.x, false, true), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, true, true)), global0.x), !select(true, true, global0.x)), vec4<bool>(9639i <= var_0.a.e, true, true, global0.x), (all(vec4<bool>(true, false, global0.x, false)) || (var_0.a.a == 1i)) && (_wgslsmith_mult_i32(-2147483647i, var_0.a.e) >= u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.b)), -204f) - _wgslsmith_f_op_f32(trunc(arg_2.b))), -1118f));
    let var_2 = ~u_input.a;
    return -860f;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = arg_1;
    var var_1 = vec4<f32>(-803f, 773f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-807f, 853f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(743f, -1046f)) - arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(arg_0.x, vec3<u32>(2674u, 1u, 0u), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<u32>(4294967295u, 1u, 11125u))), _wgslsmith_f_op_f32(sign(arg_0.x)))), vec3<u32>(1u, 1u, 1u), Struct_1(-u_input.a, _wgslsmith_f_op_f32(abs(173f)), u_input.a, arg_1.a.yzz, ~11313i)))));
    let var_2 = -(i32(-1i) * -34946i);
    global1 = array<Struct_1, 23>();
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(4294967295u, 23u)]);
    return vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(-arg_1.a.x, _wgslsmith_mult_i32(34797i, var_3.a.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(max(var_2, 3534i), abs(u_input.a)), vec2<i32>(~(-2147483647i), u_input.a))), 2147483647i, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 29>();
    let var_0 = func_1(vec3<f32>(2056f, -618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-401f))))), Struct_2(_wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 14298i, -2147483647i, u_input.a), vec4<i32>(-36674i, 0i, u_input.a, -4937i), vec4<i32>(32450i, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -27767i, 1i, 2147483647i), vec4<i32>(19001i, 2147483647i, u_input.a, -31288i)) ^ vec4<i32>(2147483647i, 0i, u_input.a, -50550i)), !(global0.x & true)));
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(728f - _wgslsmith_f_op_f32(trunc(-1638f)))))));
    let var_3 = ~(~(~(~vec3<u32>(0u, 4294967295u, 4294967295u))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(750f, _wgslsmith_div_f32(1526f, -3055f)), _wgslsmith_div_f32(216f, _wgslsmith_f_op_f32(-1915f - -1240f)))))) + _wgslsmith_f_op_f32(max(-1045f, _wgslsmith_f_op_f32(-1432f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2937f - 1000f) - 558f)))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) * 2116f);
    var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(425f, -782f, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_3.x, 4294967295u) & var_3.x, ~firstLeadingBit(0u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_3.zx, var_3.xy), var_3.zx >> (vec2<u32>(0u, var_3.x) % vec2<u32>(32u))), max(var_3.yz, ~var_3.yx), _wgslsmith_add_vec2_u32(reverseBits(var_3.zx), _wgslsmith_clamp_vec2_u32(var_3.zz, var_3.yx, var_3.zy)))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, var_0.x), var_0), -7338i, var_0.x), vec4<i32>(~var_0.x, -40025i, i32(-1i) * -12063i, 0i ^ u_input.a), true), select((vec4<i32>(var_0.x, var_0.x, u_input.a, -1i) ^ vec4<i32>(-19530i, var_0.x, var_0.x, u_input.a)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-55378i, var_0.x, -1i, -70440i), vec4<i32>(var_0.x, var_0.x, -29525i, -28384i)), firstTrailingBit(firstLeadingBit(vec4<i32>(0i, 1i, 2147483647i, 2147483647i))), select(vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, false, true), global0.x), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x))))), 4294967295u);
}

