struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1299f, 612f), vec2<f32>(225f, -611f), vec2<f32>(1575f, 953f), vec2<f32>(747f, 937f), vec2<f32>(540f, -637f), vec2<f32>(403f, -1051f), vec2<f32>(-895f, 319f), vec2<f32>(751f, -103f), vec2<f32>(-1565f, -655f), vec2<f32>(-1000f, 1974f), vec2<f32>(-1000f, -548f), vec2<f32>(375f, -396f));

var<private> global1: u32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, arg_1.a, arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(834f, 550f, 379f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 484f, -576f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-514f, 427f, arg_1.a) - vec3<f32>(239f, -714f, 718f))))))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(-2121f, Struct_3(-1182f), u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-987f, -227f, 151f))))))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1263f, 363f, 302f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, 864f, 668f))))), vec2<i32>(-1i, -u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-977f)) * _wgslsmith_f_op_f32(-1076f + -1788f)) < -165f, select(countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, 0i)), reverseBits(vec4<i32>(1i, u_input.b, 1i, u_input.c)), vec4<bool>(true, true, true, true)), vec2<u32>(~_wgslsmith_sub_u32(22104u, arg_0.x), _wgslsmith_mult_u32(4294967295u, u_input.a.x) >> (1u % 32u))), !any(vec3<bool>(false, true, true)), countOneBits(reverseBits(_wgslsmith_div_u32(7998u, ~1u))));
    global0 = array<vec2<f32>, 12>();
    var var_1 = var_0.b;
    var var_2 = !(!(!(!select(vec4<bool>(true, true, var_1.c, var_1.c), vec4<bool>(var_0.b.c, var_1.c, var_1.c, true), true))));
    let var_3 = var_0.b;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.a)) + vec3<f32>(1419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_3.a.x) * 1110f), var_3.a.x)), _wgslsmith_sub_vec2_i32(firstLeadingBit(-var_3.b), vec2<i32>(max(1i, 13884i), var_1.b.x)), false, var_1.d | ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.d.x, var_0.b.d.x, var_1.d.x, 0i), var_1.d, var_0.b.d) ^ abs(vec4<i32>(67173i, -14850i, u_input.b, u_input.c))), select(min(var_3.e, _wgslsmith_sub_vec2_u32(u_input.d.yz, var_1.e << (vec2<u32>(var_3.e.x, 27324u) % vec2<u32>(32u)))), firstLeadingBit(arg_0.zw), !(!var_1.c)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> vec4<u32> {
    global0 = array<vec2<f32>, 12>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), func_2(u_input.d), true, 3108u);
    return _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, ~(select(vec4<u32>(0u, u_input.a.x, var_0.b.e.x, u_input.d.x), vec4<u32>(var_0.b.e.x, u_input.d.x, 1u, var_0.b.e.x), vec4<bool>(var_0.c, false, false, true)) ^ vec4<u32>(u_input.a.x, var_0.b.e.x, 1u, var_0.b.e.x))), ~countOneBits(~vec4<u32>(var_0.d, 1u, 658u, var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d >> (~(vec4<u32>(_wgslsmith_sub_u32(1323u, 0u), min(42342u, 48293u), u_input.d.x, 75158u << (u_input.a.x % 32u)) >> (func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1292f, 123f, 171f, 238f) - vec4<f32>(-949f, -574f, 981f, 664f)), true) % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = countOneBits(_wgslsmith_mult_u32(~(~var_0.x | u_input.d.x), 21275u));
    var_0 = vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(0u, var_0.x), u_input.d.x, _wgslsmith_div_u32(u_input.d.x, var_0.x)), min(18978u, 44542u)), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, var_0.x), firstTrailingBit(u_input.d.x), func_1(vec4<f32>(1000f, 1129f, 988f, -618f), false).x), 4294967295u), reverseBits(88908u));
    let var_1 = Struct_3(-555f);
    var var_2 = var_1;
    var var_3 = any(vec2<bool>(true, false)) || func_2(vec4<u32>(58974u, ~0u >> (~u_input.d.x % 32u), 1u, var_0.x & select(1u, 85871u, true))).c;
    var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1165f, var_2.a, 1768f))))), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(u_input.b, -2147483647i), _wgslsmith_add_i32(-38394i, u_input.b))), vec2<i32>(i32(-1i) * -u_input.c, -1i)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), var_1.a < -1695f)), ~(~(~(vec4<i32>(u_input.c, u_input.c, 48837i, -2147483647i) & vec4<i32>(5372i, u_input.c, -52497i, u_input.c)))), vec2<u32>(var_0.x, ~1943u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(select(-1543f, 2420f, false)), var_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-603f, 444f, var_4.a.x), var_4.a))))), vec4<u32>(1u, u_input.a.x, u_input.d.x, func_2(vec4<u32>(abs(u_input.a.x), _wgslsmith_div_u32(var_0.x, 70806u), 47334u, 47815u)).e.x));
}

