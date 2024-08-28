struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -356f;

var<private> global1: array<vec3<i32>, 17>;

var<private> global2: array<f32, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 13u)]) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), global2[_wgslsmith_index_u32((u_input.a.x & 4294967295u) & u_input.a.x, 13u)]))));
    global2 = array<f32, 13>();
    global1 = array<vec3<i32>, 17>();
    let var_0 = u_input.a.x;
    global1 = array<vec3<i32>, 17>();
    return 0i;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_3(max(-arg_1, -(u_input.c ^ vec4<i32>(0i, -1i, 14170i, arg_0))) << ((vec4<u32>(10519u, _wgslsmith_div_u32(4294967295u, 48229u), u_input.a.x >> (u_input.a.x % 32u), 4294967295u) & u_input.a) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x & 1u), u_input.a.xy) >> (~abs(vec2<u32>(firstTrailingBit(19877u), 65511u)) % vec2<u32>(32u));
    var var_2 = Struct_4(Struct_1(any(vec4<bool>(false, any(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, false)), false))), abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, arg_0, 2147483647i, arg_1.x) | arg_1, ~var_0.a), -(~var_0.a.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, arg_1.x, var_0.a.x), u_input.c), arg_1.x))));
    global2 = array<f32, 13>();
    var_0 = Struct_3(vec4<i32>(i32(-1i) * -43773i, select(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, 8667i), vec2<i32>(1i, 2491i)), -var_0.a.x, false), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -50125i, -17255i, 0i), ~vec4<i32>(-29821i, arg_1.x, u_input.b.x, var_0.a.x)) & (~28113i ^ u_input.d.x), ~(2147483647i | arg_1.x) >> (~var_1.x % 32u)));
    return u_input.a.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = 100960u;
    global0 = global2[_wgslsmith_index_u32(func_4(-max(firstTrailingBit(u_input.d.x >> (var_0 % 32u)), ~u_input.c.x), vec4<i32>(u_input.b.x << (u_input.a.x % 32u), ~func_3(Struct_3(u_input.c), -28938i), 2147483647i ^ min(min(0i, u_input.c.x), -2147483647i), ~26871i)), 13u)];
    global0 = _wgslsmith_f_op_f32(-803f * global2[_wgslsmith_index_u32(19562u, 13u)]);
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, _wgslsmith_dot_vec3_u32(u_input.a.yzx, _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, var_0, var_0), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~5620u, firstTrailingBit(_wgslsmith_mod_u32(~var_0, _wgslsmith_dot_vec3_u32(u_input.a.wxw, u_input.a.xww)))), ~vec4<u32>(u_input.a.x, ~1u, 38026u, _wgslsmith_clamp_u32(reverseBits(var_0), 25402u ^ u_input.a.x, max(49048u, 22299u))));
    global2 = array<f32, 13>();
    return Struct_1(false);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: f32) -> vec2<bool> {
    let var_0 = arg_0.a;
    var var_1 = u_input.b;
    let var_2 = u_input.a.wyz;
    global2 = array<f32, 13>();
    global1 = array<vec3<i32>, 17>();
    return select(!vec2<bool>(func_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(47144u, 35033u, var_2.x), 13u)]).a, all(!vec3<bool>(var_0, arg_0.a, arg_0.a))), !select(vec2<bool>(true, true), select(vec2<bool>(arg_0.a, var_0), vec2<bool>(arg_2, arg_0.a), arg_2), !(!vec2<bool>(arg_0.a, arg_2))), true);
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = all(func_5(func_2(1850f), 23988i, false, global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(select(u_input.a.xxx, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, true, false)), ~vec3<u32>(u_input.a.x, u_input.a.x, 28591u))), 13u)]));
    global2 = array<f32, 13>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 13u)], -1223f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global2[_wgslsmith_index_u32(43258u, 13u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1011f, global2[_wgslsmith_index_u32(1u, 13u)]), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], arg_0)) * vec2<f32>(arg_0, 586f)))));
    var var_2 = Struct_2(vec2<bool>(true, var_1.x < var_1.x));
    global2 = array<f32, 13>();
    return Struct_4(func_2(2177f), vec3<i32>(-max(_wgslsmith_mult_i32(-14193i, u_input.c.x), u_input.d.x | u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(7946i, 7741i, u_input.c.x), vec3<i32>(u_input.c.x, -17027i, reverseBits(u_input.b.x))), max(1i, abs(-16659i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -508f;
    let var_0 = 1102f;
    var var_1 = func_1(1109f);
    var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f * global2[_wgslsmith_index_u32(1u, 13u)])));
    let var_2 = Struct_4(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(117f + _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 429f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(555f)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 13u)])))))).a, vec3<i32>(-var_1.b.x, select(u_input.d.x, -2147483647i, !var_1.a.a), -61414i));
    global2 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x));
}

