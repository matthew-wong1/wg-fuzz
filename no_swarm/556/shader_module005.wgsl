struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec3<bool>(false, false, true), Struct_1(41835i)), Struct_3(vec3<bool>(true, false, false), Struct_1(2147483647i)), Struct_3(vec3<bool>(true, true, true), Struct_1(61578i)), Struct_3(vec3<bool>(true, true, false), Struct_1(2147483647i)), Struct_3(vec3<bool>(true, false, true), Struct_1(-1i)), Struct_3(vec3<bool>(true, false, true), Struct_1(i32(-2147483648))), Struct_3(vec3<bool>(true, true, false), Struct_1(-26974i)), Struct_3(vec3<bool>(true, false, false), Struct_1(17084i)), Struct_3(vec3<bool>(false, false, true), Struct_1(-12071i)), Struct_3(vec3<bool>(false, false, false), Struct_1(-33870i)), Struct_3(vec3<bool>(true, false, true), Struct_1(1i)), Struct_3(vec3<bool>(true, false, true), Struct_1(-7812i)), Struct_3(vec3<bool>(true, true, true), Struct_1(27316i)), Struct_3(vec3<bool>(false, false, true), Struct_1(-7588i)), Struct_3(vec3<bool>(true, true, true), Struct_1(2147483647i)), Struct_3(vec3<bool>(true, true, false), Struct_1(-24081i)), Struct_3(vec3<bool>(false, true, false), Struct_1(15690i)), Struct_3(vec3<bool>(false, true, true), Struct_1(-6215i)), Struct_3(vec3<bool>(false, true, true), Struct_1(-15420i)), Struct_3(vec3<bool>(true, false, true), Struct_1(-1i)), Struct_3(vec3<bool>(false, true, false), Struct_1(-2190i)));

var<private> global1: vec3<u32> = vec3<u32>(0u, 4294967295u, 34179u);

var<private> global2: u32 = 0u;

