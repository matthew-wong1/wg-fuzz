struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: i32 = 27074i;

var<private> global2: array<Struct_4, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    return select(arg_0.b.e, arg_0.a.e, select(arg_0.b.e, !select(vec4<bool>(arg_0.a.c.x, arg_0.b.b, true, arg_0.a.b), vec4<bool>(false, false, false, false), vec4<bool>(arg_0.b.c.x, arg_0.a.c.x, arg_0.b.c.x, true)), !arg_0.a.e));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_3(u_input.a.zx, Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -961f), true, func_3(Struct_2(Struct_1(-1000f, false, vec4<bool>(true, false, false, false), u_input.a, vec4<bool>(false, true, false, false)), Struct_1(-469f, false, vec4<bool>(false, true, false, false), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 70416u), vec4<bool>(false, true, false, true)), u_input.a.x)), u_input.a, func_3(Struct_2(Struct_1(768f, false, vec4<bool>(false, true, false, false), u_input.a, vec4<bool>(true, false, false, false)), Struct_1(-2104f, false, vec4<bool>(true, false, true, true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<bool>(true, false, true, true)), u_input.a.x))), Struct_1(-1084f, all(func_3(Struct_2(Struct_1(-136f, false, vec4<bool>(false, false, false, true), u_input.a, vec4<bool>(true, false, true, true)), Struct_1(339f, false, vec4<bool>(false, false, false, false), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 70036u), vec4<bool>(false, false, false, true)), 1u)).zy), vec4<bool>(true, all(vec4<bool>(false, false, true, true)), false, true), vec4<u32>(0u << (u_input.a.x % 32u), ~0u, u_input.a.x, ~u_input.a.x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), func_3(Struct_2(Struct_1(-1000f, false, vec4<bool>(false, true, false, false), u_input.a, vec4<bool>(true, false, false, true)), Struct_1(970f, false, vec4<bool>(true, true, true, true), vec4<u32>(1u, 3599u, u_input.a.x, 51324u), vec4<bool>(true, false, false, false)), 1u)))), reverseBits(49474u)));
    global0 = array<vec4<i32>, 18>();
    let var_1 = vec4<u32>(571u, reverseBits(u_input.a.x >> (_wgslsmith_clamp_u32(u_input.a.x, 55749u, 58892u) % 32u)), 38395u, 4294967295u) ^ (u_input.a << (var_0.b.a.d % vec4<u32>(32u)));
    global0 = array<vec4<i32>, 18>();
    global0 = array<vec4<i32>, 18>();
    return false;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-949f, _wgslsmith_f_op_f32(step(-210f, -268f)))))), func_2(1i), vec4<bool>(true, !(arg_0.x | (1u == u_input.a.x)), arg_0.x, arg_0.x), ~_wgslsmith_mod_vec4_u32(~(u_input.a >> (u_input.a % vec4<u32>(32u))), ~u_input.a), vec4<bool>(!func_3(Struct_2(Struct_1(268f, true, vec4<bool>(false, true, true, arg_0.x), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), vec4<bool>(arg_0.x, arg_0.x, true, false)), Struct_1(2092f, arg_0.x, arg_0, u_input.a, arg_0), u_input.a.x)).x, all(vec4<bool>(true && arg_0.x, func_3(Struct_2(Struct_1(-1213f, true, vec4<bool>(true, true, false, true), u_input.a, arg_0), Struct_1(1567f, true, vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), u_input.a, vec4<bool>(false, arg_0.x, false, true)), u_input.a.x)).x, true, arg_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(41318i, -29658i) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), ~vec2<i32>(22718i, 26686i)) <= -16585i, true));
    let var_1 = ~vec3<i32>(0i, i32(-1i) * -select(2147483647i, -2147483647i, arg_0.x), i32(-1i) * -7343i);
    let var_2 = global2[_wgslsmith_index_u32(min(4294967295u | var_0.d.x, ~var_0.d.x), 14u)];
    var var_3 = -(var_1.x ^ (~var_1.x | _wgslsmith_add_i32(var_1.x, 1i))) & var_1.x;
    var var_4 = 46941i;
    return 843f;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_3 {
    global1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_2.zxw, ~arg_2.wwx), -(~(~1i)));
    return Struct_3(countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_3.d.xx, vec2<u32>(arg_3.d.x, 0u)), vec2<u32>(25118u, u_input.a.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(ceil(710f))), false, select(!vec4<bool>(arg_3.b, arg_3.b, false, arg_3.b), func_3(Struct_2(arg_3, Struct_1(-2523f, arg_3.b, arg_3.c, vec4<u32>(7344u, 39168u, 0u, 3100u), vec4<bool>(arg_3.c.x, arg_3.e.x, arg_3.b, true)), 8539u)), arg_3.e.x), firstTrailingBit(arg_3.d), arg_3.e), arg_3, 33495u));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    global1 = -(~_wgslsmith_div_i32(arg_1.x, arg_1.x));
    let var_0 = func_3(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b.a.a, -1572f, -1438f, arg_3.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1020f)) * 1381f), ~global0[_wgslsmith_index_u32(u_input.a.x, 18u)], arg_0.b.a).b).zyx;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.a.a, arg_0.b.a.a)) * arg_3.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x * arg_0.b.a.a), arg_3.x, arg_0.b.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_0.b.a.a))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-255f, 1097f, 1457f, arg_3.x) + vec4<f32>(-910f, arg_0.b.a.a, arg_0.b.b.a, arg_3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1421f, 2125f, 1185f, -1399f) + vec4<f32>(-820f, arg_0.b.a.a, arg_3.x, arg_0.b.b.a)))))), _wgslsmith_f_op_f32(-arg_3.x), countOneBits(abs(global0[_wgslsmith_index_u32(4294967295u, 18u)]) ^ _wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(arg_2, 18u)], global0[_wgslsmith_index_u32(arg_2, 18u)], global0[_wgslsmith_index_u32(31547u, 18u)])) | vec4<i32>(firstLeadingBit(-1i) | arg_1.x, firstTrailingBit(1i), firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, -1567i), vec3<i32>(-1i, arg_1.x, -1i)), vec3<i32>(arg_1.x, arg_1.x, 0i) | vec3<i32>(arg_1.x, arg_1.x, 1i))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1629f, 185f, arg_0.b.b.a, arg_3.x), vec4<f32>(arg_0.b.b.a, -1220f, arg_3.x, 882f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(567f, 124f, arg_3.x, 627f), vec4<f32>(arg_0.b.a.a, -784f, 115f, arg_0.b.b.a)))))), -646f, ((vec4<i32>(12752i, 40914i, arg_1.x, arg_1.x) >> (arg_0.b.b.d % vec4<u32>(32u))) | global0[_wgslsmith_index_u32(reverseBits(0u), 18u)]) & ~_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(arg_0.b.a.d.x, 18u)], vec4<i32>(arg_1.x, -2147483647i, arg_1.x, arg_1.x)), Struct_1(_wgslsmith_f_op_f32(arg_3.x + 1210f), true, vec4<bool>(false, any(var_0.yy), true, var_0.x), max(vec4<u32>(arg_2, 4294967295u, 33682u, 1u), u_input.a), select(!arg_0.b.a.e, vec4<bool>(arg_0.b.a.b, true, arg_0.b.a.e.x, false), select(vec4<bool>(arg_0.b.b.b, true, var_0.x, false), arg_0.b.a.e, arg_0.b.b.c)))).b.a).b;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.yz) * arg_3.xy);
    return func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1832f, var_1.b.a, -1110f, var_3.x))) + vec4<f32>(arg_0.b.a.a, _wgslsmith_f_op_f32(abs(arg_3.x)), _wgslsmith_f_op_f32(-var_1.b.a), -823f)))), var_3.x, ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~global0[_wgslsmith_index_u32(var_1.a.d.x, 18u)], global0[_wgslsmith_index_u32(max(arg_2, 1u), 18u)]), global0[_wgslsmith_index_u32(2461u, 18u)], select(~global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(arg_0.b.c, 18u)] | vec4<i32>(arg_1.x, 2147483647i, arg_1.x, 1i), vec4<bool>(false, false, true, true))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, -1154f, arg_3.x, 762f))))), 950f, -global0[_wgslsmith_index_u32(abs(var_1.a.d.x), 18u)], var_1.a).b.b).b.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 2147483647i;
    global1 = 1i << (~(~(~4294967295u)) % 32u);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(vec4<f32>(883f, 1217f, 1945f, 999f), _wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, true, false))), vec4<i32>(2147483647i, 1i, 17488i, 2147483647i), Struct_1(1510f, true, vec4<bool>(true, false, true, false), u_input.a, vec4<bool>(true, false, false, true))), vec2<i32>(_wgslsmith_div_i32(8630i, 1i), min(-2147483647i, -1i)), u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1995f, 221f, 323f) - vec3<f32>(-399f, -1682f, -783f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-200f)))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(640f)))) + 498f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f - 1403f)) - func_4(vec4<f32>(1f, 1f, 1f, 1f), -1000f, countOneBits(global0[_wgslsmith_index_u32(25144u, 18u)]), Struct_1(-1078f, false, vec4<bool>(true, false, false, true), u_input.a, vec4<bool>(false, false, false, false))).b.a.a))));
    global2 = array<Struct_4, 14>();
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(380f, 1412f) * vec2<f32>(1236f, -1878f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(878f, -352f) * vec2<f32>(207f, -1315f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2375f, -1278f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(f32(-1f) * -1176f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, 385f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(261f, 1902f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(711f, 2336f))))))));
    var var_3 = u_input.a;
    let var_4 = 1186f;
    let var_5 = _wgslsmith_add_i32(1i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(52635u, vec4<f32>(_wgslsmith_f_op_f32(-var_4), -182f, -546f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_3.xy);
}

