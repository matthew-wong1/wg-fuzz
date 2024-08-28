struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<i32>(1i, 0i, i32(-2147483648)), i32(-2147483648), Struct_1(vec4<i32>(0i, 0i, -1i, 2147483647i), false, vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), -1i)), Struct_2(vec3<i32>(-11256i, 2147483647i, 0i), 1i, Struct_1(vec4<i32>(-1i, 44380i, -5840i, 44523i), true, vec4<bool>(true, false, false, false), vec3<bool>(true, true, false), -6858i)), Struct_2(vec3<i32>(-4362i, -1i, 2147483647i), i32(-2147483648), Struct_1(vec4<i32>(1i, 1i, -23641i, i32(-2147483648)), false, vec4<bool>(false, false, false, true), vec3<bool>(true, true, true), 27080i)), Struct_2(vec3<i32>(1i, i32(-2147483648), -21962i), 20527i, Struct_1(vec4<i32>(46856i, 2147483647i, -28127i, 0i), false, vec4<bool>(false, true, false, false), vec3<bool>(false, false, true), i32(-2147483648))), Struct_2(vec3<i32>(-2948i, -1i, 0i), i32(-2147483648), Struct_1(vec4<i32>(1i, -30341i, -1i, 0i), true, vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), 18560i)), Struct_2(vec3<i32>(20550i, -39581i, i32(-2147483648)), 2147483647i, Struct_1(vec4<i32>(1971i, 42491i, 0i, -1i), true, vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), -1i)), Struct_2(vec3<i32>(2147483647i, -1i, -10292i), i32(-2147483648), Struct_1(vec4<i32>(-21783i, -1832i, 1i, 48207i), false, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), -37235i)), Struct_2(vec3<i32>(6581i, 2147483647i, 27238i), 2147483647i, Struct_1(vec4<i32>(61164i, 1i, -20724i, -16511i), false, vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), -1i)), Struct_2(vec3<i32>(-39357i, i32(-2147483648), -1i), -8204i, Struct_1(vec4<i32>(63634i, 2147483647i, 735i, 9978i), false, vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), 2924i)), Struct_2(vec3<i32>(-14325i, 39185i, 6700i), 1i, Struct_1(vec4<i32>(-7254i, -17294i, i32(-2147483648), -9393i), true, vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), i32(-2147483648))), Struct_2(vec3<i32>(i32(-2147483648), -26862i, 2147483647i), 15307i, Struct_1(vec4<i32>(-1330i, 51810i, 13788i, -1269i), false, vec4<bool>(true, true, true, false), vec3<bool>(false, false, true), 42364i)), Struct_2(vec3<i32>(0i, 25887i, 2147483647i), -71230i, Struct_1(vec4<i32>(14712i, i32(-2147483648), 36248i, i32(-2147483648)), false, vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), -1i)), Struct_2(vec3<i32>(11331i, i32(-2147483648), -1i), 1i, Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, -33947i), true, vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), -19236i)), Struct_2(vec3<i32>(-4780i, 0i, -34528i), -3431i, Struct_1(vec4<i32>(2147483647i, 2147483647i, -24037i, 1i), true, vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), 3798i)), Struct_2(vec3<i32>(-35421i, i32(-2147483648), -66093i), 0i, Struct_1(vec4<i32>(1i, 1i, 20434i, i32(-2147483648)), true, vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), -34877i)), Struct_2(vec3<i32>(-24293i, 44454i, 27593i), i32(-2147483648), Struct_1(vec4<i32>(15955i, 24934i, i32(-2147483648), -2249i), true, vec4<bool>(true, true, false, true), vec3<bool>(true, true, false), 2147483647i)), Struct_2(vec3<i32>(2147483647i, 16762i, -46349i), i32(-2147483648), Struct_1(vec4<i32>(-32146i, i32(-2147483648), 1i, 27480i), false, vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), -37756i)), Struct_2(vec3<i32>(49652i, 1i, 1i), 2147483647i, Struct_1(vec4<i32>(-41841i, 0i, i32(-2147483648), i32(-2147483648)), true, vec4<bool>(false, true, true, false), vec3<bool>(false, false, false), 2147483647i)), Struct_2(vec3<i32>(0i, -56340i, i32(-2147483648)), -56918i, Struct_1(vec4<i32>(28644i, 53799i, 17692i, -11533i), false, vec4<bool>(false, false, true, true), vec3<bool>(true, false, true), 0i)), Struct_2(vec3<i32>(0i, 32027i, -1i), 2147483647i, Struct_1(vec4<i32>(2147483647i, 1i, -80i, 1i), true, vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), 542i)), Struct_2(vec3<i32>(1i, 12715i, -1i), 1i, Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, -2878i), false, vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), 2147483647i)), Struct_2(vec3<i32>(-65366i, -13786i, 29202i), i32(-2147483648), Struct_1(vec4<i32>(0i, -24400i, -844i, -6447i), false, vec4<bool>(true, false, false, true), vec3<bool>(false, true, true), -43484i)), Struct_2(vec3<i32>(30019i, 28030i, 68160i), -2280i, Struct_1(vec4<i32>(18259i, -1i, 0i, 1i), false, vec4<bool>(false, false, false, true), vec3<bool>(true, true, false), -23479i)), Struct_2(vec3<i32>(-7091i, 2147483647i, -37i), -18444i, Struct_1(vec4<i32>(2147483647i, 21080i, 20466i, -1i), true, vec4<bool>(true, true, false, true), vec3<bool>(true, false, true), 2147483647i)), Struct_2(vec3<i32>(0i, 1i, 4330i), -9828i, Struct_1(vec4<i32>(-10600i, -32307i, i32(-2147483648), 1i), true, vec4<bool>(false, false, false, true), vec3<bool>(true, true, true), 8480i)), Struct_2(vec3<i32>(-66260i, 6293i, i32(-2147483648)), 2147483647i, Struct_1(vec4<i32>(2147483647i, 0i, 6385i, -1i), false, vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), 0i)), Struct_2(vec3<i32>(0i, -28181i, -1i), 2147483647i, Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -1864i), false, vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), 5269i)), Struct_2(vec3<i32>(-1i, -99820i, 5907i), -53589i, Struct_1(vec4<i32>(-537i, i32(-2147483648), 0i, 0i), false, vec4<bool>(true, false, false, false), vec3<bool>(false, true, false), 2147483647i)));

