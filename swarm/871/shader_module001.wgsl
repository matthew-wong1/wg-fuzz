struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(0u, vec4<i32>(1i, 0i, i32(-2147483648), -24598i), Struct_1(1u, 19944u, 0i, -857f), -1i, vec2<u32>(1u, 15079u)), Struct_2(1u, vec4<i32>(1i, -21135i, -38207i, -62305i), Struct_1(4294967295u, 0u, 14197i, -2179f), -24475i, vec2<u32>(4294967295u, 24861u)), Struct_2(0u, vec4<i32>(-1i, 2147483647i, 45601i, 1639i), Struct_1(17123u, 6917u, i32(-2147483648), -325f), i32(-2147483648), vec2<u32>(1378u, 10885u)), Struct_2(8638u, vec4<i32>(2147483647i, 21451i, 821i, i32(-2147483648)), Struct_1(37629u, 1u, 61494i, -168f), 1i, vec2<u32>(4294967295u, 0u)), Struct_2(9877u, vec4<i32>(i32(-2147483648), 0i, -3842i, 32999i), Struct_1(1u, 32678u, -2884i, 774f), 2147483647i, vec2<u32>(0u, 48900u)), Struct_2(66072u, vec4<i32>(-1i, 1i, 14175i, 48894i), Struct_1(0u, 1u, -1i, 498f), 1i, vec2<u32>(54311u, 9530u)), Struct_2(60935u, vec4<i32>(-51377i, -8548i, 2147483647i, 0i), Struct_1(4294967295u, 0u, 1i, -2068f), 10751i, vec2<u32>(4294967295u, 23526u)), Struct_2(1u, vec4<i32>(2147483647i, i32(-2147483648), -44901i, -16027i), Struct_1(1u, 4294967295u, 24825i, 490f), i32(-2147483648), vec2<u32>(0u, 1u)), Struct_2(11355u, vec4<i32>(34579i, 0i, 43157i, 0i), Struct_1(20302u, 0u, 346i, 373f), -8350i, vec2<u32>(89780u, 56800u)), Struct_2(69090u, vec4<i32>(-45262i, i32(-2147483648), 2147483647i, -292i), Struct_1(1u, 1u, -1i, -1385f), 1i, vec2<u32>(37594u, 5257u)), Struct_2(0u, vec4<i32>(35797i, 40384i, -1i, 0i), Struct_1(1u, 1u, 2147483647i, 1610f), 1i, vec2<u32>(1u, 4294967295u)), Struct_2(79001u, vec4<i32>(-12597i, -63284i, i32(-2147483648), i32(-2147483648)), Struct_1(65595u, 83805u, 1i, -230f), -1i, vec2<u32>(2293u, 25548u)), Struct_2(1u, vec4<i32>(26038i, i32(-2147483648), 1i, 15936i), Struct_1(0u, 0u, 60962i, -707f), 2147483647i, vec2<u32>(30313u, 0u)), Struct_2(10728u, vec4<i32>(-5382i, 41107i, 40458i, 0i), Struct_1(63570u, 14865u, 19671i, 1340f), i32(-2147483648), vec2<u32>(13107u, 0u)), Struct_2(14573u, vec4<i32>(-1i, i32(-2147483648), -1i, 31763i), Struct_1(33790u, 16831u, 2147483647i, -1539f), 2147483647i, vec2<u32>(1u, 35272u)), Struct_2(64430u, vec4<i32>(39875i, 1i, 7975i, 11168i), Struct_1(10265u, 17510u, 0i, -204f), -1235i, vec2<u32>(0u, 0u)), Struct_2(14302u, vec4<i32>(10544i, i32(-2147483648), i32(-2147483648), 0i), Struct_1(65523u, 13875u, 1i, -2817f), 1i, vec2<u32>(66887u, 1u)), Struct_2(19251u, vec4<i32>(-4712i, 1i, -22321i, 21850i), Struct_1(4294967295u, 1u, -36386i, 1455f), 38585i, vec2<u32>(1u, 0u)), Struct_2(66353u, vec4<i32>(-46192i, -1i, -45873i, 24802i), Struct_1(11891u, 0u, 1i, -410f), 1i, vec2<u32>(63508u, 22553u)), Struct_2(1u, vec4<i32>(-47924i, -22125i, 21306i, -1i), Struct_1(68210u, 8596u, -12571i, 1271f), -1i, vec2<u32>(24669u, 0u)), Struct_2(1u, vec4<i32>(0i, -1i, -1i, -14282i), Struct_1(40039u, 51394u, 13788i, -706f), 14068i, vec2<u32>(14461u, 0u)), Struct_2(13033u, vec4<i32>(i32(-2147483648), i32(-2147483648), 59291i, 1i), Struct_1(4294967295u, 1u, 0i, 697f), 38552i, vec2<u32>(50435u, 4294967295u)), Struct_2(4294967295u, vec4<i32>(1i, 62102i, 1i, -1i), Struct_1(1u, 1u, 0i, 1253f), 1i, vec2<u32>(9483u, 4294967295u)), Struct_2(25506u, vec4<i32>(-1i, 39128i, 0i, 1i), Struct_1(43503u, 64839u, 1364i, -306f), 0i, vec2<u32>(4294967295u, 72258u)), Struct_2(4294967295u, vec4<i32>(i32(-2147483648), 1i, 47387i, 0i), Struct_1(20692u, 0u, 2147483647i, -1000f), i32(-2147483648), vec2<u32>(4294967295u, 13937u)), Struct_2(0u, vec4<i32>(0i, 2147483647i, i32(-2147483648), 2147483647i), Struct_1(0u, 16232u, -1i, -767f), -12680i, vec2<u32>(0u, 1u)), Struct_2(0u, vec4<i32>(-1i, -41612i, -1i, i32(-2147483648)), Struct_1(0u, 1u, -1i, 1109f), -16051i, vec2<u32>(5571u, 32884u)), Struct_2(48591u, vec4<i32>(i32(-2147483648), -9480i, 111931i, 0i), Struct_1(2243u, 27348u, -59065i, 659f), 66212i, vec2<u32>(4624u, 1u)));

