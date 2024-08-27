struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec3<f32>(152f, 1000f, 770f), false, vec2<bool>(true, false), vec2<u32>(0u, 4294967295u), 39430i), Struct_1(vec3<f32>(-1737f, -578f, 425f), false, vec2<bool>(true, false), vec2<u32>(14168u, 56017u), 1i)), Struct_2(Struct_1(vec3<f32>(-441f, -957f, 445f), false, vec2<bool>(false, false), vec2<u32>(43776u, 10111u), 1i), Struct_1(vec3<f32>(253f, 1997f, -482f), false, vec2<bool>(false, false), vec2<u32>(61123u, 51006u), -38771i)), Struct_2(Struct_1(vec3<f32>(-1756f, -973f, 682f), false, vec2<bool>(false, false), vec2<u32>(24564u, 73011u), -1i), Struct_1(vec3<f32>(-592f, 1152f, 396f), true, vec2<bool>(true, false), vec2<u32>(0u, 8895u), 337i)), Struct_2(Struct_1(vec3<f32>(-304f, -418f, -635f), false, vec2<bool>(false, false), vec2<u32>(1u, 1u), 26648i), Struct_1(vec3<f32>(2087f, -552f, 296f), false, vec2<bool>(false, false), vec2<u32>(57989u, 32898u), -1i)), Struct_2(Struct_1(vec3<f32>(220f, 998f, 611f), false, vec2<bool>(true, false), vec2<u32>(3669u, 1u), 42897i), Struct_1(vec3<f32>(-711f, -656f, -1000f), false, vec2<bool>(false, true), vec2<u32>(57596u, 37314u), i32(-2147483648))), Struct_2(Struct_1(vec3<f32>(878f, 266f, 497f), true, vec2<bool>(false, false), vec2<u32>(4294967295u, 0u), 0i), Struct_1(vec3<f32>(867f, -485f, 772f), false, vec2<bool>(false, true), vec2<u32>(1u, 4294967295u), 1i)), Struct_2(Struct_1(vec3<f32>(-366f, -1000f, 998f), true, vec2<bool>(false, true), vec2<u32>(56858u, 1u), i32(-2147483648)), Struct_1(vec3<f32>(935f, -256f, 297f), true, vec2<bool>(true, true), vec2<u32>(1u, 1u), 2147483647i)), Struct_2(Struct_1(vec3<f32>(532f, -1308f, -1866f), true, vec2<bool>(true, true), vec2<u32>(1u, 17345u), 36555i), Struct_1(vec3<f32>(-633f, 179f, 918f), true, vec2<bool>(true, false), vec2<u32>(28205u, 66602u), 29643i)), Struct_2(Struct_1(vec3<f32>(1991f, -419f, 204f), false, vec2<bool>(false, true), vec2<u32>(23521u, 1u), -1i), Struct_1(vec3<f32>(-1209f, 671f, 454f), true, vec2<bool>(false, true), vec2<u32>(4294967295u, 4294967295u), 168i)), Struct_2(Struct_1(vec3<f32>(1763f, 683f, -1000f), true, vec2<bool>(false, false), vec2<u32>(0u, 0u), 11215i), Struct_1(vec3<f32>(155f, 188f, 1190f), true, vec2<bool>(false, false), vec2<u32>(12763u, 4294967295u), i32(-2147483648))), Struct_2(Struct_1(vec3<f32>(-1580f, 1226f, -950f), true, vec2<bool>(true, false), vec2<u32>(1u, 133305u), -12839i), Struct_1(vec3<f32>(-924f, 1000f, 2191f), false, vec2<bool>(true, true), vec2<u32>(1u, 1u), -3950i)), Struct_2(Struct_1(vec3<f32>(-1327f, 1917f, -717f), false, vec2<bool>(false, true), vec2<u32>(1u, 11918u), i32(-2147483648)), Struct_1(vec3<f32>(-528f, -499f, -581f), false, vec2<bool>(true, false), vec2<u32>(1u, 68701u), 52420i)), Struct_2(Struct_1(vec3<f32>(1088f, 1000f, -1372f), false, vec2<bool>(true, true), vec2<u32>(0u, 0u), 0i), Struct_1(vec3<f32>(187f, 1000f, 1090f), true, vec2<bool>(true, true), vec2<u32>(25970u, 4294967295u), 1i)), Struct_2(Struct_1(vec3<f32>(-161f, -1091f, 226f), false, vec2<bool>(false, true), vec2<u32>(4294967295u, 11306u), 1i), Struct_1(vec3<f32>(-1352f, -708f, 995f), false, vec2<bool>(true, true), vec2<u32>(13042u, 4294967295u), 1545i)), Struct_2(Struct_1(vec3<f32>(113f, 1197f, -504f), false, vec2<bool>(false, true), vec2<u32>(4294967295u, 1u), 0i), Struct_1(vec3<f32>(321f, -279f, -352f), true, vec2<bool>(false, false), vec2<u32>(1u, 43845u), i32(-2147483648))), Struct_2(Struct_1(vec3<f32>(670f, 263f, 1156f), true, vec2<bool>(true, true), vec2<u32>(31164u, 1u), i32(-2147483648)), Struct_1(vec3<f32>(253f, -1474f, 361f), true, vec2<bool>(true, true), vec2<u32>(80349u, 21219u), 2147483647i)));

