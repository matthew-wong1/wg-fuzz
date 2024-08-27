struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(false, vec2<bool>(false, false), false, vec3<i32>(1i, -26396i, 30269i), -143f), vec4<f32>(347f, 1000f, -822f, -1220f), Struct_1(false, vec2<bool>(true, true), true, vec3<i32>(2147483647i, 17491i, 43303i), 1209f), Struct_1(true, vec2<bool>(true, true), true, vec3<i32>(-41613i, 2147483647i, 36721i), -634f), 12413u);

var<private> global1: array<f32, 31> = array<f32, 31>(1379f, -1159f, 1000f, 1091f, -574f, -1212f, -1321f, 1109f, 516f, 711f, 173f, -149f, -1000f, 853f, 335f, 1000f, -1000f, -688f, 1293f, -2007f, 846f, -852f, 2177f, -998f, -1350f, 915f, 583f, 473f, 157f, -521f, 1000f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(true, !vec2<bool>(arg_2.a.b.x, false), arg_2.c.a || true, vec3<i32>(~arg_2.a.d.x, global0.d.d.x, arg_2.d.d.x), _wgslsmith_div_f32(global0.d.e, 688f));
    var var_1 = Struct_1(any(select(!vec3<bool>(global0.c.c, var_0.c, arg_2.a.c), vec3<bool>(all(vec4<bool>(arg_2.d.b.x, arg_1, arg_1, var_0.c)), arg_1, true), all(vec4<bool>(arg_1, global0.a.c, true, arg_1)))), select(global0.c.b, select(vec2<bool>(true, true), vec2<bool>(!global0.a.a, arg_1), vec2<bool>(any(vec2<bool>(var_0.b.x, true)), all(vec2<bool>(arg_1, arg_1)))), arg_1), false, firstTrailingBit(global0.a.d) | global0.a.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(739f))))))));
    let var_2 = ~(~_wgslsmith_div_i32(-13174i, global0.d.d.x));
    let var_3 = Struct_1(false & (global0.d.e >= _wgslsmith_f_op_f32(-575f + _wgslsmith_div_f32(-402f, var_1.e))), !vec2<bool>(!arg_1, true), any(select(!select(var_1.b, vec2<bool>(true, true), arg_2.c.c), !select(vec2<bool>(var_0.a, var_1.b.x), vec2<bool>(var_0.a, true), vec2<bool>(false, global0.a.a)), vec2<bool>(!arg_1, arg_2.a.a))), ~select(~(-vec3<i32>(-36352i, arg_2.a.d.x, 50971i)), ~(-vec3<i32>(var_2, 49449i, 0i)), true), var_1.e);
    global1 = array<f32, 31>();
    return !select(!vec3<bool>(false | var_1.c, false, false | var_3.c), vec3<bool>(global0.a.b.x && any(vec4<bool>(var_1.b.x, arg_1, false, false)), var_0.b.x, false), !(!vec3<bool>(true, var_1.b.x, true)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.d.a, vec2<bool>((arg_1.c.d.x == (i32(-1i) * -2147483647i)) & true, false), global0.a.b.x, _wgslsmith_add_vec3_i32(min(select(vec3<i32>(global0.c.d.x, 1i, arg_1.a.d.x), vec3<i32>(u_input.a, 3247i, arg_0.a.d.x), vec3<bool>(arg_1.a.c, arg_0.a.b.x, global0.d.b.x)), global0.c.d >> (vec3<u32>(0u, 4294967295u, arg_2) % vec3<u32>(32u))), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.d.d.x, arg_0.d.d.x), vec3<i32>(u_input.a, u_input.b.x, global0.d.d.x)))) & ~(~vec3<i32>(25077i, 22855i, arg_0.a.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(780f, arg_0.c.e)) + _wgslsmith_f_op_f32(-arg_0.c.e)), -990f)))));
    global1 = array<f32, 31>();
    var var_1 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-668f)) - _wgslsmith_f_op_f32(select(arg_0.b.x, 137f, global0.a.c))), arg_1.a.e, _wgslsmith_f_op_f32(max(var_0.e, 1643f)), arg_1.a.e))), Struct_1(true, arg_1.a.b, global0.b.x >= -745f, _wgslsmith_clamp_vec3_i32(select(arg_1.d.d, global0.c.d, all(vec2<bool>(global0.a.c, false))), vec3<i32>(_wgslsmith_mult_i32(var_0.d.x, u_input.a), arg_0.c.d.x, arg_1.a.d.x), vec3<i32>(arg_0.a.d.x, -17867i, -global0.a.d.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24741u), vec2<u32>(21106u, arg_1.e)), min(19924u, arg_1.e), ~4294967295u), min(~vec4<u32>(arg_0.e, arg_2, global0.e, 72067u), firstLeadingBit(vec4<u32>(0u, 34607u, 45942u, 34340u)))), 31u)]), Struct_1(all(func_3(0u, all(vec3<bool>(false, arg_1.c.c, global0.c.c)), arg_1)), select(!(!arg_0.c.b), !arg_1.c.b, !arg_1.a.b.x), 68771i < (_wgslsmith_mult_i32(1i, arg_1.c.d.x) << (0u % 32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-4726i << (arg_0.e % 32u), 2147483647i, -29340i & global0.c.d.x), vec3<i32>(-2147483647i, 0i, min(var_0.d.x, 26245i))), _wgslsmith_f_op_f32(floor(1526f))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~arg_1.e, arg_0.e) | arg_2, _wgslsmith_clamp_u32(global0.e, global0.e, 0u)));
    global1 = array<f32, 31>();
    global0 = arg_0;
    return Struct_1(all(vec3<bool>(any(select(vec3<bool>(arg_0.c.a, true, true), vec3<bool>(false, true, false), false)), all(vec2<bool>(true, true)), !(!arg_1.c.b.x))), global0.c.b, true, var_0.d, -257f);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> vec3<i32> {
    var var_0 = Struct_1(false, arg_0.c.b, all(vec3<bool>(_wgslsmith_clamp_u32(0u, arg_2, 5499u) > ~arg_0.e, true, !arg_0.a.a)), vec3<i32>(~(-u_input.a), arg_0.d.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -33389i & global0.c.d.x, global0.c.d.x), ~select(vec4<i32>(2147483647i, arg_0.a.d.x, -2147483647i, u_input.a), vec4<i32>(-8565i, u_input.a, arg_0.c.d.x, 0i), vec4<bool>(global0.d.c, true, false, true)))), _wgslsmith_f_op_f32(sign(arg_1)));
    var_0 = Struct_1(true, select(func_2(arg_0, arg_0, ~52633u).b, !global0.a.b, global0.a.b), false, arg_0.d.d, global1[_wgslsmith_index_u32(0u, 31u)]);
    let var_1 = global0.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.b.wyy)));
    var_0 = func_2(Struct_2(arg_0.c, arg_0.b, func_2(arg_0, Struct_2(Struct_1(false, var_1.b, var_0.b.x, var_0.d, arg_1), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, global1[_wgslsmith_index_u32(22284u, 31u)], arg_0.c.e, var_1.e))), func_2(Struct_2(Struct_1(false, arg_0.c.b, var_1.c, arg_0.c.d, arg_1), arg_0.b, arg_0.d, Struct_1(true, vec2<bool>(false, false), var_0.b.x, vec3<i32>(-72581i, 2147483647i, var_0.d.x), var_1.e), 0u), arg_0, global0.e), arg_0.d, countOneBits(global0.e)), global0.e), func_2(Struct_2(func_2(Struct_2(global0.d, arg_0.b, global0.d, arg_0.a, 4294967295u), arg_0, arg_2), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-607f, global0.b.x, 622f, var_1.e))), Struct_1(false, vec2<bool>(false, var_0.b.x), true, vec3<i32>(u_input.a, var_0.d.x, arg_0.a.d.x), -347f), func_2(arg_0, arg_0, arg_0.e), ~29368u), Struct_2(func_2(arg_0, arg_0, arg_0.e), vec4<f32>(var_0.e, var_2.x, var_0.e, -200f), Struct_1(global0.a.c, vec2<bool>(var_0.b.x, global0.c.a), var_1.b.x, var_0.d, 954f), arg_0.d, firstTrailingBit(global0.e)), global0.e), _wgslsmith_div_u32(global0.e, 1u)), Struct_2(Struct_1(33706u >= ~arg_0.e, arg_0.a.b, !(!global0.d.a), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -67690i, 0i), global0.c.d), global0.a.e), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.e, 1346f, var_2.x, var_0.e)))))), arg_0.a, Struct_1(any(!vec4<bool>(global0.a.b.x, var_1.a, false, true)), global0.a.b, arg_0.c.a, var_1.d, 884f), ~select(max(4294967295u, 1u), _wgslsmith_div_u32(31136u, 4294967295u), global0.a.a)), _wgslsmith_div_u32(~(~(~86518u)), ~arg_2));
    return -(~vec3<i32>(-global0.a.d.x, u_input.a & global0.c.d.x, _wgslsmith_sub_i32(0i, -1211i)) >> (_wgslsmith_sub_vec3_u32((vec3<u32>(arg_2, 1u, 27456u) << (vec3<u32>(39991u, arg_2, 17214u) % vec3<u32>(32u))) & firstLeadingBit(vec3<u32>(arg_2, arg_2, arg_2)), ~vec3<u32>(arg_2, 46812u, 4294967295u) << (~vec3<u32>(global0.e, arg_2, arg_2) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1() -> bool {
    let var_0 = ~(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.e, 19970u, 1u, 1u), ~vec4<u32>(7712u, 31117u, global0.e, 1u)) ^ min(~vec4<u32>(0u, global0.e, global0.e, global0.e), ~vec4<u32>(31599u, global0.e, global0.e, 4294967295u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 16594u, global0.e & ~1u, max(_wgslsmith_mult_u32(27443u, 124138u), ~global0.e)), _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(global0.e, global0.e, global0.e, global0.e)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 30528u, 0u, global0.e)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.e, global0.e, global0.e, 23921u), vec4<u32>(4294967295u, global0.e, 4294967295u, global0.e))))) % vec4<u32>(32u));
    global1 = array<f32, 31>();
    var var_1 = Struct_1(true, vec2<bool>(true, true), !(!(_wgslsmith_add_i32(4317i, u_input.a) < -2147483647i)), -func_4(Struct_2(global0.d, _wgslsmith_div_vec4_f32(vec4<f32>(-443f, -893f, global0.a.e, 1009f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)], -397f, global0.d.e)), Struct_1(false, global0.c.b, false, vec3<i32>(20701i, global0.a.d.x, -2147483647i), 1000f), func_2(Struct_2(global0.c, vec4<f32>(-354f, 285f, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)]), global0.a, Struct_1(true, global0.d.b, true, vec3<i32>(global0.a.d.x, -2147483647i, global0.a.d.x), -2482f), 0u), Struct_2(global0.c, vec4<f32>(1000f, 366f, global1[_wgslsmith_index_u32(global0.e, 31u)], 311f), global0.c, global0.c, var_0.x), var_0.x), ~var_0.x), _wgslsmith_f_op_f32(select(-1573f, _wgslsmith_f_op_f32(max(-603f, -2378f)), global0.a.b.x)), global0.e & min(4294967295u, var_0.x)), global0.c.e);
    var var_2 = 0u;
    let var_3 = func_2(Struct_2(Struct_1(any(vec2<bool>(true, false)), !vec2<bool>(var_1.b.x, true), global0.c.c, abs(vec3<i32>(-25840i, -16310i, var_1.d.x)), var_1.e), _wgslsmith_f_op_vec4_f32(-global0.b), global0.c, Struct_1(global0.a.a, func_3(global0.e << (global0.e % 32u), var_1.c, Struct_2(global0.a, global0.b, Struct_1(true, var_1.b, global0.c.b.x, global0.d.d, -913f), global0.d, global0.e)).zy, 1u == (global0.e >> (var_0.x % 32u)), reverseBits(abs(vec3<i32>(u_input.a, u_input.a, var_1.d.x))), _wgslsmith_f_op_f32(step(func_2(Struct_2(global0.a, vec4<f32>(-1000f, -450f, -471f, global1[_wgslsmith_index_u32(16458u, 31u)]), Struct_1(global0.a.a, vec2<bool>(var_1.c, var_1.c), global0.c.b.x, vec3<i32>(global0.d.d.x, u_input.b.x, global0.d.d.x), 1510f), global0.a, var_0.x), Struct_2(Struct_1(var_1.b.x, vec2<bool>(false, global0.d.a), false, var_1.d, 864f), vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 31u)], var_1.e, var_1.e, global0.c.e), global0.c, Struct_1(var_1.c, var_1.b, true, global0.d.d, 263f), 4294967295u), 11427u).e, 629f))), countOneBits(firstLeadingBit(global0.e | 105828u))), Struct_2(global0.a, global0.b, func_2(Struct_2(Struct_1(var_1.b.x, vec2<bool>(var_1.c, var_1.b.x), false, vec3<i32>(0i, -1054i, var_1.d.x), var_1.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.e, -1148f, -1202f, global0.b.x) * vec4<f32>(global1[_wgslsmith_index_u32(global0.e, 31u)], 1104f, 284f, 500f)), func_2(Struct_2(Struct_1(false, global0.c.b, global0.d.c, var_1.d, 1000f), global0.b, Struct_1(false, var_1.b, global0.a.b.x, global0.a.d, global0.b.x), Struct_1(false, var_1.b, false, var_1.d, var_1.e), 7825u), Struct_2(Struct_1(var_1.c, var_1.b, true, vec3<i32>(-2147483647i, 1i, global0.a.d.x), 742f), vec4<f32>(global0.d.e, -2180f, -1052f, global1[_wgslsmith_index_u32(0u, 31u)]), Struct_1(false, vec2<bool>(false, true), global0.c.a, vec3<i32>(var_1.d.x, 49226i, -2147483647i), global1[_wgslsmith_index_u32(51719u, 31u)]), Struct_1(true, var_1.b, global0.c.b.x, var_1.d, 469f), 4087u), var_0.x), Struct_1(false, vec2<bool>(var_1.a, global0.a.a), var_1.c, global0.a.d, -1000f), 1u), Struct_2(func_2(Struct_2(global0.d, vec4<f32>(global1[_wgslsmith_index_u32(global0.e, 31u)], global1[_wgslsmith_index_u32(global0.e, 31u)], var_1.e, -1131f), Struct_1(var_1.c, vec2<bool>(false, false), false, global0.d.d, 1310f), Struct_1(false, global0.d.b, var_1.a, global0.c.d, var_1.e), 67349u), Struct_2(global0.d, global0.b, global0.c, global0.c, global0.e), var_0.x), global0.b, func_2(Struct_2(Struct_1(false, global0.c.b, global0.c.a, var_1.d, 184f), vec4<f32>(436f, -655f, global1[_wgslsmith_index_u32(var_0.x, 31u)], global0.d.e), Struct_1(true, vec2<bool>(var_1.b.x, var_1.a), var_1.c, global0.d.d, global0.c.e), global0.a, 4294967295u), Struct_2(Struct_1(true, var_1.b, global0.a.b.x, var_1.d, global0.d.e), global0.b, Struct_1(true, var_1.b, true, var_1.d, global1[_wgslsmith_index_u32(global0.e, 31u)]), Struct_1(var_1.a, var_1.b, false, global0.c.d, 529f), var_0.x), 33733u), func_2(Struct_2(global0.a, global0.b, Struct_1(false, vec2<bool>(true, true), var_1.a, global0.a.d, 783f), global0.a, 34790u), Struct_2(Struct_1(var_1.a, vec2<bool>(false, var_1.a), global0.a.c, global0.c.d, -1316f), global0.b, global0.c, Struct_1(false, var_1.b, global0.c.c, global0.c.d, -1054f), global0.e), 0u), ~global0.e), global0.e), global0.c, _wgslsmith_add_u32(~global0.e, 1u ^ (global0.e << (0u % 32u)))), ~min(23367u, _wgslsmith_div_u32(var_0.x, global0.e) >> (global0.e % 32u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(~global0.e), max(global0.e << ((23360u ^ global0.e) % 32u), 58815u), global0.e), vec3<u32>(global0.e, ~min(21931u, global0.e) >> (~(~global0.e) % 32u), min(~(~global0.e), 19342u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1569f)))) - global0.b.x);
    let var_2 = Struct_1(func_1(), func_2(Struct_2(Struct_1(var_0.x != global0.e, vec2<bool>(true, true), false, -global0.d.d, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global0.e, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)]))), global0.b, func_2(Struct_2(Struct_1(true, vec2<bool>(global0.a.b.x, global0.a.c), global0.a.c, vec3<i32>(-11277i, global0.d.d.x, -32746i), -472f), vec4<f32>(1000f, -1362f, -562f, 126f), global0.d, global0.d, 10117u), Struct_2(Struct_1(global0.a.b.x, vec2<bool>(global0.d.b.x, true), global0.d.a, vec3<i32>(u_input.a, -67022i, u_input.b.x), global1[_wgslsmith_index_u32(4294967295u, 31u)]), global0.b, global0.a, global0.c, 11882u), _wgslsmith_dot_vec2_u32(vec2<u32>(55512u, global0.e), var_0.zz)), Struct_1(!global0.c.b.x, !global0.c.b, global0.c.c, vec3<i32>(-22624i, -1i, 48958i), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0.x, 31u)], -856f)), firstLeadingBit(_wgslsmith_mod_u32(global0.e, 4294967295u))), Struct_2(Struct_1(true, !global0.a.b, global0.d.b.x, vec3<i32>(u_input.a, 0i, 1i), _wgslsmith_f_op_f32(-global0.b.x)), vec4<f32>(global0.c.e, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 31u)] * global1[_wgslsmith_index_u32(global0.e, 31u)]), -412f, -1149f), func_2(Struct_2(Struct_1(global0.a.c, vec2<bool>(true, global0.d.b.x), global0.a.b.x, vec3<i32>(global0.d.d.x, 5485i, 19721i), 281f), vec4<f32>(global1[_wgslsmith_index_u32(1255u, 31u)], -1887f, global0.c.e, global1[_wgslsmith_index_u32(23629u, 31u)]), Struct_1(global0.d.c, vec2<bool>(true, false), global0.a.b.x, global0.c.d, global0.c.e), global0.d, global0.e), Struct_2(Struct_1(global0.d.b.x, global0.a.b, false, vec3<i32>(u_input.b.x, u_input.b.x, 46986i), 482f), vec4<f32>(-112f, -1854f, -1685f, global0.a.e), global0.c, Struct_1(false, vec2<bool>(global0.c.a, global0.d.a), false, vec3<i32>(-2147483647i, -2147483647i, -1i), global1[_wgslsmith_index_u32(global0.e, 31u)]), 38469u), 10281u), Struct_1(all(vec4<bool>(false, true, false, true)), global0.c.b, false, countOneBits(vec3<i32>(global0.a.d.x, global0.c.d.x, -31206i)), 705f), var_0.x << (1u % 32u)), var_0.x).b, global0.d.a, vec3<i32>(u_input.a, 2147483647i, _wgslsmith_dot_vec2_i32(select(-vec2<i32>(74554i, u_input.b.x), countOneBits(vec2<i32>(1i, -1i)), true), global0.a.d.xy)), _wgslsmith_f_op_f32(-global0.b.x));
    var var_3 = Struct_2(Struct_1(any(vec3<bool>(true, false, all(vec2<bool>(global0.a.c, global0.c.c)))), !select(global0.a.b, func_3(var_0.x, var_2.b.x, Struct_2(var_2, vec4<f32>(1616f, var_2.e, 106f, 1196f), Struct_1(true, vec2<bool>(global0.c.b.x, global0.c.b.x), global0.d.c, vec3<i32>(global0.d.d.x, -3051i, 1i), -211f), global0.c, 32942u)).yy, var_2.b), var_2.b.x, abs(~(var_2.d | vec3<i32>(7188i, -1i, 2724i))), -174f), global0.b, global0.d, func_2(Struct_2(Struct_1(all(vec3<bool>(true, var_2.c, global0.c.b.x)), vec2<bool>(global0.c.a, true), true && var_2.c, func_2(Struct_2(global0.d, vec4<f32>(-737f, -1270f, -1929f, var_2.e), Struct_1(var_2.a, var_2.b, var_2.a, vec3<i32>(var_2.d.x, -1i, var_2.d.x), global0.d.e), Struct_1(global0.c.b.x, vec2<bool>(false, true), global0.d.c, vec3<i32>(var_2.d.x, 2147483647i, 32316i), -477f), 0u), Struct_2(Struct_1(var_2.b.x, vec2<bool>(var_2.b.x, true), true, vec3<i32>(-15351i, 8970i, global0.a.d.x), global1[_wgslsmith_index_u32(var_0.x, 31u)]), global0.b, var_2, Struct_1(var_2.a, vec2<bool>(false, false), false, vec3<i32>(-62749i, 1i, -1i), -1299f), var_0.x), 4294967295u).d, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 31u)]))), global0.b, func_2(Struct_2(global0.c, global0.b, Struct_1(global0.d.a, vec2<bool>(true, true), global0.a.a, var_2.d, -1253f), global0.c, 2615u), Struct_2(global0.d, vec4<f32>(global1[_wgslsmith_index_u32(32515u, 31u)], var_2.e, 634f, 624f), Struct_1(true, vec2<bool>(false, global0.d.c), var_2.a, global0.a.d, 282f), global0.c, 1u), countOneBits(4294967295u)), var_2, firstTrailingBit(global0.e)), Struct_2(Struct_1(any(vec4<bool>(true, true, false, var_2.a)), !var_2.b, true, -var_2.d, global0.b.x), _wgslsmith_div_vec4_f32(global0.b, global0.b), func_2(Struct_2(global0.c, global0.b, global0.a, Struct_1(global0.a.a, vec2<bool>(true, global0.a.c), true, global0.c.d, global0.b.x), 0u), Struct_2(var_2, vec4<f32>(global0.c.e, 1285f, global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(global0.e, 31u)]), Struct_1(var_2.c, global0.c.b, global0.a.a, global0.a.d, global0.b.x), var_2, 49341u), _wgslsmith_mod_u32(4294967295u, global0.e)), Struct_1(var_2.c, !vec2<bool>(true, var_2.a), global0.c.d.x == 1i, global0.d.d, global0.d.e), reverseBits(var_0.x) & ~16879u), abs(min(~global0.e, global0.e))), ~(_wgslsmith_sub_u32(reverseBits(var_0.x), 4294967295u) ^ var_0.x));
    let var_4 = Struct_1(var_3.a.b.x, !(!vec2<bool>(var_3.a.c, true)), !(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(64562u, global0.e, global0.e, var_3.e)), vec4<u32>(global0.e, var_3.e, 0u, var_0.x) | vec4<u32>(var_0.x, var_3.e, var_0.x, 0u)) != ~(~2937u)), vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_3.c.d.x), vec2<i32>(u_input.a, 34270i)), var_2.d.x), ~var_3.d.d.x, _wgslsmith_dot_vec2_i32(var_2.d.yx, ~vec2<i32>(var_3.d.d.x, 2767i))), -321f);
    let var_5 = Struct_2(var_4, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.e)) * var_4.e), 326f, 278f, -146f), func_2(Struct_2(func_2(Struct_2(var_4, global0.b, global0.c, var_4, 0u), Struct_2(var_4, global0.b, Struct_1(false, var_3.c.b, true, vec3<i32>(global0.a.d.x, var_4.d.x, 19719i), -1000f), Struct_1(global0.a.b.x, vec2<bool>(global0.d.b.x, true), true, vec3<i32>(var_4.d.x, var_3.c.d.x, -1i), var_4.e), 4294967295u), _wgslsmith_mod_u32(var_0.x, global0.e)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.e, 1824f, global0.a.e, var_4.e)), vec4<f32>(-297f, var_2.e, -496f, global1[_wgslsmith_index_u32(68721u, 31u)])), func_2(Struct_2(var_3.a, global0.b, global0.c, var_3.a, var_3.e), Struct_2(Struct_1(var_2.c, var_3.a.b, global0.a.b.x, global0.c.d, global0.d.e), var_3.b, var_3.d, Struct_1(false, global0.c.b, true, global0.d.d, global1[_wgslsmith_index_u32(var_0.x, 31u)]), var_3.e), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.e, 7169u, var_0.x, global0.e), vec4<u32>(var_3.e, 39636u, 1u, 31494u))), var_2, _wgslsmith_mod_u32(reverseBits(21292u), firstTrailingBit(23158u))), Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.x, var_2.e, -1589f, 265f))) - _wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(var_4.e, 1328f, -1138f, var_3.b.x))), global0.c, var_2, abs(~4294967295u)), 1u), Struct_1(func_1(), !(!vec2<bool>(true, var_2.a)), false, ~select(_wgslsmith_add_vec3_i32(var_2.d, vec3<i32>(var_3.a.d.x, 2147483647i, global0.a.d.x)), select(vec3<i32>(var_2.d.x, -57914i, 0i), vec3<i32>(var_3.c.d.x, 8441i, -2147483647i), var_2.b.x), func_1()), 272f), 51627u);
    let var_6 = global0.a.c;
    global0 = Struct_2(func_2(var_5, var_5, 46085u), var_3.b, Struct_1(!var_4.b.x, !func_2(Struct_2(Struct_1(false, vec2<bool>(global0.a.b.x, var_2.a), global0.a.b.x, vec3<i32>(global0.a.d.x, -2147483647i, u_input.b.x), 938f), vec4<f32>(1331f, global0.c.e, -982f, var_5.d.e), Struct_1(false, global0.d.b, var_2.a, var_3.a.d, var_4.e), Struct_1(var_5.d.c, vec2<bool>(false, var_5.c.c), var_3.a.c, var_5.d.d, var_3.a.e), 4294967295u), var_5, firstLeadingBit(var_3.e)).b, all(var_4.b), var_3.a.d, _wgslsmith_f_op_f32(round(var_3.c.e))), func_2(var_5, var_5, (var_5.e | _wgslsmith_mod_u32(var_3.e, 1u)) ^ ~var_5.e), _wgslsmith_mod_u32(var_5.e, reverseBits(49408u ^ global0.e) | 77162u));
    let var_7 = func_2(Struct_2(func_2(Struct_2(func_2(var_5, Struct_2(Struct_1(global0.c.b.x, vec2<bool>(true, true), var_4.b.x, var_2.d, 1529f), vec4<f32>(-829f, var_2.e, 269f, 2171f), Struct_1(false, global0.c.b, true, var_3.a.d, var_2.e), Struct_1(var_5.a.c, var_3.a.b, var_5.d.c, var_5.a.d, global1[_wgslsmith_index_u32(var_5.e, 31u)]), 48236u), var_5.e), _wgslsmith_f_op_vec4_f32(var_5.b - global0.b), global0.a, Struct_1(var_2.a, var_3.d.b, var_5.a.c, vec3<i32>(var_4.d.x, -2147483647i, -2147483647i), 1000f), reverseBits(var_5.e)), Struct_2(func_2(var_5, var_5, 2770u), _wgslsmith_f_op_vec4_f32(var_3.b - var_5.b), var_2, func_2(Struct_2(Struct_1(true, vec2<bool>(var_5.a.c, var_4.c), var_4.a, vec3<i32>(var_2.d.x, var_4.d.x, -1i), var_2.e), global0.b, var_4, Struct_1(false, var_3.c.b, var_4.a, var_2.d, var_5.a.e), 0u), var_5, 65836u), ~4294967295u), ~_wgslsmith_sub_u32(global0.e, 16110u)), _wgslsmith_f_op_vec4_f32(ceil(var_5.b)), var_4, Struct_1(!select(global0.c.a, true, false), global0.a.b, false, var_5.c.d, var_4.e), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_5.e, global0.e, var_0.x, var_3.e), vec4<u32>(global0.e, var_5.e, var_5.e, 66935u)), reverseBits(vec4<u32>(46620u, var_0.x, var_5.e, 0u))), countOneBits(vec4<u32>(global0.e, 29052u, 4294967295u, var_3.e)))), Struct_2(var_5.a, var_3.b, func_2(Struct_2(Struct_1(true, vec2<bool>(true, true), var_4.b.x, vec3<i32>(2147483647i, -1542i, var_3.d.d.x), 300f), _wgslsmith_f_op_vec4_f32(-var_3.b), func_2(Struct_2(var_4, vec4<f32>(1819f, -1000f, var_2.e, global1[_wgslsmith_index_u32(1u, 31u)]), var_3.c, var_4, global0.e), var_5, global0.e), Struct_1(false, vec2<bool>(var_4.b.x, global0.c.a), false, var_3.c.d, var_3.c.e), select(39106u, global0.e, true)), var_5, 1u), Struct_1(false, vec2<bool>(var_4.a, func_2(Struct_2(Struct_1(false, vec2<bool>(false, true), var_5.d.c, var_3.a.d, -886f), var_5.b, var_4, Struct_1(true, vec2<bool>(false, false), global0.a.a, var_3.d.d, -105f), var_3.e), var_5, var_3.e).c), false | (327f < var_3.c.e), func_4(var_5, _wgslsmith_f_op_f32(-1000f * 2083f), ~var_3.e), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 31u)])), _wgslsmith_sub_u32(var_3.e, _wgslsmith_sub_u32(~var_5.e, _wgslsmith_add_u32(var_5.e, var_3.e)))), ~1u | firstTrailingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(30367i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_3.b.zx + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.c.e, global0.a.e) * vec2<f32>(1000f, var_4.e)), vec2<f32>(var_5.a.e, 556f)))))));
}

