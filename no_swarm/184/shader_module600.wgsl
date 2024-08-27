struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<u32>(0u, 103130u), 42765u, vec4<bool>(false, false, false, true), vec2<f32>(-1067f, -1008f), vec2<u32>(4224u, 19051u)), Struct_1(vec2<u32>(25536u, 1u), 39837u, vec4<bool>(false, false, true, false), vec2<f32>(208f, 1465f), vec2<u32>(130190u, 17511u)), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1u, vec4<bool>(true, false, true, false), vec2<f32>(1000f, 443f), vec2<u32>(37775u, 3414u)), Struct_1(vec2<u32>(4294967295u, 1u), 4294967295u, vec4<bool>(true, true, false, false), vec2<f32>(713f, 300f), vec2<u32>(11941u, 25432u)), Struct_1(vec2<u32>(14976u, 42216u), 1u, vec4<bool>(false, false, true, false), vec2<f32>(-159f, 221f), vec2<u32>(5868u, 612u)), Struct_1(vec2<u32>(100366u, 4294967295u), 323u, vec4<bool>(false, true, true, true), vec2<f32>(-1102f, 486f), vec2<u32>(49623u, 0u)), Struct_1(vec2<u32>(0u, 67515u), 4294967295u, vec4<bool>(false, false, false, false), vec2<f32>(864f, 521f), vec2<u32>(0u, 36455u)), Struct_1(vec2<u32>(13950u, 40405u), 14792u, vec4<bool>(true, false, true, true), vec2<f32>(1516f, 576f), vec2<u32>(4294967295u, 7476u)), Struct_1(vec2<u32>(16519u, 10867u), 4294967295u, vec4<bool>(false, true, false, false), vec2<f32>(194f, -592f), vec2<u32>(14138u, 4294967295u)), Struct_1(vec2<u32>(1u, 1u), 1u, vec4<bool>(true, false, false, false), vec2<f32>(1000f, -782f), vec2<u32>(1u, 15253u)), Struct_1(vec2<u32>(61685u, 50697u), 18105u, vec4<bool>(true, true, false, false), vec2<f32>(569f, 753f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(1u, 0u), 25705u, vec4<bool>(false, false, true, true), vec2<f32>(163f, 756f), vec2<u32>(71957u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u), 4294967295u, vec4<bool>(true, false, true, false), vec2<f32>(-1006f, 1640f), vec2<u32>(46953u, 51948u)), Struct_1(vec2<u32>(1u, 0u), 1u, vec4<bool>(true, true, true, false), vec2<f32>(270f, 2081f), vec2<u32>(26519u, 0u)), Struct_1(vec2<u32>(69965u, 4294967295u), 4294967295u, vec4<bool>(true, false, false, true), vec2<f32>(-961f, -317f), vec2<u32>(9352u, 0u)), Struct_1(vec2<u32>(25242u, 0u), 0u, vec4<bool>(true, false, true, true), vec2<f32>(1914f, -707f), vec2<u32>(0u, 8439u)), Struct_1(vec2<u32>(20847u, 37901u), 1u, vec4<bool>(false, false, true, false), vec2<f32>(-561f, -161f), vec2<u32>(1u, 14054u)), Struct_1(vec2<u32>(0u, 129368u), 4294967295u, vec4<bool>(true, false, false, true), vec2<f32>(298f, -1000f), vec2<u32>(4294967295u, 108090u)), Struct_1(vec2<u32>(4294967295u, 34059u), 4294967295u, vec4<bool>(true, false, true, true), vec2<f32>(1000f, -757f), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(43629u, 0u), 4294967295u, vec4<bool>(false, false, false, true), vec2<f32>(993f, -1689f), vec2<u32>(0u, 49697u)), Struct_1(vec2<u32>(0u, 0u), 1u, vec4<bool>(false, true, false, false), vec2<f32>(-1082f, -1000f), vec2<u32>(41748u, 0u)), Struct_1(vec2<u32>(15709u, 1374u), 25930u, vec4<bool>(true, true, false, false), vec2<f32>(-1000f, -1458f), vec2<u32>(0u, 11705u)), Struct_1(vec2<u32>(22716u, 0u), 65940u, vec4<bool>(false, false, false, true), vec2<f32>(-816f, 344f), vec2<u32>(54287u, 75392u)), Struct_1(vec2<u32>(1u, 41723u), 4294967295u, vec4<bool>(false, true, true, false), vec2<f32>(247f, 593f), vec2<u32>(14273u, 174955u)), Struct_1(vec2<u32>(50977u, 4294967295u), 0u, vec4<bool>(false, false, false, false), vec2<f32>(1014f, 224f), vec2<u32>(36601u, 1u)), Struct_1(vec2<u32>(0u, 60208u), 55393u, vec4<bool>(true, true, true, false), vec2<f32>(-420f, 546f), vec2<u32>(47356u, 1u)), Struct_1(vec2<u32>(1u, 12733u), 19921u, vec4<bool>(true, false, true, false), vec2<f32>(-226f, 1008f), vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u, vec4<bool>(false, true, true, true), vec2<f32>(1139f, -1768f), vec2<u32>(25353u, 7659u)), Struct_1(vec2<u32>(19798u, 0u), 1u, vec4<bool>(false, false, true, false), vec2<f32>(-1781f, 1242f), vec2<u32>(1531u, 1u)), Struct_1(vec2<u32>(47347u, 4294967295u), 69868u, vec4<bool>(false, false, true, true), vec2<f32>(920f, -790f), vec2<u32>(4294967295u, 116975u)), Struct_1(vec2<u32>(43941u, 64638u), 68372u, vec4<bool>(false, false, true, true), vec2<f32>(-631f, -1000f), vec2<u32>(46860u, 0u)), Struct_1(vec2<u32>(29138u, 10784u), 47463u, vec4<bool>(false, false, true, true), vec2<f32>(476f, -1000f), vec2<u32>(4294967295u, 4294967295u)));

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(38276u, 21142u, 4294967295u, 4294967295u), vec4<u32>(15837u, 0u, 56266u, 0u), vec4<u32>(35179u, 4294967295u, 0u, 13390u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 44999u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 23630u, 37734u), vec4<u32>(0u, 36932u, 54526u, 11469u), vec4<u32>(35915u, 1u, 5003u, 100271u), vec4<u32>(7824u, 55278u, 0u, 4294967295u), vec4<u32>(80311u, 0u, 61301u, 11631u), vec4<u32>(1u, 0u, 18849u, 80622u), vec4<u32>(67754u, 1994u, 4294967295u, 4294967295u), vec4<u32>(1u, 14684u, 31291u, 4294967295u), vec4<u32>(21239u, 3855u, 0u, 56970u), vec4<u32>(1u, 64345u, 1u, 1u), vec4<u32>(4294967295u, 91986u, 122945u, 32140u), vec4<u32>(0u, 48351u, 4294967295u, 4294967295u), vec4<u32>(65143u, 0u, 11116u, 78838u), vec4<u32>(1u, 38703u, 4294967295u, 49584u), vec4<u32>(73569u, 38474u, 0u, 16347u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(31974u, 44927u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(9111u, 6406u, 1u, 84037u), vec4<u32>(1u, 0u, 1u, 52158u), vec4<u32>(4294967295u, 26807u, 17321u, 4294967295u), vec4<u32>(11581u, 12008u, 0u, 58187u));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(58426u, 4667u), 1u, vec4<bool>(true, false, false, false), vec2<f32>(847f, 561f), vec2<u32>(34042u, 4294967295u)), vec3<i32>(5892i, -17510i, -1i));

