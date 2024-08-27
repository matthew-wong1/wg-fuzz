struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> bool {
    global0 = array<Struct_3, 1>();
    let var_0 = !select(!vec3<bool>(arg_2.a.x, true, arg_2.c.a | arg_0), vec3<bool>(select(true, true, false) && true, arg_2.c.a, true), -_wgslsmith_clamp_i32(17613i, arg_1, 40086i) >= (-18544i ^ arg_1));
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    var var_1 = arg_2.c;
    return u_input.e >= min(-1i, arg_1);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: u32, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(374f, -2188f))), _wgslsmith_f_op_f32(step(-650f, _wgslsmith_f_op_f32(sign(854f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-684f, -1000f) - _wgslsmith_div_f32(608f, -2126f)), _wgslsmith_f_op_f32(f32(-1f) * -356f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1612f, -468f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 1000f))), !arg_3)) * vec2<f32>(-577f, 1274f))), true));
    global0 = array<Struct_3, 1>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 36964u), ~vec3<u32>(24872u, 67191u, 61332u)), ~(~53583u), u_input.d.x), _wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(50719u, 99283u, u_input.d.x)), arg_0)), ~_wgslsmith_dot_vec3_u32(arg_0, arg_0)), 1u)];
    let var_2 = Struct_3(var_1.c, _wgslsmith_div_vec4_u32(vec4<u32>(~firstLeadingBit(28651u), ~arg_0.x, arg_0.x, 0u), ~firstLeadingBit(~vec4<u32>(4294967295u, 0u, arg_2, 30912u))), Struct_2(select(var_1.c.a, vec4<bool>(false, 5058u == arg_0.x, all(var_1.a.a), select(var_1.c.c.a, var_1.c.c.a, true)), select(select(var_1.c.a, var_1.c.a, true), var_1.c.a, any(var_1.a.a.ww))), _wgslsmith_sub_vec3_u32(reverseBits(arg_0) & min(vec3<u32>(14697u, 4294967295u, 4294967295u), vec3<u32>(48045u, u_input.b.x, 1u)), arg_0), var_1.c.c));
    global0 = array<Struct_3, 1>();
    return false;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    var var_0 = any(!select(vec3<bool>(true, true, u_input.e < -5615i), vec3<bool>(true, true, 37281i <= u_input.e), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    var var_1 = Struct_1(any(select(vec2<bool>(false, u_input.a < 4294967295u), vec2<bool>(true, true), true)), 1u);
    var_0 = !(41088u > u_input.c) & func_4(vec3<u32>(abs(0u), 4294967295u, 0u) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(18677u, var_1.b, var_1.b)), -15982i, _wgslsmith_div_u32(~(~var_1.b), var_1.b), !vec2<bool>(func_3(var_1.a, -2147483647i, Struct_2(vec4<bool>(false, true, var_1.a, var_1.a), vec3<u32>(var_1.b, u_input.a, 57293u), Struct_1(var_1.a, var_1.b))), var_1.a));
    return Struct_1(any(!vec3<bool>(true, var_1.a, true)), var_1.b);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_3, 1>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(314f * -492f), _wgslsmith_f_op_f32(floor(-497f))))) - _wgslsmith_f_op_f32(-448f * _wgslsmith_f_op_f32(f32(-1f) * -1137f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-116f, -554f))))))));
    let var_1 = _wgslsmith_mod_vec4_i32(firstLeadingBit(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, -61128i, u_input.e, u_input.e), abs(vec4<i32>(u_input.e, u_input.e, 0i, 2147483647i))))), -countOneBits(vec4<i32>(-33440i, firstLeadingBit(-1i), _wgslsmith_div_i32(u_input.e, 76229i), 30203i)));
    global0 = array<Struct_3, 1>();
    var var_2 = Struct_2(!select(vec4<bool>(false, false, 1432f < var_0, true), select(vec4<bool>(arg_1.a.x, arg_2.a, false, arg_1.c.a), arg_1.a, any(arg_1.a.wwy)), select(vec4<bool>(arg_1.a.x, false, arg_2.a, false), select(vec4<bool>(arg_2.a, false, arg_2.a, true), arg_1.a, arg_1.a), !vec4<bool>(false, arg_1.c.a, arg_0.x, arg_0.x))), _wgslsmith_mult_vec3_u32(min(~(vec3<u32>(4294967295u, u_input.d.x, arg_2.b) | vec3<u32>(78158u, arg_2.b, 0u)), _wgslsmith_clamp_vec3_u32(arg_1.b, arg_1.b, select(vec3<u32>(u_input.b.x, arg_1.b.x, u_input.a), arg_1.b, arg_0.x))), _wgslsmith_div_vec3_u32(arg_1.b, ~arg_1.b)), arg_2);
    return Struct_1(!(_wgslsmith_f_op_f32(1000f - -962f) <= var_0) || all(vec4<bool>(func_2().a, var_2.c.a, false, !arg_2.a)), 0u);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), true), vec3<u32>(u_input.b.x, ~(34924u & u_input.c), ~_wgslsmith_clamp_u32(79934u, u_input.b.x, 0u)), func_5(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), Struct_2(vec4<bool>(true, false, true, true), ~vec3<u32>(25405u, u_input.d.x, 9652u), Struct_1(false, u_input.c)), func_2())), firstTrailingBit(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1501u, u_input.c), vec4<u32>(0u, u_input.d.x, u_input.b.x, 1983u)))), Struct_2(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, false, true)), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(75555u, u_input.c, 105217u), reverseBits(vec3<u32>(4294967295u, u_input.a, 17629u)))), Struct_1(true, u_input.b.x)));
    var var_1 = false;
    let var_2 = vec4<i32>(0i, i32(-1i) * -_wgslsmith_sub_i32(13287i | u_input.e, abs(u_input.e)), countOneBits(~_wgslsmith_add_i32(u_input.e, u_input.e)), _wgslsmith_add_i32(~u_input.e, _wgslsmith_clamp_i32(-44522i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.e), vec2<i32>(u_input.e, -23014i)), 1i)));
    let var_3 = Struct_1(var_0.a.c.a, min(_wgslsmith_sub_u32(~31160u, ~83656u), select(var_0.a.b.x >> (u_input.a % 32u), u_input.c, !var_0.a.a.x || true)));
    let var_4 = var_0;
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    global0 = array<Struct_3, 1>();
    let var_2 = select(vec3<i32>(~(-select(u_input.e, u_input.e, var_1.a.x)), u_input.e, 37425i), vec3<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(55797i, u_input.e, u_input.e, u_input.e) << (vec4<u32>(4294967295u, var_0.c.b, var_0.c.b, u_input.d.x) % vec4<u32>(32u)), vec4<i32>(-23687i, 23544i, -57597i, 8517i)), -u_input.e, var_1.a.x), reverseBits(reverseBits(-2147483647i >> (u_input.c % 32u))), -u_input.e), all(!var_0.a));
    let var_3 = var_0;
    var_1 = func_1();
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -328f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1804f, 596f)))), var_0.a.yy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-944f, 115f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.x, var_4);
}

