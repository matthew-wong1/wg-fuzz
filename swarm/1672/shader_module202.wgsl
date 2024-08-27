struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, -11968i);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<bool>(false, true, true), true, 1707f), Struct_1(vec3<bool>(true, true, false), true, -1129f), Struct_1(vec3<bool>(true, false, false), true, -2146f), Struct_1(vec3<bool>(true, true, false), true, -692f), Struct_1(vec3<bool>(true, false, false), true, -1398f), Struct_1(vec3<bool>(false, false, true), true, 375f), Struct_1(vec3<bool>(true, true, false), true, -1000f), Struct_1(vec3<bool>(false, false, true), true, 1372f), Struct_1(vec3<bool>(false, true, true), false, 156f), Struct_1(vec3<bool>(false, false, true), true, 1010f), Struct_1(vec3<bool>(false, true, true), true, -129f), Struct_1(vec3<bool>(false, false, false), true, -159f), Struct_1(vec3<bool>(true, false, false), true, 1540f), Struct_1(vec3<bool>(true, false, false), true, -693f), Struct_1(vec3<bool>(true, true, false), true, -480f), Struct_1(vec3<bool>(true, false, true), true, 1490f), Struct_1(vec3<bool>(false, false, false), true, -1416f), Struct_1(vec3<bool>(true, false, false), false, -1017f), Struct_1(vec3<bool>(false, false, false), false, -147f), Struct_1(vec3<bool>(false, false, true), true, 544f), Struct_1(vec3<bool>(false, false, false), false, 591f), Struct_1(vec3<bool>(true, true, false), true, 1827f), Struct_1(vec3<bool>(true, true, true), true, -527f), Struct_1(vec3<bool>(false, true, true), true, 1700f), Struct_1(vec3<bool>(false, true, true), true, -558f), Struct_1(vec3<bool>(true, false, true), false, 1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(1u, 26u)];
    var_1 = Struct_1(!select(vec3<bool>(arg_0, true, false), var_1.a, var_1.a), _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-693f))))) != var_1.c, -956f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, var_1.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -698f, var_1.c)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) + _wgslsmith_div_f32(var_1.c, -776f)), var_1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-674f * var_1.c)))), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(var_1.b, arg_0), true)), arg_0, false))));
    return _wgslsmith_div_i32(2147483647i, -_wgslsmith_add_i32(~(-24277i), -34257i));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: u32, arg_3: vec4<u32>) -> bool {
    var var_0 = func_3(!(!(_wgslsmith_f_op_f32(834f - 986f) > _wgslsmith_f_op_f32(step(-417f, -1618f)))));
    let var_1 = Struct_1(vec3<bool>(true, false, false), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1679f + -1000f))) + _wgslsmith_f_op_f32(trunc(230f))));
    global1 = array<Struct_1, 26>();
    let var_2 = -734f;
    var var_3 = u_input.a ^ vec3<i32>(max(-25720i, -u_input.a.x) ^ 6437i, arg_0.x, abs(-2147483647i));
    return var_1.a.x;
}

