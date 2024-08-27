struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(957f, -241f, 1000f), vec3<f32>(-230f, 235f, -1243f), vec3<f32>(205f, 633f, 718f), vec3<f32>(196f, -1000f, -408f), vec3<f32>(-633f, 355f, 2750f), vec3<f32>(-1710f, -443f, -381f), vec3<f32>(430f, 285f, -170f), vec3<f32>(1342f, -1043f, -880f), vec3<f32>(1479f, 1000f, -2095f), vec3<f32>(-746f, 1308f, 615f), vec3<f32>(-119f, 353f, -698f), vec3<f32>(1090f, 1200f, 294f), vec3<f32>(845f, -715f, 710f), vec3<f32>(-301f, 1304f, 920f), vec3<f32>(1061f, 173f, 615f), vec3<f32>(-163f, 804f, 1000f), vec3<f32>(716f, 432f, -259f), vec3<f32>(1359f, 916f, 1189f), vec3<f32>(1000f, 186f, -418f), vec3<f32>(-679f, -1363f, 1000f), vec3<f32>(-844f, -1443f, 346f), vec3<f32>(194f, -289f, -2175f), vec3<f32>(-1836f, -631f, 1808f), vec3<f32>(1079f, -1585f, 1502f), vec3<f32>(-1000f, -459f, -297f), vec3<f32>(-510f, -890f, 1000f), vec3<f32>(-982f, 674f, 560f), vec3<f32>(882f, -1440f, -946f), vec3<f32>(-145f, -2177f, -1239f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec2<i32> {
    global1 = array<vec3<f32>, 29>();
    let var_0 = u_input.d;
    var var_1 = Struct_2(select(true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, arg_2.x, true, true), true)), all(arg_2.yz)), Struct_1(1f, _wgslsmith_div_u32(4294967295u, arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f), 796f), ~(~(vec3<u32>(40254u, arg_1.x, 1u) | vec3<u32>(var_0, 1u, global0.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.a, 251f), vec2<f32>(-1843f, 3006f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, var_1.b.a)), false)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-386f, -961f)))))));
    global1 = array<vec3<f32>, 29>();
    return -min(reverseBits(vec2<i32>(~arg_0.x, 1i)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c << (vec2<u32>(arg_1.x, 4294967295u) % vec2<u32>(32u))), _wgslsmith_add_i32(i32(-1i) * -29252i, -1i)));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> vec3<u32> {
    global1 = array<vec3<f32>, 29>();
    var var_0 = vec4<i32>(arg_0, _wgslsmith_clamp_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-10557i, 0i), vec2<i32>(0i, 2147483647i)), ~u_input.c.x) ^ _wgslsmith_div_i32(arg_0, i32(-1i) * -1613i), max(1i, 2147483647i), firstLeadingBit(arg_0) ^ ((-2147483647i ^ u_input.c.x) | 1i)), _wgslsmith_div_i32(arg_0, -57771i), min(-arg_0, -countOneBits(-u_input.a)));
    let var_1 = arg_0;
    let var_2 = 1u;
    var var_3 = func_3(abs(reverseBits(vec2<i32>(-1i) * -var_0.wz)), countOneBits(~abs(~vec2<u32>(1u, arg_1.x))), !vec4<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), true, true));
    return ~(~(firstTrailingBit(~vec3<u32>(arg_1.x, 23267u, 0u)) | arg_1));
}

