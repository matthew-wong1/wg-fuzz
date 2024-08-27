struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<vec2<bool>, 11>;

var<private> global2: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = true;
    global2 = _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i >> (u_input.b % 32u), _wgslsmith_mod_i32(-20879i, -9217i), ~global2.x, u_input.a), vec4<i32>(_wgslsmith_mod_i32(-global2.x, ~global2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, reverseBits(-1i), -13888i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(15365i, u_input.a, u_input.a), global2.wzy)), abs(-max(u_input.a, 2147483647i)), _wgslsmith_div_i32(select(global2.x, global2.x, false), u_input.a) >> (15371u % 32u)));
    global2 = -vec4<i32>(~(~max(global2.x, global2.x)), abs(abs(2147483647i)), global2.x, -_wgslsmith_sub_i32(-2147483647i, global2.x));
    global2 = vec4<i32>(u_input.a, -51380i, 1i, abs(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(global2.wyz, global2.yyz))));
    var var_1 = -abs(_wgslsmith_dot_vec3_i32(global2.yyw, global2.xzz));
    return abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global2.x, ~2147483647i, global2.x), vec4<i32>(53359i, global2.x, global2.x, global2.x) ^ vec4<i32>(global2.x, global2.x, -1i, global2.x)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 86287u, global0[_wgslsmith_index_u32(15657u, 17u)]) | firstTrailingBit(vec4<u32>(u_input.b, 0u, u_input.b, 13776u)), max(~vec4<u32>(0u, 1u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 0u, 6233u, global0[_wgslsmith_index_u32(u_input.b, 17u)])), ~vec4<u32>(1u, 75140u, u_input.b, 33280u)) % vec4<u32>(32u)));
}