var<private> global3: Struct_1 = Struct_1(-1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<i32> {
    let var_0 = vec4<bool>(any(vec4<bool>(true, true, true, true)), !(!(!select(false, false, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2190f, -1000f)))) < -411f, true);
    global0 = array<Struct_3, 21>();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~arg_0.xy, select(vec2<i32>(global3.a, global3.a), vec2<i32>(15157i, 37516i), vec2<bool>(false, false))), -6715i, countOneBits(u_input.b & u_input.b), arg_0.x), firstTrailingBit(-vec4<i32>(-9085i, 64403i, global3.a, -60513i)) ^ (select(vec4<i32>(-1i, 1i, 17221i, 59910i), vec4<i32>(arg_0.x, -12128i, arg_0.x, -38311i), var_0.x) >> (vec4<u32>(global1.x, global1.x, 0u, 4294967295u) % vec4<u32>(32u)))), u_input.b, _wgslsmith_mult_i32(global3.a, 74614i), -1i);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(270f * -1433f))), _wgslsmith_div_vec2_u32(u_input.a.yy, ~_wgslsmith_sub_vec2_u32(min(vec2<u32>(60693u, 4294967295u), vec2<u32>(global1.x, 4294967295u)), vec2<u32>(27565u, u_input.a.x))), Struct_1(-_wgslsmith_dot_vec2_i32(-vec2<i32>(global3.a, -23852i), vec2<i32>(1i, global3.a))), Struct_1(u_input.b), firstLeadingBit(-(vec4<i32>(u_input.b, 1i, global3.a, global3.a) ^ vec4<i32>(1i, arg_0.x, -32459i, arg_0.x))));
    global0 = array<Struct_3, 21>();
    return ~(~arg_0.xz ^ countOneBits(_wgslsmith_add_vec2_i32(-arg_0.yz, var_1.yz)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_5(833f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, arg_1.a, arg_1.a), vec3<f32>(-1792f, arg_1.a, -1445f), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1010f, arg_1.a, arg_1.a), vec3<f32>(arg_1.a, arg_1.a, arg_1.a))))), Struct_1(arg_0.x), arg_1.d);
    var var_1 = arg_1.a;
    let var_2 = global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~(abs(7873u) << (firstLeadingBit(arg_1.b.x) % 32u)), 30566u), 56989u), 21u)];
    var var_3 = vec3<f32>(102f, _wgslsmith_div_f32(-847f, _wgslsmith_f_op_f32(-arg_1.a)), arg_1.a);
    let var_4 = -(~vec2<i32>(~var_0.c.a, firstLeadingBit(u_input.b)) << ((select(~vec2<u32>(u_input.c, 1u), u_input.a.yx, true) ^ ((vec2<u32>(7673u, u_input.a.x) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) & min(vec2<u32>(arg_1.b.x, global1.x), vec2<u32>(arg_1.b.x, 11103u)))) % vec2<u32>(32u)));
    return u_input.a.wyy;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = 8256u;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1812f - -197f))) * -922f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -482f);
    let var_1 = ~vec3<u32>(select(firstLeadingBit(1u), ~global1.x, select(true, false, true)), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(21764u, 9852u), 13676u)) >> (func_4(-(func_3(vec3<i32>(global3.a, u_input.b, global3.a)) << (firstTrailingBit(global1.xz) % vec2<u32>(32u))), Struct_2(-1327f, ~u_input.a.yz, Struct_1(_wgslsmith_add_i32(-37934i, global3.a)), Struct_1(u_input.b), -(vec4<i32>(u_input.b, 2147483647i, global3.a, -44965i) ^ vec4<i32>(34818i, u_input.b, u_input.b, global3.a)))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))) - var_0.wx));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(27861u, _wgslsmith_dot_vec2_u32(global1.xy, abs(firstLeadingBit(vec2<u32>(42841u, global1.x))))), _wgslsmith_mod_u32(arg_0, u_input.a.x)), 21u)];
    return var_3.b;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_3, 21>();
    let var_0 = ~96491u;
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))), arg_0, 1531f);
    global1 = ~_wgslsmith_sub_vec3_u32(u_input.a.yzz, u_input.a.wwy);
    global1 = vec3<u32>(global1.x, 0u, min(4294967295u, ~4762u | u_input.c));
    return global1.x;
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = select(vec2<bool>(true, all(vec2<bool>(false == arg_1, select(false, true, arg_1)))), select(select(vec2<bool>(arg_1, true), vec2<bool>(true, true), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1))), select(select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), !vec2<bool>(arg_1, arg_1)), !select(vec2<bool>(false, false), vec2<bool>(true, arg_1), vec2<bool>(arg_1, false)), vec2<bool>(!arg_1, false)), arg_1), !vec2<bool>(arg_1, !(arg_1 && arg_1)));
    global0 = array<Struct_3, 21>();
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(818f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -704f))), 1f)), -384f), Struct_1(~func_3(vec3<i32>(global3.a, -2147483647i, global3.a)).x), func_2(countOneBits(arg_2)));
    global3 = func_2(countOneBits(~global1.x));
    let var_2 = var_1.b.yz;
    return 1i;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(func_6(~1u, func_5(1188f, func_2(global1.x)) < _wgslsmith_add_u32(26076u, global1.x), ~_wgslsmith_dot_vec2_u32(global1.yx, abs(vec2<u32>(u_input.a.x, 0u)))), u_input.b);
    var var_1 = ~vec2<u32>(~(~(1u << (0u % 32u))), max(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xzy, u_input.a.yzw), ~u_input.a.wxw)));
    var var_2 = !vec4<bool>(!any(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.x, true, false, arg_0.x), arg_0.x)), true, true, all(select(vec2<bool>(arg_0.x, false), select(arg_0.xz, vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true)), false)));
    let var_3 = Struct_4(_wgslsmith_mult_u32(firstLeadingBit(~1371u), u_input.a.x & var_1.x) | (_wgslsmith_mult_u32(global1.x ^ u_input.c, abs(11714u)) << (1u % 32u)));
    var_2 = select(!select(!select(vec4<bool>(false, var_2.x, arg_0.x, false), vec4<bool>(false, var_2.x, false, false), vec4<bool>(false, var_2.x, true, false)), vec4<bool>(false, any(vec3<bool>(var_2.x, arg_0.x, true)), true, true), global3.a == (0i >> (0u % 32u))), !select(vec4<bool>(false, false | var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, any(arg_0.zx), !var_2.x, var_2.x || false), any(!var_2.xw)), var_3.a != u_input.a.x);
    return Struct_2(627f, ~u_input.a.yw, func_2(4294967295u), Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, global3.a, 0i), countOneBits(vec3<i32>(var_0, global3.a, global3.a)))), ~((~vec4<i32>(u_input.b, 16575i, 1i, var_0) ^ reverseBits(vec4<i32>(u_input.b, 1i, -30655i, var_0))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 23650u, 1u, var_3.a), ~u_input.a) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(~(u_input.a.x << (u_input.a.x % 32u))), 21u)];
    var var_1 = firstLeadingBit(u_input.b);
    let var_2 = func_1(!var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(617f - 385f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1247f + 1005f), -1184f)))));
    var var_3 = min(-(vec4<i32>(6576i | var_0.b.a, func_3(var_2.e.wxw).x, u_input.b, var_2.d.a) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.a, global3.a, 1i), var_2.e.xzw), var_2.c.a, min(u_input.b, u_input.b), ~2147483647i)), _wgslsmith_add_vec4_i32(var_2.e, abs(vec4<i32>(u_input.b << (7324u % 32u), 1i >> (1u % 32u), max(var_0.b.a, -1685i), _wgslsmith_mult_i32(0i, -1i)))));
    let var_4 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 7225i), vec2<i32>(func_1(select(vec3<bool>(true, true, var_0.a.x), var_0.a, false), 1315f).d.a, ~(-31001i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1901f * _wgslsmith_f_op_f32(992f * var_2.a)), var_2.a, -786f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 694f, var_2.a))) - vec3<f32>(1000f, var_2.a, _wgslsmith_f_op_f32(-513f * var_2.a)))), 0u, _wgslsmith_f_op_f32(2365f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a)))), select(25562u, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(50757u, var_2.b.x)), func_1(var_0.a, -725f).b), var_0.a.x), var_2.e);
}

