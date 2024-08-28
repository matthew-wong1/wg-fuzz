struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(803f, 1453f, -1195f);

var<private> global1: f32;

var<private> global2: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-1031f, -480f, -857f, -240f), vec4<f32>(737f, 731f, -729f, 4161f), vec4<f32>(-661f, 372f, -1039f, 478f), vec4<f32>(-1000f, 1134f, -1613f, -739f), vec4<f32>(-422f, 307f, -200f, 556f), vec4<f32>(-622f, 1142f, 1530f, -1000f), vec4<f32>(-1451f, 1523f, 539f, 1621f), vec4<f32>(1014f, -736f, 625f, -942f), vec4<f32>(-309f, 731f, -874f, 786f), vec4<f32>(-303f, 1003f, 1227f, 1797f), vec4<f32>(709f, 900f, -514f, -175f), vec4<f32>(-698f, 1080f, 525f, -2293f), vec4<f32>(827f, 1503f, 813f, 574f), vec4<f32>(-183f, 689f, -739f, -1119f), vec4<f32>(1266f, 1346f, 427f, -106f), vec4<f32>(635f, 1000f, 680f, 618f), vec4<f32>(335f, -1000f, -834f, -1886f), vec4<f32>(-174f, -388f, -1928f, 251f), vec4<f32>(-433f, 929f, 292f, 1000f), vec4<f32>(-1062f, -532f, 1097f, 1000f), vec4<f32>(812f, -379f, 704f, 1000f), vec4<f32>(614f, 887f, -1000f, 845f), vec4<f32>(-169f, -995f, 1038f, -844f), vec4<f32>(-196f, -511f, -685f, 907f), vec4<f32>(-147f, 1000f, 536f, 488f), vec4<f32>(-1290f, 864f, -925f, 868f), vec4<f32>(1000f, 825f, 171f, -1880f), vec4<f32>(1673f, -1000f, 1241f, -591f), vec4<f32>(-553f, 738f, -597f, -1623f), vec4<f32>(-282f, -407f, 1291f, -320f), vec4<f32>(607f, 225f, -636f, 910f), vec4<f32>(-729f, -535f, 468f, -381f));

var<private> global3: array<Struct_2, 2>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_4(~vec3<u32>(~(~27049u), ~arg_0.b.b.b, arg_0.b.b.b));
    var var_1 = vec4<bool>(true, arg_0.b.b.a.x, !any(select(!vec4<bool>(true, arg_0.b.b.a.x, arg_0.b.a.x, true), !vec4<bool>(arg_0.b.b.a.x, false, arg_0.b.a.x, arg_0.b.b.a.x), !vec4<bool>(arg_0.b.a.x, false, arg_0.b.a.x, false))), false);
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(-u_input.a.x, _wgslsmith_mult_i32(reverseBits(-49742i), u_input.a.x));
    var_0 = Struct_4(select(select(arg_0.b.b.e.xxy, ~select(arg_0.b.b.e.zzy, vec3<u32>(arg_0.b.b.e.x, 23024u, 0u), vec3<bool>(true, true, arg_0.b.b.a.x)), var_1.x), var_0.a, select(vec3<bool>(arg_0.b.a.x, false, var_1.x), var_1.wyy, all(vec4<bool>(var_1.x, var_1.x, arg_0.b.a.x, arg_0.b.a.x)))));
    var var_3 = Struct_2(var_1.wwz, Struct_1(!arg_0.b.b.a, ~4294967295u, 124f, _wgslsmith_f_op_vec3_f32(-arg_0.b.b.d), select(~_wgslsmith_mod_vec4_u32(arg_0.a, arg_0.b.b.e), arg_0.b.b.e >> (arg_0.a % vec4<u32>(32u)), vec4<bool>(false, 1152f == global0.x, 18907u > u_input.b.x, var_1.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.b.d.x - 1219f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1805f) - var_3.b.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f * var_3.b.c))) + _wgslsmith_f_op_f32(exp2(arg_0.b.b.c)));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec4<u32>(1129u, u_input.b.x, u_input.b.x, 0u), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, false), u_input.b.x, global0.x, vec3<f32>(global0.x, -346f, global0.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x))), 2147483647i, 356f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1328f) * global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * -1554f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x)))));
    var var_1 = Struct_3(vec4<u32>(firstLeadingBit(15542u), u_input.b.x, 1u, u_input.b.x), global3[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mult_u32(1u, 1u)), 2u)], -u_input.a.x | _wgslsmith_dot_vec4_i32(-(~u_input.a), abs(vec4<i32>(8378i, 1i, u_input.a.x, 1i))), global0.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_0.x));
    var var_3 = Struct_2(select(var_1.b.a, var_1.b.a, var_1.b.a), var_1.b.b);
    global2 = array<vec4<f32>, 32>();
    return (false || any(vec2<bool>(true, true))) & (select(all(vec2<bool>(true, true)), !(var_1.c >= var_1.c), true && var_1.b.b.a.x) || any(var_1.b.a));
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(global0.x - -410f), _wgslsmith_f_op_f32(round(1993f))) * vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-131f, global0.x), global0.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global0.x - -1021f), -249f, _wgslsmith_div_f32(global0.x, global0.x)))), _wgslsmith_sub_u32(~u_input.b.x, abs(u_input.b.x)) > countOneBits(1u))));
    var var_0 = !any(vec3<bool>(false, func_2(), all(vec2<bool>(false, true))));
    var var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(24386u, u_input.b.x, 0u, 0u)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(26201u, 77088u, 1u, u_input.b.x)), firstTrailingBit(1u), firstTrailingBit(9243u))), abs(vec4<u32>(~83912u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), 62825u, u_input.b.x)));
    return _wgslsmith_f_op_f32(round(-449f));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32) -> vec3<u32> {
    let var_0 = 1752f;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_3(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), global3[_wgslsmith_index_u32(0u, 2u)], 2147483647i, arg_1)))));
    global2 = array<vec4<f32>, 32>();
    var_1 = _wgslsmith_f_op_f32(arg_1 - -2390f);
    var var_2 = Struct_4(~u_input.b);
    return _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, u_input.b.x ^ var_2.a.x) << (~_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u), ~firstTrailingBit(~7705u), ~u_input.b.x), vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(max(31701u, u_input.b.x)), 1u, _wgslsmith_mult_u32(4914u, min(22499u, 31325u))), var_2.a.x, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zz + global0.yz), global0.yy) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -302f) - global0.yz), global0.zx, all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, 914f)))))), _wgslsmith_f_op_f32(func_1(-min(_wgslsmith_mod_i32(u_input.a.x, -1i), select(1i, u_input.a.x, true)), ~u_input.a.x)));
    var var_1 = global0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(305f, _wgslsmith_f_op_f32(abs(-1259f))) + global0.x));
    global2 = array<vec4<f32>, 32>();
    let var_2 = _wgslsmith_sub_u32(~var_0.x, u_input.b.x >> (0u % 32u));
    var var_3 = ~abs(_wgslsmith_add_u32(reverseBits(reverseBits(7920u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u) & var_0.zz, var_0.zx)));
    var var_4 = ~abs(var_2 >> (~(~38122u) % 32u));
    global3 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wx, vec2<u32>(~_wgslsmith_mult_u32(u_input.b.x ^ var_2, var_0.x), ~87838u));
}