var<private> global1: Struct_1;

var<private> global2: f32 = -878f;

var<private> global3: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.a)));
    let var_1 = (_wgslsmith_f_op_f32(-global1.a.x) == _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.x)))))) & false;
    let var_2 = Struct_1(global1.a, any(vec3<bool>(all(!vec4<bool>(true, false, global1.b, false)), global1.c.x, false)), select(select(global1.c, !select(global1.c, global1.c, global1.c), any(vec4<bool>(false, false, true, false))), vec2<bool>(true, !(!global1.c.x)), false), vec2<u32>(4294967295u, ~_wgslsmith_clamp_u32(36523u, global1.d.x, _wgslsmith_mod_u32(0u, 72602u))), arg_1.x);
    var var_3 = global1.c;
    global1 = var_2;
    return !all(vec4<bool>(any(select(vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(true, true, false), vec3<bool>(true, false, var_1))), true, !var_2.b, arg_0 > ~28656u));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = select(select(vec3<bool>(all(select(vec4<bool>(arg_2, true, false, arg_3.c.x), vec4<bool>(false, true, arg_2, true), vec4<bool>(true, arg_3.b, false, global1.c.x))), arg_0, !global1.b), !vec3<bool>(!arg_3.c.x, true, -881f <= global1.a.x), false), vec3<bool>(arg_2, global1.c.x, false), vec3<bool>(!((false | arg_0) == true), true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(arg_3.b, arg_2, false))) && !func_2(arg_1.x, vec3<i32>(global1.e, global1.e, -16217i))));
    global2 = _wgslsmith_f_op_f32(-397f - _wgslsmith_f_op_f32(floor(417f)));
    var var_1 = arg_1.xx;
    var_1 = _wgslsmith_mult_vec2_u32(select(arg_3.d, global1.d >> (global1.d % vec2<u32>(32u)), vec2<bool>(arg_1.x < 1u, any(select(vec3<bool>(arg_2, var_0.x, true), vec3<bool>(arg_3.c.x, arg_2, global1.b), arg_3.b)))), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, global1.d.x), ~_wgslsmith_sub_vec2_u32(arg_3.d, arg_3.d))));
    var var_2 = global1.d.x;
    return !(!arg_2) || (select(~reverseBits(var_1.x), reverseBits(abs(0u)), true) > 4294967295u);
}

