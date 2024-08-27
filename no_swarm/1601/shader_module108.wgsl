struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<i32, 3> = array<i32, 3>(1i, -1i, 26406i);

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec4<f32>(424f, -170f, 1000f, 194f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-13505i, i32(-2147483648)), 1133f, 1i), 1u), Struct_3(vec4<f32>(-599f, 1151f, 1474f, 1997f), Struct_1(vec3<bool>(false, false, true), vec2<i32>(-20127i, 28991i), -1000f, i32(-2147483648)), 27815u), Struct_3(vec4<f32>(-184f, -310f, 333f, 193f), Struct_1(vec3<bool>(false, false, true), vec2<i32>(i32(-2147483648), -11914i), 151f, -40476i), 5238u), Struct_3(vec4<f32>(-1000f, -1000f, -714f, 1674f), Struct_1(vec3<bool>(true, false, false), vec2<i32>(-1i, 56591i), 542f, -25574i), 0u), Struct_3(vec4<f32>(-524f, 864f, 1283f, 218f), Struct_1(vec3<bool>(false, true, false), vec2<i32>(-10413i, i32(-2147483648)), 588f, 4556i), 4294967295u), Struct_3(vec4<f32>(1110f, 1955f, 806f, 1558f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-28998i, 7268i), -1254f, -1i), 61555u), Struct_3(vec4<f32>(-343f, 736f, -302f, 1883f), Struct_1(vec3<bool>(true, false, false), vec2<i32>(31145i, -24049i), -379f, i32(-2147483648)), 4294967295u), Struct_3(vec4<f32>(310f, 486f, -187f, 600f), Struct_1(vec3<bool>(false, false, true), vec2<i32>(1i, 24657i), -540f, 46481i), 4294967295u), Struct_3(vec4<f32>(413f, 394f, -186f, -955f), Struct_1(vec3<bool>(true, true, true), vec2<i32>(-5356i, -53273i), 809f, 16461i), 23339u), Struct_3(vec4<f32>(-1327f, -814f, 791f, 702f), Struct_1(vec3<bool>(true, false, true), vec2<i32>(12505i, -18326i), 367f, -11328i), 1u), Struct_3(vec4<f32>(-1308f, -1018f, 1276f, 238f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-40326i, -35871i), 458f, 10620i), 0u), Struct_3(vec4<f32>(2403f, -2164f, 1138f, 838f), Struct_1(vec3<bool>(false, false, true), vec2<i32>(1i, 27608i), -1675f, -28882i), 77630u), Struct_3(vec4<f32>(171f, -698f, 1198f, 933f), Struct_1(vec3<bool>(true, true, false), vec2<i32>(29128i, 28392i), -635f, -52748i), 4294967295u), Struct_3(vec4<f32>(-865f, 1323f, -1025f, -422f), Struct_1(vec3<bool>(true, true, false), vec2<i32>(49061i, -8399i), 699f, 17301i), 0u), Struct_3(vec4<f32>(-1375f, 1257f, 1000f, 1821f), Struct_1(vec3<bool>(false, true, false), vec2<i32>(30614i, 39003i), 1000f, 2147483647i), 54488u), Struct_3(vec4<f32>(-2383f, 515f, 671f, -1134f), Struct_1(vec3<bool>(false, true, true), vec2<i32>(2147483647i, -20878i), 1881f, i32(-2147483648)), 4294967295u));

