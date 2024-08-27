struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = select(vec4<i32>(-min(-1i, 14778i), 0i, firstTrailingBit(0i >> (~u_input.b % 32u)), firstTrailingBit(-1i) >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(10874u, u_input.b, 14702u, u_input.a), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)), vec4<u32>(1208u, 0u, u_input.a, u_input.a) << (vec4<u32>(4462u, 4294967295u, u_input.b, 42008u) % vec4<u32>(32u))) % 32u)), vec4<i32>(i32(-1i) * -2147483647i, -_wgslsmith_add_i32(-4155i, ~(-2147483647i)), select(-(i32(-1i) * -8003i), -23009i, !select(false, true, false)), 0i), select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), select(vec4<bool>(false, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, false), all(vec4<bool>(true, true, true, true))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true))));
    let var_1 = Struct_3(Struct_1(vec2<bool>(any(vec4<bool>(true, true, true, true)), false), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(632f, 1165f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-164f, -543f), vec2<f32>(-2206f, 2861f), vec2<bool>(true, false)))))))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1824f, 382f) - vec2<f32>(963f, -397f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1658f, 288f)) * vec2<f32>(_wgslsmith_f_op_f32(select(217f, -1502f, false)), _wgslsmith_f_op_f32(ceil(-395f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1056f, -1373f) + vec2<f32>(549f, 500f))))), _wgslsmith_f_op_f32(round(701f)), abs(var_0.x));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(reverseBits(var_0.wz), ~var_0.zy), -35254i, _wgslsmith_div_i32(abs(-_wgslsmith_sub_i32(var_1.e, var_0.x)), 1i));
    let var_3 = Struct_2(var_1.b, Struct_1(!select(var_1.b.a, select(vec2<bool>(false, var_1.b.a.x), vec2<bool>(true, false), var_1.b.a), true), _wgslsmith_f_op_vec2_f32(exp2(var_1.b.b))), var_1.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(251f, -1574f, 464f)))));
    let var_4 = var_3.d;
    return all(select(select(vec4<bool>(!var_1.b.a.x, false, all(vec4<bool>(var_1.a.a.x, false, var_1.b.a.x, var_3.c.a.x)), var_1.b.a.x), !vec4<bool>(var_1.a.a.x, false, false, true), var_3.b.a.x), !vec4<bool>(var_3.c.a.x, true, var_3.c.a.x, any(vec2<bool>(var_1.a.a.x, var_1.b.a.x))), min(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.a, 4294967295u, 1u))) >= 1u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: i32) -> vec4<f32> {
    var var_0 = Struct_3(arg_1.a, arg_1.b, arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1371f, arg_0.b.x))) - 801f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -168f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-957f)), _wgslsmith_div_f32(arg_0.b.x, -290f)))), i32(-1i) * -1i);
    var var_1 = var_0.e;
    let var_2 = arg_1;
    var var_3 = firstTrailingBit(vec3<i32>(0i, var_0.e, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.e, -42318i), arg_1.e)) >> (vec3<u32>(0u, u_input.b, abs(~62184u)) % vec3<u32>(32u)));
    var_3 = firstLeadingBit(_wgslsmith_mod_vec3_i32(firstLeadingBit(max(~vec3<i32>(arg_3, 2573i, 36652i), vec3<i32>(1i, -2147483647i, var_3.x))), ~vec3<i32>(0i, var_2.e, 1i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1887f), _wgslsmith_f_op_f32(select(arg_1.b.b.x, 460f, var_2.a.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.d)), 2844f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) * _wgslsmith_f_op_f32(sign(-772f))), var_0.c.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.b.b.x)), _wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(step(arg_1.c.x, -1362f)), -1054f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, arg_0.b.x, var_0.d, arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, var_2.d, 696f, var_2.c.x))))));
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a, u_input.b, 1u, 4294967295u) >> (vec4<u32>(u_input.a, u_input.b, 1u, 86773u) % vec4<u32>(32u))) & ~(~vec4<u32>(u_input.b, u_input.a, u_input.a, 4454u)), vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 12068u, u_input.a), min(vec4<u32>(u_input.a, 11784u, 1u, 57999u), vec4<u32>(u_input.b, 56829u, u_input.a, 56806u))), select(~u_input.a, ~1u, true), firstTrailingBit(u_input.a)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(18533u, u_input.a, u_input.b, u_input.b), vec4<u32>(51020u, u_input.a, u_input.a, u_input.a)) << (~vec4<u32>(u_input.a, 28867u, 47708u, 4294967295u) % vec4<u32>(32u))));
    var var_1 = !(!(u_input.a != _wgslsmith_dot_vec4_u32(var_0, var_0))) && true;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_1(select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), !func_3()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-496f, -1000f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1759f, 268f)))))), Struct_3(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(826f, -1693f))), Struct_1(vec2<bool>(true, u_input.a < var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(425f, 1053f), vec2<f32>(-1431f, -258f), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1343f, -592f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1518f, -644f)))), -523f, _wgslsmith_mod_i32(12622i, -2147483647i)), vec3<bool>(all(vec4<bool>(select(true, true, false), any(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)))), true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(22469i, -54718i), -15298i), ~abs(10209i)), firstLeadingBit(vec2<i32>(-1i, select(2147483647i, -22263i, false))))));
    var var_3 = var_0.x;
    var var_4 = any(!vec4<bool>(true, var_2.x == var_2.x, true, select(true, true, false))) == false;
    return true;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = select(vec4<bool>(func_2(), false, all(!(!arg_1.wx)), any(!select(vec2<bool>(true, false), vec2<bool>(arg_1.x, true), arg_1.yy))), vec4<bool>(arg_1.x, arg_1.x, func_3(), all(!select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), arg_1.x))), func_3());
    let var_1 = vec3<u32>(~86075u, u_input.b, 18120u);
    let var_2 = select(!var_0, var_0, true);
    let var_3 = Struct_3(Struct_1(!var_2.yw, arg_0.xw), Struct_1(vec2<bool>(true, _wgslsmith_div_f32(330f, arg_0.x) > _wgslsmith_f_op_f32(floor(arg_0.x))), arg_0.yy), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), -744f), arg_0.x, _wgslsmith_sub_i32(abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-10485i), 1i << (var_1.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1577i, 33107i), vec2<i32>(0i, 10787i))), vec3<i32>(firstTrailingBit(-13900i), 1i, -33663i))));
    var var_4 = var_0.x;
    return var_3;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = 2147483647i;
    let var_2 = false;
    var var_3 = arg_0;
    var var_4 = true;
    return _wgslsmith_f_op_f32(-2530f * _wgslsmith_f_op_f32(floor(var_3.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(u_input.a, 16109u), firstLeadingBit(61545u))));
    let var_1 = !any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true)), vec4<bool>(false, true, select(false, false, true), any(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-469f, 1100f, -1623f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1166f, 1000f, -1798f)))), true))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * 1857f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(vec4<f32>(382f, 1371f, -416f, -868f), vec4<bool>(var_1, false, var_1, true)), select(vec4<bool>(var_1, false, true, true), vec4<bool>(var_1, true, true, var_1), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1163f, var_2.x)), reverseBits(vec3<i32>(-9934i, 2147483647i, 1i)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 1176f), var_2.x))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1055f);
    var var_5 = _wgslsmith_clamp_i32(-(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -2147483647i, -5562i), vec4<i32>(28592i, 0i, -32859i, 3154i)) >> (1u % 32u)) | 1i, -1i, abs(max(-33076i, -55139i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_2.x, -444f, var_2.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_2.x, 932f) + vec4<f32>(var_4, -181f, var_2.x, -393f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, var_2.x, var_2.x, var_2.x)))))), ~u_input.a, ~(~(~_wgslsmith_add_u32(u_input.b, var_0.x))), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(-17171i, -1i, 9705i), vec3<i32>(0i, -2147483647i, 8784i) << (vec3<u32>(var_0.x, 93962u, var_0.x) % vec3<u32>(32u)))));
}

