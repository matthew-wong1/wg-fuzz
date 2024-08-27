struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: i32,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_4) -> bool {
    global0 = array<vec3<i32>, 30>();
    let var_0 = ~(~vec2<u32>(u_input.c.x, ~53748u));
    global0 = array<vec3<i32>, 30>();
    var var_1 = abs(-u_input.d.xy | u_input.d.zz);
    let var_2 = arg_2.d.b;
    return !(arg_2.b.x || (!var_2.d & any(!arg_2.b.xwx)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    global0 = array<vec3<i32>, 30>();
    var var_0 = arg_2.a.x;
    var_0 = -(max(_wgslsmith_sub_i32(i32(-1i) * -1i, 2147483647i), 2147483647i) << (u_input.b % 32u));
    global0 = array<vec3<i32>, 30>();
    let var_1 = arg_2;
    return _wgslsmith_clamp_u32(reverseBits(abs(countOneBits(var_1.c))), ~var_1.c, abs(4294967295u));
}

fn func_2(arg_0: u32) -> Struct_3 {
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    let var_0 = func_4(Struct_3(Struct_2(u_input.d.x, Struct_1(abs(global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), min(u_input.d.zz, u_input.d.yx), 1u, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1136f, -703f, 751f, -1036f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-485f, -1000f) * vec2<f32>(1000f, 816f))), Struct_1(abs(u_input.d) >> (u_input.c.wwy % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.d.xy << (u_input.c.wy % vec2<u32>(32u)), countOneBits(u_input.d.zz)), arg_0, true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1126f, -1000f, 1390f, -783f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-288f, 1437f, 357f, -1746f))))), Struct_2(-1i ^ max(-2147483647i, u_input.d.x), Struct_1(u_input.d, -vec2<i32>(0i, 2147483647i), _wgslsmith_dot_vec2_u32(vec2<u32>(28334u, 49335u), vec2<u32>(u_input.c.x, 0u)), func_3(true, u_input.c.zyw, Struct_4(Struct_3(Struct_2(-67470i, Struct_1(u_input.d, vec2<i32>(31893i, u_input.d.x), 26375u, true, vec4<f32>(-1413f, 455f, -298f, -1504f)), vec2<f32>(-427f, -1349f)), Struct_1(u_input.d, u_input.d.xy, u_input.b, false, vec4<f32>(-1000f, -1355f, 560f, 1267f)), Struct_2(u_input.a, Struct_1(global0[_wgslsmith_index_u32(58071u, 30u)], u_input.d.yz, 11362u, false, vec4<f32>(148f, 156f, -1371f, -444f)), vec2<f32>(1088f, -383f))), vec4<bool>(false, true, true, false), vec3<u32>(arg_0, 0u, 1u), Struct_3(Struct_2(u_input.d.x, Struct_1(u_input.d, vec2<i32>(u_input.a, u_input.d.x), 1u, true, vec4<f32>(609f, 660f, -1742f, 765f)), vec2<f32>(389f, -316f)), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 30u)], vec2<i32>(2147483647i, u_input.d.x), 59897u, false, vec4<f32>(938f, 477f, 415f, -1421f)), Struct_2(10707i, Struct_1(vec3<i32>(u_input.d.x, 37725i, 0i), vec2<i32>(u_input.a, u_input.d.x), 46915u, true, vec4<f32>(-808f, -851f, -1503f, -1539f)), vec2<f32>(-1084f, 1000f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(464f, 1462f, -825f, 632f) * vec4<f32>(306f, -555f, 1058f, 706f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1235f, 456f)))))), select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), 4294967295u >= u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), true), select(vec2<bool>(true, select(true, false, false)), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), false), vec2<bool>(true, any(vec3<bool>(false, false, true)))), any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, false)))), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(18791i, u_input.a, -66753i) >> (_wgslsmith_mod_vec3_u32(u_input.c.wwz, vec3<u32>(32807u, arg_0, arg_0)) % vec3<u32>(32u)), abs(vec3<i32>(32962i, -2147483647i, u_input.a)), u_input.d ^ vec3<i32>(-22357i, u_input.a, 2147483647i)), vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(select(u_input.d, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false), u_input.d ^ global0[_wgslsmith_index_u32(arg_0, 30u)])), ~(u_input.c.x ^ arg_0), !any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1100f, -468f, 837f, 688f) - vec4<f32>(-1069f, 2003f, 1946f, 1011f)), _wgslsmith_div_vec4_f32(vec4<f32>(151f, -983f, -808f, 754f), vec4<f32>(1370f, -1342f, -1000f, -427f))))))));
    var var_1 = _wgslsmith_div_f32(-217f, 730f);
    let var_2 = ~vec3<i32>(25979i, u_input.a, min(32605i, u_input.a | -1i) ^ ((i32(-1i) * -1i) | -u_input.a));
    return Struct_3(Struct_2(u_input.d.x, Struct_1(-(~vec3<i32>(2147483647i, var_2.x, 10339i)), vec2<i32>(839i, -2147483647i) >> (max(u_input.c.yy, vec2<u32>(arg_0, 21401u)) % vec2<u32>(32u)), 4294967295u, true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(886f, 751f, 1360f, -1184f), vec4<f32>(-1345f, 2261f, -1977f, -1964f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(583f, 525f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, -822f)), false)))), Struct_1(var_2, vec2<i32>(u_input.d.x, select(-25414i, _wgslsmith_dot_vec2_i32(u_input.d.xz, var_2.yx), var_2.x < 65647i)), 4294967295u & _wgslsmith_add_u32(8110u, 1u << (u_input.c.x % 32u)), true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1624f, -2028f, _wgslsmith_f_op_f32(f32(-1f) * -2060f), _wgslsmith_f_op_f32(-3896f - 423f))))), Struct_2(-1i, Struct_1(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x) >> ((u_input.c.xwx | u_input.c.wzz) % vec3<u32>(32u)), var_2.yy, 0u, all(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1354f, -1825f, 453f, -587f), _wgslsmith_div_vec4_f32(vec4<f32>(-1609f, 1156f, 1193f, 1642f), vec4<f32>(110f, 272f, -390f, -1000f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-271f, 824f))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(537f * 457f))))));
}

