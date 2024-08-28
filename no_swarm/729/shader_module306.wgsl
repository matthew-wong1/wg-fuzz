struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(i32(-2147483648), 1i, 0i, -1133i, i32(-2147483648), i32(-2147483648), 14247i, i32(-2147483648), -46337i, -28662i, i32(-2147483648), 2147483647i, -1i, -49319i, 33914i, 0i, 0i, -32989i, 80685i, 2147483647i);

var<private> global1: array<Struct_4, 17>;

var<private> global2: Struct_3;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = 1i;
    let var_1 = Struct_3(global2.a, -_wgslsmith_clamp_i32(-24491i, global0[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~13401u, 20u)], ~(-11639i))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global2.c.a, vec4<f32>(502f, 429f, -820f, global2.c.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(sign(310f)), -1941f, _wgslsmith_f_op_f32(-1095f + _wgslsmith_f_op_f32(f32(-1f) * -1322f)))));
    var_0 = global2.b << (_wgslsmith_mult_u32(~57188u, ~((var_1.a | 6786u) | ~38355u)) % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.c.a.xzy);
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(129f, _wgslsmith_f_op_f32(ceil(var_2.x)), var_1.c.a.x) - vec3<f32>(-1135f, -406f, _wgslsmith_f_op_f32(-var_1.c.a.x))))));
    return _wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-32934i, u_input.c.x, 0i)), abs(vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(7263u, 20u)], global0[_wgslsmith_index_u32(15074u, 20u)]))), max(abs((vec3<i32>(-25390i, global2.b, 2147483647i) >> (vec3<u32>(var_1.a, 4294967295u, 4294967295u) % vec3<u32>(32u))) & (vec3<i32>(-12859i, u_input.c.x, 1i) ^ vec3<i32>(var_1.b, u_input.b, -5371i))), select(firstTrailingBit(~vec3<i32>(2147483647i, u_input.b, -280i)), ~(-vec3<i32>(var_1.b, 0i, global2.b)), vec3<bool>(all(vec3<bool>(false, true, false)), true, any(vec3<bool>(false, true, false))))));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, firstTrailingBit(-43911i), -1i), _wgslsmith_add_vec3_i32(func_3(), vec3<i32>(-2147483647i, 1i, global2.b) << (firstTrailingBit(u_input.d.zxz) % vec3<u32>(32u))));
    var var_1 = vec4<bool>(65095i > global2.b, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, false);
    global2 = Struct_3(~(~7137u), 2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b.x, -666f, global2.c.a.x, global2.c.b.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.b - global2.c.a.xxw))))));
    return ~_wgslsmith_clamp_i32(u_input.b, abs(-33034i), _wgslsmith_mod_i32(select(-global0[_wgslsmith_index_u32(0u, 20u)], countOneBits(u_input.c.x), select(false, var_1.x, true)), reverseBits(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 20u)]))));
}

fn func_1() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(1u >> (1u % 32u), 20u)];
    global1 = array<Struct_4, 17>();
    global1 = array<Struct_4, 17>();
    var var_1 = abs(_wgslsmith_div_vec3_i32(vec3<i32>(-u_input.c.x, -1i, abs(global0[_wgslsmith_index_u32(global2.a, 20u)])), select(select(vec3<i32>(u_input.c.x, global2.b, -2147483647i), vec3<i32>(638i, global0[_wgslsmith_index_u32(u_input.d.x, 20u)], -1i), vec3<bool>(false, true, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(1u, 20u)]), vec3<i32>(-1i, -51520i, 2147483647i)), any(vec3<bool>(true, false, true)))) ^ select(firstTrailingBit(-vec3<i32>(global0[_wgslsmith_index_u32(7320u, 20u)], 1i, global0[_wgslsmith_index_u32(20815u, 20u)])), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(62900u, 20u)], global0[_wgslsmith_index_u32(45018u, 20u)], -130i), vec3<i32>(10725i, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 20u)], -1i, global0[_wgslsmith_index_u32(2906u, 20u)])), func_2(vec2<u32>(1u, 28197u)) < u_input.c.x));
    let var_2 = Struct_3(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 65870u, 1u, 13883u), u_input.d), firstLeadingBit(firstTrailingBit(u_input.a.x)), global2.a), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.x, var_1.x, -38472i), ~vec4<i32>(-13820i, var_1.x, 86201i, var_1.x)), -select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 20u)], -62276i, -59984i, global0[_wgslsmith_index_u32(41230u, 20u)]), vec4<i32>(10802i, -2147483647i, global2.b, 0i), vec4<bool>(true, true, false, true))), global2.c);
    return Struct_2(global2.c, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1156f, 108f, _wgslsmith_f_op_f32(var_2.c.a.x + global2.c.a.x), _wgslsmith_div_f32(var_2.c.b.x, var_2.c.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(360f, 572f, -346f) + global2.c.b), vec3<f32>(global2.c.a.x, var_2.c.b.x, 253f), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))) + var_2.c.b)), !(!vec4<bool>(true, true, true, all(vec3<bool>(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_4, 17>();
    global2 = Struct_3(global2.a, ~(~53534i), Struct_1(_wgslsmith_f_op_vec4_f32(-global2.c.a), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, var_0.b.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.a.x), 1000f, var_0.c.x)), 959f)));
    var var_1 = var_0.c.x;
    global0 = array<i32, 20>();
    global2 = Struct_3(1u, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~(~u_input.a.x), 20u)], 44974i), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.a.x, global2.c.b.x, 161f, var_0.a.a.x)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(632f, global2.c.b.x, global2.c.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(540f, -156f, -236f))))));
    let var_2 = u_input.a.x;
    global1 = array<Struct_4, 17>();
    var var_3 = ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d.x, ~var_2), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global2.a, ~var_2, var_2, u_input.a.x))), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.b.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, _wgslsmith_f_op_f32(741f * _wgslsmith_f_op_f32(ceil(293f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.c.a.x)), _wgslsmith_f_op_f32(-var_0.a.a.x)) - vec2<f32>(_wgslsmith_f_op_f32(min(global2.c.b.x, var_0.b.a.x)), _wgslsmith_f_op_f32(-var_0.b.a.x))))), -19572i, abs(firstTrailingBit(0u)));
}