fn func_2() -> Struct_2 {
    global2 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1210f, 455f, 1132f, -541f) - vec4<f32>(-205f, -554f, -1000f, -513f)))))));
    global2 = vec4<i32>(-(~u_input.a & 0i), -(~(-(global2.x >> (4294967295u % 32u)))), 25740i, abs(-u_input.a));
    global2 = -func_3(vec4<f32>(-283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1340f + 593f) * _wgslsmith_f_op_f32(step(1000f, -732f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-751f - -363f), _wgslsmith_f_op_f32(f32(-1f) * -1018f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-103f * -995f), -1747f))));
    var var_0 = _wgslsmith_sub_u32(1u, ~abs(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], 0u), 17u)], ~47400u), 17u)]));
    global2 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i & (-1i & global2.x), _wgslsmith_div_i32(1i | global2.x, abs(-24663i)), _wgslsmith_clamp_i32(1i, func_3(vec4<f32>(687f, 335f, 898f, -793f)).x, max(u_input.a, -24286i)), -u_input.a) << (vec4<u32>(abs(0u), u_input.b, 1u, min(2286u, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], 17u)], 26566u))) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(vec4<i32>(max(0i, global2.x), 1i, u_input.a, global2.x | 0i), vec4<i32>(select(u_input.a, 13773i, false), global2.x, 5014i, reverseBits(global2.x))));
    return Struct_2(~vec2<i32>(~select(0i, 26620i, false), u_input.a), Struct_1(select(!select(global1[_wgslsmith_index_u32(8870u, 11u)], global1[_wgslsmith_index_u32(u_input.b, 11u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30898u, 17u)], 11u)]), global1[_wgslsmith_index_u32(1278u, 11u)], true), !vec3<bool>(true, any(vec4<bool>(true, false, true, true)), true)), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b | _wgslsmith_dot_vec3_u32(vec3<u32>(32778u, 4023u, 13730u), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 17u)], 27256u)), 17u)], 59802u), 11u)], vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !select(false, false, true), true)), _wgslsmith_f_op_f32(-1f));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> i32 {
    var var_0 = Struct_4(Struct_3(func_2().c.b, arg_0, Struct_1(vec2<bool>(arg_0.b.a.x, !arg_0.c.b.x), arg_1.c.b), arg_1.b.b.x, arg_0.b), true, ~(~vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30031u, 17u)], 17u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(18409u, 17u)], 23637u, u_input.b, 1u), vec4<u32>(4294967295u, 1u, u_input.b, 4294967295u)), abs(u_input.b), _wgslsmith_div_u32(19525u, u_input.b))), abs(abs(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], 0u, 3898u) & 19125u)), (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(43677u, 1u, u_input.b) | ~u_input.b, 17u)] ^ u_input.b) & _wgslsmith_sub_u32(49974u, ~u_input.b | (u_input.b & 0u)));
    var var_1 = ~(abs(arg_0.a) << (var_0.c.zy % vec2<u32>(32u)));
    var_0 = Struct_4(var_0.a, all(vec4<bool>(var_0.a.b.b.b.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 17u)], 1u) >= ~var_0.d, arg_1.c.b.x, !arg_1.b.a.x & (u_input.b <= 36553u))), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 17u)]), var_0.d), countOneBits(_wgslsmith_div_u32(var_0.c.x, ~28605u)), ~var_0.c.x, var_0.c.x), ~u_input.b, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.b), select(1u, 50273u, true)), 17u)]);
    let var_2 = Struct_4(var_0.a, var_0.a.e.a.x, vec4<u32>(~var_0.e, global0[_wgslsmith_index_u32(~abs(1u), 17u)], firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~u_input.b, ~1u, u_input.b), vec4<u32>(global0[_wgslsmith_index_u32(var_0.d, 17u)], u_input.b, 44322u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(26457u, 17u)], 1u)))), var_0.d, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(select(~u_input.b, 47586u & var_0.e, true), abs(4294967295u)), 17u)]);
    let var_3 = var_0.c;
    return -global2.x;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_4 {
    global0 = array<u32, 17>();
    var var_0 = vec4<bool>(true, !(arg_0 || any(vec3<bool>(arg_0, arg_0, arg_0))), select(false, all(arg_3), false), true);
    global2 = vec4<i32>(arg_2.x, select(global2.x, 9229i, var_0.x && all(vec2<bool>(false, true))), -_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(arg_2.x, u_input.a, arg_2.x)), -28203i), func_4(func_2(), func_2(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(726f)), _wgslsmith_f_op_f32(floor(918f)), !arg_0))) & (i32(-1i) * -(global2.x >> (global0[_wgslsmith_index_u32(1u, 17u)] % 32u))));
    let var_1 = Struct_4(Struct_3(select(vec3<bool>(arg_0, arg_3.x, !arg_0), func_2().c.b, !(!arg_3)), Struct_2(global2.xy, func_2().c, Struct_1(!global1[_wgslsmith_index_u32(u_input.b, 11u)], vec3<bool>(arg_0, false, arg_3.x)), _wgslsmith_div_f32(-1703f, _wgslsmith_f_op_f32(ceil(-1777f)))), Struct_1(arg_3.yx, var_0.yxx), true, Struct_1(var_0.yz, arg_3)), select(select(false, arg_0 == all(vec4<bool>(false, arg_3.x, var_0.x, arg_0)), all(vec2<bool>(false, false))), all(!select(vec2<bool>(arg_0, arg_3.x), arg_3.xx, var_0.yy)), arg_3.x), ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(4697u, 17u)], 60965u, global0[_wgslsmith_index_u32(u_input.b, 17u)], u_input.b) >> (countOneBits(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.b, 17u)], 56814u, 4294967295u)) % vec4<u32>(32u)))), u_input.b, _wgslsmith_mult_u32(~_wgslsmith_div_u32(32658u, min(u_input.b, u_input.b)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], u_input.b)))));
    let var_2 = -2147483647i;
    return Struct_4(Struct_3(var_0.ywy, Struct_2(firstLeadingBit(_wgslsmith_mod_vec2_i32(arg_2, vec2<i32>(2147483647i, global2.x))), Struct_1(global1[_wgslsmith_index_u32(u_input.b | var_1.c.x, 11u)], vec3<bool>(false, false, false)), Struct_1(var_0.zy, select(arg_3, vec3<bool>(true, arg_3.x, arg_0), false)), _wgslsmith_div_f32(1211f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2().b, var_0.x, func_2().b), false, min(abs(~var_1.c), _wgslsmith_sub_vec4_u32(select(vec4<u32>(global0[_wgslsmith_index_u32(var_1.e, 17u)], u_input.b, 33906u, global0[_wgslsmith_index_u32(29704u, 17u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 17u)], 0u, 4294967295u), all(vec4<bool>(false, true, false, var_1.a.e.a.x))), vec4<u32>(0u, min(4294967295u, 1u), var_1.e, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], 17u)]))), reverseBits(min(36888u, abs(~29611u))), _wgslsmith_mult_u32(~u_input.b, ~(~(~11546u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, -198f, ((global2.xz & global2.wx) ^ global2.xx) << (vec2<u32>(4294967295u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], u_input.b), 17u)], u_input.b ^ 66343u)) % vec2<u32>(32u)), !vec3<bool>(!all(vec3<bool>(true, true, false)), ~u_input.b >= (33944u & u_input.b), true));
    let var_1 = 1u;
    global1 = array<vec2<bool>, 11>();
    let var_2 = (countOneBits(var_0.c) | _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(u_input.b, 17u)]), ~var_0.d, _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(1u, 1u, var_0.e, 31919u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(48293u, var_0.e), 17u)]), vec4<u32>(reverseBits(global0[_wgslsmith_index_u32(1u, 17u)]), abs(var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, u_input.b, 1u), var_0.c.zxx), ~u_input.b))) >> (~vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, ~62307u), 17u)], var_1, 42300u, 12919u) % vec4<u32>(32u));
    var var_3 = func_2().b;
    let var_4 = var_0.a.e.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.b.d * -1413f)))) - _wgslsmith_div_f32(func_2().d, _wgslsmith_f_op_f32(ceil(-1000f)))));
}

