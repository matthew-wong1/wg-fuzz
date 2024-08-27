struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(1i, -25404i, -1i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(1i, i32(-2147483648), -12262i), vec3<i32>(2147483647i, -27762i, -51222i), vec3<i32>(7309i, i32(-2147483648), 0i), vec3<i32>(-34734i, -40191i, 25552i), vec3<i32>(0i, 2147483647i, -4397i), vec3<i32>(1i, 36278i, -3580i), vec3<i32>(2147483647i, 2375i, -1999i), vec3<i32>(i32(-2147483648), 4424i, 26759i), vec3<i32>(-60257i, -32518i, 2147483647i), vec3<i32>(-1i, 31039i, 1i), vec3<i32>(0i, 2147483647i, 21671i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-16522i, -2235i, 2147483647i), vec3<i32>(30963i, 4535i, 1919i), vec3<i32>(18850i, 7697i, 14498i), vec3<i32>(1i, -40838i, 1i), vec3<i32>(16351i, -1i, 24628i), vec3<i32>(2147483647i, 0i, -7640i), vec3<i32>(-23488i, -32601i, -30613i), vec3<i32>(-3821i, i32(-2147483648), -5790i), vec3<i32>(7782i, -19766i, -1i), vec3<i32>(2147483647i, 1i, 2147483647i));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<bool>(true, true, false, false), -877f, vec2<i32>(1i, -11655i), vec3<f32>(-251f, -398f, -1000f), 66583u), Struct_1(vec4<bool>(false, false, true, false), -1717f, vec2<i32>(-59956i, -1i), vec3<f32>(1309f, 488f, -635f), 4294967295u), Struct_1(vec4<bool>(true, false, true, true), -1400f, vec2<i32>(45194i, i32(-2147483648)), vec3<f32>(-212f, -474f, -1313f), 8468u), Struct_1(vec4<bool>(true, false, true, true), 204f, vec2<i32>(-1i, 0i), vec3<f32>(1048f, -436f, 1937f), 9461u), Struct_1(vec4<bool>(false, false, true, true), 1543f, vec2<i32>(-13112i, 1i), vec3<f32>(625f, 1000f, -1314f), 1u), Struct_1(vec4<bool>(true, true, false, true), 2829f, vec2<i32>(0i, -1i), vec3<f32>(-166f, 1605f, -511f), 0u), Struct_1(vec4<bool>(true, true, false, true), 1148f, vec2<i32>(0i, i32(-2147483648)), vec3<f32>(923f, -143f, 1421f), 1u), Struct_1(vec4<bool>(false, false, false, false), -820f, vec2<i32>(1i, 11733i), vec3<f32>(420f, 236f, 2506f), 4294967295u), Struct_1(vec4<bool>(true, false, true, true), 1144f, vec2<i32>(20343i, i32(-2147483648)), vec3<f32>(574f, 896f, 703f), 98251u), Struct_1(vec4<bool>(true, true, false, true), 1949f, vec2<i32>(-1i, 1i), vec3<f32>(958f, -877f, 369f), 30478u), Struct_1(vec4<bool>(false, true, false, true), -207f, vec2<i32>(1i, -26393i), vec3<f32>(1763f, 463f, -1433f), 1u), Struct_1(vec4<bool>(false, false, false, false), 1385f, vec2<i32>(-1i, -16046i), vec3<f32>(-766f, 670f, 1279f), 1u), Struct_1(vec4<bool>(true, false, true, true), 417f, vec2<i32>(1i, -39280i), vec3<f32>(-173f, 289f, -2251f), 4294967295u), Struct_1(vec4<bool>(true, false, false, true), 1077f, vec2<i32>(2147483647i, 2147483647i), vec3<f32>(1000f, 130f, -554f), 21613u), Struct_1(vec4<bool>(false, false, true, true), 1336f, vec2<i32>(i32(-2147483648), 9852i), vec3<f32>(-1209f, -843f, -533f), 4294967295u), Struct_1(vec4<bool>(false, true, true, false), 454f, vec2<i32>(-1i, -25959i), vec3<f32>(-1754f, 646f, 1027f), 18370u), Struct_1(vec4<bool>(false, true, true, true), -2385f, vec2<i32>(17246i, -2272i), vec3<f32>(-1149f, -190f, 339f), 4294967295u), Struct_1(vec4<bool>(false, false, false, true), 126f, vec2<i32>(-10935i, -5478i), vec3<f32>(1725f, 462f, -176f), 1u), Struct_1(vec4<bool>(true, true, true, false), 1017f, vec2<i32>(-817i, 26723i), vec3<f32>(1292f, 1000f, -1553f), 37542u), Struct_1(vec4<bool>(false, true, true, false), -1000f, vec2<i32>(14221i, -24649i), vec3<f32>(740f, 210f, -1089f), 9001u), Struct_1(vec4<bool>(false, true, false, false), -1914f, vec2<i32>(30276i, 54929i), vec3<f32>(416f, -1382f, 580f), 4294967295u), Struct_1(vec4<bool>(true, true, false, true), 1000f, vec2<i32>(-53312i, 13199i), vec3<f32>(644f, -497f, -392f), 4294967295u), Struct_1(vec4<bool>(false, false, false, false), -320f, vec2<i32>(0i, 1i), vec3<f32>(743f, -477f, 162f), 24914u), Struct_1(vec4<bool>(true, false, true, true), -220f, vec2<i32>(-34453i, 48009i), vec3<f32>(1000f, 1705f, -213f), 121u), Struct_1(vec4<bool>(true, false, false, true), 593f, vec2<i32>(26079i, 33734i), vec3<f32>(-861f, -348f, 324f), 62042u), Struct_1(vec4<bool>(false, true, true, false), 566f, vec2<i32>(-1i, 1i), vec3<f32>(923f, 400f, -1038f), 0u), Struct_1(vec4<bool>(true, false, true, true), -445f, vec2<i32>(-23320i, 320i), vec3<f32>(-241f, -416f, 1444f), 1u), Struct_1(vec4<bool>(false, true, true, false), -1988f, vec2<i32>(5730i, -36952i), vec3<f32>(543f, 151f, -922f), 17350u), Struct_1(vec4<bool>(true, false, false, true), 1000f, vec2<i32>(-8802i, 6754i), vec3<f32>(-543f, 1000f, -1157f), 52473u));

