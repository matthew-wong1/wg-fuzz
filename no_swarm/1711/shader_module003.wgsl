struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-435f, -1191f, -119f, -901f), vec4<f32>(-1521f, 1022f, 757f, -684f), vec4<f32>(-1350f, -1000f, 1000f, -1083f), vec4<f32>(877f, 122f, 974f, -1136f), vec4<f32>(217f, 225f, 647f, 1740f), vec4<f32>(1000f, 1202f, 839f, -1104f), vec4<f32>(-744f, 788f, -837f, 1113f), vec4<f32>(-1234f, 245f, -1218f, -339f), vec4<f32>(923f, -494f, -1378f, 1000f), vec4<f32>(1000f, -1120f, -1211f, -2034f), vec4<f32>(1795f, 907f, -838f, 1150f), vec4<f32>(-825f, 332f, 327f, 124f), vec4<f32>(2379f, 1000f, -825f, -187f), vec4<f32>(-647f, 992f, -418f, 113f), vec4<f32>(300f, -2405f, 1370f, -558f));

var<private> global1: vec2<u32>;

var<private> global2: bool = false;

var<private> global3: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -1i), -394f, vec2<i32>(1i, 25316i), false), 1u, vec3<u32>(0u, 1u, 65288u), vec2<f32>(-1000f, -168f)), Struct_4(Struct_2(vec4<bool>(false, false, true, false), vec4<i32>(-285i, 0i, -40512i, 1i), 280f, vec2<i32>(7346i, 43271i), true), 80615u, vec3<u32>(66180u, 8593u, 49892u), vec2<f32>(526f, -1552f)), Struct_4(Struct_2(vec4<bool>(false, true, true, true), vec4<i32>(-76638i, -15272i, -23642i, -1i), -1764f, vec2<i32>(17890i, 42103i), false), 4294967295u, vec3<u32>(72898u, 1u, 12483u), vec2<f32>(-1135f, -557f)), Struct_4(Struct_2(vec4<bool>(false, true, true, false), vec4<i32>(1i, -56469i, -24788i, 1i), 406f, vec2<i32>(-18930i, 5178i), false), 4294967295u, vec3<u32>(3551u, 33777u, 1u), vec2<f32>(-1648f, -2029f)), Struct_4(Struct_2(vec4<bool>(false, true, true, true), vec4<i32>(0i, i32(-2147483648), 14813i, 0i), -306f, vec2<i32>(6655i, 50037i), true), 4294967295u, vec3<u32>(3387u, 29157u, 0u), vec2<f32>(-1566f, -974f)), Struct_4(Struct_2(vec4<bool>(false, false, true, false), vec4<i32>(-34546i, 14723i, -32915i, -14165i), -1058f, vec2<i32>(-31989i, -35628i), true), 91186u, vec3<u32>(4294967295u, 64561u, 4294967295u), vec2<f32>(-790f, -1843f)), Struct_4(Struct_2(vec4<bool>(false, true, true, false), vec4<i32>(1i, 1i, 2147483647i, 9289i), 316f, vec2<i32>(9026i, 2147483647i), false), 0u, vec3<u32>(50489u, 34957u, 1u), vec2<f32>(-1000f, 396f)), Struct_4(Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(51003i, i32(-2147483648), i32(-2147483648), 0i), 1044f, vec2<i32>(0i, i32(-2147483648)), false), 71962u, vec3<u32>(56280u, 1u, 12734u), vec2<f32>(1000f, -590f)), Struct_4(Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(-1i, 3705i, -4081i, i32(-2147483648)), 166f, vec2<i32>(-1i, -1i), true), 39527u, vec3<u32>(1801u, 74148u, 0u), vec2<f32>(-418f, 2381f)), Struct_4(Struct_2(vec4<bool>(false, false, true, false), vec4<i32>(1i, -21232i, i32(-2147483648), i32(-2147483648)), 651f, vec2<i32>(-17625i, 1i), false), 1u, vec3<u32>(5462u, 31912u, 33098u), vec2<f32>(-1000f, -573f)), Struct_4(Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(1i, 15542i, -58814i, 5319i), -1997f, vec2<i32>(-20891i, 1604i), false), 0u, vec3<u32>(1u, 126803u, 2301u), vec2<f32>(-1303f, -1188f)), Struct_4(Struct_2(vec4<bool>(true, false, true, false), vec4<i32>(-1i, 1i, -1i, i32(-2147483648)), -1727f, vec2<i32>(-1i, -44246i), true), 6780u, vec3<u32>(77392u, 0u, 67213u), vec2<f32>(1265f, -464f)), Struct_4(Struct_2(vec4<bool>(true, false, false, false), vec4<i32>(-17433i, -1i, 1i, -36943i), 229f, vec2<i32>(2147483647i, -34531i), true), 1u, vec3<u32>(46887u, 1u, 4294967295u), vec2<f32>(1704f, 370f)), Struct_4(Struct_2(vec4<bool>(false, false, true, false), vec4<i32>(1i, -28905i, 25752i, i32(-2147483648)), -923f, vec2<i32>(-26610i, -47479i), true), 4294967295u, vec3<u32>(19670u, 35898u, 4294967295u), vec2<f32>(324f, -1000f)), Struct_4(Struct_2(vec4<bool>(true, false, false, false), vec4<i32>(1i, 31550i, 1i, -1209i), -366f, vec2<i32>(10418i, 1i), true), 1u, vec3<u32>(4294967295u, 9984u, 4294967295u), vec2<f32>(-1750f, -450f)), Struct_4(Struct_2(vec4<bool>(false, true, false, false), vec4<i32>(40567i, -32070i, -6335i, -75373i), 265f, vec2<i32>(-12373i, 2147483647i), true), 0u, vec3<u32>(46834u, 102592u, 19697u), vec2<f32>(390f, -1177f)), Struct_4(Struct_2(vec4<bool>(false, false, false, false), vec4<i32>(-1142i, 9389i, 51169i, 0i), -1674f, vec2<i32>(2147483647i, 0i), true), 10737u, vec3<u32>(0u, 37366u, 4294967295u), vec2<f32>(1325f, 1020f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-540f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(503f * arg_0.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -2379f))));
    let var_1 = abs(reverseBits(-vec2<i32>(2147483647i, abs(arg_2.b.x))));
    global1 = vec2<u32>(u_input.a.x, ~abs(firstTrailingBit(17829u)));
    var var_2 = -var_1.x;
    global3 = array<Struct_4, 17>();
    return !select(!select(!arg_2.a, vec4<bool>(true, true, arg_2.a.x, false), arg_2.a.x), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(1u, 4294967295u, global1.x, 4294967295u)) <= _wgslsmith_div_u32(43781u, global1.x), true, arg_2.e, arg_2.a.x), !arg_2.a);
}

