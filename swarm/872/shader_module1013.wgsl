struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(-29834i, 1i, 12006i), vec3<i32>(30062i, i32(-2147483648), -13940i), vec3<i32>(4195i, 0i, -4076i), vec3<i32>(5798i, i32(-2147483648), 9653i), vec3<i32>(1i, -13645i, -23029i), vec3<i32>(i32(-2147483648), -5909i, i32(-2147483648)), vec3<i32>(18540i, 1i, 30860i), vec3<i32>(21092i, 306i, 0i), vec3<i32>(2147483647i, 30817i, i32(-2147483648)), vec3<i32>(68163i, i32(-2147483648), -10101i), vec3<i32>(-1i, -307i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(0i, 79151i, 0i), vec3<i32>(44120i, -46326i, i32(-2147483648)), vec3<i32>(-42926i, -77698i, 13188i), vec3<i32>(i32(-2147483648), 0i, 33647i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(0i, 1i, 32195i), vec3<i32>(i32(-2147483648), 65906i, -44305i), vec3<i32>(1i, -35193i, 1i), vec3<i32>(19824i, 3302i, 2147483647i), vec3<i32>(0i, 1i, -11195i), vec3<i32>(-4556i, -75683i, 25774i), vec3<i32>(736i, 50681i, 51580i), vec3<i32>(41594i, 45764i, -1i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec4<i32> {
    global1 = array<vec3<i32>, 25>();
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, max(3987u, u_input.a.x), 4294967295u) >> (0u % 32u), ~(~u_input.a.x), u_input.a.x, u_input.a.x), ~(~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(2559u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x)), min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4940u), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x)))));
    var var_1 = 1u;
    let var_2 = ~(~var_0.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-947f, 550f), 995f, _wgslsmith_f_op_f32(step(-1055f, 325f)), _wgslsmith_f_op_f32(1183f + -111f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-353f, 491f) + _wgslsmith_f_op_f32(f32(-1f) * -356f)), -795f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-309f, 308f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1837f)), _wgslsmith_f_op_f32(min(-195f, 597f)))) - vec4<f32>(594f, _wgslsmith_f_op_f32(round(-156f)), -1338f, _wgslsmith_f_op_f32(f32(-1f) * -538f))));
    return select(abs(vec4<i32>(16215i, -2147483647i, ~2147483647i, arg_1.x)), ~vec4<i32>(1i, ~(-3102i ^ arg_0), arg_0 & ~arg_1.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 50390i, arg_1.x, arg_1.x), vec4<i32>(arg_0, arg_1.x, arg_0, arg_0)))), global0.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(u_input.a, -622f, 1u, func_3(arg_0.x, -arg_0.yy), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, 54614u, u_input.a.x), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))), min(vec4<u32>(20213u, u_input.a.x, u_input.a.x, 1u) | vec4<u32>(u_input.a.x, 58759u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = Struct_2(var_0, global0.x, reverseBits(-7844i), var_0);
    var var_2 = (_wgslsmith_mult_vec3_u32(u_input.a, ~vec3<u32>(var_1.a.e.x, 1u, 0u)) & var_0.e.wwy) >> (firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 0u, u_input.a.x) & (u_input.a >> (vec3<u32>(1u, var_0.a.x, 1u) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(0u, var_0.c, 1u), 1u))) % vec3<u32>(32u));
    var var_3 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mult_i32(1i << (0u % 32u), -1i), -52629i, _wgslsmith_add_i32(arg_0.x, -13826i));
    global0 = !select(vec4<bool>(all(vec3<bool>(var_1.b, var_1.b, false)), all(arg_1), false, true), select(!arg_1, arg_1, !vec4<bool>(global0.x, var_1.b, global0.x, true)), select(select(!arg_1, !arg_1, arg_1), vec4<bool>(0u < var_1.a.e.x, all(vec3<bool>(var_1.b, arg_1.x, global0.x)), arg_1.x, global0.x), arg_1));
    return _wgslsmith_sub_i32(min(20894i, _wgslsmith_div_i32(36663i, var_3.x)), _wgslsmith_clamp_i32(96729i, 1i, -_wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(-2147483647i, arg_0.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.a.x), 38486u, ~u_input.a.x) >> (firstLeadingBit(u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(771f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, 150f, global0.x)))), 23083u, -firstTrailingBit(countOneBits(vec4<i32>(7566i, arg_2, 2147483647i, 54585i))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 69661u, 1u, 4294967295u)), vec4<u32>(firstTrailingBit(24844u), u_input.a.x, 4294967295u, _wgslsmith_add_u32(arg_0.x, arg_0.x)))), !((_wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(-1107f - arg_1)) && !global0.x), firstTrailingBit(abs(0i)), Struct_1(u_input.a, _wgslsmith_f_op_f32(trunc(-290f)), (u_input.a.x << (1u % 32u)) ^ 1u, _wgslsmith_div_vec4_i32(~(vec4<i32>(-11512i, -31856i, arg_2, 1i) | vec4<i32>(arg_2, 6218i, arg_2, arg_2)), ~(vec4<i32>(arg_2, -1i, 22092i, arg_2) ^ vec4<i32>(arg_2, -27781i, arg_2, arg_2))), ~abs(vec4<u32>(arg_0.x, 21237u, arg_0.x, arg_0.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1882f, _wgslsmith_f_op_f32(var_0.d.b + _wgslsmith_f_op_f32(-301f - 1000f)))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.d.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1314f, arg_1, var_0.b)), -414f))))));
    return var_0.a;
}