var<private> global2: array<u32, 19>;

var<private> global3: array<f32, 5>;

var<private> global4: array<Struct_2, 14>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = firstLeadingBit(u_input.e.yyz) ^ vec3<i32>(26066i, 2147483647i, -(~(i32(-1i) * -6218i)));
    var var_1 = global1[_wgslsmith_index_u32(~(~0u >> (~u_input.b % 32u)), 29u)];
    global0 = array<vec3<i32>, 24>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.a.zx))) + vec2<f32>(921f, _wgslsmith_f_op_f32(ceil(arg_0.c.b))));
    let var_3 = vec4<bool>(all(var_1.a.wyz), true, true, !(min(_wgslsmith_div_i32(var_1.c.x, var_1.c.x), abs(arg_0.b)) < _wgslsmith_clamp_i32(reverseBits(-55154i), 39843i, var_1.c.x >> (var_1.e % 32u))));
    return var_1.a.x;
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    global3 = array<f32, 5>();
    global1 = array<Struct_1, 29>();
    var var_0 = Struct_2(vec3<bool>(select(true, _wgslsmith_mult_i32(u_input.e.x, u_input.d.x) != _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), u_input.e.xy), select(true, true, false)), all(vec3<bool>(true, true, true)), func_3(Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(801u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(u_input.b, 5u)]), vec3<f32>(414f, global3[_wgslsmith_index_u32(u_input.b, 5u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 5u)])), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.c.x, -11537i, 62347i, -2986i)), Struct_1(vec4<bool>(true, true, false, false), global3[_wgslsmith_index_u32(20411u, 5u)], u_input.c, vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 5u)], -1222f, -212f), arg_0.x), vec3<bool>(true, true, false)))));
    global0 = array<vec3<i32>, 24>();
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(select(arg_0, _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(arg_0.x, 19u)], u_input.b, u_input.b)), ~vec3<u32>(arg_0.x, 58917u, u_input.a.x)), any(select(var_0.a, var_0.a, vec3<bool>(var_0.a.x, var_0.a.x, false))))), firstTrailingBit(arg_0)), 14u)];
    return select(select(select(!vec4<bool>(var_1.a.x, var_1.a.x, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(false, false, var_1.a.x, var_0.a.x)), select(vec4<bool>(var_1.a.x, false, var_1.a.x, true), vec4<bool>(var_0.a.x, var_1.a.x, false, false), vec4<bool>(true, var_1.a.x, true, false)), vec4<bool>(true, var_1.a.x, true, var_1.a.x)), !(!vec4<bool>(true, false, true, var_0.a.x))), select(vec4<bool>(select(var_0.a.x, var_1.a.x, false), var_0.a.x, any(vec2<bool>(var_1.a.x, var_1.a.x)), all(vec2<bool>(var_1.a.x, true))), select(!vec4<bool>(var_1.a.x, var_1.a.x, true, false), !vec4<bool>(var_0.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(false, false, false, true)), var_1.a.x), !select(select(vec4<bool>(var_0.a.x, true, var_0.a.x, false), vec4<bool>(true, true, false, var_1.a.x), var_0.a.x), select(vec4<bool>(var_1.a.x, var_1.a.x, true, var_0.a.x), vec4<bool>(var_1.a.x, var_0.a.x, var_0.a.x, var_1.a.x), vec4<bool>(true, var_0.a.x, false, var_0.a.x)), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), select(select(select(select(vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), var_1.a.x), !vec4<bool>(true, var_0.a.x, var_0.a.x, var_1.a.x), true & var_1.a.x), select(select(vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(false, var_1.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_1.a.x, var_0.a.x, true)), vec4<bool>(true, true, var_0.a.x, var_0.a.x), vec4<bool>(true, true, false, var_0.a.x)), select(vec4<bool>(var_1.a.x, var_0.a.x, var_1.a.x, var_1.a.x), select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_1.a.x, true, var_1.a.x), true), select(vec4<bool>(var_1.a.x, false, var_0.a.x, true), vec4<bool>(var_1.a.x, var_0.a.x, false, var_1.a.x), false))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a.x, var_0.a.x, true, var_0.a.x), var_1.a.x), select(vec4<bool>(var_1.a.x, true, true, true), vec4<bool>(var_0.a.x, var_0.a.x, var_1.a.x, var_0.a.x), vec4<bool>(false, var_1.a.x, var_1.a.x, var_0.a.x)), vec4<bool>(true, var_0.a.x, false, var_1.a.x)), vec4<bool>(var_1.a.x, false, !var_1.a.x, u_input.b >= u_input.b), vec4<bool>(true, func_3(Struct_3(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.x, 5u)], global3[_wgslsmith_index_u32(3995u, 5u)], global3[_wgslsmith_index_u32(24129u, 5u)]), u_input.e.x, Struct_1(vec4<bool>(var_1.a.x, var_0.a.x, false, var_1.a.x), -223f, u_input.c, vec3<f32>(266f, -1075f, global3[_wgslsmith_index_u32(u_input.a.x, 5u)]), arg_0.x), var_0.a)), !var_0.a.x, !var_1.a.x)), !any(var_0.a)), !select(false, var_1.a.x, !(!var_1.a.x)));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = Struct_1(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), u_input.a.x >= u_input.b), !select(func_2(vec3<u32>(u_input.a.x, 18909u, 81034u)), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(any(vec3<bool>(false, true, true)), true, true, true), false)), _wgslsmith_f_op_f32(ceil(-403f)), vec2<i32>(u_input.c.x << (select(4294967295u & u_input.b, _wgslsmith_mult_u32(10202u, 1u), u_input.d.x <= u_input.c.x) % 32u), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-47736i, u_input.c.x, u_input.c.x, u_input.d.x)), abs(-1i)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(284f, -1467f, -1043f) - vec3<f32>(557f, 133f, -282f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 5u)], -257f, 1242f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -468f, 682f))) * vec3<f32>(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(arg_0, 5u)], -540f))))), 59577u);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.e, 19u)], 19u)], 19u)], 1u), 6628u | (28478u & u_input.a.x)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), u_input.a) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_mult_u32(u_input.b, u_input.a.x << (var_0.e % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(2865u, u_input.a.x, 4294967295u), firstTrailingBit(vec3<u32>(4294967295u, 35747u, 6340u))), select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), vec3<u32>(arg_0, 21555u, 49427u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(57382u, var_0.e, 57844u), vec3<u32>(1u, arg_0, 22887u), vec3<u32>(37024u, 1u, u_input.b)), true))));
    let var_2 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~(25319u >> (arg_0 % 32u))) ^ 15044u, 5u)]);
    global1 = array<Struct_1, 29>();
    let var_3 = global4[_wgslsmith_index_u32(var_1, 14u)];
    return vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1081f - _wgslsmith_f_op_f32(f32(-1f) * -717f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-776f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_1 {
    global1 = array<Struct_1, 29>();
    global4 = array<Struct_2, 14>();
    var var_0 = func_2(vec3<u32>(1u, u_input.b, global2[_wgslsmith_index_u32(45496u, 19u)])).wz;
    let var_1 = global4[_wgslsmith_index_u32(0u, 14u)];
    let var_2 = global1[_wgslsmith_index_u32(~u_input.b, 29u)];
    return Struct_1(select(!(!select(vec4<bool>(false, true, var_0.x, var_2.a.x), var_2.a, true)), vec4<bool>(true, any(!vec3<bool>(true, var_1.a.x, true)), true, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58865u, 19u)], 19u)], 41008u, global2[_wgslsmith_index_u32(60927u, 19u)]), vec4<u32>(0u, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], 58486u)) >= 73018u), u_input.a.x <= _wgslsmith_sub_u32(5342u, ~4294967295u)), 1834f, ~(~max(select(vec2<i32>(-18717i, 2147483647i), var_2.c, vec2<bool>(false, var_0.x)), ~var_2.c)), vec3<f32>(-963f, 1813f, _wgslsmith_f_op_f32(sign(var_2.b))), min(_wgslsmith_mod_u32(~min(global2[_wgslsmith_index_u32(12327u, 19u)], var_2.e), ~u_input.b), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(false, !all(vec4<bool>(false, false, false, true))), true);
    global2 = array<u32, 19>();
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1(countOneBits(countOneBits(73294u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 5u)])), 1020f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -628f)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -544f))))))), -abs(_wgslsmith_sub_vec2_i32(u_input.d, u_input.c)));
    global2 = array<u32, 19>();
    var var_2 = 163f;
    let x = u_input.a;
    s_output = StorageBuffer(61991u, reverseBits(abs(u_input.d)), firstTrailingBit(18638i) | -32327i);
}

