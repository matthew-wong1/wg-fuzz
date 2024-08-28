struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(-31439i, 2147483647i, 31397i, -31700i), vec4<u32>(48544u, 27178u, 23680u, 4294967295u), 0u, vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(vec4<i32>(-66239i, 0i, 8571i, 52721i), vec4<u32>(0u, 82u, 1u, 119795u), 0u, vec3<bool>(false, false, true), vec2<bool>(false, true)), Struct_1(vec4<i32>(11392i, 3633i, 2147483647i, 0i), vec4<u32>(32867u, 40408u, 18555u, 0u), 0u, vec3<bool>(true, false, true), vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, 17184i, 0i, i32(-2147483648)), vec4<u32>(0u, 472u, 4294967295u, 52432u), 1u, vec3<bool>(true, false, true), vec2<bool>(true, false)), Struct_1(vec4<i32>(-15035i, i32(-2147483648), 42257i, -4112i), vec4<u32>(47917u, 99931u, 1u, 1u), 4294967295u, vec3<bool>(false, true, true), vec2<bool>(true, false)));

var<private> global1: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(2389f, 430f, 1046f, 720f), vec4<f32>(-1000f, 239f, -146f, -985f), vec4<f32>(-572f, 1000f, 1561f, 367f), vec4<f32>(-605f, 891f, 1426f, 704f), vec4<f32>(2387f, -409f, -1500f, 135f), vec4<f32>(1000f, -1032f, 611f, -1779f), vec4<f32>(-1136f, 864f, -310f, 1764f), vec4<f32>(332f, 708f, -101f, 1066f), vec4<f32>(-1000f, 1081f, 1084f, 1035f), vec4<f32>(-1000f, -593f, 665f, 1581f), vec4<f32>(-226f, 1000f, -601f, 253f), vec4<f32>(-622f, -942f, 628f, 2101f), vec4<f32>(890f, -138f, -2577f, 1000f), vec4<f32>(2735f, 1169f, 318f, 1469f));

