struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(2147483647i, vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), 1i, vec3<f32>(-567f, 785f, -285f)), Struct_1(-1i, vec4<bool>(true, true, true, false), vec3<bool>(true, false, true), 548i, vec3<f32>(-1093f, 746f, 354f)), Struct_1(0i, vec4<bool>(true, true, true, false), vec3<bool>(false, false, true), 1i, vec3<f32>(221f, -533f, 795f)), Struct_1(-25797i, vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), -1i, vec3<f32>(485f, 1537f, -197f)), Struct_1(0i, vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), 0i, vec3<f32>(-939f, -776f, 658f)), Struct_1(38391i, vec4<bool>(false, false, true, true), vec3<bool>(false, false, true), -10908i, vec3<f32>(-392f, 1412f, 975f)), Struct_1(-18342i, vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), 2147483647i, vec3<f32>(869f, 191f, 1171f)), Struct_1(17176i, vec4<bool>(false, false, false, true), vec3<bool>(true, true, true), -28589i, vec3<f32>(224f, -3325f, 1188f)), Struct_1(-22812i, vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), -1i, vec3<f32>(561f, 257f, 2594f)), Struct_1(0i, vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), -64004i, vec3<f32>(470f, 1762f, 1190f)), Struct_1(0i, vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), 15544i, vec3<f32>(-1382f, -901f, -1602f)), Struct_1(1i, vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), 1049i, vec3<f32>(-928f, 1463f, -499f)), Struct_1(-21503i, vec4<bool>(false, false, false, true), vec3<bool>(true, false, false), 85524i, vec3<f32>(369f, -501f, -110f)), Struct_1(i32(-2147483648), vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), 31712i, vec3<f32>(1302f, -1002f, -200f)), Struct_1(2147483647i, vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), i32(-2147483648), vec3<f32>(1000f, -1572f, 379f)), Struct_1(0i, vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), 1i, vec3<f32>(1247f, -690f, 448f)), Struct_1(2386i, vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), -1i, vec3<f32>(-684f, -216f, -978f)), Struct_1(-10052i, vec4<bool>(true, false, false, true), vec3<bool>(true, false, false), 2147483647i, vec3<f32>(-661f, 1684f, -315f)), Struct_1(1i, vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), 0i, vec3<f32>(-1517f, -942f, 689f)), Struct_1(-50053i, vec4<bool>(true, true, false, false), vec3<bool>(true, false, true), 1i, vec3<f32>(507f, 1097f, 288f)), Struct_1(40194i, vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), -5707i, vec3<f32>(-1013f, -638f, -153f)), Struct_1(-75814i, vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), 13769i, vec3<f32>(347f, 1000f, 564f)), Struct_1(2147483647i, vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), i32(-2147483648), vec3<f32>(119f, -735f, -310f)), Struct_1(1i, vec4<bool>(false, true, true, true), vec3<bool>(true, true, false), 5536i, vec3<f32>(-648f, -163f, -800f)), Struct_1(41867i, vec4<bool>(true, true, false, true), vec3<bool>(true, false, false), 2147483647i, vec3<f32>(881f, -2824f, 1181f)), Struct_1(-1i, vec4<bool>(true, true, true, false), vec3<bool>(false, true, false), 61235i, vec3<f32>(-1396f, 614f, -1318f)), Struct_1(-41264i, vec4<bool>(false, true, true, true), vec3<bool>(true, false, false), -22857i, vec3<f32>(237f, -1022f, -1336f)), Struct_1(-1i, vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), 8105i, vec3<f32>(1000f, -720f, 765f)));

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<Struct_1, 4>;