var<private> global3: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global1 = array<i32, 3>();
    global1 = array<i32, 3>();
    let var_0 = all(select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, false, true)), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, any(vec2<bool>(true, true)), true)), vec4<bool>(true, select(true, true, any(vec4<bool>(true, true, false, false))), any(vec4<bool>(true, false, true, true)), !all(vec2<bool>(true, false)))));
    var var_1 = 1i;
    global3 = var_0;
    return ~(-1i);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = max(u_input.a, _wgslsmith_div_i32(firstLeadingBit(func_3()) | -34189i, -1i));
    let var_1 = Struct_4(arg_2, arg_2.c);
    let var_2 = Struct_5(vec3<u32>(abs(_wgslsmith_mod_u32(0u, arg_2.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, var_1.a.c, var_1.b, _wgslsmith_div_u32(arg_2.c, var_1.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(60181u, 27030u, 1u, 8360u), vec4<u32>(4294967295u, arg_2.c, var_1.a.c, 31862u) ^ vec4<u32>(arg_2.c, 16979u, var_1.b, 106696u))), 23889u), var_1.a.b, var_1.a.b.d, var_1.a.a.x, (i32(-1i) * -_wgslsmith_add_i32(global1[_wgslsmith_index_u32(24068u, 3u)], arg_2.b.b.x)) | ~(~abs(23724i)));
    let var_3 = countOneBits(45206u);
    let var_4 = global2[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(4294967295u, var_2.a.x), _wgslsmith_mod_u32(arg_2.c, 2600u)), vec2<u32>(~15664u, _wgslsmith_sub_u32(var_2.a.x, var_2.a.x)))), 16u)];
    return Struct_1(!select(select(!var_2.b.a, var_1.a.b.a, 25228u != arg_2.c), !vec3<bool>(var_1.a.b.a.x, arg_1.x, var_2.b.a.x), var_1.a.b.a.x), max(abs(~(-var_4.b.b)), vec2<i32>(-5946i, var_2.e)), _wgslsmith_f_op_f32(var_2.d * 1311f), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(5719u, var_3, 4294967295u))), var_4.c), 3u)]);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = arg_2.x;
    var var_1 = Struct_3(vec4<f32>(arg_1.a.a.x, -268f, _wgslsmith_f_op_f32(abs(1616f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x + arg_0.d) - _wgslsmith_f_op_f32(f32(-1f) * -121f)))), arg_1.a.b, 6208u);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-117f, 1096f, 420f, -286f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, var_1.a.x, -1215f, arg_1.a.a.x))), true)), Struct_1(arg_0.b.a, vec2<i32>(global1[_wgslsmith_index_u32(arg_1.a.c, 3u)], countOneBits(0i)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_dot_vec4_i32(~u_input.b, u_input.b)), arg_1.b >> (~(~1u) % 32u));
    let var_3 = ~(var_2.b.b ^ arg_0.b.b);
    global1 = array<i32, 3>();
    return !(!var_2.b.a);
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.b, abs(u_input.b));
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(firstTrailingBit(arg_0.x), abs(1u))), 30u)];
    return select(!select(var_1.a, vec3<bool>(var_1.a.x, true, false), var_1.a), func_4(Struct_5(~countOneBits(arg_0.wwx), Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec2<i32>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(arg_0.x, 3u)]) ^ vec2<i32>(u_input.b.x, -2040i), -154f, 10705i << (arg_0.x % 32u)), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 11335u), vec4<u32>(1u, 18505u, 1u, 1u))), 3u)], _wgslsmith_f_op_f32(1225f - _wgslsmith_f_op_f32(-var_1.c)), i32(-1i) * -12504i), Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c, -1024f, var_1.c, var_1.c), vec4<f32>(-444f, 794f, var_1.c, 527f))), func_2(var_1.c, vec2<bool>(false, var_1.a.x), Struct_3(vec4<f32>(658f, 107f, 436f, -1221f), Struct_1(var_1.a, u_input.b.ww, var_1.c, 1i), 1u)), ~arg_0.x), _wgslsmith_dot_vec2_u32(arg_0.xx, vec2<u32>(arg_0.x, 54560u))), abs(arg_0 >> (arg_0 % vec4<u32>(32u)))), !vec3<bool>(all(vec4<bool>(var_1.a.x, true, var_1.a.x, false)), any(select(vec4<bool>(var_1.a.x, false, true, true), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), vec4<bool>(true, true, var_1.a.x, var_1.a.x))), select(24183i, -2147483647i, true) <= global1[_wgslsmith_index_u32(~16347u, 3u)]));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_4(Struct_3(vec4<f32>(arg_2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-978f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c))), func_2(_wgslsmith_f_op_f32(max(1191f, func_2(arg_1.c.c, vec2<bool>(true, true), global2[_wgslsmith_index_u32(105604u, 16u)]).c)), arg_3.xx, Struct_3(vec4<f32>(1512f, arg_1.c.c, 1249f, arg_2.a.x), Struct_1(arg_3, arg_1.b.b, arg_1.b.c, 27797i), _wgslsmith_mult_u32(32974u, arg_2.c))), 37719u), ~55283u);
    var var_1 = !(!(!all(!vec2<bool>(arg_3.x, arg_1.b.a.x))));
    let var_2 = ~abs(countOneBits(abs(vec3<u32>(var_0.a.c, 45519u, arg_1.a)) << (~vec3<u32>(arg_1.a, 62509u, var_0.b) % vec3<u32>(32u))));
    var var_3 = Struct_1(func_4(Struct_5(var_2, Struct_1(arg_1.b.a, -vec2<i32>(52625i, arg_1.b.b.x), _wgslsmith_f_op_f32(round(-547f)), ~global1[_wgslsmith_index_u32(var_0.a.c, 3u)]), -43284i, arg_0.x, -2147483647i), Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a.a), arg_2.b, 113021u), 13205u), vec4<u32>(23055u, 62124u, arg_1.a, _wgslsmith_sub_u32(71649u, arg_1.a) ^ ~4294967295u)), -firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, 9832u), 3u)], reverseBits(-20162i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.c) - 1f), -arg_1.b.b.x);
    var var_4 = -select(~global1[_wgslsmith_index_u32(var_2.x >> (11187u % 32u), 3u)], var_3.d, true);
    return _wgslsmith_add_i32(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-arg_1.c.b.x, -2147483647i), -_wgslsmith_sub_i32(-2147483647i, arg_2.b.b.x) & _wgslsmith_mult_i32(-1i >> (1u % 32u), i32(-1i) * -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 16>();
    var var_0 = Struct_2(1u, Struct_1(vec3<bool>(true, false, false), vec2<i32>(0i, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -580f, 366f) + vec3<f32>(1000f, -1710f, 174f)), Struct_2(107698u, global0[_wgslsmith_index_u32(20344u, 30u)], global0[_wgslsmith_index_u32(33794u, 30u)], vec4<f32>(-499f, 1000f, -841f, -652f)), Struct_3(vec4<f32>(-2445f, 410f, 355f, -1763f), global0[_wgslsmith_index_u32(6916u, 30u)], 22411u), func_1(vec4<u32>(36530u, 0u, 40202u, 26649u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1229f, -302f))), select(select(-26031i, firstTrailingBit(5839i), true), 1i, all(vec2<bool>(true, true)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f + _wgslsmith_f_op_f32(f32(-1f) * -812f))), !vec2<bool>(func_1(vec4<u32>(27392u, 4294967295u, 9922u, 0u)).x, true), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1452f, 1032f, -780f, -319f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-498f, -399f, 310f, 167f), vec4<f32>(1000f, -237f, 307f, 1209f))), vec4<bool>(false, true, false, false))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -235f), vec2<bool>(true, true), Struct_3(vec4<f32>(333f, -160f, -1532f, 762f), global0[_wgslsmith_index_u32(10915u, 30u)], 0u)), ~min(0u, 4294967295u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1338f)) + 775f), 1352f, _wgslsmith_f_op_f32(max(-284f, -260f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-766f + 824f))))));
    global0 = array<Struct_1, 30>();
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(6310u, firstLeadingBit(~0u)), ~(~4294967295u | max(var_0.a, var_0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a, 1u), countOneBits(~vec3<u32>(var_0.a, 4294967295u, var_0.a)))), 16u)], ~4294967295u);
    global3 = !(!(!(var_0.c.a.x | !var_1.a.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_dot_vec4_u32(~(~reverseBits(vec4<u32>(38361u, 1u, var_1.a.c, var_1.b))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.a.c, var_0.a, 16996u, var_0.a), ~select(vec4<u32>(var_0.a, 4294967295u, var_1.a.c, var_0.a), vec4<u32>(var_0.a, var_1.a.c, var_1.b, 4294967295u), var_0.b.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.c, -788f, var_0.d.x)) - var_0.d.xxw)), ~vec2<u32>(~max(var_0.a, var_0.a), firstTrailingBit(0u)), var_0.c.b);
}