var<private> global3: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = global3.c;
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(select(~(4404u >> (u_input.a % 32u)), 1u, true || select(true, false, global0[_wgslsmith_index_u32(u_input.e.x, 9u)])), abs(_wgslsmith_add_u32(u_input.b, 1u)) << (37094u % 32u)), 28u)];
    let var_1 = Struct_2(_wgslsmith_add_vec3_i32(select(select(global1.a, global3.a, true), _wgslsmith_add_vec3_i32(var_0.a.wxy, vec3<i32>(0i, -1i, global1.a.x)), all(global3.c.d.yx)) >> (abs(vec3<u32>(u_input.d, 43987u, u_input.d) & vec3<u32>(1u, 61235u, u_input.a)) % vec3<u32>(32u)), ~global3.a), ~(~abs(_wgslsmith_mod_i32(global1.a.x, global3.a.x))), global1.c);
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(~(-18408i), -2147483647i), i32(-1i) * -37815i, var_1.b, 1i), any(select(select(vec2<bool>(global3.c.d.x, false), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), global1.c.d.zy, var_1.c.c.wz), !global1.c.c.xw, vec2<bool>(var_0.b, var_0.d.x)), var_0.c.x)), var_0.c, select(!select(global3.c.c.xwz, global1.c.d, true), vec3<bool>(true, true, firstTrailingBit(var_0.a.x) != abs(global1.b)), ~42917u < (u_input.c >> (~u_input.e.x % 32u))), -global3.a.x);
    let var_3 = reverseBits(~u_input.a);
    return var_3;
}

