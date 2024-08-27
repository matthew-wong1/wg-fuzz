struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
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

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1655f, 0u, -480f, 482f, vec3<bool>(false, true, true)), Struct_1(2791f, 1u, -1000f, -634f, vec3<bool>(false, true, false)), Struct_1(1566f, 1u, 649f, -278f, vec3<bool>(true, false, false)));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-1130f, 41754u, 1720f, 288f, vec3<bool>(false, false, true)), Struct_1(314f, 4294967295u, 223f, 161f, vec3<bool>(true, true, true)), Struct_1(-452f, 1u, 1068f, 685f, vec3<bool>(true, false, true)), Struct_1(565f, 4294967295u, 970f, 780f, vec3<bool>(false, true, false)), Struct_1(368f, 1u, 302f, 1789f, vec3<bool>(false, true, false)), Struct_1(732f, 0u, 593f, -355f, vec3<bool>(true, true, true)), Struct_1(-1000f, 0u, -1000f, -1275f, vec3<bool>(false, false, false)), Struct_1(-720f, 51711u, -855f, -441f, vec3<bool>(true, false, true)), Struct_1(1026f, 1u, -2313f, -890f, vec3<bool>(true, true, false)));

var<private> global2: f32 = 706f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.e.x;
    global1 = array<Struct_1, 9>();
    var var_1 = vec2<u32>(u_input.a.x, abs(1u ^ arg_0.b));
    var_0 = arg_0.e.x;
    global0 = array<Struct_1, 3>();
    return ~abs(u_input.a.x);
}

fn func_2() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(22604u, func_3(global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))), 9u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(var_0.b, ~_wgslsmith_mod_u32(4294967295u, firstLeadingBit(1u)))), 9u)];
    let var_1 = ~_wgslsmith_dot_vec2_i32(u_input.c, u_input.c) >> ((~(u_input.d.x >> (6942u % 32u)) | reverseBits(~4294967295u)) % 32u);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(var_0.c + 781f)));
    global1 = array<Struct_1, 9>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(-var_0.c)), var_0.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    global0 = array<Struct_1, 3>();
    global2 = arg_2.d;
    global0 = array<Struct_1, 3>();
    global2 = _wgslsmith_f_op_f32(func_2());
    var var_0 = _wgslsmith_f_op_f32(arg_2.a * arg_1.d);
    return arg_2.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-22039i, 1i | u_input.e, u_input.b), select(-vec3<i32>(u_input.e, -26722i, 23532i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.e), vec3<i32>(58762i, u_input.b, u_input.e)), arg_1.e.x)), -52336i, u_input.c.x);
    var var_1 = arg_1;
    global0 = array<Struct_1, 3>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~28293u, max(u_input.a.x, reverseBits(arg_0))), 3u)];
    let var_3 = Struct_1(var_1.d, 1u, _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + 576f) + arg_1.c)))), select(vec3<bool>(true, true, !arg_1.e.x), select(var_2.e, !vec3<bool>(var_2.e.x, true, true), true), var_0.x != 61742i));
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.b, ~1u), 9u)];
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: u32) -> vec3<bool> {
    var var_0 = ~arg_0.b;
    var var_1 = u_input.a.yy;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - -2146f), _wgslsmith_f_op_f32(arg_0.c * -240f))));
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1453f - var_2.x) * arg_0.a)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(func_1(vec3<u32>(var_1.x, 1u, 4294967295u), arg_0, global1[_wgslsmith_index_u32(0u, 9u)], 48267i), arg_0.b), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-629f * _wgslsmith_f_op_f32(-arg_0.c)))), !vec3<bool>(arg_1, true, true));
    return !vec3<bool>(var_3.e.x == !any(vec2<bool>(false, arg_1)), arg_0.e.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1420f, 1u, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-347f))))), _wgslsmith_f_op_f32(round(-1383f)), func_5(func_4(~func_1(vec3<u32>(4294967295u, 4062u, u_input.a.x), Struct_1(1000f, 55640u, 1000f, -573f, vec3<bool>(true, true, true)), Struct_1(1609f, 0u, -618f, 526f, vec3<bool>(false, true, true)), u_input.c.x), Struct_1(_wgslsmith_f_op_f32(-323f * -615f), ~u_input.d.x, -2331f, 225f, vec3<bool>(true, true, true))), true, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.e, -14460i), ~vec4<i32>(2147483647i, 1i, 1i, u_input.e)), i32(-1i) * -1i), func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -266f), u_input.d.x, _wgslsmith_f_op_f32(181f + -521f), 344f, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)))));
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(664f, _wgslsmith_f_op_f32(-var_0.a), var_0.e.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(546f)))), func_4(_wgslsmith_mod_u32(~(~4294967295u), func_4(60029u, Struct_1(var_0.a, var_0.b, var_0.d, var_0.a, var_0.e)).b), global0[_wgslsmith_index_u32(1u, 3u)]).b, var_0.c, var_0.a, !(!select(select(var_0.e, vec3<bool>(true, var_0.e.x, false), false), var_0.e, select(var_0.e.x, var_0.e.x, var_0.e.x))));
    var_0 = global0[_wgslsmith_index_u32(~(~countOneBits(~(44633u | var_1.b))), 3u)];
    var var_2 = var_1.c;
    let var_3 = abs(4294967295u);
    let var_4 = vec4<bool>(select(!var_1.e.x, !any(var_1.e.xy), all(var_0.e)) && (select(var_0.e.x, var_0.e.x, true) | var_1.e.x), _wgslsmith_div_i32(54025i, u_input.c.x >> (func_1(u_input.a.www, Struct_1(-1256f, var_1.b, var_0.d, -1287f, vec3<bool>(var_1.e.x, var_0.e.x, var_1.e.x)), Struct_1(var_1.a, u_input.a.x, var_0.d, var_0.c, vec3<bool>(var_1.e.x, var_1.e.x, true)), -2147483647i) % 32u)) > -_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -20062i, u_input.e, -4934i), -vec4<i32>(1i, -5710i, u_input.b, -1i)), false, var_0.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

