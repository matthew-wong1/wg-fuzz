struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_3.x;
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-u_input.a.wy, u_input.d.x | ~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.b, 1u, u_input.b)), u_input.a.x), u_input.c & (select(u_input.a.x, ~(-37710i), true) | 0i));
    var var_1 = Struct_4(Struct_3(var_0, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(540f)) + _wgslsmith_f_op_f32(trunc(-1457f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(989f)))), _wgslsmith_f_op_f32(floor(-1184f))), 240f, vec3<u32>(func_3(1u ^ var_0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, -1199f, -533f)), _wgslsmith_mult_vec3_u32(u_input.d.wwy, u_input.d.yzz), vec4<f32>(-957f, -1328f, -1252f, 625f)), 14179u, var_0.a.b)), Struct_3(Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(var_0.b, var_0.a.c)), abs(u_input.d.x), var_0.a.c), firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, var_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, -815f, 130f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1198f, -1004f, -914f), vec3<f32>(-354f, 1080f, -1000f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(885f + 551f) * _wgslsmith_f_op_f32(min(-1946f, 1157f))))), u_input.d.zyy), vec3<f32>(419f, -549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1358f)) - _wgslsmith_f_op_f32(f32(-1f) * -847f))));
    var var_2 = Struct_4(Struct_3(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.b + vec3<f32>(var_1.c.x, var_1.c.x, -524f)), vec3<f32>(-491f, var_1.c.x, -491f))), _wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.c), var_1.a.c))), vec3<u32>(firstLeadingBit(var_1.b.d.x), firstLeadingBit(u_input.d.x), ~var_1.b.d.x) ^ var_1.b.d), Struct_3(var_0, _wgslsmith_f_op_vec3_f32(-var_1.b.b), 210f, u_input.d.wxx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.b + vec3<f32>(var_1.a.b.x, -396f, var_1.a.c)) * var_1.b.b)));
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(countOneBits(firstTrailingBit(0u)), firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.a.b, u_input.d.x, 4294967295u, u_input.b), u_input.d))), _wgslsmith_mod_u32(var_1.a.a.a.b, 30028u));
    var var_4 = max(var_1.a.d.zy, firstLeadingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, var_0.a.b), var_1.a.d.zy ^ var_1.a.d.zy), u_input.d.yx, ~(~vec2<u32>(u_input.b, 0u)))));
    return Struct_2(Struct_1(var_2.b.a.a.a, 76447u, -1i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.b, -reverseBits(27660i)), abs(-29852i)));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = Struct_2(func_2().a, _wgslsmith_clamp_i32(i32(-1i) * -14857i, i32(-1i) * -29527i, -16436i));
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(44235u, 4294967295u, 25191u), u_input.d.yxz));
    let var_2 = func_2().a;
    let var_3 = Struct_4(Struct_3(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1307f, _wgslsmith_f_op_f32(step(1000f, 1000f)), -307f)), -1120f, u_input.d.zyz), Struct_3(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-120f, -721f), 1f, 1f) - vec3<f32>(-633f, _wgslsmith_f_op_f32(1755f + 1534f), _wgslsmith_div_f32(1188f, 856f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-603f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(85770u, u_input.d.x), 26749u), u_input.d.xww, ~u_input.d.zyx ^ _wgslsmith_sub_vec3_u32(u_input.d.xyx, vec3<u32>(0u, 105318u, arg_1.a.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(742f, 608f, -1949f) + vec3<f32>(-2102f, -767f, -1280f)) - vec3<f32>(1f, 1f, 1f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(670f, -626f, -715f)))), vec3<f32>(-1386f, -421f, _wgslsmith_f_op_f32(ceil(-275f))))));
    let var_4 = 0i;
    return var_3;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(func_4(~(u_input.d.x & arg_3.a.b), arg_0.a.a).a.a, _wgslsmith_f_op_vec3_f32(arg_0.c + arg_0.c), 2002f, vec3<u32>(~72583u | arg_3.a.b, ~u_input.b, func_3(~u_input.b, vec3<f32>(1595f, arg_0.c.x, -1704f), abs(vec3<u32>(arg_2, arg_2, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.a.b.x, 945f, arg_0.a.c))))), func_4(~abs(u_input.b), arg_3).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(475f, -635f, arg_0.a.c), arg_0.b.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1283f, 1000f, arg_0.c.x) - arg_0.c), all(arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c.x, 526f, arg_0.a.c))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.x, -1000f, -234f) + arg_0.a.b)))) * vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), 1446f, arg_0.b.b.x)));
    var var_1 = reverseBits(~var_0.b.a.a.b);
    var var_2 = ~(~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0.a.a.a.b, 36752u), vec3<u32>(var_0.a.a.a.b, 1u, 71741u)), abs(arg_0.b.d), ~vec3<u32>(arg_0.b.d.x, 0u, 12495u))));
    var var_3 = true;
    var var_4 = arg_3.a.b;
    return Struct_1(vec2<i32>(abs(~arg_0.a.a.a.a.x), _wgslsmith_clamp_i32(~15720i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b, u_input.c), arg_0.a.a.a.a) ^ ~(-1i), -29333i)), 58289u, -27056i);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(min(u_input.d.x, ~(~u_input.b)), func_2()), vec4<bool>(false, true, true, true), u_input.b, func_4(8561u, func_2()).b.a);
    var var_1 = vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(select(-u_input.a.yzw, vec3<i32>(-1i, u_input.a.x, u_input.c), true), u_input.a.yxx)), -var_0.c, ~(var_0.a.x & 1i), _wgslsmith_mod_i32(max(-6371i, u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, -2147483647i), _wgslsmith_dot_vec2_i32(u_input.a.xw, vec2<i32>(var_0.c, u_input.c)))) & var_0.a.x);
    let var_2 = !(!vec2<bool>(true != all(vec4<bool>(false, true, false, false)), select(true, any(vec3<bool>(true, false, true)), select(false, false, false))));
    let var_3 = Struct_1(vec2<i32>(var_0.a.x, _wgslsmith_div_i32(1i, -var_0.a.x) >> (countOneBits(_wgslsmith_div_u32(u_input.b, 1u)) % 32u)), u_input.d.x, -37753i);
    var_1 = firstTrailingBit(vec4<i32>(i32(-1i) * -(~396i), (~var_0.c & _wgslsmith_sub_i32(1186i, -1i)) | _wgslsmith_mult_i32(var_3.a.x, firstTrailingBit(47244i)), u_input.a.x | 0i, -19996i));
    return Struct_1(vec2<i32>(func_5(func_4(~59656u, func_2()), select(select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(true, true, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, true)), vec4<bool>(var_2.x, true, false, true), !vec4<bool>(false, false, true, var_2.x)), 1u, func_4(_wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(0u, 27495u)), func_4(var_3.b, Struct_2(var_3, -9797i)).a.a).a.a).c, _wgslsmith_div_i32(1i, _wgslsmith_div_i32(abs(var_1.x), select(var_0.a.x, var_3.c, true)))), func_2().a.b, -_wgslsmith_add_i32(-38132i, ~(-2147483647i)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = ~(~(~(~(~vec2<u32>(arg_1.a.b, 4294967295u)))));
    let var_1 = func_4(firstLeadingBit(arg_1.a.b), Struct_2(func_4(0u, func_2()).a.a.a, arg_1.b)).c;
    var var_2 = func_4(1u, arg_1);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = u_input.d;
    let var_2 = var_1.x;
    let var_3 = func_6(!vec4<bool>(true, true, 40709u != ~var_0, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), Struct_2(func_1(), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, u_input.c)), _wgslsmith_add_vec2_i32(u_input.a.yy, u_input.a.wx)) << (_wgslsmith_mod_u32(58079u, var_0) % 32u)));
    var var_4 = ~(i32(-1i) * -34499i);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.a.yx >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(764f)) * -844f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1058f, _wgslsmith_div_f32(1000f, -457f)) * _wgslsmith_f_op_f32(min(1811f, _wgslsmith_f_op_f32(f32(-1f) * -1238f))))), -856f, 1i, vec3<i32>(min(_wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.zy & vec2<i32>(6842i, var_3)), ~(-16068i)), var_3, var_3));
}

