struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(false, 1u), Struct_1(false, 34339u), Struct_1(true, 75852u), Struct_1(false, 0u), Struct_1(true, 70240u), Struct_1(true, 1u), Struct_1(true, 0u), Struct_1(true, 47035u), Struct_1(true, 4294967295u), Struct_1(false, 1u), Struct_1(true, 1u), Struct_1(false, 4294967295u), Struct_1(true, 32865u), Struct_1(true, 36338u), Struct_1(true, 31739u), Struct_1(true, 0u), Struct_1(false, 27033u), Struct_1(true, 1u), Struct_1(false, 0u));

var<private> global2: u32 = 11966u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    let var_0 = u_input.a.x;
    return !vec2<bool>(false | arg_1.a, arg_1.a);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> i32 {
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1898f, 123f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, arg_1.d)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-359f, 565f))))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1335f), -1446f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -623f)))));
    let var_1 = select(vec4<bool>(all(!select(arg_1.b.wzy, vec3<bool>(arg_0, false, true), true)), any(!vec4<bool>(arg_0, false, false, arg_1.c.x)), arg_0, all(select(arg_1.b.wyx, vec3<bool>(false, arg_1.c.x, arg_1.c.x), select(vec3<bool>(true, true, true), arg_1.b.zzz, arg_0)))), select(vec4<bool>(false | (var_0.x > -397f), all(vec4<bool>(arg_0, arg_1.c.x, arg_1.c.x, true)) | arg_0, true, all(arg_1.b.wx)), !(!vec4<bool>(arg_0, false, true, arg_0)), false), false);
    global1 = array<Struct_1, 19>();
    return abs(0i);
}

fn func_2(arg_0: u32) -> u32 {
    global0 = -159f;
    let var_0 = max(vec4<i32>(-u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), (vec4<i32>(u_input.a.x, -49969i, 2147483647i, 2653i) & select(vec4<i32>(u_input.a.x, -62531i, 57582i, 14580i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, false))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(17340i, 2147483647i, u_input.a.x, 1i) << (vec4<u32>(13540u, u_input.d, 0u, arg_0) % vec4<u32>(32u)), vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, u_input.a.x) ^ vec4<i32>(1i, 0i, 73400i, -2147483647i))) & vec4<i32>(func_4(true, Struct_3(~1u, vec4<bool>(false, false, true, true), func_3(vec4<u32>(22012u, 0u, 14347u, arg_0), global1[_wgslsmith_index_u32(1u, 19u)], u_input.b.x), _wgslsmith_f_op_f32(min(538f, -873f)))), u_input.a.x, -10347i & _wgslsmith_div_i32(select(u_input.a.x, u_input.a.x, false), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -35230i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, -23509i, u_input.a.x))), u_input.a.x);
    var var_1 = ~24945u;
    var var_2 = select(vec3<bool>(false, all(vec3<bool>(true, false, true)), true), select(vec3<bool>(func_3(~vec4<u32>(arg_0, u_input.b.x, 20991u, 4294967295u), global1[_wgslsmith_index_u32(max(56225u, u_input.c.x), 19u)], ~40292u).x, true, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(all(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, false))), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), true), !any(vec3<bool>(true, false, true)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + 1226f), -1516f, var_2.x || var_2.x)))), -301f);
    return 1u;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = 699f;
    var var_1 = !arg_0.b;
    global2 = abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(~0u, 0u), func_2(4294967295u))) << (~(~(~firstTrailingBit(47152u))) % 32u);
    var var_2 = Struct_2(!arg_0.b.x, -_wgslsmith_clamp_vec2_i32(abs(~vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a, u_input.a), _wgslsmith_div_f32(-662f, arg_0.d), u_input.e.x, Struct_1(!var_1.x, _wgslsmith_sub_u32(arg_0.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 70012u, 0u, 77155u), vec4<u32>(arg_0.a, 0u, u_input.e.x, u_input.c.x)), firstTrailingBit(41984u), u_input.d))));
    global1 = array<Struct_1, 19>();
    return vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * var_2.c), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    var var_0 = u_input.e.x << (u_input.e.x % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(-1381f * _wgslsmith_f_op_f32(floor(1849f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1386f * -1000f), _wgslsmith_div_f32(-1000f, 2215f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_3(u_input.b.x, vec4<bool>(false, false, true, false), vec2<bool>(true, false), -336f), u_input.a))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1576f, _wgslsmith_f_op_f32(382f + 1176f), _wgslsmith_f_op_f32(trunc(-174f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1265f, 1318f, 546f)))), vec3<bool>(true, all(vec3<bool>(false, true, false)), false)))));
    let var_2 = Struct_2(!(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-158f)) * var_1.x)) + 302f), firstLeadingBit(4294967295u) >> (_wgslsmith_sub_u32(u_input.b.x, 0u | (u_input.d << (u_input.e.x % 32u))) % 32u), Struct_1(!all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), reverseBits(~(~u_input.c.x))));
    let var_3 = select(!vec3<bool>(!(!var_2.a), true && (var_2.a || var_2.e.a), true), !(!(!(!vec3<bool>(false, false, var_2.a)))), !var_2.e.a);
    let var_4 = Struct_1(true, ~(~u_input.d));
    var var_5 = ~(-1435i);
    let var_6 = vec3<f32>(_wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + var_1.x))), _wgslsmith_f_op_f32(step(758f, var_1.x)), -598f);
    var var_7 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.e.x, 1u, 111532u), max(68620u, _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.c.x, 3521u, 4294967295u)))), -vec4<i32>(var_2.b.x, abs(u_input.a.x), select(~(-1i), u_input.a.x, true | var_3.x), _wgslsmith_mult_i32(countOneBits(-571i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), ~var_4.b, u_input.b.x, var_1.x);
}

