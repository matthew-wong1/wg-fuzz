struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 28> = array<i32, 28>(9557i, 26023i, i32(-2147483648), -4047i, 0i, 1i, 17218i, -45286i, 22366i, 0i, 36369i, 2147483647i, 2147483647i, -1i, -1i, 30962i, 1i, i32(-2147483648), 2147483647i, -7758i, -1i, 0i, 16332i, 1i, i32(-2147483648), 1i, 1i, 2147483647i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<i32>, 12>();
    global1 = array<vec2<i32>, 12>();
    var var_0 = global2.a;
    let var_1 = Struct_1(!global2.a);
    var_0 = !(!(!(!vec4<bool>(false, true, global2.a.x, var_0.x))));
    return Struct_1(var_1.a);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    global0 = array<vec2<f32>, 21>();
    let var_0 = Struct_2(-549f, _wgslsmith_f_op_f32(-730f - _wgslsmith_f_op_f32(-429f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.x)))))), (_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, global3[_wgslsmith_index_u32(u_input.a, 28u)], 0i), firstTrailingBit(vec3<i32>(u_input.b.x, 0i, u_input.b.x))) | ~select(vec3<i32>(global3[_wgslsmith_index_u32(44708u, 28u)], 2147483647i, u_input.b.x), vec3<i32>(2147483647i, -2065i, global3[_wgslsmith_index_u32(75064u, 28u)]), global2.a.x)) & (-select(vec3<i32>(global3[_wgslsmith_index_u32(35559u, 28u)], 15755i, 1i), vec3<i32>(global3[_wgslsmith_index_u32(22148u, 28u)], global3[_wgslsmith_index_u32(64082u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]), global2.a.yzx) << (~(vec3<u32>(58515u, 14093u, 83381u) | vec3<u32>(u_input.a, 0u, 89675u)) % vec3<u32>(32u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * var_0.b))))), _wgslsmith_f_op_f32(f32(-1f) * -2457f), 1000f);
    let var_2 = !(false || !global2.a.x);
    var var_3 = arg_1;
    return arg_0.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global0 = array<vec2<f32>, 21>();
    var var_0 = Struct_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-533f)) * _wgslsmith_f_op_f32(arg_2 * arg_2)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_2) + -732f)) >= arg_2);
    var var_1 = Struct_3(vec2<i32>(abs(0i), u_input.b.x), func_2(), 0u, ~_wgslsmith_mult_i32(-(~(-1i)), firstLeadingBit(0i)), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 1u >> (_wgslsmith_sub_u32(arg_0.x, 55516u) % 32u)), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.a << (arg_0.x % 32u), ~4294967295u), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 0u, 27877u, 0u), firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, 21553u)))), 21446u));
    let var_2 = max(var_1.c, _wgslsmith_sub_u32(25837u, _wgslsmith_div_u32(var_1.e.x, 24564u))) >> (~4294967295u % 32u);
    let var_3 = func_2().a.zy;
    return arg_1.a.wy;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = any(func_4(countOneBits(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(1u, u_input.a), vec2<u32>(90576u, u_input.a)), ~vec2<u32>(u_input.a, 0u), global2.a.zy)), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 21u)], 231f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec2<f32>(992f, 705f), -897f)))))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-572f, 1000f, -1756f))))), 37809u, 11503i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(arg_0, 28u)], 0i), -80051i, 2147483647i, 105495i), _wgslsmith_mod_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(arg_0, 28u)], u_input.b.x, global3[_wgslsmith_index_u32(u_input.a, 28u)], 1i), _wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 28u)], 22390i, -3544i, -7542i), vec4<i32>(global3[_wgslsmith_index_u32(arg_0, 28u)], -1i, -45790i, 29516i))) >> (~(vec4<u32>(arg_0, 0u, 1506u, 43217u) ^ vec4<u32>(46799u, u_input.a, arg_0, 57408u)) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(3989u, 1u, u_input.a, 17615u)), ~vec4<u32>(~13943u, u_input.a >> (4294967295u % 32u), ~46800u, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 12>();
    global0 = array<vec2<f32>, 21>();
    global1 = array<vec2<i32>, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1942f + -788f), -335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(831f - -2082f)))));
    global1 = array<vec2<i32>, 12>();
    var var_1 = Struct_1(!(!(!select(vec4<bool>(global2.a.x, true, global2.a.x, global2.a.x), global2.a, true))));
    let var_2 = Struct_2(var_0.x, 1744f, select(vec3<i32>(reverseBits(-u_input.b.x), 1i, max(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(u_input.a, 28u)], 31947i, -2147483647i), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.a, 28u)], 57126i))), -(~(-vec3<i32>(global3[_wgslsmith_index_u32(42416u, 28u)], -19749i, global3[_wgslsmith_index_u32(u_input.a, 28u)]))), true));
    var_1 = Struct_1(vec4<bool>(false, -2581f == var_0.x, any(select(!global2.a.wzw, vec3<bool>(false, var_1.a.x, var_1.a.x), 16414u <= u_input.a)), false));
    let x = u_input.a;
    s_output = func_1(29769u);
}

