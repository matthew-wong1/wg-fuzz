struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool;

var<private> global2: u32;

var<private> global3: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1189f, -121f, -423f), vec3<f32>(-527f, -1512f, 1308f), vec3<f32>(-301f, -1221f, 841f), vec3<f32>(927f, -1042f, -1307f), vec3<f32>(-225f, 357f, 308f), vec3<f32>(-799f, 1807f, 249f), vec3<f32>(-440f, 533f, -1130f), vec3<f32>(-1000f, -255f, 125f), vec3<f32>(-471f, -1839f, 829f), vec3<f32>(-1000f, 439f, -353f), vec3<f32>(130f, -1526f, -153f), vec3<f32>(-897f, 444f, -371f), vec3<f32>(-490f, 1513f, -560f), vec3<f32>(518f, 200f, -1656f), vec3<f32>(-1393f, -1194f, 927f), vec3<f32>(-550f, 351f, 672f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)));
    let var_1 = Struct_4(-1i, Struct_1(vec2<bool>(!select(false, false, false), true), select(1u, global0.x, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1236f - -1104f), _wgslsmith_f_op_f32(max(-1982f, -601f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -276f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(618f, _wgslsmith_div_f32(-181f, 818f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(388f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1353f))) * vec4<f32>(_wgslsmith_div_f32(-759f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2102f - -1000f) - _wgslsmith_f_op_f32(min(587f, 1266f))), _wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, 1000f)))))), Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b) << (u_input.a % vec3<u32>(32u)), vec3<i32>(u_input.b, u_input.b, -97871i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 0u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(541f, 645f, true))), -1i, vec3<i32>(2147483647i, 1i | u_input.b, u_input.b), i32(-1i) * -u_input.b), true, true), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, false), 19494i == u_input.b), vec2<bool>(true, false), true), min(arg_0, arg_0), -504f));
    global1 = -((i32(-1i) * -1i) ^ u_input.b) >= var_1.d.a.d.x;
    global2 = ~var_1.e.b;
    var var_2 = Struct_1(select(vec2<bool>(any(select(vec4<bool>(var_1.e.a.x, true, true, var_1.b.a.x), vec4<bool>(false, false, var_1.d.b, true), var_1.d.c)), select(true, true | var_1.b.a.x, true)), var_1.e.a, true), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.d.a.b)))), var_1.e.c)));
    return var_1.b.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = 1383f;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - 497f)))));
    global1 = true;
    let var_2 = -1000f;
    global2 = 1u;
    return min(countOneBits(select(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c.a.d.x, -4563i), vec2<i32>(1i, arg_1.d.a)), arg_0, select(arg_1.b.zy, vec2<bool>(arg_2.a.x, false), true))), -(~countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1794i), arg_0))));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(476f, -409f, -1588f, 812f))) - vec4<f32>(957f, _wgslsmith_f_op_f32(trunc(-1859f)), -1092f, 2960f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(908f, -111f, 495f, 1000f) + vec4<f32>(-1302f, 816f, -316f, -1041f))))));
    global0 = vec2<u32>(68699u << (~(arg_2.x << (_wgslsmith_add_u32(arg_2.x, 0u) % 32u)) % 32u), _wgslsmith_div_u32(25715u, firstTrailingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(arg_2), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, global0.x, arg_2.x), arg_2)))));
    global1 = arg_1;
    var var_1 = !select(select(vec3<bool>(arg_1, !arg_1, true), !select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, true), vec3<bool>(true, false, true)), !select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), arg_1)), select(!select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, true, false)), vec3<bool>(!arg_1, all(vec3<bool>(arg_1, false, true)), !arg_1), true), !vec3<bool>(true, any(vec2<bool>(false, arg_1)), !arg_1));
    var_1 = !(!vec3<bool>(false | (var_1.x == true), false, true));
    return reverseBits(select(vec2<i32>(~1i, 2147483647i << (global0.x % 32u)), arg_0, !(u_input.a.x == global0.x)) >> (_wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(arg_2.wy, arg_2.zw), select(vec2<u32>(arg_2.x, arg_2.x), ~vec2<u32>(u_input.a.x, 45806u), false), vec2<u32>(_wgslsmith_div_u32(arg_2.x, 24971u), u_input.a.x & arg_2.x)) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec2<i32>) -> vec2<i32> {
    let var_0 = 421f;
    global3 = array<vec3<f32>, 16>();
    var var_1 = Struct_5(func_4(~func_2(arg_0, Struct_5(arg_0, vec3<bool>(false, true, true), Struct_3(Struct_2(arg_0.x, var_0, 13431i, vec3<i32>(arg_0.x, u_input.b, -2147483647i), arg_0.x), true, false), Struct_2(0i, 1955f, 2147483647i, vec3<i32>(0i, arg_0.x, 3359i), u_input.b)), Struct_1(vec2<bool>(false, false), 1u, 546f)), true, vec4<u32>(min(u_input.a.x, 1827u), 0u, 38745u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, u_input.a.x, 43464u)))) & -firstTrailingBit(arg_0), select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.x < u_input.b, true, true), all(vec3<bool>(true, true, true))), Struct_3(Struct_2(reverseBits(_wgslsmith_clamp_i32(u_input.b, 14733i, u_input.b)), -718f, 1i, vec3<i32>(u_input.b, arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(24328i, 42029i, 5723i, -45603i), vec4<i32>(1i, arg_0.x, u_input.b, -9181i))), _wgslsmith_add_i32(arg_0.x, 22208i)), false, all(vec3<bool>(252f >= var_0, false, true))), Struct_2(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(166f * var_0)), func_4(-vec2<i32>(arg_0.x, u_input.b), all(vec3<bool>(true, false, true)), firstLeadingBit(vec4<u32>(4518u, 52824u, u_input.a.x, global0.x))).x >> (u_input.a.x % 32u), vec3<i32>(abs(1i), select(7019i, -arg_0.x, all(vec2<bool>(false, false))), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, u_input.b), vec2<i32>(arg_0.x, 1i))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0.x, -2147483647i, arg_0.x, arg_0.x), ~vec4<i32>(2147483647i, arg_0.x, 882i, arg_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_0.x, 1i, u_input.b), vec4<i32>(0i, -2147483647i, 97044i, arg_0.x))), vec4<i32>(0i, 2147483647i >> (global0.x % 32u), arg_0.x, u_input.b))));
    global0 = vec2<u32>(~(~36340u), 0u);
    global2 = abs(~firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, u_input.a.x), vec3<u32>(20785u, 53336u, 50978u)), _wgslsmith_div_u32(u_input.a.x, 0u), _wgslsmith_mult_u32(36680u, 10914u))));
    return var_1.c.a.d.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_1(vec2<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 4433i, -1i, u_input.b), vec4<i32>(u_input.b, 5230i, u_input.b, 1i))), _wgslsmith_mod_i32(u_input.b, -u_input.b))), select(vec3<bool>(false, all(vec2<bool>(false, false)), true), vec3<bool>(false, true, true), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))), Struct_3(Struct_2(-10058i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), abs(_wgslsmith_div_i32(-20820i, 44367i)), firstLeadingBit(vec3<i32>(u_input.b, 0i, -30176i)), _wgslsmith_clamp_i32(u_input.b, 0i, u_input.b) >> (14097u % 32u)), select(any(vec3<bool>(false, true, true)), any(vec2<bool>(false, true)), !select(false, false, false)), !(!any(vec3<bool>(true, false, false)))), Struct_2(16887i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - -808f)))), _wgslsmith_mult_i32(u_input.b, ~reverseBits(u_input.b)), -vec3<i32>(51948i, func_2(vec2<i32>(u_input.b, u_input.b), Struct_5(vec2<i32>(-2403i, u_input.b), vec3<bool>(true, true, true), Struct_3(Struct_2(-26390i, -350f, u_input.b, vec3<i32>(2147483647i, u_input.b, -31551i), -1i), false, true), Struct_2(u_input.b, -547f, u_input.b, vec3<i32>(0i, u_input.b, u_input.b), u_input.b)), Struct_1(vec2<bool>(true, false), 1u, -1000f)).x, u_input.b), ~u_input.b));
    global0 = ~max(~vec2<u32>(1u, global0.x << (33291u % 32u)), vec2<u32>(~(~u_input.a.x), abs(17332u)));
    global3 = array<vec3<f32>, 16>();
    var var_1 = Struct_4(1i, Struct_1(!select(vec2<bool>(true, var_0.b.x), vec2<bool>(true, var_0.c.c), !vec2<bool>(var_0.b.x, false)), min(_wgslsmith_add_u32(global0.x, select(global0.x, 19516u, var_0.c.c)), firstTrailingBit(u_input.a.x) & 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2446f - var_0.d.b))), _wgslsmith_f_op_f32(var_0.d.b - 511f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c.a.b, -1000f, var_0.c.a.b, var_0.c.a.b)))))), var_0.c, Struct_1(vec2<bool>(select(true, any(var_0.b.zy), var_0.c.b && false), var_0.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 3953u, u_input.a.x), vec3<u32>(1u, global0.x, u_input.a.x)), countOneBits(u_input.a)) ^ max(min(30608u, 13583u), 0u), 891f));
    global0 = (u_input.a.yy << (vec2<u32>(~(~5258u), 4294967295u) % vec2<u32>(32u))) >> (~(max(u_input.a.xx, u_input.a.zz) | countOneBits(vec2<u32>(global0.x, 0u))) % vec2<u32>(32u));
    var var_2 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<i32>(var_1.d.a.a ^ ~(-61759i), var_2.a.d.x), Struct_5(-(var_1.d.a.d.yx | vec2<i32>(1i, -25306i)), select(var_0.b, select(var_0.b, var_0.b, true), vec3<bool>(var_2.b, var_2.b, true)), var_0.c, var_0.c.a), Struct_1(!vec2<bool>(var_2.c, var_1.d.c), countOneBits(0u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-801f, 1000f)))).x, _wgslsmith_mod_vec2_u32(~(~u_input.a.xy), ~vec2<u32>(5476u, u_input.a.x)), _wgslsmith_div_vec4_i32(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -787i, -21269i, -24712i), vec4<i32>(u_input.b, -61997i, var_2.a.a, var_2.a.e))), vec4<i32>(-1i) * -abs(vec4<i32>(-1i, var_0.c.a.c, 2147483647i, -1i))), var_2.a.b, -1i ^ min(-u_input.b, 21140i));
}