fn func_2() -> f32 {
    global3 = array<Struct_4, 17>();
    var var_0 = Struct_2(vec4<bool>(true, any(vec2<bool>(true, false)) & all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true, any(select(func_3(Struct_1(vec3<f32>(297f, 781f, 861f)), u_input.b, Struct_2(vec4<bool>(true, false, false, false), vec4<i32>(-2147483647i, u_input.b, -2147483647i, u_input.b), 227f, vec2<i32>(-47928i, 2147483647i), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), -select(~vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<i32>(1i, -3088i, 45360i, 1i) << (~vec4<u32>(u_input.a.x, 4294967295u, global1.x, 25806u) % vec4<u32>(32u)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(abs(1f)), vec2<i32>(1i, 39243i), !(any(func_3(Struct_1(vec3<f32>(-618f, -2157f, 839f)), -31239i, Struct_2(vec4<bool>(false, true, true, false), vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), -1188f, vec2<i32>(u_input.b, 81729i), false)).wzx) & false));
    global2 = false;
    return var_0.c;
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-948f)), arg_1));
    global3 = array<Struct_4, 17>();
    let var_1 = Struct_4(Struct_2(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false)), vec4<i32>(-21095i | -u_input.b, ~u_input.b ^ _wgslsmith_div_i32(-2147483647i, u_input.b), -u_input.b << (global1.x % 32u), u_input.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(-2147483647i, -36140i)), countOneBits(-vec2<i32>(u_input.b, u_input.b))), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), 4294967295u, vec3<u32>(max(~(2993u ^ u_input.a.x), u_input.a.x << (abs(0u) % 32u)), _wgslsmith_mult_u32(reverseBits(_wgslsmith_mod_u32(u_input.a.x, 1u)), ~(~59309u)), ~global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-948f, _wgslsmith_f_op_f32(178f * 2351f)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.c * -842f), _wgslsmith_div_f32(var_1.d.x, var_1.a.c), _wgslsmith_f_op_f32(-var_1.a.c)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 1000f, var_0.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(873f, 2728f, 1355f))), !vec3<bool>(false, true, var_1.a.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -360f, 1000f))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = func_4(vec2<u32>(arg_1.c.x, arg_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(f32(-1f) * -1083f)));
    global0 = array<vec4<f32>, 15>();
    global3 = array<Struct_4, 17>();
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d.x, -1i | arg_1.a.d.x, -1004i, -2147483647i) & arg_0.b, vec4<i32>(1i, _wgslsmith_dot_vec2_i32(-arg_0.b.yy, select(arg_0.b.zz, arg_1.a.b.yz, arg_1.a.a.x)), arg_0.b.x, _wgslsmith_mult_i32(0i, arg_1.a.d.x) ^ _wgslsmith_dot_vec4_i32(arg_1.a.b, vec4<i32>(35379i, arg_0.b.x, arg_1.a.b.x, arg_0.b.x)))) << (((~(~vec4<u32>(arg_1.b, u_input.a.x, 25988u, 73246u)) & vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, global1.x, arg_1.b)), 1852u, 0u, _wgslsmith_div_u32(4294967295u, 42255u))) >> ((vec4<u32>(firstTrailingBit(u_input.a.x), 1u, countOneBits(global1.x), arg_1.b << (1u % 32u)) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 72580u, 12262u, 1u), vec4<u32>(global1.x, arg_1.b, global1.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = _wgslsmith_sub_vec2_u32(~countOneBits(~(vec2<u32>(1u, global1.x) & vec2<u32>(4294967295u, 1u))), vec2<u32>(~firstTrailingBit(51203u) & 2668u, 4294967295u));
    return ~(firstLeadingBit(~(~vec4<u32>(0u, u_input.a.x, 0u, 25946u))) & _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(53302u, global1.x, u_input.a.x, u_input.a.x), vec4<u32>(34757u, global1.x, u_input.a.x, global1.x)), ~(~vec4<u32>(arg_1.b, 4294967295u, global1.x, global1.x))));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    let var_0 = vec2<bool>(any(!(!vec4<bool>(arg_2.a.e, arg_2.a.a.x, false, true))), select(_wgslsmith_div_f32(1496f, 686f) == arg_1.a.c, arg_1.a.e, arg_1.a.a.x == all(vec3<bool>(false, true, arg_1.a.a.x))) || (!(!arg_2.a.a.x) & false));
    global1 = ~(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, arg_2.b), ~vec2<u32>(3646u, 53696u)), vec2<u32>(1u, arg_2.c.x)) & vec2<u32>(0u, arg_2.c.x ^ u_input.a.x));
    var var_1 = arg_2.a.d.x;
    var var_2 = countOneBits(reverseBits(1u));
    global3 = array<Struct_4, 17>();
    return any(select(select(select(vec3<bool>(false, arg_2.a.a.x, true), vec3<bool>(false, false, var_0.x), arg_2.a.a.wzw), arg_2.a.a.wyw, !vec3<bool>(true, false, var_0.x)), arg_2.a.a.wxz, true)) || arg_1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 15>();
    var var_0 = vec2<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true)) | true, !(!any(vec2<bool>(true, true))));
    var_0 = vec2<bool>(var_0.x & var_0.x, !var_0.x);
    global2 = func_5(_wgslsmith_dot_vec4_u32(min(func_1(Struct_2(vec4<bool>(true, false, var_0.x, var_0.x), vec4<i32>(18648i, 20897i, -2088i, u_input.b), -1881f, vec2<i32>(u_input.b, 1i), true), Struct_4(Struct_2(vec4<bool>(true, var_0.x, var_0.x, false), vec4<i32>(-22371i, -2147483647i, u_input.b, u_input.b), 362f, vec2<i32>(19112i, u_input.b), var_0.x), 0u, u_input.a, vec2<f32>(307f, 1000f))), ~_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, u_input.a.x, 57799u, global1.x), vec4<u32>(global1.x, 59413u, global1.x, global1.x))), ~firstLeadingBit(max(vec4<u32>(0u, global1.x, u_input.a.x, u_input.a.x), vec4<u32>(39235u, 48959u, global1.x, global1.x)))), global3[_wgslsmith_index_u32(func_1(Struct_2(!vec4<bool>(var_0.x, var_0.x, false, true), abs(vec4<i32>(-2332i, u_input.b, -33526i, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(182f, 884f))), min(abs(vec2<i32>(0i, -56245i)), max(vec2<i32>(u_input.b, -7710i), vec2<i32>(52423i, -2147483647i))), !all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~4294967295u), _wgslsmith_sub_u32(4294967295u, func_1(Struct_2(vec4<bool>(var_0.x, true, false, true), vec4<i32>(u_input.b, -19117i, u_input.b, -1i), 221f, vec2<i32>(1i, u_input.b), var_0.x), Struct_4(Struct_2(vec4<bool>(var_0.x, var_0.x, false, true), vec4<i32>(20365i, u_input.b, 12410i, u_input.b), -710f, vec2<i32>(-1i, 2147483647i), true), 4294967295u, vec3<u32>(1224u, u_input.a.x, global1.x), vec2<f32>(-827f, 939f))).x)), 17u)]).x, 17u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 61646u), u_input.a.x << (u_input.a.x % 32u)), global1.x, 4294967295u, ~(~u_input.a.x)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(global1.x, u_input.a.x, u_input.a.x, global1.x)), vec4<u32>(20867u, _wgslsmith_mod_u32(u_input.a.x, 0u), u_input.a.x >> (global1.x % 32u), abs(4294967295u)))), 17u)]);
    let var_1 = min(abs(-vec4<i32>(-46178i, 1i, -69141i, 1i) & ~vec4<i32>(85785i, -1i, -1i, u_input.b)) << (~(~vec4<u32>(1u, global1.x, 35511u, global1.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.b, u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b), 1i), vec4<i32>(0i, firstTrailingBit(u_input.b), u_input.b, ~u_input.b)) << ((~reverseBits(vec4<u32>(u_input.a.x, 0u, 0u, global1.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(88336u, 4294967295u, 1u, 38353u), firstTrailingBit(vec4<u32>(u_input.a.x, 0u, 0u, 22474u)), vec4<u32>(4294967295u, 4294967295u, 20997u, global1.x))) % vec4<u32>(32u)));
    global3 = array<Struct_4, 17>();
    var_0 = func_3(func_4(vec2<u32>(_wgslsmith_sub_u32(1u, max(global1.x, global1.x)), u_input.a.x ^ global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1513f - -1255f) + _wgslsmith_f_op_f32(-1167f + 161f)))), -1i, Struct_2(select(vec4<bool>(false, !var_0.x, select(false, false, true), true || var_0.x), !func_3(Struct_1(vec3<f32>(-1000f, 1041f, -1647f)), var_1.x, Struct_2(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<i32>(u_input.b, 13136i, u_input.b, u_input.b), -1396f, var_1.zy, true)), true), vec4<i32>(0i, i32(-1i) * -45077i, -_wgslsmith_clamp_i32(u_input.b, u_input.b, var_1.x), abs(2147483647i)), _wgslsmith_f_op_f32(floor(-1445f)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.zx >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), -vec2<i32>(25036i, 1i), vec2<i32>(u_input.b, 13681i)), ~vec2<i32>(-21162i, var_1.x)), !(!var_0.x))).wz;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(230f, -1000f) - vec2<f32>(1991f, 168f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1110f)), func_4(u_input.a.zz, 1095f).a.x), !vec2<bool>(var_0.x, false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1695f, 442f), vec2<f32>(301f, -1025f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(228f, -133f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-399f, -865f)))), all(vec2<bool>(var_0.x, true)) & true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2413f)) + -1000f));
}

