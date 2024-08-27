struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-840f)), ~(-arg_0.x), -(arg_0 & vec3<i32>(u_input.c.x, arg_0.x, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(728f - -715f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1300f) - vec2<f32>(-436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1701f)))), _wgslsmith_mult_u32(~u_input.b.x, ~1u));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.c, 0u) >> (abs(max(_wgslsmith_div_u32(var_0.c, 4294967295u), _wgslsmith_mod_u32(u_input.d, 34291u))) % 32u), u_input.b.x);
    var var_2 = var_0.a;
    var var_3 = Struct_1(var_2.a.a, _wgslsmith_mult_i32(-(var_2.a.c.x << (~var_0.c % 32u)), 2147483647i), -min(var_2.a.c ^ vec3<i32>(-2147483647i, var_0.a.a.c.x, var_0.a.a.b), select(vec3<i32>(1i, 1i, 1i), ~var_0.a.a.c, all(vec2<bool>(false, false)))));
    var var_4 = var_0;
    return u_input.b;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(1195f, _wgslsmith_add_i32(_wgslsmith_mult_i32(max(u_input.c.x, u_input.c.x), firstLeadingBit(u_input.c.x)), _wgslsmith_sub_i32(u_input.a.x, u_input.c.x)), ~vec3<i32>(-2525i, -u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, 2147483647i)))));
    let var_1 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(func_3(var_0.a.c), u_input.b << (u_input.b % vec3<u32>(32u)))), vec3<u32>(u_input.d, 43811u, 4294967295u) << (u_input.b % vec3<u32>(32u)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.a.a * 1560f), abs(_wgslsmith_sub_i32(~var_0.a.b, -2147483647i)), var_0.a.c | (var_0.a.c & vec3<i32>(21117i, var_0.a.c.x, -2147483647i))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(var_0.a);
    return var_0.a.a;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = false;
    let var_1 = true;
    var var_2 = -_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(arg_3.ww, vec2<i32>(u_input.c.x, ~arg_3.x)));
    var var_3 = !select(!(!select(vec4<bool>(var_1, false, var_1, arg_0), vec4<bool>(arg_0, var_1, var_1, var_1), vec4<bool>(var_1, true, arg_0, arg_0))), !(!select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, true, arg_0, false), vec4<bool>(arg_0, false, arg_0, var_1))), arg_0);
    let var_4 = Struct_1(-697f, ~11613i, vec3<i32>(max(i32(-1i) * -u_input.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -1i, arg_3.x), vec3<i32>(0i, -37385i, u_input.a.x))), _wgslsmith_mult_i32(~(-1i), -(~arg_3.x)), countOneBits(_wgslsmith_div_i32(~u_input.c.x, 37213i))));
    return Struct_2(var_4);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(true, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1601f, -2420f))), _wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-394f, -632f))), 869f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -843f))), 426f), 210f, reverseBits(-abs(vec4<i32>(24520i, 2147483647i, u_input.a.x, -2647i))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.a);
    var var_2 = func_4(any(vec2<bool>(true, all(vec2<bool>(false, true)))) == true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1111f + _wgslsmith_f_op_f32(min(650f, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-278f * var_1) - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(f32(-1f) * -993f), -440f)), _wgslsmith_f_op_f32(floor(338f)), _wgslsmith_mult_vec4_i32(-(vec4<i32>(8502i, u_input.c.x, 2147483647i, 1i) | vec4<i32>(1i, u_input.a.x, 0i, var_0.a.c.x)), vec4<i32>(var_0.a.b, -2147483647i, u_input.a.x, 2409i) << (vec4<u32>(1u, u_input.b.x, u_input.d, u_input.d) % vec4<u32>(32u))) << (vec4<u32>(21548u, _wgslsmith_mult_u32(~u_input.d, ~u_input.d), (u_input.b.x ^ u_input.d) << (4294967295u % 32u), u_input.d) % vec4<u32>(32u)));
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(arg_1.a.a, _wgslsmith_sub_i32(-2147483647i, 2147483647i & arg_1.a.c.x), vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.c.x), select(vec2<i32>(7470i, 1i), arg_2.a.c.yy, vec2<bool>(true, true)) >> (vec2<u32>(u_input.d, u_input.b.x) % vec2<u32>(32u))), -23450i, abs(-_wgslsmith_mult_i32(12820i, -24739i))));
    var_0 = func_4(!any(vec4<bool>(!arg_0, any(vec3<bool>(arg_0, true, false)), !arg_0, all(vec3<bool>(true, arg_0, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a, -289f, var_0.a, 426f)), vec4<f32>(arg_2.a.a, 345f, var_0.a, 798f)) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), arg_2.a.a, arg_2.a.a, -508f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-578f, arg_2.a.a, _wgslsmith_f_op_f32(-arg_1.a.a), 1475f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 1241f, -981f, arg_1.a.a), vec4<f32>(arg_2.a.a, var_0.a, var_0.a, -1389f)))))), 1124f, ~vec4<i32>(-(arg_1.a.b >> (u_input.b.x % 32u)), ~_wgslsmith_div_i32(arg_1.a.b, arg_1.a.b), -20002i, firstTrailingBit(u_input.a.x))).a;
    return arg_0 || any(vec3<bool>(!(1260f >= var_0.a), true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1201f, 1i & abs(min(u_input.c.x, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, ~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(2114i, -30160i))), vec3<i32>(u_input.a.x, -(~u_input.c.x), 20479i)));
    var_0 = Struct_1(var_0.a, -2147483647i, select(firstLeadingBit((var_0.c >> (u_input.b % vec3<u32>(32u))) | (vec3<i32>(u_input.a.x, 30884i, -43695i) << (u_input.b % vec3<u32>(32u)))), var_0.c, !func_5(all(vec4<bool>(false, true, true, false)), Struct_2(Struct_1(-328f, var_0.c.x, var_0.c)), func_1())));
    var var_1 = Struct_3(func_1(), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1777f, -950f), vec2<f32>(357f, var_0.a), vec2<bool>(true, false)))), vec2<f32>(1270f, _wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(var_0.a, 1446f), _wgslsmith_f_op_f32(-var_0.a))))), 1u);
    var var_2 = func_4(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), 2147483647i != var_0.b), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), true), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1847f, var_1.a.a.a, 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(321f, var_0.a, var_0.a, 170f), vec4<f32>(1151f, -1003f, var_0.a, -160f), false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_0.a, 1423f, var_1.a.a.a), vec4<f32>(-1029f, var_0.a, var_0.a, var_0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, var_0.a, var_0.a, 1271f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, var_0.a, 1446f, -128f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.a, -1546f, 530f, -1332f) - vec4<f32>(var_1.a.a.a, -1278f, -1850f, var_1.b.x))))), _wgslsmith_f_op_f32(-815f + -1306f), vec4<i32>(func_1().a.b, reverseBits(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(var_0.c.x, 0i))), -24848i, -(~(i32(-1i) * -1216i)))).a;
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(abs(44999i), var_1.a.a.c.x, var_1.a.a.b, ~(-24782i)), vec4<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(var_2.c.x, u_input.c.x, var_2.c.x), var_2.c), vec3<i32>(func_4(true, vec4<f32>(var_0.a, -1408f, var_1.a.a.a, 454f), -840f, vec4<i32>(-40250i, 6839i, var_1.a.a.c.x, -1i)).a.b, firstLeadingBit(u_input.a.x), var_2.c.x << (1u % 32u))), var_2.c.x, abs(var_2.c.x), 2147483647i));
    var var_4 = u_input.b.yy;
    var var_5 = var_3.xyw;
    var var_6 = Struct_3(Struct_2(var_1.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(1f, var_0.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.b)) - var_1.b) * vec2<f32>(_wgslsmith_f_op_f32(-578f * 1000f), 2002f))), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c);
}