var<private> global2: array<u32, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = all(vec4<bool>(true, all(!select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0))), false, any(select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, arg_0)), vec3<bool>(true, false, false), false != arg_0))));
    var var_1 = vec2<i32>(max(u_input.b, -(~(u_input.b >> (u_input.c % 32u)))), _wgslsmith_mod_i32(u_input.b, ~(-u_input.b)));
    let var_2 = !vec3<bool>(!(10808i >= u_input.b), any(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(true, arg_0, arg_0, true), false)), !(!all(vec2<bool>(true, arg_0))));
    let var_3 = -select(-(~vec4<i32>(var_1.x, u_input.b, var_1.x, var_1.x)), ~vec4<i32>(49412i, -12124i, -43446i, var_1.x) ^ (vec4<i32>(u_input.b, u_input.b, var_1.x, u_input.b) & vec4<i32>(u_input.b, var_1.x, u_input.b, u_input.b)), !all(vec2<bool>(var_2.x, arg_0))) ^ vec4<i32>(u_input.b, -39117i, _wgslsmith_dot_vec4_i32(vec4<i32>(-14505i, _wgslsmith_div_i32(var_1.x, -55953i), countOneBits(34298i), var_1.x), abs(vec4<i32>(u_input.b, -16475i, 57293i, u_input.b) >> (vec4<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(20489u, 11u)], 4294967295u) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_add_i32(var_1.x, -49551i), max(-34578i, u_input.b), ~0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(39031i, 26485i, var_1.x, -46976i), countOneBits(vec4<i32>(-11880i, 73297i, var_1.x, -2147483647i)), vec4<i32>(var_1.x, var_1.x, 0i, -7641i))));
    var var_4 = Struct_1(_wgslsmith_div_vec4_i32(abs(-select(var_3, var_3, false)), vec4<i32>(_wgslsmith_div_i32(~u_input.b, _wgslsmith_mod_i32(var_3.x, 0i)), select(var_3.x, firstLeadingBit(var_1.x), any(vec2<bool>(arg_0, arg_0))), i32(-1i) * -var_1.x, _wgslsmith_add_i32(var_1.x, var_3.x))), u_input.d, u_input.c, select(select(!var_2, var_2, _wgslsmith_clamp_u32(u_input.d.x, 4294967295u, global2[_wgslsmith_index_u32(u_input.e, 11u)]) > ~9139u), var_2, var_2), !var_2.xx);
    return 1i;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> vec4<i32> {
    global0 = array<Struct_1, 5>();
    let var_0 = Struct_4(Struct_2(-4047i, -2147483647i, ~1i, vec4<i32>(_wgslsmith_div_i32(15336i, func_3(arg_0)), max(2147483647i, -1625i), _wgslsmith_sub_i32(-57757i, min(arg_3.x, 1i)), 1i)), select(vec3<bool>(arg_0, true, arg_0), select(select(select(vec3<bool>(false, false, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, false, arg_0)), !(!vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(all(vec4<bool>(arg_0, true, arg_0, arg_0)), arg_2 <= arg_2, any(vec3<bool>(false, false, false)))), arg_0), select(select(!(!vec3<bool>(arg_0, true, arg_0)), select(!vec3<bool>(false, arg_0, arg_0), !vec3<bool>(false, arg_0, false), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, arg_0), false)), 841f != arg_1), !vec3<bool>(!arg_0, true, true), select(vec3<bool>(all(vec2<bool>(false, arg_0)), false, true), !select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, false)), !(!vec3<bool>(true, arg_0, arg_0)))));
    let var_1 = var_0.c;
    global0 = array<Struct_1, 5>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), 1368f);
    return var_0.a.d;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    let var_0 = Struct_3(Struct_2(-22649i, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 5436i), arg_2.zw), arg_1.a.x & u_input.b), _wgslsmith_mult_i32(-13093i, -13325i), select(_wgslsmith_sub_vec4_i32(arg_1.a, vec4<i32>(arg_1.a.x, arg_3, arg_2.x, arg_1.a.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c, 35523u, arg_1.b.x, arg_1.c), arg_1.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~arg_2, arg_2), false)), arg_1, Struct_2(u_input.b, (-arg_2.x & arg_1.a.x) >> (u_input.d.x % 32u), firstLeadingBit(u_input.b), arg_1.a), arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(226f, -565f, 1587f)));
    global1 = array<vec4<f32>, 14>();
    let var_2 = Struct_4(Struct_2(15009i, func_3(!any(var_0.d.e)), 0i, abs(-vec4<i32>(22739i, 2147483647i, 14812i, -1i) ^ var_0.c.d)), vec3<bool>(select(!any(vec4<bool>(arg_0, var_0.d.e.x, var_0.b.d.x, arg_0)), true, arg_0), arg_1.e.x, (_wgslsmith_add_i32(-1i, 7988i) >> (var_0.b.c % 32u)) > firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 26541i, -2147483647i, var_0.a.b), vec4<i32>(u_input.b, 1i, arg_1.a.x, arg_2.x)))), vec3<bool>(arg_0, any(arg_1.d), false));
    var var_3 = Struct_2(max(firstLeadingBit(-arg_3 | -1i), _wgslsmith_div_i32(~(var_0.d.a.x & var_2.a.d.x), -16339i)), -1i, arg_3, arg_1.a);
    return _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -534f))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(199f)))))));
    var var_1 = 85817u;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(var_0 && var_0, global0[_wgslsmith_index_u32(u_input.d.x, 5u)], select(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, -22819i, -48547i, u_input.b)), abs(vec4<i32>(66822i, 2147483647i, u_input.b, u_input.b))), func_2(var_0, -554f, 1u, vec3<i32>(u_input.b, 1i, -2147483647i)) >> (abs(vec4<u32>(47212u, 17533u, global2[_wgslsmith_index_u32(0u, 11u)], 5161u)) % vec4<u32>(32u)), select(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false), select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(false, false, true, var_0), vec4<bool>(var_0, false, var_0, var_0)), vec4<bool>(false, true, true, var_0))), ~abs(~(-2147483647i))))));
    var_1 = firstTrailingBit(max(u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~94811u), vec2<u32>(1u, 57053u) << (abs(vec2<u32>(u_input.d.x, 33308u)) % vec2<u32>(32u)))));
    return ~64823u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(551f, _wgslsmith_f_op_f32(f32(-1f) * -849f));
    let var_1 = Struct_1(vec4<i32>(-15055i, u_input.b | -u_input.b, -1i, firstTrailingBit(-5354i >> (global2[_wgslsmith_index_u32(50368u, 11u)] % 32u))) ^ _wgslsmith_add_vec4_i32(~(~vec4<i32>(9507i, 0i, 2147483647i, u_input.b)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), vec4<i32>(0i, -16924i, -1i, -7346i))), vec4<u32>(func_1(), max(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)] << (global2[_wgslsmith_index_u32(u_input.e, 11u)] % 32u)), 4294967295u), u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d.zzz, min(~vec3<u32>(28811u, global2[_wgslsmith_index_u32(46204u, 11u)], 1u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 11u)], u_input.c, 4294967295u)))), ~reverseBits(func_1()), !select(vec3<bool>(true, all(vec3<bool>(true, false, false)), false), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), all(vec4<bool>(true, false, true, true))), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))), vec2<bool>(true, all(vec2<bool>(true, true))));
    var var_2 = abs(vec3<u32>(~global2[_wgslsmith_index_u32(var_1.c, 11u)], 97742u, ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 11u)], 11u)] >> (47197u % 32u)));
    let var_3 = _wgslsmith_mult_vec2_u32(~vec2<u32>(max(reverseBits(global2[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 0u)), 1u), u_input.d.yw);
    let var_4 = vec4<bool>(true, false, var_1.e.x, false);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -359f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1217f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_1.d.x, var_1, var_1.a >> (_wgslsmith_div_vec4_u32(var_1.b, u_input.d) % vec4<u32>(32u)), 54428i))));
    global2 = array<u32, 11>();
    var var_5 = ~144389u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-611f, 231f, -788f) + vec3<f32>(250f, -1867f, 1265f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(293f, -1676f, 1001f)))))) * vec3<f32>(588f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(303f, -334f)), _wgslsmith_f_op_f32(round(713f)), all(vec2<bool>(true, var_4.x)))), -918f)));
}

