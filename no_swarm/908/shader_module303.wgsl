struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true));

var<private> global1: array<f32, 26> = array<f32, 26>(1574f, -1164f, 1935f, 1000f, 1000f, 153f, 196f, 321f, 465f, -332f, 961f, 1732f, -989f, -651f, 1337f, 1066f, -1198f, 1286f, 2249f, 629f, -588f, 702f, 1275f, -624f, -1513f, -542f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec4<i32> {
    var var_0 = (any(vec3<bool>(select(false, false, true), true, select(false, false, false))) || !(-621f < _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(2850u, 26u)])))) | (-_wgslsmith_dot_vec3_i32(u_input.b >> (vec3<u32>(23039u, u_input.a.x, u_input.c.x) % vec3<u32>(32u)), countOneBits(vec3<i32>(-34i, 2147483647i, u_input.b.x))) != -_wgslsmith_mod_i32(~u_input.b.x, u_input.b.x << (39183u % 32u)));
    var_0 = any(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32((u_input.a.x ^ 35119u) >> (~50372u % 32u), _wgslsmith_div_u32(u_input.a.x << (u_input.c.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(11867u, 50346u)))), 28u)], vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(~4294967295u, 28u)], true), global0[_wgslsmith_index_u32(u_input.c.x, 28u)], false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f));
    global1 = array<f32, 26>();
    var var_2 = vec2<i32>(firstLeadingBit(abs(u_input.b.x)), _wgslsmith_add_i32(16432i, firstTrailingBit(26797i)));
    return -abs(select(select(-vec4<i32>(39580i, u_input.b.x, -16280i, 30330i), _wgslsmith_div_vec4_i32(vec4<i32>(26535i, u_input.b.x, var_2.x, 0i), vec4<i32>(u_input.b.x, var_2.x, u_input.b.x, -2188i)), vec4<bool>(false, true, true, false)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_2.x, -4999i, 0i), -vec4<i32>(var_2.x, u_input.b.x, var_2.x, var_2.x)), false));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_2(u_input.b.xz, Struct_1(max(arg_2.x, ~firstTrailingBit(1u)), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, u_input.b.x, arg_0.x, 10492i), -vec4<i32>(0i, arg_0.x, -36047i, -38405i)), !(!vec2<bool>(arg_1.b, arg_1.b))), true);
    global0 = array<vec4<bool>, 28>();
    global1 = array<f32, 26>();
    let var_1 = arg_0.x;
    global1 = array<f32, 26>();
    return false;
}

fn func_2() -> vec4<i32> {
    global1 = array<f32, 26>();
    let var_0 = all(vec3<bool>(true, all(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a.x), 28u)]), true));
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    let var_1 = Struct_1(_wgslsmith_mod_u32(17358u, u_input.a.x), vec4<i32>(1962i, func_1().x | (u_input.b.x | u_input.b.x), -_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, -1i, 2147483647i), vec3<i32>(0i, u_input.b.x, u_input.b.x)), _wgslsmith_mod_i32(abs(min(u_input.b.x, 2147483647i)), u_input.b.x)), vec2<bool>(var_0, func_3(select(_wgslsmith_add_vec3_i32(vec3<i32>(-30509i, u_input.b.x, -2147483647i), u_input.b), vec3<i32>(u_input.b.x, u_input.b.x, 43900i), !vec3<bool>(var_0, var_0, false)), Struct_3(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a), var_0 || false, firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(u_input.a.x, 93136u), _wgslsmith_dot_vec4_u32(vec4<u32>(30588u, 31615u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 49070u, u_input.a.x, u_input.c.x))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 0u, 5923u, 68997u)), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 18671u, u_input.a.x))))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(81354u, 26u)];
    var var_1 = false;
    global0 = array<vec4<bool>, 28>();
    var var_2 = ~_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(abs(2147483647i), abs(-2284i), -45556i));
    let var_3 = _wgslsmith_div_vec4_i32(reverseBits(func_1()), ~(-func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-382f, -824f, -1738f, 3999f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(37200u, 26u)], 2152f, global1[_wgslsmith_index_u32(0u, 26u)], -853f) * vec4<f32>(259f, 489f, global1[_wgslsmith_index_u32(98963u, 26u)], -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], -299f, -661f), vec4<f32>(-693f, -1154f, -106f, global1[_wgslsmith_index_u32(u_input.a.x, 26u)])))))));
}