fn func_1() -> u32 {
    var var_0 = 1060f;
    let var_1 = _wgslsmith_mod_vec4_i32(select(~vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, -2147483647i) << (vec4<u32>(firstTrailingBit(43223u), ~u_input.c.x, u_input.b, u_input.b) % vec4<u32>(32u)), -select(-vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, u_input.a), countOneBits(vec4<i32>(u_input.a, -48967i, 2147483647i, u_input.a)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), ~vec4<i32>(-firstTrailingBit(11030i), u_input.d.x, u_input.a, _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.a, 1i, u_input.a, 2147483647i)))));
    var var_2 = vec2<u32>(u_input.c.x, 0u);
    var var_3 = Struct_4(func_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 13010u, u_input.c.x), min(vec4<u32>(u_input.c.x, 0u, 45365u, 21678u), vec4<u32>(16855u, 1u, 4497u, 31776u)))), vec4<bool>(true, func_2(4294967295u).c.b.d, select(true, func_2(u_input.c.x).b.d, true & (u_input.d.x <= u_input.d.x)), true), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.c.x, 44097u) ^ ~vec3<u32>(4294967295u, 79639u, var_2.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.b, var_2.x), u_input.c.yzx)), u_input.c.xxy), Struct_3(func_2(54730u).c, func_2(~4294967295u).a.b, Struct_2(reverseBits(-2147483647i), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, var_1.x, var_1.x), vec3<i32>(-71625i, var_1.x, -15232i)), countOneBits(vec2<i32>(var_1.x, 2147483647i)), var_2.x, true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2612f, -251f, 1043f, -139f), vec4<f32>(-983f, 799f, 475f, 375f)))), vec2<f32>(118f, _wgslsmith_f_op_f32(-1865f + -1000f)))));
    var var_4 = 1000f;
    return u_input.c.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: u32) -> bool {
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    let var_0 = Struct_4(func_2(firstLeadingBit(_wgslsmith_div_u32(~51692u, 12356u))), arg_0, ~select(min(vec3<u32>(u_input.c.x, 36495u, 4294967295u), select(u_input.c.zyw, u_input.c.wwz, false)), vec3<u32>(_wgslsmith_mult_u32(17574u, 9651u), countOneBits(arg_2), abs(arg_2)), arg_0.x), func_2(u_input.b));
    global0 = array<vec3<i32>, 30>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    let var_0 = vec2<bool>(func_5(!vec4<bool>(any(vec2<bool>(false, true)), true, any(vec2<bool>(true, false)), select(false, true, false)), vec3<bool>(false, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), true), firstTrailingBit(func_1())), any(vec3<bool>(true, true, false)));
    var var_1 = -reverseBits(vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, -2147483647i) << (firstLeadingBit(98256u) % 32u), (52026i | u_input.a) ^ u_input.a));
    var_1 = vec2<i32>(_wgslsmith_sub_i32(max(~firstLeadingBit(-28996i), u_input.d.x), reverseBits(u_input.d.x)), -31145i);
    global0 = array<vec3<i32>, 30>();
    let var_2 = _wgslsmith_mod_vec2_u32(u_input.c.xz, u_input.c.zw);
    let var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.d.x, abs(var_1.x), min(_wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.d.yz), var_3), _wgslsmith_sub_i32(~(-39808i), ~(-58428i))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(50852u, u_input.b, u_input.c.x), vec3<u32>(var_2.x, 1u, 112368u)), ~(~1u)) << (~u_input.b % 32u));
}

