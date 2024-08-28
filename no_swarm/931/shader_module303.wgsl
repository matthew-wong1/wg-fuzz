struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = arg_1.x;
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    var var_1 = vec2<i32>(-1i) * -abs(-abs(vec2<i32>(u_input.a, u_input.a)));
    return 0i;
}

fn func_3() -> f32 {
    let var_0 = Struct_1(select(-(vec4<i32>(-1i) * -vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a)), vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, -1996i, u_input.a, u_input.a)), global0[_wgslsmith_index_u32(130582u, 25u)]), ~vec4<i32>(reverseBits(_wgslsmith_add_i32(u_input.a, u_input.a)), abs(-u_input.a), 9385i, u_input.a));
    var var_1 = Struct_2(-1673f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-216f, -632f, 385f))))), var_0, select(global0[_wgslsmith_index_u32(~1u, 25u)], select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 9371u | u_input.b.x), 25u)], !global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true), select(-1000f > _wgslsmith_f_op_f32(sign(-401f)), !(29967i >= u_input.a), false)));
    let var_2 = _wgslsmith_f_op_f32(ceil(var_1.b.x));
    var var_3 = var_0;
    var var_4 = var_0;
    return var_2;
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<bool>, 25>();
    var var_0 = Struct_1(-max(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, 63705i), vec4<i32>(u_input.a, 0i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 25798i, u_input.a)), reverseBits(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))), ~reverseBits(vec4<i32>(u_input.a, -1i, -40381i, u_input.a))), vec4<i32>(func_2(-617f, vec4<u32>(u_input.b.x, 27158u, 0u, 66982u) >> (~vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(660f + 982f), -1595f, _wgslsmith_f_op_f32(-122f * 351f))), 2147483647i ^ (firstLeadingBit(1i) ^ u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -72119i, -u_input.a), abs(vec4<i32>(u_input.a, -5526i, u_input.a, u_input.a) ^ vec4<i32>(-32361i, -2147483647i, u_input.a, u_input.a))), -_wgslsmith_mod_i32(u_input.a, ~u_input.a)));
    global0 = array<vec4<bool>, 25>();
    var var_1 = _wgslsmith_f_op_f32(func_3());
    var_0 = Struct_1(_wgslsmith_mod_vec4_i32(var_0.a, -(~var_0.a)), ~var_0.b);
    return Struct_1(_wgslsmith_sub_vec4_i32(var_0.a, firstTrailingBit(~var_0.a)) >> (u_input.b % vec4<u32>(32u)), var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = select(countOneBits(select(~_wgslsmith_mod_vec3_u32(u_input.b.ywz, vec3<u32>(1u, 4294967295u, 34393u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u)), !vec3<bool>(true, false, arg_2.b))), ~u_input.b.wyx, false);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(select(arg_2.a.x, 1032f, arg_2.b)), _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, arg_2.a.x, arg_2.a.x) + vec3<f32>(arg_2.a.x, arg_2.a.x, 1437f))))), arg_0, vec4<bool>(arg_2.b, arg_2.a.x == arg_2.a.x, arg_2.b, !arg_2.b));
    let var_2 = vec3<bool>(true, var_1.d.x & all(select(global0[_wgslsmith_index_u32(0u, 25u)], !vec4<bool>(false, false, var_1.d.x, arg_2.b), true)), var_1.d.x);
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var_0 = 1u;
    var var_1 = func_4(func_1(), vec2<i32>(min(u_input.a, u_input.a), u_input.a) ^ vec2<i32>(~(u_input.a | 1i), _wgslsmith_div_i32(~7201i, u_input.a)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1343f, -1039f))), vec2<f32>(1000f, -2351f), vec2<bool>(false, true)))), true));
    global0 = array<vec4<bool>, 25>();
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(-639f * 476f), var_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)) * _wgslsmith_f_op_f32(func_3()))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-993f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) + -236f), 167f), _wgslsmith_f_op_f32(f32(-1f) * -690f)), -select(vec4<i32>(abs(u_input.a), -2147483647i & u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a)), u_input.a), reverseBits(vec4<i32>(2320i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(-1i, u_input.a, -1i, u_input.a)), true), ~u_input.b.x, _wgslsmith_clamp_u32(reverseBits(u_input.b.x), u_input.b.x, u_input.b.x), func_4(Struct_1(vec4<i32>(i32(-1i) * -45844i, u_input.a, u_input.a, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(14286i, 0i, -21002i, u_input.a) | vec4<i32>(u_input.a, u_input.a, 2240i, -43135i), -vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), vec2<i32>(func_2(_wgslsmith_f_op_f32(ceil(var_1.a.x)), u_input.b << (vec4<u32>(0u, u_input.b.x, 29358u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(111f, var_1.a.x, -339f))), -4438i), Struct_3(var_1.a, u_input.a >= select(-87625i, -17155i, true))).a);
}