var<private> global2: u32 = 11525u;

var<private> global3: array<Struct_1, 27>;

var<private> global4: u32 = 0u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<u32> {
    global3 = array<Struct_1, 27>();
    var var_0 = global1[_wgslsmith_index_u32(0u, 28u)];
    let var_1 = u_input.b;
    let var_2 = u_input.a;
    let var_3 = vec3<u32>(var_2.x, 38759u, var_0.a);
    return vec2<u32>(~_wgslsmith_sub_u32(~55661u, ~var_0.e.x), ~_wgslsmith_mod_u32(var_0.a, u_input.a.x) | 4411u) << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a, u_input.d.x), vec2<u32>(8713u, var_1)) % vec2<u32>(32u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    global4 = arg_1.b;
    global2 = _wgslsmith_add_u32(~(~arg_3.x), u_input.a.x);
    let var_0 = !vec4<bool>(arg_1.d < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d * 648f) + arg_1.d), arg_2 < 31348u, arg_0, !(~arg_1.c > firstTrailingBit(u_input.c.x)));
    global0 = ~arg_1.c;
    var var_1 = var_0.zxy;
    return _wgslsmith_sub_u32(arg_1.a, ~firstTrailingBit(arg_1.b));
}

fn func_2() -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(~firstTrailingBit(36795u) & u_input.a.x, 27u)];
    var var_1 = Struct_2(func_3(true, Struct_1(_wgslsmith_sub_u32(u_input.a.x, 8809u), ~var_0.b, var_0.c, var_0.d), ~var_0.a, ~_wgslsmith_mult_vec4_u32(u_input.d, u_input.d)) | ~_wgslsmith_clamp_u32(~u_input.b, abs(0u), firstLeadingBit(14791u)), u_input.c, global3[_wgslsmith_index_u32(var_0.a, 27u)], ~(-(~(~2147483647i))), _wgslsmith_add_vec2_u32(~u_input.d.xy, u_input.a.yz));
    global1 = array<Struct_2, 28>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_1.c.d));
    global2 = ~37451u;
    return 43513u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>) -> StorageBuffer {
    let var_0 = ~(~abs(u_input.c.x));
    global1 = array<Struct_2, 28>();
    let var_1 = Struct_2(~65368u, u_input.c, Struct_1(abs(42247u), 1u, firstLeadingBit(max(_wgslsmith_mult_i32(var_0, -5975i), u_input.c.x)), 1681f), u_input.c.x, ~(~(vec2<u32>(arg_0.x, 15340u) << (vec2<u32>(arg_0.x, u_input.d.x) % vec2<u32>(32u)))));
    var var_2 = Struct_1(11366u, 4294967295u, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(var_1.c.c, 2147483647i, var_1.c.c) | max(vec3<i32>(u_input.c.x, var_0, var_1.b.x), vec3<i32>(48927i, var_0, 0i)), reverseBits(u_input.c.yxw)), vec3<i32>(u_input.c.x | -24680i, _wgslsmith_mod_i32(13813i, var_1.b.x), _wgslsmith_sub_i32(u_input.c.x, var_1.d)) << (~u_input.a.wyz % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-770f)))));
    global0 = _wgslsmith_dot_vec3_i32(var_1.b.yzx, vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_0), _wgslsmith_sub_i32(var_0, 0i) & 26661i, _wgslsmith_add_i32(-2147483647i, var_1.d) << (12534u % 32u))) | ((i32(-1i) * -1i) | firstLeadingBit(~_wgslsmith_div_i32(var_2.c, 1i)));
    return StorageBuffer(_wgslsmith_sub_i32(~var_1.b.x, ~0i), _wgslsmith_div_f32(var_1.c.d, -2935f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec3<u32>(u_input.b, 18384u, u_input.a.x), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(23445u << (u_input.a.x % 32u), 0u), ~_wgslsmith_mult_u32(1u, u_input.d.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(80947u, u_input.b), min(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.d.x, 0u)), vec2<u32>(u_input.b, 4294967295u)), func_1(global3[_wgslsmith_index_u32(24755u, 27u)], ~u_input.c.zz)) << (vec2<u32>(_wgslsmith_clamp_u32(1u, 45383u, reverseBits(79391u)), func_2()) % vec2<u32>(32u)));
}