var<private> global3: array<i32, 7>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: u32) -> i32 {
    let var_0 = all(global2.a.c);
    let var_1 = ~(u_input.a.x >> (arg_1 % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(arg_0));
    var var_3 = _wgslsmith_add_u32(select(abs(_wgslsmith_sub_u32(global2.a.e.x, 561u)), ~(~0u), true), 4294967295u) <= 44464u;
    global3 = array<i32, 7>();
    return _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(0i, global3[_wgslsmith_index_u32(arg_2, 7u)], u_input.b.x)), u_input.c.zyw), ~(vec3<i32>(12783i, global2.b.x, 32128i) & global2.b)), firstTrailingBit(abs(_wgslsmith_sub_i32(-u_input.b.x, u_input.c.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<i32> {
    global2 = Struct_2(arg_3, u_input.c.zww);
    return _wgslsmith_mod_vec3_i32(vec3<i32>(~(global3[_wgslsmith_index_u32(1u, 7u)] << (arg_1.a.x % 32u)) | 2147483647i, u_input.c.x, global2.b.x), arg_0.b.b);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    global3 = array<i32, 7>();
    let var_0 = 338i;
    global0 = array<Struct_1, 32>();
    var var_1 = global2.a.c.yy;
    global1 = array<vec4<u32>, 28>();
    return func_4(Struct_3(true, Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(global2.a.a, global2.a.a), ~46798u, !vec4<bool>(true, arg_2.c.x, false, false), vec2<f32>(-1000f, 614f), u_input.d.zy ^ vec2<u32>(arg_1.a.a.x, 0u)), _wgslsmith_mult_vec3_i32(firstLeadingBit(global2.b), abs(vec3<i32>(arg_1.b.x, global3[_wgslsmith_index_u32(17566u, 7u)], var_0)))), -vec3<i32>(u_input.b.x ^ arg_1.b.x, 2277i, -1i), arg_1), Struct_1(arg_1.a.a, reverseBits(_wgslsmith_dot_vec2_u32(arg_2.a, global2.a.a) | _wgslsmith_mult_u32(17510u, 1u)), arg_2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.d.x)), global2.a.d.x)), firstLeadingBit(arg_2.a)), _wgslsmith_div_vec2_i32(countOneBits(global2.b.xy), vec2<i32>(2147483647i, ~func_3(vec3<f32>(-356f, arg_1.a.d.x, 417f), 13298u, 0u))), arg_2);
}