fn func_2() -> u32 {
    return max(~27203u, ~func_3());
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(414f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(320f - -1208f), 1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(130f, _wgslsmith_f_op_f32(1172f - -897f), true))))) - vec2<f32>(2070f, 512f));
    let var_1 = ~u_input.e;
    global0 = array<bool, 9>();
    global3 = global2[_wgslsmith_index_u32(var_1.x, 28u)];
    global3 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(~max(arg_2 << (u_input.e.x % 32u), ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 1u))), 28u)];
    return !(!(var_0.x != -396f));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -301f)), 1000f))) + _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 342f), arg_0.x)));
    var var_1 = vec4<bool>(all(!global3.c.d.yz), func_4(global3.c, !(arg_0.x >= 550f), func_2()), global3.c.c.x, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(88466u, u_input.c, u_input.e.x, arg_2.x), select(vec4<u32>(29704u, 32641u, u_input.b, 1u), vec4<u32>(37101u, arg_2.x, 39095u, 51244u), true) ^ max(vec4<u32>(4294967295u, u_input.a, arg_2.x, 0u), vec4<u32>(u_input.a, arg_1, 0u, arg_2.x))), 9u)]);
    let var_2 = Struct_1(-(~global3.c.a), -(~global1.a.x << (reverseBits(41095u) % 32u)) >= countOneBits(global3.c.a.x), select(select(global1.c.c, vec4<bool>(false, arg_0.x < arg_0.x, true, true), vec4<bool>(global3.c.b, true, all(var_1.yz), !global1.c.b)), !vec4<bool>(global1.c.b, !global1.c.d.x, false, global0[_wgslsmith_index_u32(~u_input.b, 9u)]), vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(~4294967295u, 9u)], select(global3.c.b, global1.c.b, true), true)), global1.c.c.zzy, global1.b);
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u ^ arg_2.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, u_input.c, u_input.c) ^ vec3<u32>(49660u, arg_1, arg_2.x), ~arg_2), _wgslsmith_add_vec3_u32(~arg_2, vec3<u32>(1u, u_input.d, u_input.a)))), 28u)];
    return global1.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = arg_0.c;
    global3 = global2[_wgslsmith_index_u32(func_2(), 28u)];
    global1 = Struct_2(abs(min(_wgslsmith_mult_vec3_i32(arg_0.a, vec3<i32>(var_0.a.x, arg_0.b, -28698i)), _wgslsmith_mod_vec3_i32(global3.c.a.xxz, var_0.a.ywz)) & var_0.a.yww), reverseBits(global3.a.x), global3.c);
    let var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.xx, vec2<u32>(4294967295u, ~24501u)), ~arg_1.x << ((u_input.b ^ 1u) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-203f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1295f + -173f)) + _wgslsmith_div_f32(-460f, -1327f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) - _wgslsmith_div_f32(1490f, 2774f)))));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<i32>(~(global3.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 98795u, 1u), vec3<u32>(u_input.d, u_input.a, 0u)) % 32u)), -20265i, min(global3.b, global3.c.e)), max(_wgslsmith_add_i32(-29781i, global3.a.x >> (~u_input.a % 32u)), _wgslsmith_clamp_i32(2147483647i, -(global1.b & 1i), global3.c.e)), func_5(Struct_2(abs(_wgslsmith_add_vec3_i32(global3.c.a.zzx, global3.a)), _wgslsmith_mod_i32(global3.b, global1.b), func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1422f, -867f))), ~u_input.b, vec3<u32>(4294967295u, 0u, 1u))), vec4<u32>(_wgslsmith_mod_u32(abs(u_input.a), select(u_input.e.x, u_input.a, false)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 40670u), vec3<u32>(u_input.a, 1u, u_input.a)), ~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(36188u, 22995u)), _wgslsmith_mod_u32(~4294967295u, abs(1u))), all(global3.c.c), global0[_wgslsmith_index_u32(~1u, 9u)]));
    let var_1 = global3.c;
    global1 = Struct_2(vec3<i32>(var_1.e, (var_1.a.x << (u_input.b % 32u)) ^ select(global3.c.a.x, -67734i, true), ~countOneBits(-44775i)) >> (abs(~(~vec3<u32>(u_input.a, u_input.b, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, var_1.e, ~abs(global3.b)) ^ ((2147483647i << (~u_input.b % 32u)) & global3.b), global3.c);
    let var_2 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b), vec3<u32>(24497u, u_input.e.x, u_input.d)), 41137u), u_input.a, ~(~91978u)), 84202u);
    global3 = Struct_2(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.e, -50517i, 0i), max(vec3<i32>(var_1.e, 2147483647i, global3.c.e), vec3<i32>(-1533i, global3.b, var_1.a.x))) | vec3<i32>(select(-1i, _wgslsmith_div_i32(global3.c.e, 3763i), false), -2147483647i, -2147483647i), _wgslsmith_clamp_i32(max(var_1.a.x, ~0i), ~(~(-1i)), -_wgslsmith_dot_vec3_i32(var_1.a.yzw, func_5(Struct_2(var_0.a, 58647i, Struct_1(vec4<i32>(var_1.a.x, 2147483647i, 4000i, -2147483647i), true, var_1.c, var_0.c.d, -1i)), vec4<u32>(var_2, 30905u, 0u, 65736u), global1.c.c.x, global0[_wgslsmith_index_u32(var_2, 9u)]).a.ywx)), Struct_1(vec4<i32>(select(_wgslsmith_sub_i32(global1.b, var_0.b), 22359i, select(global3.c.b, true, true)), countOneBits(func_5(Struct_2(vec3<i32>(var_1.e, 2147483647i, var_0.b), global3.a.x, var_0.c), vec4<u32>(u_input.d, 70858u, 0u, u_input.b), var_0.c.b, false).e), _wgslsmith_div_i32(var_0.c.a.x | -1i, 2147483647i), _wgslsmith_clamp_i32(func_1(vec2<f32>(1001f, -131f), 28725u, vec3<u32>(u_input.a, var_2, 0u)).a.x, 9012i >> (var_2 % 32u), var_1.a.x)), all(!vec4<bool>(global1.c.b, global0[_wgslsmith_index_u32(u_input.e.x, 9u)], false, global0[_wgslsmith_index_u32(1u, 9u)])), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(968f, -378f) - vec2<f32>(390f, 291f))), var_2, countOneBits(vec3<u32>(56728u, var_2, var_2))).c, !(!global3.c.d), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_2, 0u, 86204u)), vec3<u32>(109953u, u_input.c, u_input.b)) >> (~vec3<u32>(~var_2, select(30960u, u_input.c, true), 4294967295u) % vec3<u32>(32u)), ~_wgslsmith_sub_u32(u_input.e.x, ~1u) | ~reverseBits(0u));
}

