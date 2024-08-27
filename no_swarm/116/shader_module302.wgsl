struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<u32, 21> = array<u32, 21>(4294967295u, 60242u, 14487u, 4294967295u, 1u, 16432u, 76301u, 36683u, 34771u, 1u, 1u, 95089u, 4294967295u, 456u, 2298u, 1u, 4294967295u, 65712u, 1u, 4294967295u, 29560u);

var<private> global2: i32 = 0i;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> bool {
    let var_0 = vec3<i32>(11627i, 1i >> ((~reverseBits(u_input.b.x) | ~(~20842u)) % 32u), _wgslsmith_add_i32(-47159i, countOneBits(u_input.c.x)));
    global2 = ~u_input.c.x;
    var var_1 = !(!(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 18u)], false, global0[_wgslsmith_index_u32(44543u, 18u)], global0[_wgslsmith_index_u32(2601u, 18u)])))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)));
    let var_3 = var_1.x && true;
    return !(!var_3);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global1 = array<u32, 21>();
    let var_0 = (!(true & any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], true, global0[_wgslsmith_index_u32(42979u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]))) & true) & !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(74860u, arg_1.b.x), arg_0.a.x), 18u)];
    global1 = array<u32, 21>();
    global1 = array<u32, 21>();
    global0 = array<bool, 18>();
    return vec4<u32>(~(global1[_wgslsmith_index_u32(4294967295u, 21u)] >> (~107117u % 32u)), ~abs(_wgslsmith_dot_vec3_u32(reverseBits(arg_0.a.zxz), _wgslsmith_add_vec3_u32(arg_0.a.wwy, arg_0.a.yxw))), global1[_wgslsmith_index_u32(max(arg_1.b.x, 12133u), 21u)], u_input.b.x);
}

fn func_2() -> vec2<i32> {
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(reverseBits(max(firstTrailingBit(vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(46460u, 21u)], u_input.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x), vec4<u32>(6236u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 75984u, u_input.b.x)))), ~min(func_3(Struct_1(vec4<u32>(38195u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], u_input.b.x), u_input.b), Struct_1(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), u_input.b)), ~vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], u_input.b.x, 0u))), vec2<u32>(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 8049u, u_input.b.x), vec3<u32>(0u, 22223u, global1[_wgslsmith_index_u32(u_input.b.x, 21u)])), 21u)] & _wgslsmith_mod_u32(14195u, global1[_wgslsmith_index_u32(1u, 21u)])), 4294967295u));
    var var_1 = Struct_1(vec4<u32>(21686u, _wgslsmith_add_u32(~48077u, ~u_input.b.x ^ 0u), 1u, ~_wgslsmith_mod_u32(~1u, u_input.b.x)), var_0.a.yx);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1396f, 2296f)), _wgslsmith_f_op_f32(-382f + -1016f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f * 1099f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-637f)) * 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2408f - -176f), _wgslsmith_f_op_f32(ceil(825f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-229f, 1077f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1471f, 143f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-316f, 215f), vec2<f32>(-1636f, -983f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1027f, -296f) + vec2<f32>(-1239f, 589f)) - vec2<f32>(151f, -1262f)))));
    return _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zx), ~u_input.a.yz << (~var_1.b % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.b);
    var_0 = _wgslsmith_sub_vec2_u32(~(~select(u_input.b, u_input.b, vec2<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(32707u, 18u)])) >> (u_input.b % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(u_input.b, firstTrailingBit(~abs(u_input.b))));
    var var_1 = u_input.c.x;
    global1 = array<u32, 21>();
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_2()), vec4<i32>(firstTrailingBit(reverseBits(-u_input.c.x)), u_input.c.x, ((u_input.c.x | u_input.a.x) | firstTrailingBit(2147483647i)) ^ _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x), global1[_wgslsmith_index_u32(~func_3(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.b.x, var_0.x, 4294967295u), vec4<u32>(u_input.b.x, 615u, 16156u, global1[_wgslsmith_index_u32(u_input.b.x, 21u)])), firstLeadingBit(vec2<u32>(0u, 0u))), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(3909u, 21u)], var_0.x, var_0.x, var_0.x), _wgslsmith_div_vec2_u32(u_input.b, u_input.b))).x, 21u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-485f - 582f), _wgslsmith_f_op_f32(1564f - -894f), 347f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1297f, -725f, 515f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(2575f, 1272f), _wgslsmith_f_op_f32(f32(-1f) * -194f), -486f)), vec3<bool>(global0[_wgslsmith_index_u32(33636u, 18u)], global0[_wgslsmith_index_u32(var_0.x, 18u)], any(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 18u)], global0[_wgslsmith_index_u32(var_0.x, 18u)]), true))))), -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.c.wyz, firstLeadingBit(vec3<i32>(u_input.a.x, 43911i, -1i))), countOneBits(vec3<i32>(u_input.a.x, 1i, -2147483647i)), abs(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-25527i, 2147483647i, u_input.c.x)))));
}