fn func_1() -> Struct_2 {
    var var_0 = min(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(countOneBits(global2.b)), func_2(27641u, Struct_2(global0[_wgslsmith_index_u32(global2.a.e.x, 32u)], vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.a.x, 7u)], -1i)), Struct_1(vec2<u32>(u_input.a.x, global2.a.e.x), u_input.a.x, vec4<bool>(true, false, global2.a.c.x, global2.a.c.x), global2.a.d, u_input.d.xz)) ^ _wgslsmith_sub_vec3_i32(global2.b, vec3<i32>(global3[_wgslsmith_index_u32(1u, 7u)], -22120i, u_input.c.x)), ~u_input.c.ywx), u_input.c.wwy), _wgslsmith_dot_vec4_i32(~(select(u_input.c, vec4<i32>(u_input.c.x, global3[_wgslsmith_index_u32(global2.a.b, 7u)], -2147483647i, 0i), vec4<bool>(true, global2.a.c.x, global2.a.c.x, global2.a.c.x)) | select(u_input.c, vec4<i32>(-1i, global3[_wgslsmith_index_u32(53123u, 7u)], global3[_wgslsmith_index_u32(global2.a.b, 7u)], -67475i), false)), u_input.c));
    global2 = Struct_2(global0[_wgslsmith_index_u32(4294967295u, 32u)], ~vec3<i32>(firstTrailingBit(global2.b.x), -1491i, 39445i));
    let var_1 = max(abs(~(~30661u)), ~min(global2.a.a.x, u_input.d.x));
    var var_2 = global2.a.c.x;
    let var_3 = false;
    return Struct_2(global2.a, vec3<i32>(_wgslsmith_mult_i32(0i, u_input.c.x), u_input.b.x, global2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    let var_1 = Struct_2(global2.a, _wgslsmith_add_vec3_i32(global2.b, u_input.c.zyy));
    let var_2 = var_1;
    let var_3 = var_0.c.zzz;
    var var_4 = Struct_3(any(var_1.a.c), func_1(), _wgslsmith_mod_vec3_i32(global2.b << (vec3<u32>(var_2.a.e.x, 3094u, global2.a.e.x) % vec3<u32>(32u)), abs(countOneBits(max(vec3<i32>(35202i, 0i, var_1.b.x), vec3<i32>(0i, 38433i, 2147483647i))))), var_2);
    var var_5 = false;
    global3 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(249f, vec4<f32>(var_4.b.a.d.x, -2403f, _wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(var_2.a.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