fn func_4(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_2(~66107u, Struct_1(vec3<bool>(true, !(!arg_0.x), all(arg_0.zy)), !arg_0.x, -253f));
    global1 = array<Struct_1, 26>();
    var var_1 = var_0.b;
    var_1 = Struct_1(arg_0, any(!vec2<bool>(!arg_0.x, var_0.b.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-436f)))));
    let var_2 = Struct_1(!(!select(!var_0.b.a, var_1.a, !var_1.b)), false, -725f);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.c), 572f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(947f)))), _wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(any(vec4<bool>(true, func_2(vec3<i32>(1979i, global0.x, global0.x), 0u, u_input.c.x, vec4<u32>(77266u, u_input.c.x, u_input.c.x, u_input.c.x)), -2881i > u_input.d, any(vec4<bool>(true, false, false, false)))), true, any(vec3<bool>(any(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, true)), false)))));
    let var_1 = ~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, _wgslsmith_clamp_u32(0u, u_input.c.x, u_input.c.x)) | vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 63833u), ~13910u, u_input.c.x, ~u_input.c.x)) & ~countOneBits(select(vec4<u32>(u_input.c.x, 31087u, 123727u, u_input.c.x) >> (vec4<u32>(23500u, u_input.c.x, 22909u, 10116u) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, 17260u, u_input.c.x, 59916u), select(true, false, false)));
    let var_2 = Struct_2(u_input.c.x, Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true, var_0.x));
    global1 = array<Struct_1, 26>();
    let var_3 = vec4<u32>(~abs(u_input.c.x), ~(~(~(~17356u))), 0u, 61904u);
    return Struct_2(~1u, global1[_wgslsmith_index_u32(1u, 26u)]);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global1 = array<Struct_1, 26>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 26u)];
    global0 = vec2<i32>(-1i) * -u_input.a.xz;
    global1 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c, 2076f)), vec2<f32>(-1372f, 1723f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.c, 401f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-241f, 2009f), vec2<f32>(883f, -1710f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(163f, arg_0.b.c)))))));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(arg_1, arg_1)), firstTrailingBit(vec2<u32>(u_input.c.x, arg_0.a)))), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, arg_0.a, 1u), vec4<u32>(arg_1, 19600u, 74964u, arg_1)) | ~vec4<u32>(u_input.c.x, 28910u, u_input.c.x, 1u), vec4<u32>(arg_1, 85924u | u_input.c.x, u_input.c.x, arg_0.a)), arg_1 << (~u_input.c.x % 32u))), 26u)];
    let var_1 = u_input.d;
    var var_2 = func_5(Struct_2(_wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(29968u, 19851u, 24919u, arg_0.a), vec4<u32>(u_input.c.x, arg_0.a, arg_1, arg_1), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, arg_1, u_input.c.x, 1u), vec4<u32>(0u, 1u, arg_0.a, u_input.c.x)), vec4<bool>(var_0.b, arg_2, true, false)), select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 23930u, u_input.c.x, arg_0.a), vec4<u32>(u_input.c.x, 1883u, arg_1, 0u)), vec4<u32>(4294967295u, u_input.c.x, arg_0.a, arg_0.a) & vec4<u32>(8645u, u_input.c.x, u_input.c.x, arg_1), true | arg_0.b.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, select(arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(27949u, u_input.c.x, arg_1, 93941u), vec4<u32>(u_input.c.x, arg_1, 53736u, 4294967295u)), true)), 26u)]), false).b;
    var var_3 = Struct_1(func_5(func_1(), true).b.a, func_1().b.b, func_1().b.c);
    var var_4 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.e, ~(vec4<i32>(var_1, -50635i, u_input.d, var_1) << (vec4<u32>(18945u, 27128u, u_input.c.x, 75566u) % vec4<u32>(32u)))), u_input.e));
    return func_5(arg_0, arg_0.b.a.x).b;
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = func_1().b;
    global0 = vec2<i32>(arg_2.x, 1i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 26>();
    var var_0 = func_7(reverseBits(abs(u_input.c.x)), Struct_2(u_input.c.x, func_6(func_5(func_1(), all(vec4<bool>(false, true, false, false))), _wgslsmith_dot_vec2_u32(u_input.c.zy, reverseBits(u_input.c.zy)), true)), ~vec4<i32>(~reverseBits(1i), func_3(false), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(14646i, u_input.b.x, 25032i, -1i), u_input.e)), global0.x), true);
    let var_1 = _wgslsmith_f_op_f32(func_5(Struct_2(_wgslsmith_sub_u32(~u_input.c.x, var_0.a), global1[_wgslsmith_index_u32(u_input.c.x, 26u)]), var_0.b.b).b.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c - _wgslsmith_f_op_f32(min(var_0.b.c, _wgslsmith_f_op_f32(max(523f, 1342f)))))));
    var var_2 = Struct_2(~(~min(u_input.c.x, 4294967295u) << (~var_0.a % 32u)), var_0.b);
    let var_3 = !(!vec4<bool>(var_2.b.a.x, all(!vec3<bool>(var_2.b.b, true, false)), false || var_2.b.a.x, all(!vec4<bool>(var_2.b.a.x, var_2.b.b, var_2.b.a.x, var_2.b.a.x))));
    let var_4 = Struct_1(vec3<bool>(var_1 > _wgslsmith_f_op_f32(round(var_2.b.c)), _wgslsmith_add_u32(func_1().a, 19577u ^ var_2.a) < 60822u, false), -14372i <= -firstLeadingBit(global0.x), var_0.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_dot_vec2_i32(u_input.e.yy, vec2<i32>(83867i, -2451i)), _wgslsmith_mod_i32(2147483647i, firstLeadingBit(-2147483647i)), ~1i, -countOneBits(_wgslsmith_clamp_i32(-1i, 459i, -38000i))), -vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -1i, -43439i), vec3<i32>(global0.x, u_input.e.x, global0.x) ^ vec3<i32>(-1i, global0.x, u_input.a.x)), abs(_wgslsmith_mod_i32(0i, -2147483647i)), ~global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, 1000f), vec2<f32>(-1000f, var_0.b.c)))) + vec2<f32>(var_0.b.c, _wgslsmith_f_op_f32(var_2.b.c + var_1))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c, var_1) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 115f) - vec2<f32>(var_4.c, var_4.c)))))), ~(~(_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(31865u, u_input.c.x)) >> (~var_0.a % 32u))), -838f);
}

