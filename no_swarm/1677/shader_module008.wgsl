struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<u32>(14218u, 0u), 0i), Struct_1(vec2<u32>(2295u, 49265u), 1i), Struct_1(vec2<u32>(4294967295u, 0u), -31111i), Struct_1(vec2<u32>(1u, 75405u), 38643i), Struct_1(vec2<u32>(3675u, 79595u), i32(-2147483648)), Struct_1(vec2<u32>(23425u, 18883u), 30155i), Struct_1(vec2<u32>(1u, 1u), 2147483647i), Struct_1(vec2<u32>(100351u, 44691u), 66015i), Struct_1(vec2<u32>(4294967295u, 17944u), i32(-2147483648)));

var<private> global1: array<bool, 8> = array<bool, 8>(false, false, false, false, false, true, false, true);

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 1u), -7297i);

var<private> global3: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    let var_0 = ~u_input.b.x;
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(~1u, ~4294967295u, _wgslsmith_mult_u32(global2.a.x, ~0u)), 1u), 31407i);
    let var_2 = _wgslsmith_dot_vec2_u32(~abs(select(var_1.a, vec2<u32>(u_input.c, var_1.a.x), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]))), select(vec2<u32>(16338u, max(var_1.a.x, var_1.a.x)), vec2<u32>(u_input.c, global2.a.x), vec2<bool>(u_input.b.x < 10927i, true)) & (_wgslsmith_div_vec2_u32(firstLeadingBit(var_1.a), ~vec2<u32>(u_input.a.x, var_1.a.x)) & (global2.a & vec2<u32>(u_input.a.x, var_1.a.x))));
    global0 = array<Struct_1, 9>();
    let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(~5339u), 9u)];
    return 21202u;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> vec2<u32> {
    global2 = Struct_1(~vec2<u32>(global2.a.x, global2.a.x), _wgslsmith_mult_i32(2470i, -(global2.b & -2147483647i) & -1i));
    var var_0 = Struct_1(~(~(~(global2.a ^ vec2<u32>(arg_2, u_input.c)))), -50698i);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(4294967295u), func_2()), 9u)];
    let var_2 = firstTrailingBit(_wgslsmith_add_u32(var_1.a.x, _wgslsmith_mult_u32(abs(u_input.a.x), var_1.a.x) & (0u ^ (var_1.a.x | 1u))));
    let var_3 = vec2<i32>(select(abs(-_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), _wgslsmith_div_i32(var_0.b, var_0.b), false), var_0.b);
    return global2.a;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = ~4294967295u;
    global0 = array<Struct_1, 9>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~u_input.c, ~firstLeadingBit(0u >> (arg_0.x % 32u))), 9u)];
    var_0 = 55304u;
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xyz, u_input.a.ywy) << (u_input.a.xzx % vec3<u32>(32u)), arg_0.xyw), vec3<u32>(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(21767u, var_1.a.x)), vec2<u32>(var_1.a.x, abs(global2.a.x))), ~_wgslsmith_add_u32(arg_0.x, func_1(2066f, -846f, u_input.a.x).x), ~firstLeadingBit(arg_0.x) << (~_wgslsmith_mod_u32(global2.a.x, arg_0.x) % 32u))), 9u)];
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -641f), -322f, 6779u), select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), global2.a), ~vec2<u32>(1u, 30070u), false) & ~u_input.a.xx), _wgslsmith_mod_i32(func_3(select(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, global2.a.x, global2.a.x), u_input.a), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(11030u, 8u)], true), vec4<bool>(global1[_wgslsmith_index_u32(global2.a.x, 8u)], global1[_wgslsmith_index_u32(u_input.c, 8u)], false, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(35657u, 8u)], global1[_wgslsmith_index_u32(global2.a.x, 8u)]))), vec2<bool>(any(vec4<bool>(true, false, false, false)), global1[_wgslsmith_index_u32(~u_input.c, 8u)])), ~(_wgslsmith_div_i32(global2.b, 2147483647i) & (u_input.d.x >> (54880u % 32u)))));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u >> (1u % 32u), 9u)];
    let var_2 = Struct_1(vec2<u32>(~firstLeadingBit(_wgslsmith_clamp_u32(var_1.a.x, 1u, 4294967295u)), ~var_0.a.x), -1i);
    let var_3 = u_input.a.xwx;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1667f) + _wgslsmith_f_op_f32(floor(316f)));
    global1 = array<bool, 8>();
    var var_5 = Struct_1(_wgslsmith_div_vec2_u32(abs(~min(var_0.a, global2.a)), vec2<u32>(var_3.x, func_2())), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_5.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_4, 125f) - vec4<f32>(var_4, var_4, 182f, var_4)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4, -605f, var_4, -459f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4, 602f, -419f, -239f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, -1791f, -2392f, var_4) - vec4<f32>(var_4, 2012f, var_4, var_4))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-617f)) * 382f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f - var_4))), u_input.d.zz);
}