fn func_1(arg_0: bool) -> vec3<f32> {
    global3 = any(select(vec4<bool>(false, !(u_input.a <= 82514u), any(select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, global1.c.x), vec4<bool>(false, true, global1.c.x, false))), true), !vec4<bool>(false, arg_0, false, global1.b), vec4<bool>(func_2(~global1.d.x, _wgslsmith_div_vec3_i32(vec3<i32>(global1.e, global1.e, global1.e), vec3<i32>(36298i, global1.e, -31145i))), 49909u <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global1.d.x), vec3<u32>(u_input.a, 31880u, 0u)), false, !all(vec2<bool>(false, global1.b)))));
    global0 = array<Struct_2, 16>();
    var var_0 = !global1.c;
    global1 = Struct_1(global1.a, global1.b, select(global1.c, vec2<bool>(!func_3(false, vec4<u32>(29028u, 15758u, 4294967295u, 4294967295u), false, Struct_1(vec3<f32>(global1.a.x, global1.a.x, global1.a.x), global1.b, vec2<bool>(global1.b, var_0.x), vec2<u32>(global1.d.x, 4294967295u), 2147483647i)), true), global1.b), min(select(abs(~vec2<u32>(global1.d.x, u_input.a)), vec2<u32>(32302u, 20049u), vec2<bool>(true, any(vec3<bool>(var_0.x, var_0.x, false)))), global1.d), firstTrailingBit(global1.e));
    var var_1 = ~global1.d.x < max(~1112u, u_input.a);
    return vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x, global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec4<bool>(false, any(global1.c), all(global1.c), true), vec4<bool>(all(vec4<bool>(global1.c.x, false, true, global1.b)), false, 2147483647i > reverseBits(global1.e), true), !(!select(vec4<bool>(true, global1.b, false, false), vec4<bool>(false, true, global1.c.x, global1.b), vec4<bool>(true, true, false, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, global1.a.x, -569f) - vec3<f32>(global1.a.x, global1.a.x, -717f)), _wgslsmith_f_op_vec3_f32(func_1(false)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a.x, global1.a.x, 658f)))), global1.a)), true, !select(vec2<bool>(global1.e > global1.e, global1.b), select(vec2<bool>(false, var_0.x), select(global1.c, vec2<bool>(true, true), vec2<bool>(true, global1.b)), 1i > global1.e), select(vec2<bool>(global1.b, var_0.x), select(vec2<bool>(var_0.x, true), var_0.zz, global1.b), vec2<bool>(var_0.x, true))), _wgslsmith_add_vec2_u32(reverseBits(max(select(vec2<u32>(global1.d.x, u_input.a), global1.d, false), vec2<u32>(4294967295u, 71776u) | global1.d)), ~countOneBits(global1.d)), firstLeadingBit(-75326i));
    var var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(-global1.a.zy);
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1443f, _wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1068f - _wgslsmith_f_op_f32(floor(global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(true)).x), var_3.x) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), -667f, 364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2030f + _wgslsmith_f_op_f32(floor(var_1.a.x))))));
    var var_5 = _wgslsmith_sub_u32(firstTrailingBit(~0u) | global1.d.x, min(reverseBits(41176u), global1.d.x)) ^ 4294967295u;
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f * global1.a.x) * _wgslsmith_f_op_f32(var_1.a.x - -1255f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(global1.b)).x * 295f), -392f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(f32(-1f) * -978f)))));
    var_5 = ~14312u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_4.x * 466f)), 2147483647i, vec3<i32>(_wgslsmith_clamp_i32(-global1.e, -1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global1.e, -68588i), i32(-1i) * -2147483647i)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, global1.e, var_1.e, 1i) | vec4<i32>(48958i, 0i, 2147483647i, global1.e), ~vec4<i32>(0i, var_1.e, -3430i, var_1.e)), _wgslsmith_add_i32(2147483647i, -1i)), ~_wgslsmith_mod_i32(-var_1.e, global1.e)), 24512u);
}