var<private> global4: f32 = -316f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = false;
    var var_1 = global2[_wgslsmith_index_u32(54520u, 29u)];
    var var_2 = _wgslsmith_div_vec3_f32(arg_0.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, var_1.e.x, -385f) - arg_0.e)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(849f, 1641f, arg_0.e.x), _wgslsmith_f_op_vec3_f32(-var_1.e))) + _wgslsmith_f_op_vec3_f32(-arg_0.e))));
    var var_3 = Struct_1(u_input.a.x, !vec4<bool>(false, false, all(!vec4<bool>(true, var_1.c.x, true, var_1.c.x)), false), var_1.b.zxw, 1i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.e))), vec3<f32>(arg_0.e.x, 1796f, -2251f)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_3.e.x, 309f), vec3<f32>(var_3.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1620f + var_3.e.x), 1590f), _wgslsmith_f_op_f32(-108f + _wgslsmith_f_op_f32(711f * -1333f))))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-562f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(var_2.x * var_2.x)), arg_0.e)));
    return 30029i;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 18>();
    var var_0 = arg_1.c.x;
    let var_1 = ~u_input.c;
    var var_2 = _wgslsmith_div_i32(32437i, _wgslsmith_add_i32(arg_1.a, func_3(Struct_1(u_input.a.x, vec4<bool>(arg_1.b.x, false, true, arg_0), vec3<bool>(arg_1.b.x, true, true), arg_1.a, arg_1.e))) | countOneBits(u_input.a.x));
    var var_3 = ~vec4<u32>(4892u, (var_1.x ^ countOneBits(16336u)) ^ _wgslsmith_mod_u32(~1u, ~31573u), _wgslsmith_mult_u32(~var_1.x << ((u_input.c.x ^ 1663u) % 32u), _wgslsmith_mult_u32(~var_1.x, u_input.d)), var_1.x);
    return var_1.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = 1939f;
    var var_1 = true | (arg_0.x >= 1i);
    let var_2 = ~firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.c, abs(vec3<u32>(1u, u_input.b, 18764u))));
    global1 = array<Struct_1, 28>();
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(max(func_2(true, global3[_wgslsmith_index_u32(1u, 4u)]), ~_wgslsmith_div_u32(var_2.x, u_input.d)), ~(~0u), 0u, ~firstLeadingBit(26202u)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(0u, 15276u, 0u, 1u) >> (vec4<u32>(u_input.d, var_2.x, 6564u, 17611u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 24467u, u_input.d, 26897u) | (vec4<u32>(31852u, u_input.d, u_input.d, 77351u) | vec4<u32>(6524u, 4294967295u, u_input.d, 68202u)), vec4<u32>(~13002u, u_input.b, var_2.x, 0u))), _wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(var_2.x, var_2.x, var_2.x, 0u)), ~vec4<u32>(u_input.d, u_input.c.x, 34247u, 0u)) & ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(58657u, 25951u, 0u, 751u), vec4<u32>(1u, u_input.c.x, u_input.c.x, 4294967295u), vec4<bool>(true, false, false, true)), vec4<u32>(1u, u_input.b, 60897u, 9984u)));
    return Struct_1(~_wgslsmith_div_i32(-1i, u_input.a.x), !vec4<bool>(true, !(var_0 > var_0), false, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)))), vec3<bool>(select(true, !(var_0 > -1950f), false), true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))) & any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), -(abs(arg_1.x) >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(var_2.x, 4294967295u), func_2(true, Struct_1(arg_2, vec4<bool>(false, true, false, true), vec3<bool>(false, false, true), arg_2, vec3<f32>(1651f, var_0, var_0)))) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-494f, -929f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f)), -463f));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    let var_0 = reverseBits(vec4<u32>(~arg_3, u_input.b, 25832u, 0u));
    var var_1 = Struct_1(countOneBits(29839i), select(!arg_2.b, arg_2.b, any(!(!arg_2.b))), arg_2.c, u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1166f, arg_2.e.x, -616f))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~max(u_input.c.x, 0u), reverseBits(arg_3)), 18u)];
    global0 = array<Struct_1, 18>();
    global2 = array<Struct_1, 29>();
    return select(var_0, vec4<u32>(abs(~(~arg_3)), arg_3, arg_3, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.c.zx, vec2<u32>(arg_3, 49761u)), u_input.c.yz)), ((var_2.e.x >= -1749f) & !(var_1.e.x > var_1.e.x)) && var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(289f)), _wgslsmith_f_op_f32(step(-1105f, 1000f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1339f), -516f, 287f)) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2410f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-747f, 745f)), _wgslsmith_f_op_f32(289f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1296f + -1000f) + _wgslsmith_f_op_f32(floor(-1015f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1663f, -1970f, -334f) * vec3<f32>(-722f, 529f, 505f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-736f, 2860f, 738f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(673f, -625f)) * _wgslsmith_f_op_f32(f32(-1f) * -934f)), 1436f, 1f)));
    global3 = array<Struct_1, 4>();
    let var_1 = 4294967295u;
    let var_2 = !(!any(vec2<bool>(true, true)));
    let var_3 = ~_wgslsmith_dot_vec4_u32(~(~reverseBits(vec4<u32>(0u, var_1, 26788u, 4294967295u))), func_4(var_2, u_input.a.x, func_1(u_input.a.xz, -u_input.a.xy, u_input.a.x), ~(~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-341f + 704f))) + _wgslsmith_f_op_f32(select(var_0.x, var_0.x, ~1i == (u_input.a.x ^ u_input.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + var_0.x))))), _wgslsmith_f_op_f32(1000f * var_0.x), var_0.x), 49560u, firstLeadingBit(firstTrailingBit(u_input.a.x)));
}

