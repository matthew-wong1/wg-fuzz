struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(16758i, -39454i, -1i), vec3<i32>(i32(-2147483648), 0i, -58601i), vec3<i32>(-7497i, 1i, -11466i), vec3<i32>(2147483647i, 1834i, -3179i), vec3<i32>(-1i, i32(-2147483648), -1447i), vec3<i32>(-1i, -43478i, -29586i), vec3<i32>(42232i, 0i, -10386i), vec3<i32>(-72999i, -8582i, -24514i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(-13390i, 4714i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1040i, i32(-2147483648)));

var<private> global1: Struct_2;

var<private> global2: array<u32, 9> = array<u32, 9>(68254u, 4294967295u, 99657u, 4294967295u, 0u, 1u, 22555u, 18268u, 132118u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b, -742f, _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-arg_0.b))) * _wgslsmith_f_op_vec3_f32(sign(global1.c.b.wxz)));
    var var_1 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(0u, 9u)], global1.c.d.x, global1.c.d.x) >> (_wgslsmith_mod_vec4_u32(arg_0.a.c.d, vec4<u32>(49376u, 23049u, 13524u, 1u)) % vec4<u32>(32u)), vec4<u32>(1u, _wgslsmith_clamp_u32(5800u, arg_0.d.x, global2[_wgslsmith_index_u32(64344u, 9u)]), 1u, reverseBits(237u))), firstLeadingBit(global1.c.d ^ ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.d, 9u)], 9u)], 9u)], 9u)], 4294967295u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48685u, 9u)], 9u)], 9u)]))));
    let var_2 = abs(u_input.d);
    return ~select(-2147483647i, _wgslsmith_add_i32(var_2.x, i32(-1i) * -6414i), true) | var_2.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = func_3(Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(global1.c.b.x - -659f), Struct_1(-global1.c.a, vec4<f32>(1867f, global1.b, global1.c.b.x, -225f), vec4<f32>(global1.c.c.x, 206f, -213f, global1.a), abs(vec4<u32>(1u, 4294967295u, 4294967295u, global2[_wgslsmith_index_u32(global1.c.d.x, 9u)])), global1.c.e), ~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global1.d, 9u)], 0u), 9u)], global1.e), -776f, vec3<i32>(_wgslsmith_clamp_i32(global1.c.e, -7624i, 217i), ~(-44109i), global1.c.a) << ((_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(global1.d, 36582u, 1u)) & select(global1.c.d.wwy, global1.c.d.wzw, false)) % vec3<u32>(32u)), global1.c.d));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.d.x, ~global1.c.e), -(vec2<i32>(-1i) * -min(u_input.c, vec2<i32>(2147483647i, -2147483647i))));
    var_0 = func_3(Struct_4(Struct_2(global1.a, global1.c.b.x, Struct_1(_wgslsmith_mult_i32(var_1, u_input.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, 706f, global1.c.c.x, 842f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.c.b.x, 294f, 319f)), countOneBits(vec4<u32>(global1.d, 0u, 0u, global1.d)), abs(var_1)), abs(1u), vec3<bool>(select(global1.e.x, global1.e.x, true), true, global1.e.x)), _wgslsmith_div_f32(1575f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), select(_wgslsmith_clamp_vec3_i32(select(u_input.d.xyw, global0[_wgslsmith_index_u32(global1.d, 11u)], global1.e.x), abs(vec3<i32>(var_1, var_1, -1i)), -global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 11u)]), vec3<i32>(~u_input.d.x, _wgslsmith_mod_i32(global1.c.a, global1.c.e), var_1), !global1.e.x), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.d, 8045u, global1.c.d.x, 59765u), vec4<u32>(global2[_wgslsmith_index_u32(global1.d, 9u)], global2[_wgslsmith_index_u32(global1.d, 9u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.d, 9u)], 9u)]) ^ vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62166u, 9u)], 9u)], 9u)], global2[_wgslsmith_index_u32(63624u, 9u)], 50388u, global1.c.d.x)))));
    let var_2 = Struct_4(Struct_2(845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f * -684f)), global1.c, 81273u, select(vec3<bool>(!global1.e.x, u_input.a.x >= 35665i, all(vec4<bool>(true, global1.e.x, global1.e.x, global1.e.x))), vec3<bool>(global1.e.x && false, global1.e.x && true, global1.e.x), false)), global1.b, global0[_wgslsmith_index_u32(~max(1u, global2[_wgslsmith_index_u32(abs(4294967295u), 9u)] >> (global1.c.d.x % 32u)), 11u)], ~select(~vec4<u32>(global2[_wgslsmith_index_u32(18205u, 9u)], 0u, global2[_wgslsmith_index_u32(56481u, 9u)], 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(32241u, global1.d, global1.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)]), global1.c.d), !all(global1.e)));
    return vec3<bool>(!all(select(vec2<bool>(var_2.a.e.x, var_2.a.e.x), vec2<bool>(global1.e.x, global1.e.x), all(global1.e))), select(-9708i, -31857i, true) > ~_wgslsmith_mod_i32(~var_2.a.c.e, global1.c.a), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2944f), _wgslsmith_f_op_f32(min(global1.b, global1.c.b.x))))) >= global1.a);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = any(func_2());
    let var_1 = ~u_input.d.x;
    let var_2 = 7477i <= global1.c.e;
    var var_3 = func_2().x;
    var var_4 = vec2<u32>(~global1.c.d.x, ~(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global1.c.d.x, 9u)], 0u)));
    return Struct_2(global1.c.c.x, -816f, global1.c, _wgslsmith_div_u32(arg_2.x, arg_2.x), vec3<bool>(true, all(!func_2()), !arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!vec4<bool>(global1.e.x, global1.b == -182f, !global1.e.x, true)));
    let var_1 = func_1(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~select(0u, global1.d, global1.e.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(3835u, 11431u, global2[_wgslsmith_index_u32(63734u, 9u)], 78490u), global1.c.d), 9u)]), 9u)], 1u), select(_wgslsmith_mult_vec2_u32(global1.c.d.zw, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global1.d, global1.d, 110591u), global1.c.d), global2[_wgslsmith_index_u32(1u, 9u)])), countOneBits(_wgslsmith_div_vec2_u32(global1.c.d.wz & vec2<u32>(global1.d, 4294967295u), global1.c.d.zy >> (vec2<u32>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(global1.d, 9u)]) % vec2<u32>(32u)))), vec2<bool>(!(!global1.e.x), any(vec2<bool>(false, global1.e.x)))), vec4<u32>(global1.d, ~abs(global1.d), select(firstLeadingBit(4294967295u), _wgslsmith_add_u32(4294967295u | global1.d, ~global2[_wgslsmith_index_u32(3468u, 9u)]), global1.e.x), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(14937u << (~global2[_wgslsmith_index_u32(1u, 9u)] % 32u), 9u)], ~global2[_wgslsmith_index_u32(~4294967295u, 9u)])), global1.e);
    var var_2 = vec2<u32>(firstLeadingBit(1u), global1.d);
    let var_3 = func_1(global1.d, ~(~global1.c.d.zx), vec4<u32>(reverseBits(17015u), global2[_wgslsmith_index_u32(4709u, 9u)], ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(44209u, 0u) << (~var_1.d % 32u), 9u)], 12738u), !vec3<bool>(true, select(any(vec3<bool>(true, true, false)), func_2().x, all(vec4<bool>(global1.e.x, false, true, global1.e.x))), global1.e.x));
    var var_4 = select(vec3<bool>(true, true, var_3.e.x), !func_1((0u >> (var_2.x % 32u)) | var_2.x, var_3.c.d.wx, global1.c.d, global1.e).e, true);
    global1 = var_1;
    var var_5 = var_3.c.e;
    global1 = func_1(max(~13090u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, 22044u), var_3.c.d.zx)) | reverseBits(_wgslsmith_add_u32(var_1.c.d.x, var_2.x))), var_3.c.d.zx, ~vec4<u32>(var_3.c.d.x, abs(1u), _wgslsmith_div_u32(76692u, var_3.d), _wgslsmith_dot_vec4_u32(global1.c.d, var_3.c.d) << (_wgslsmith_dot_vec4_u32(vec4<u32>(135u, var_2.x, global2[_wgslsmith_index_u32(1u, 9u)], 0u), vec4<u32>(global1.d, global1.c.d.x, 4294967295u, var_1.c.d.x)) % 32u)), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_3.d, global2[_wgslsmith_index_u32(75725u, 9u)], ~(~0u & var_2.x), reverseBits(abs(global1.d))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.b)), -1509f), u_input.d.zxz, vec2<i32>(var_3.c.a, 0i ^ abs(select(32840i, var_3.c.a, true))), (var_2.x ^ ~(var_3.c.d.x << (28718u % 32u))) ^ (func_1(firstLeadingBit(66580u), vec2<u32>(1u, var_2.x), ~var_1.c.d, func_2()).c.d.x & 24231u));
}

