struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 59295u);

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(vec3<f32>(1000f, -1031f, -1286f), Struct_3(22906u)), Struct_4(vec3<f32>(114f, -780f, -2354f), Struct_3(4294967295u)), Struct_4(vec3<f32>(479f, -340f, 666f), Struct_3(4294967295u)), Struct_4(vec3<f32>(-356f, 732f, -1000f), Struct_3(48240u)), Struct_4(vec3<f32>(414f, -1140f, 1924f), Struct_3(23481u)), Struct_4(vec3<f32>(-616f, 414f, 466f), Struct_3(50388u)), Struct_4(vec3<f32>(293f, -1361f, 314f), Struct_3(67494u)), Struct_4(vec3<f32>(-1517f, -1346f, 1419f), Struct_3(4294967295u)), Struct_4(vec3<f32>(-1256f, 1000f, 811f), Struct_3(4752u)), Struct_4(vec3<f32>(-693f, -433f, -160f), Struct_3(1u)), Struct_4(vec3<f32>(-775f, 270f, 1930f), Struct_3(33442u)), Struct_4(vec3<f32>(642f, -308f, 601f), Struct_3(0u)), Struct_4(vec3<f32>(389f, 786f, -163f), Struct_3(12593u)), Struct_4(vec3<f32>(1449f, 935f, -1000f), Struct_3(46842u)), Struct_4(vec3<f32>(393f, -923f, 265f), Struct_3(4294967295u)), Struct_4(vec3<f32>(1249f, 783f, 2172f), Struct_3(0u)), Struct_4(vec3<f32>(945f, 1443f, -1195f), Struct_3(24648u)), Struct_4(vec3<f32>(280f, 1563f, 1969f), Struct_3(2770u)), Struct_4(vec3<f32>(-331f, -381f, -983f), Struct_3(42643u)), Struct_4(vec3<f32>(-410f, 218f, 437f), Struct_3(67662u)), Struct_4(vec3<f32>(1178f, 1674f, 306f), Struct_3(4294967295u)), Struct_4(vec3<f32>(181f, -1000f, 1197f), Struct_3(1u)), Struct_4(vec3<f32>(1225f, 359f, 881f), Struct_3(0u)), Struct_4(vec3<f32>(-481f, -2594f, -1000f), Struct_3(1u)), Struct_4(vec3<f32>(-1000f, -806f, -808f), Struct_3(25075u)));