fn func_1() -> Struct_1 {
    global0 = (~(vec3<u32>(4294967295u, global0.x, global0.x) | vec3<u32>(u_input.b, u_input.d, 0u)) & ~((vec3<u32>(global0.x, 23178u, 5139u) << (vec3<u32>(4294967295u, 25417u, u_input.b) % vec3<u32>(32u))) >> (firstLeadingBit(vec3<u32>(global0.x, global0.x, global0.x)) % vec3<u32>(32u)))) & ~countOneBits(func_2(0i, abs(vec3<u32>(4294967295u, 4029u, 0u))));
    global0 = ~(~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.d, u_input.d), select(vec3<u32>(0u, u_input.d, 38658u), vec3<u32>(global0.x, 51349u, 22761u), true)), u_input.b, u_input.d));
    global1 = array<vec3<f32>, 29>();
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~reverseBits(19015i) >> (~_wgslsmith_div_u32(u_input.d, global0.x) % 32u), u_input.c.x, abs(func_3(u_input.c, global0.yz, vec4<bool>(true, false, false, false)).x) ^ ~(~26304i)), -(29973i ^ max(abs(u_input.c.x), ~2147483647i)), 1i);
    let var_1 = Struct_4(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, 0i, -42491i), vec4<i32>(u_input.c.x ^ u_input.a, 1i ^ u_input.c.x, 1077i & u_input.a, u_input.a)), Struct_2(false, Struct_1(436f, abs(reverseBits(4264u)), _wgslsmith_f_op_f32(abs(-1066f)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 5500u, global0.x), firstLeadingBit(vec3<u32>(global0.x, global0.x, u_input.d))))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(global0.yz, global0.xx), u_input.b, 0u, 1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 1u, global0.x, 40897u)) & max(vec4<u32>(global0.x, 59033u, global0.x, 1u), ~vec4<u32>(5159u, 0u, 1u, global0.x)), ~(~vec4<u32>(global0.x, global0.x, u_input.d, global0.x)) >> (abs(~vec4<u32>(global0.x, 0u, 27311u, u_input.b)) % vec4<u32>(32u))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, global0.x), max(~global0.xy, global0.xx ^ global0.yx)), (_wgslsmith_mod_u32(0u >> (0u % 32u), global0.x) < ~(~0u)) || any(vec2<bool>(true, all(vec2<bool>(false, true)))));
    return var_1.b.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> vec3<u32> {
    var var_0 = u_input.c.x ^ 2147483647i;
    var var_1 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, global0.x > u_input.b, arg_1.d.x <= arg_1.b, arg_1.a != arg_1.a)), select(vec4<bool>(false, select(false, false, false), true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec3<bool>(true, true, true)), false, arg_2.x < global0.x), false)));
    var var_2 = !(!select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))));
    var_0 = u_input.c.x;
    var var_3 = 1u;
    return firstLeadingBit(~func_2(_wgslsmith_add_i32(~u_input.a, u_input.a), select(func_1().d, arg_1.d, all(vec2<bool>(var_2.x, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), func_1(), countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, global0.x, u_input.b), vec3<u32>(global0.x, u_input.d, 12011u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1447f, 711f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(626f * -608f), -1854f))));
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-393f - -720f), func_1().c));
    global1 = array<vec3<f32>, 29>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-943f, _wgslsmith_f_op_f32(sign(673f)), _wgslsmith_f_op_f32(max(-408f, 317f)), _wgslsmith_f_op_f32(floor(1027f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1167f, -1483f, -1073f))) * vec4<f32>(_wgslsmith_div_f32(946f, -2072f), _wgslsmith_f_op_f32(step(-1209f, 1048f)), 431f, _wgslsmith_f_op_f32(951f - -1578f))))) + vec4<f32>(453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1349f) - func_1().a)), -205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)))));
    var var_2 = vec4<i32>(min(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c, u_input.c), ~u_input.c), u_input.c.x), -18728i, -2147483647i, 23259i);
    let var_3 = any(!vec3<bool>(true, !any(vec4<bool>(false, true, true, true)), true));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(603f + _wgslsmith_f_op_f32(round(-205f))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1681f, -533f, ~_wgslsmith_add_vec4_u32(vec4<u32>(~3528u, firstLeadingBit(8721u), abs(47887u), global0.x >> (37038u % 32u)), ~vec4<u32>(1u, u_input.d, 1u, 0u)), 81410u, _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(countOneBits(-60092i), -var_2.x)), -(~func_3(vec2<i32>(25707i, 23121i), global0.xy, vec4<bool>(var_3, var_3, true, var_3)))));
}

