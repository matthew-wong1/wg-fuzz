struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4) -> bool {
    let var_0 = !(!select(select(vec3<bool>(arg_1.b.a, true, global0.a), vec3<bool>(global0.a, arg_1.b.a, arg_1.b.a), select(vec3<bool>(global0.a, arg_1.b.a, true), vec3<bool>(global0.a, global0.a, true), vec3<bool>(arg_1.b.a, arg_1.b.a, true))), !select(vec3<bool>(false, global0.a, arg_1.b.a), vec3<bool>(true, false, arg_1.b.a), global0.a), false));
    var var_1 = Struct_4(~reverseBits(vec4<u32>(34877u, arg_1.a.x, 0u, 1u) & ~vec4<u32>(arg_1.a.x, u_input.a.x, 1u, 1u)), Struct_1(true));
    var var_2 = _wgslsmith_div_i32(-60985i >> (1u % 32u), arg_0.x);
    let var_3 = _wgslsmith_div_vec4_i32(~(~reverseBits(vec4<i32>(2147483647i, 17245i, -2147483647i, arg_0.x))), -(~(vec4<i32>(8787i, -3217i, 23197i, arg_0.x) << (vec4<u32>(2591u, 0u, 1u, 4294967295u) % vec4<u32>(32u))) & vec4<i32>(abs(arg_0.x), abs(0i), -arg_0.x, -1i)));
    var var_4 = ~(~_wgslsmith_div_vec3_u32(min(u_input.a, ~vec3<u32>(0u, 35085u, arg_1.a.x)), var_1.a.zyw));
    return true;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = -(~_wgslsmith_sub_i32(~(-19472i >> (u_input.a.x % 32u)), -1i));
    var var_1 = Struct_1(func_3(~(~(-vec2<i32>(0i, 0i))), Struct_4(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(41627u, 7404u, 4294967295u, u_input.a.x)), Struct_1(global0.a))));
    let var_2 = Struct_2(!var_1.a);
    global0 = Struct_2(false);
    global0 = Struct_2((-var_0 ^ -var_0) == ~(select(var_0, -41690i, var_2.a) | ~var_0));
    return firstTrailingBit(-55091i << (~(~51397u | _wgslsmith_div_u32(0u, u_input.a.x)) % 32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(~arg_1.x, 56725i ^ -arg_1.x), _wgslsmith_mult_i32(-17784i, max(~(-2147483647i | arg_1.x), select(_wgslsmith_sub_i32(arg_1.x, arg_1.x), -9154i, true))));
    var_0 = -firstLeadingBit(arg_1.yx);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(255f * -493f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(295f, _wgslsmith_f_op_f32(f32(-1f) * -1501f)), -477f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1112f, 1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1859f, 491f), vec2<f32>(800f, 1611f), global0.a))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-134f, -645f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1016f, 1578f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, 656f))))));
    let var_2 = ~_wgslsmith_dot_vec3_u32(min(u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, arg_0.x)), ~min(u_input.a, u_input.a)) > 1u;
    var_0 = (vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 0i), arg_1.yy), -31545i) >> (vec2<u32>(select(45099u, firstTrailingBit(1u), select(var_2, true, true)), _wgslsmith_add_u32(1u, u_input.a.x ^ u_input.a.x)) % vec2<u32>(32u))) << ((u_input.a.zy ^ (countOneBits(_wgslsmith_mult_vec2_u32(u_input.a.zy, vec2<u32>(arg_0.x, 39085u))) & _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 1u), vec2<u32>(arg_0.x, arg_0.x)), select(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 0u), vec2<bool>(var_2, var_2))))) % vec2<u32>(32u));
    return Struct_3(-_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(arg_1.yz, arg_1.xx & arg_1.xx), max(1i, ~(-66374i))), _wgslsmith_f_op_f32(min(var_1.x, 1544f)), Struct_2(false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * -287f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-651f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-260f)) * -919f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(sign(1000f))), var_1.x, -360f, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -684f) == _wgslsmith_f_op_f32(ceil(var_1.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = vec3<u32>(u_input.a.x, _wgslsmith_add_u32(~firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_mod_u32(u_input.a.x, 4294967295u))), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(sign(-1554f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_3 = func_4(vec2<u32>(~select(var_0.x, u_input.a.x, global0.a), 13784u), vec3<i32>(0i, select(min(func_2(false), ~6860i), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, -10385i, -1i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), (400f != var_2) & false), _wgslsmith_add_i32(57485i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -14924i, -35971i), vec3<i32>(-17788i, -48708i, 2038i))) << (_wgslsmith_mult_u32(var_0.x, u_input.a.x) % 32u)));
    var var_4 = -7518i;
    return var_3;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_4(min(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1, u_input.a.x, arg_1), vec4<u32>(27412u, arg_1, 65400u, u_input.a.x)) >> (vec4<u32>(30069u, 29439u, 0u, 0u) % vec4<u32>(32u)), vec4<u32>(~18237u, arg_1 & arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 28098u, arg_1), vec3<u32>(arg_1, 4294967295u, 1u)), u_input.a.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_1, u_input.a.x), vec4<u32>(44987u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 4294967295u, 40541u, 12982u)) ^ max(reverseBits(vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 4294967295u, arg_1, 33192u))), arg_3);
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.d);
    global1 = -1000f;
    var var_2 = -753f;
    var var_3 = Struct_4(vec4<u32>(var_0.a.x, 69659u, 1u >> (var_0.a.x % 32u), firstLeadingBit(firstTrailingBit(~1u))), Struct_1(var_0.b.a));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -258f);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(133f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-975f))))));
    let var_0 = Struct_4((vec4<u32>(1u, u_input.a.x, _wgslsmith_div_u32(1u, u_input.a.x), 4294967295u) << (_wgslsmith_div_vec4_u32(max(vec4<u32>(41110u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 1u, u_input.a.x, 4294967295u)), ~vec4<u32>(19870u, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a.x, 44434u, u_input.a.x, 0u), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 12642u))), ~firstLeadingBit(vec4<u32>(6407u, 32447u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), Struct_1(true || any(vec3<bool>(false, false, true))));
    global1 = _wgslsmith_f_op_f32(func_5(func_1(Struct_1(true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(175f, 237f, global0.a)) + -1136f) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(782f, -1450f)), vec3<bool>(true, false, _wgslsmith_f_op_f32(step(2163f, -336f)) == _wgslsmith_f_op_f32(3195f + -1000f))), var_0.a.x, _wgslsmith_f_op_f32(select(func_4(vec2<u32>(4294967295u, 0u), vec3<i32>(1i, ~92934i, 1i)).b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-131f, 1475f, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -621f))))), func_1(Struct_1(true), all(vec4<bool>(var_0.b.a, global0.a, var_0.b.a, global0.a)), !vec3<bool>(global0.a, var_0.b.a, true)).c.a)), var_0.b));
    global1 = 1390f;
    var var_1 = ~(-27204i);
    var var_2 = var_0.b;
    var_1 = ~(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0.b, func_4(vec2<u32>(0u, ~var_0.a.x), vec3<i32>(1i, 1i, 1i)).c.a, select(vec3<bool>(true, false, var_0.b.a), !select(vec3<bool>(global0.a, var_2.a, true), vec3<bool>(var_0.b.a, false, global0.a), true), true)).d.x, _wgslsmith_mod_i32(abs(_wgslsmith_add_i32(countOneBits(19878i), func_4(u_input.a.xy, vec3<i32>(-21425i, -1i, 65792i)).a)), firstTrailingBit(reverseBits(~35071i))));
}

