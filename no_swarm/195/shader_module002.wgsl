struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-391f)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-448f - -1037f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2015f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-1047f, var_2.x), _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(round(1116f)), _wgslsmith_f_op_f32(exp2(var_2.x))))), vec4<f32>(var_2.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(742f - 116f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) * var_2.x)), !(!(!vec4<bool>(var_0.b.x, arg_1.b.x, false, arg_1.b.x))))), vec2<i32>(1i, -58420i), !arg_1.b.xxw, vec2<u32>(arg_0.x, _wgslsmith_clamp_u32(31133u, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, _wgslsmith_div_f32(-624f, var_2.x)), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(min(-422f, var_2.x))), all(!var_0.b)))));
    var var_4 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f * _wgslsmith_f_op_f32(-var_2.x)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(26460u, 4294967295u, 22562u) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))), vec3<u32>(0u, 0u, 1u), max(vec3<u32>(9133u, 79106u, 10878u), vec3<u32>(1u, 1u, 1u))), Struct_3(10238i, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(true, true, false))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(483f)), -352f))));
    var var_1 = _wgslsmith_f_op_f32(-655f * _wgslsmith_div_f32(1133f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-526f)), _wgslsmith_f_op_f32(floor(-1000f)))), 378f))));
    let var_2 = ~u_input.d;
    var var_3 = vec4<i32>(~(~(i32(-1i) * -2147483647i)), 37139i, 1i, var_2);
    var_0 = ~(select(_wgslsmith_mult_u32(30979u, 58905u), 48040u, true) >> (_wgslsmith_mult_u32(38549u, 1u) % 32u)) >= ~(~countOneBits(143022u));
    return _wgslsmith_f_op_f32(f32(-1f) * -471f);
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = Struct_2(!(reverseBits(_wgslsmith_add_i32(var_0, 48572i)) > -(~(-53095i))));
    return Struct_1(arg_0, reverseBits((u_input.c.yw ^ _wgslsmith_div_vec2_i32(u_input.c.zz, u_input.c.zx)) | ~_wgslsmith_mult_vec2_i32(u_input.c.ww, vec2<i32>(0i, var_0))), select(!select(!vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_1.a, false, true), vec3<bool>(var_1.a, var_1.a, var_1.a)), !(!select(vec3<bool>(true, var_1.a, false), vec3<bool>(var_1.a, true, true), vec3<bool>(false, var_1.a, false))), !select(select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false)), !vec3<bool>(true, var_1.a, var_1.a), var_1.a)), ~vec2<u32>(~reverseBits(4294967295u), 1u), _wgslsmith_f_op_vec2_f32(-arg_0.yx));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>) -> u32 {
    let var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(~1u, 49147u)), vec2<u32>(1u, ~(~23426u)));
    let var_1 = func_4(vec4<f32>(520f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-507f, arg_1.x)), 906f))), _wgslsmith_f_op_f32(step(220f, _wgslsmith_f_op_f32(f32(-1f) * -475f)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-862f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) - -1449f), true)), arg_1.x)), 120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-var_1.a.xyy);
    return ~(1u ^ _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.d.x, 1u, 1u), 3145u));
}

fn func_5(arg_0: vec4<u32>) -> Struct_5 {
    let var_0 = firstTrailingBit(u_input.c.x);
    let var_1 = u_input.c.zyx;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -891f, -2092f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1122f, -437f, 780f, -1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-2438f)), 914f, -1221f, 652f)))).c.zx;
    var var_3 = _wgslsmith_dot_vec4_i32(u_input.c, u_input.c);
    var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f + -260f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(352f + _wgslsmith_f_op_f32(607f * 1545f)) * _wgslsmith_f_op_f32(func_4(vec4<f32>(-715f, -1352f, 343f, 357f)).a.x + _wgslsmith_f_op_f32(ceil(501f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-206f)) * _wgslsmith_div_f32(-707f, _wgslsmith_f_op_f32(round(-987f)))), -1694f)).b.x;
    return Struct_5(Struct_2(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(_wgslsmith_sub_u32(4294967295u, 61681u)), 100659u >> (1u % 32u), ~func_1(vec3<i32>(u_input.c.x, u_input.d, u_input.a), vec4<f32>(1006f, 932f, 444f, -1000f)), countOneBits(1u)), ~(~abs(vec4<u32>(24391u, 1u, 27071u, 17704u)))));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(25633i, firstLeadingBit(abs(-1i))), -21278i, i32(-1i) * -u_input.c.x);
    var_0 = func_5(~(~vec4<u32>(~0u, abs(35660u), ~71605u, ~63161u)));
    var_0 = Struct_5(func_5(_wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(31559u), 1u, 1u, 5857u), ~(~vec4<u32>(0u, 0u, 27550u, 61166u)))).a);
    var var_2 = _wgslsmith_mod_vec2_i32(var_1.yz, u_input.c.wy);
    var var_3 = !select(select(select(select(vec4<bool>(var_0.a.a, true, var_0.a.a, var_0.a.a), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, var_0.a.a, true, true), vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, false), true), var_0.a.a && false), vec4<bool>(var_1.x <= var_1.x, true, true, true), true), vec4<bool>(select(true, !var_0.a.a, true), -2147483647i >= ~u_input.b, any(vec4<bool>(true, true, var_0.a.a, var_0.a.a)), true), vec4<bool>(true, true, true, true));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1833f, 135f, 334f, -3358f), vec4<f32>(-1512f, -220f, 2450f, 1148f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1385f, 502f) + _wgslsmith_f_op_f32(min(-1015f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(810f)) + _wgslsmith_f_op_f32(-1720f - 1023f)), 612f, 1344f)), u_input.c.wx, select(var_3.xwx, select(!(!var_3.zwx), var_3.ywx, true), all(vec2<bool>(false, false)) == all(var_3.xxz)), ~(~vec2<u32>(0u, ~38428u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, -746f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -928f), 925f), vec2<f32>(_wgslsmith_f_op_f32(3081f - -633f), _wgslsmith_f_op_f32(func_3(vec3<u32>(0u, 0u, 73143u), Struct_3(-1i, vec4<bool>(var_0.a.a, false, var_3.x, false))))))));
    var var_5 = !(!var_4.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.xwy, ~vec3<u32>(max(var_4.d.x, ~var_4.d.x), 52497u, ~var_4.d.x), _wgslsmith_div_i32(abs(_wgslsmith_mult_i32(var_1.x, 0i)), ~var_2.x), abs(~abs(0u)));
}