fn func_1() -> bool {
    let var_0 = Struct_2(func_4(select(~min(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xz), u_input.a.zz, global0.x), 238f, -func_2(vec4<i32>(-32114i, 0i, -2147483647i, 9204i) >> (vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x) % vec4<u32>(32u)), !vec4<bool>(false, global0.x, true, false))), false, 0i, Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(444f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(413f * -613f)))), reverseBits(u_input.a.x), ~(~abs(vec4<i32>(-2147483647i, 59532i, -1i, 0i))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), abs(vec4<u32>(20001u, u_input.a.x, 1u, 4294967295u)), vec4<u32>(4294967295u, 44591u, 23004u, 4294967295u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(22838u, u_input.a.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, 26921u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))));
    let var_1 = !select(vec3<bool>(!(!var_0.b), any(select(global0.wxz, global0.wwz, global0.x)), false), vec3<bool>(false, false, true), !select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, false, var_0.b), true), select(vec3<bool>(global0.x, true, global0.x), global0.zxw, false), select(vec3<bool>(global0.x, false, var_0.b), vec3<bool>(false, global0.x, var_0.b), global0.wyy)));
    let var_2 = var_0.a;
    global1 = array<vec3<i32>, 25>();
    return !var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(global0.x, true, any(vec3<bool>(global0.x, global0.x, any(vec3<bool>(global0.x, global0.x, global0.x)))), !all(vec2<bool>(all(global0.wy), func_1())));
    var var_0 = -419f;
    var var_1 = -(~_wgslsmith_div_i32(-2147483647i, firstTrailingBit(_wgslsmith_clamp_i32(0i, -2510i, 1i))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -810f);
    var var_2 = Struct_2(Struct_1(u_input.a, 693f, 0u, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, abs(26593i), _wgslsmith_div_i32(1817i, -11404i), 28860i), min(abs(vec4<i32>(-1610i, -9483i, -11347i, -11930i)), reverseBits(vec4<i32>(-16746i, -1i, -19404i, -1069i))), ~vec4<i32>(1i, 1i, 1i, 1i)), vec4<u32>(0u & u_input.a.x, u_input.a.x, u_input.a.x, func_4(_wgslsmith_sub_vec2_u32(u_input.a.zx, vec2<u32>(8960u, u_input.a.x)), -1116f, _wgslsmith_mult_i32(9977i, 0i)).a.x)), !(!func_1()), abs(_wgslsmith_clamp_i32((i32(-1i) * -9271i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)) % 32u), ~(19033i << (u_input.a.x % 32u)), ~0i)), func_4(_wgslsmith_mult_vec2_u32(max(_wgslsmith_clamp_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(43250u, u_input.a.x)), vec2<u32>(19395u, 106122u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 70035u, 77066u, u_input.a.x), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x)), min(34558u, u_input.a.x))), _wgslsmith_f_op_f32(abs(198f)), -2147483647i));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.b, 1000f)), vec2<f32>(-108f, -355f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1185f, var_2.d.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(245f, var_2.d.b) + vec2<f32>(var_2.a.b, 1387f))), !vec2<bool>(global0.x, global0.x))))));
    let var_4 = ~_wgslsmith_add_vec2_u32(~vec2<u32>(firstLeadingBit(4294967295u), ~4294967295u), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), abs(44914u) >> (~var_2.d.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(func_4(vec2<u32>(var_2.a.a.x, 6259u), -516f, 2147483647i).a.xz, var_4), var_2.a.a.yy, var_2.d.a.zx) & _wgslsmith_mod_vec2_u32(~min(u_input.a.zx, vec2<u32>(var_4.x, u_input.a.x)), vec2<u32>(4294967295u, func_4(u_input.a.xx, var_2.d.b, 2147483647i).a.x)), vec3<i32>(min(_wgslsmith_mult_i32(abs(var_2.a.d.x), var_2.c), func_4(u_input.a.zz, -732f, 1i).d.x ^ _wgslsmith_dot_vec2_i32(var_2.a.d.yx, var_2.d.d.wy)), -var_2.d.d.x, ~var_2.c));
}