var<private> global3: array<Struct_4, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_i32(u_input.d, _wgslsmith_mult_vec3_i32(u_input.d, countOneBits(u_input.a.wzz >> (vec3<u32>(0u, 16380u, global1.x) % vec3<u32>(32u))) >> (vec3<u32>(reverseBits(global1.x), global1.x, reverseBits(18696u)) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1309f));
    global3 = array<Struct_4, 19>();
    return 2985f;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = true;
    global3 = array<Struct_4, 19>();
    global3 = array<Struct_4, 19>();
    var var_1 = ~(vec2<u32>(89066u, 45768u) << (vec2<u32>(~abs(37791u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(11628u, 49902u), vec2<u32>(global1.x, global1.x))) % vec2<u32>(32u)));
    var var_2 = -727f;
    return _wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(119767u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1592f)), _wgslsmith_f_op_f32(round(arg_1.x)), 1349f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = all(!vec3<bool>(all(vec4<bool>(true, true, true, true)), false, (-398f < arg_1.b.a.x) | (u_input.d.x >= 85432i)));
    global3 = array<Struct_4, 19>();
    let var_1 = ~vec3<u32>(abs(1u), 4294967295u, 35108u);
    let var_2 = vec4<u32>(8052u, max(arg_0.b.d, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(arg_1.b.d, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], vec4<u32>(1u, arg_1.c.d, global1.x, 69922u)), _wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(var_1.x, 12u)], vec4<u32>(global1.x, 0u, arg_2.d, arg_1.c.b.x), global0[_wgslsmith_index_u32(47038u, 12u)])) << (72445u % 32u)), ~var_1.x, abs(1u));
    var var_3 = select(!vec2<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, all(vec4<bool>(true, true, true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec3<bool>(false, false, true))), vec2<bool>(false, true), vec2<bool>(true, true)), select(!any(vec4<bool>(false, true, false, false)), all(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, false)))), !(_wgslsmith_dot_vec2_i32(-u_input.c.zz, select(vec2<i32>(u_input.b, u_input.b), u_input.d.xx, false)) > ~min(u_input.b, u_input.b)));
    return (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4546u), ~arg_0.c.b.yz), abs(var_1.x)) & 0u) >> (arg_0.a.d % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_1 {
    global2 = array<Struct_4, 25>();
    var var_0 = vec3<bool>(!(any(vec2<bool>(arg_0.x, arg_2.x)) && true), false, !arg_0.x);
    var var_1 = Struct_3(func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-691f, 214f, -975f, 512f))), select(vec3<u32>(37850u, arg_1, 69502u), vec3<u32>(global1.x, arg_1, arg_1), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, 284f)), ~arg_1), Struct_1(vec4<f32>(1441f, 1261f, -1129f, 184f), _wgslsmith_mult_vec3_u32(vec3<u32>(97575u, arg_1, arg_1), vec3<u32>(68022u, 17912u, global1.x)), vec2<f32>(-580f, 931f), ~arg_1), Struct_1(vec4<f32>(-1384f, 802f, 577f, -1521f), countOneBits(vec3<u32>(arg_1, 1u, 73u)), vec2<f32>(-1306f, -2039f), firstTrailingBit(arg_1))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(44993i, 27431i, -27630i), vec4<f32>(1589f, -848f, -1054f, -461f))), countOneBits(vec3<u32>(global1.x, global1.x, 21258u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, -698f)), _wgslsmith_add_u32(global1.x, 1244u)), Struct_1(vec4<f32>(1000f, -1572f, 1352f, 276f), vec3<u32>(4294967295u, 0u, 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 217f)), ~arg_1), Struct_1(vec4<f32>(-989f, -1116f, 387f, -1310f), ~vec3<u32>(arg_1, 28454u, 1u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-207f, -217f), vec2<f32>(1000f, -2411f), vec2<bool>(arg_0.x, arg_2.x))), arg_1 >> (0u % 32u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, 157f, -500f, 421f)) - vec4<f32>(1000f, -1000f, -430f, 1031f)), vec3<u32>(~global1.x, global1.x, reverseBits(1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(465f, 334f)))), arg_1 << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 7859u)) % 32u))));
    let var_2 = arg_3.x;
    var var_3 = u_input.c;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f - -620f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(812f, 751f)), _wgslsmith_f_op_f32(floor(-172f)))), countOneBits(vec3<u32>(1u, ~4294967295u ^ arg_1, 4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(271f, -321f) * vec2<f32>(1517f, 1213f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1145f, -2766f) - vec2<f32>(193f, 296f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-794f)), _wgslsmith_f_op_f32(-698f - -1000f)), arg_2.x)) + vec2<f32>(1029f, _wgslsmith_f_op_f32(func_1(Struct_3(global1.x))))), ~7442u);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(~u_input.c.x, u_input.d.x, u_input.c.x, 9656i), vec4<i32>(-max(u_input.b, 22112i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -1i), vec3<i32>(2147483647i, u_input.d.x, u_input.b)), i32(-1i) * -32983i), min(reverseBits(u_input.c.x), i32(-1i) * -1i), countOneBits(u_input.b))) << (firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0, 4294967295u) >> (global0[_wgslsmith_index_u32(arg_2.x, 12u)] % vec4<u32>(32u)), vec4<u32>(4294967295u, 4294967295u, arg_3.a.a, global1.x) ^ global0[_wgslsmith_index_u32(arg_2.x, 12u)])) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(round(arg_3.e.c.x));
    let var_2 = ~abs(~reverseBits(~var_0.x));
    var var_3 = max(2147483647i, 11156i);
    var var_4 = func_2(select(vec3<bool>(all(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, true, arg_1))), false, !select(false, arg_1, arg_1)), select(vec3<bool>(true, all(vec4<bool>(arg_1, arg_1, false, false)), any(vec3<bool>(arg_1, arg_1, false))), vec3<bool>(true, true, false), vec3<bool>(arg_1 & arg_1, any(vec2<bool>(false, true)), !arg_1)), !vec3<bool>(arg_1, !arg_1, all(vec2<bool>(arg_1, false)))), global1.x, !vec4<bool>(true, all(select(vec4<bool>(false, false, false, arg_1), vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, arg_1, arg_1, arg_1))), arg_1, arg_1 == (arg_1 & false)), max(~(~(~vec2<i32>(0i, -1i))), -var_0.zz));
    return arg_3.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1607f, _wgslsmith_f_op_f32(func_1(Struct_3(0u))), all(vec2<bool>(true, false)))), 858f)), 1083f)));
    var var_1 = func_5(_wgslsmith_dot_vec4_u32(max(~global0[_wgslsmith_index_u32(select(global1.x, global1.x, true), 12u)], global0[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_div_u32(global1.x, 1u)), 12u)]), global0[_wgslsmith_index_u32(~abs(global1.x), 12u)]), false, vec3<u32>(_wgslsmith_clamp_u32(global1.x << (28723u % 32u), global1.x, 0u), ~min(1u, global1.x), global1.x) & ~firstTrailingBit(firstTrailingBit(vec3<u32>(global1.x, global1.x, 4294967295u))), Struct_5(Struct_3(global1.x), func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, 0u), vec3<u32>(global1.x, 4294967295u, 43437u)), _wgslsmith_add_u32(global1.x, 15408u)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), u_input.d.zx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, -576f, -226f))), Struct_3(global1.x)), func_2(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), min(_wgslsmith_clamp_u32(global1.x, global1.x, global1.x), 4294967295u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), u_input.d.yy)));
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.c.x), u_input.a.x), u_input.d.zz), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c.x, -_wgslsmith_add_i32(-3517i, -13033i)), vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.b, u_input.b, u_input.b)), ~(~u_input.b))));
    var_0 = _wgslsmith_div_f32(232f, _wgslsmith_f_op_f32(f32(-1f) * -180f));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~vec4<u32>(var_1.a, 32832u, 4294967295u, global1.x)) & reverseBits(countOneBits(vec4<u32>(var_1.a, 1u, 4294967295u, 80343u))), vec4<u32>(reverseBits(~global1.x), ~0u, 80252u, 29877u), !vec4<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(false, false, false, true)), true, any(vec2<bool>(false, false)))), ~(~reverseBits(global0[_wgslsmith_index_u32(1u, 12u)])) & ~(~(~global0[_wgslsmith_index_u32(17183u, 12u)])));
}

