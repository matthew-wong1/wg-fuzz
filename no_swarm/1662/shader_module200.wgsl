struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: array<u32, 32> = array<u32, 32>(44707u, 54220u, 1u, 11045u, 49184u, 4294967295u, 18746u, 47473u, 0u, 4294967295u, 1u, 12590u, 1u, 18580u, 48082u, 32721u, 24136u, 40903u, 98716u, 56403u, 36323u, 70326u, 87693u, 4294967295u, 44740u, 17042u, 1u, 8963u, 4294967295u, 11003u, 83407u, 34015u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_5(!any(select(vec2<bool>(false, true), select(vec2<bool>(arg_1.a.a.a, false), vec2<bool>(arg_1.a.a.a, arg_1.a.a.a), vec2<bool>(arg_1.a.a.a, true)), true)), Struct_3(arg_1.a, vec4<i32>(-2147483647i | arg_1.a.c, _wgslsmith_clamp_i32(arg_0.x | 17009i, 2147483647i, _wgslsmith_dot_vec2_i32(arg_0.wy, vec2<i32>(1i, arg_0.x))), firstLeadingBit(234i), _wgslsmith_clamp_i32(arg_1.b.x, select(-1i, 33722i, false), -20273i)), min(vec3<u32>(9647u, arg_1.c.x, 1u) & vec3<u32>(47138u, global1[_wgslsmith_index_u32(0u, 32u)], arg_1.a.b), vec3<u32>(~4294967295u, 4294967295u, countOneBits(arg_1.c.x))), arg_1.e, _wgslsmith_f_op_f32(ceil(arg_1.e))));
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    var var_1 = -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, countOneBits(1i), ~(~(-14696i))), vec3<i32>(_wgslsmith_dot_vec4_i32(arg_1.b, vec4<i32>(arg_0.x, 0i, 4594i, arg_1.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(10085i, -37343i, arg_0.x)), u_input.a.x) | arg_1.b.www);
    let var_2 = select(vec4<u32>((select(45496u, 12594u, arg_1.a.a.a) << (var_0.b.a.b % 32u)) & (~1u & min(var_0.b.a.b, 11072u)), ~reverseBits(min(global1[_wgslsmith_index_u32(69417u, 32u)], var_0.b.c.x)), 1u, ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a.b, 32u)], 32u)]) | _wgslsmith_add_u32(64741u, ~global1[_wgslsmith_index_u32(var_0.b.a.b, 32u)])), ~_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.x, 63272u, arg_1.a.b, global1[_wgslsmith_index_u32(arg_1.c.x, 32u)]), vec4<u32>(0u, 62028u, arg_1.c.x, 2404u))), ~vec4<u32>(arg_1.c.x, global1[_wgslsmith_index_u32(1u, 32u)], 4294967295u, var_0.b.a.b) << (abs(vec4<u32>(85028u, var_0.b.c.x, arg_1.c.x, arg_1.a.b)) % vec4<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.c.x, 6990u) << (firstTrailingBit(vec2<u32>(arg_1.a.b, arg_1.a.b)) % vec2<u32>(32u)), vec2<u32>(max(42671u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20097u, 32u)], 32u)]), select(arg_1.a.b, 0u, false))) < 4294967295u);
    return _wgslsmith_f_op_f32(-arg_2) == arg_1.e;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec2_u32(arg_1.c.yy, vec2<u32>(1u, 4294967295u));
    let var_1 = !(!func_3(~vec4<i32>(58451i, arg_1.a.c, u_input.b.x, -78200i), Struct_3(arg_1.a, arg_1.b, vec3<u32>(4294967295u, var_0, arg_3.x), arg_1.d, arg_1.e), -111f, arg_1.a.a.b.xxx)) && any(select(arg_2.b, select(arg_2.b, vec4<bool>(true, arg_1.a.a.a, arg_2.b.x, arg_2.b.x), vec4<bool>(true, arg_2.b.x, arg_2.c.x, true)), all(arg_2.b.yxz) || select(arg_1.a.a.a, arg_1.a.a.a, arg_1.a.a.a)));
    global1 = array<u32, 32>();
    var var_2 = vec4<u32>(~var_0, ~1u, arg_3.x, 19993u);
    let var_3 = _wgslsmith_f_op_f32(arg_1.e - arg_2.a);
    return select(select(!vec3<bool>(arg_1.b.x != 1i, func_3(vec4<i32>(arg_0, arg_0, arg_1.b.x, arg_0), arg_1, 707f, arg_1.a.a.b.ywx), true), arg_2.c, any(!arg_2.b.zzy) || all(select(vec2<bool>(arg_2.b.x, true), vec2<bool>(arg_2.b.x, false), var_1))), arg_2.c, vec3<bool>(!all(vec2<bool>(var_1, true)), all(vec4<bool>(any(global0[_wgslsmith_index_u32(var_2.x, 21u)]), false, true, any(vec4<bool>(var_1, true, arg_2.c.x, false)))), !all(select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 32u)], 32u)], 21u)], vec3<bool>(arg_2.c.x, true, false), false))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> vec3<bool> {
    return select(vec3<bool>(any(!func_2(-1i, Struct_3(Struct_2(Struct_1(false, vec4<f32>(834f, 1000f, -719f, -794f), vec2<f32>(-819f, 493f)), 1u, 49300i), arg_1, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(1u, 32u)], 1u), 1346f, -1183f), Struct_4(-2064f, vec4<bool>(false, false, true, false), vec3<bool>(true, false, true)), vec3<u32>(0u, global1[_wgslsmith_index_u32(33799u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68470u, 32u)], 32u)], 32u)]))), false, true), !global0[_wgslsmith_index_u32(reverseBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)]), 21u)], select(func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(-1i, arg_0.x, arg_0.x)), 8580i), Struct_3(Struct_2(Struct_1(true, vec4<f32>(-689f, -1333f, 917f, 1322f), vec2<f32>(-734f, -146f)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11525u, 32u)], 32u)], 32u)], 2147483647i), max(vec4<i32>(-60835i, u_input.a.x, 48634i, u_input.b.x), vec4<i32>(u_input.a.x, -2147483647i, -15221i, -2147483647i)), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36163u, 32u)], 32u)], 13335u, 23687u), -1000f, -1494f), Struct_4(_wgslsmith_f_op_f32(-2005f - -902f), vec4<bool>(true, true, true, false), vec3<bool>(true, true, true)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], ~global1[_wgslsmith_index_u32(43590u, 32u)], 69280u)), vec3<bool>(false, select(select(true, false, true), select(false, false, true), true), false), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 21>();
    let var_0 = !select(vec4<bool>(any(vec3<bool>(false, true, false)) | true, true, true, select(true, true, true) & true), vec4<bool>(true, all(func_1(vec3<i32>(58472i, u_input.b.x, -2147483647i), vec4<i32>(-1i, 1i, 23190i, u_input.a.x))), true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), vec4<bool>(true, true, func_3(vec4<i32>(u_input.a.x, -14236i, -46552i, 88993i), Struct_3(Struct_2(Struct_1(true, vec4<f32>(-1037f, -275f, -914f, -271f), vec2<f32>(1000f, -695f)), 12924u, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 7972i), vec3<u32>(31233u, 31829u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31316u, 32u)], 32u)], 32u)], 32u)]), 1003f, 1000f), -2360f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-561f, 571f, -532f))), true));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 963f))))))), !select(vec4<bool>(true, true, any(var_0), true), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x), var_0.x), var_0, vec4<bool>(true, var_0.x, true, false)), vec4<bool>(true, true, func_2(67944i, Struct_3(Struct_2(Struct_1(var_0.x, vec4<f32>(-1000f, 1810f, -349f, 385f), vec2<f32>(-2468f, 111f)), 4294967295u, 1i), vec4<i32>(1i, u_input.b.x, 2147483647i, 38815i), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15465u, 32u)], 32u)], global1[_wgslsmith_index_u32(55478u, 32u)], 0u), -1000f, -388f), Struct_4(-641f, var_0, var_0.zwy), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(16886u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)])).x, any(vec2<bool>(var_0.x, var_0.x)))), vec3<bool>(!func_2(u_input.b.x, Struct_3(Struct_2(Struct_1(var_0.x, vec4<f32>(724f, -253f, 1073f, 572f), vec2<f32>(-171f, 1000f)), 4294967295u, u_input.a.x), vec4<i32>(u_input.b.x, -8498i, u_input.a.x, 0i), vec3<u32>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1515u, 32u)], 32u)], 32u)], 91933u), -1386f, -998f), Struct_4(-1897f, var_0, vec3<bool>(false, true, true)), ~vec3<u32>(0u, 1u, 4294967295u)).x, _wgslsmith_f_op_f32(trunc(-128f)) >= 926f, var_0.x));
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    var var_2 = !select(!select(!vec4<bool>(true, true, true, var_1.b.x), var_1.b, true), vec4<bool>(all(vec3<bool>(var_1.b.x, false, var_0.x)), any(global0[_wgslsmith_index_u32(1439u, 21u)]), false, true), !(!var_1.b));
    let var_3 = 4294967295u;
    let var_4 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(26297u, ~(4294967295u >> (1u % 32u)), 1u), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(43751u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 1u) >> (vec3<u32>(79191u, 1u, 1u) % vec3<u32>(32u)), abs(vec3<u32>(4294967295u, 26157u, 4294967295u))), ~(~vec3<u32>(global1[_wgslsmith_index_u32(var_3, 32u)], 0u, var_3))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(8217u, 32u)], 4294967295u), vec3<u32>(1u, 21170u, 12341u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(reverseBits(0u), ~abs(~var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) + -2405f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f), var_1.a))), u_input.a.x, var_1.a);
}

