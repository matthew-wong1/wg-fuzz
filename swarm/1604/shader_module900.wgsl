struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<vec4<i32>, 10>;

var<private> global2: array<u32, 28>;

var<private> global3: array<f32, 2> = array<f32, 2>(1368f, 1060f);

var<private> global4: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(1u, 44555u, 39686u), vec3<u32>(33500u, 4294967295u, 1u), vec3<u32>(48706u, 1u, 0u), vec3<u32>(1u, 19299u, 8856u), vec3<u32>(0u, 92597u, 3117u), vec3<u32>(122031u, 4294967295u, 11959u), vec3<u32>(29349u, 1u, 0u), vec3<u32>(4294967295u, 72628u, 125678u), vec3<u32>(66677u, 29816u, 50569u), vec3<u32>(4294967295u, 15652u, 3191u), vec3<u32>(57094u, 0u, 47451u), vec3<u32>(4294967295u, 1u, 34186u), vec3<u32>(53411u, 4294967295u, 0u), vec3<u32>(5567u, 0u, 1u), vec3<u32>(4294967295u, 32542u, 2824u), vec3<u32>(47284u, 1u, 10118u), vec3<u32>(17279u, 4294967295u, 0u), vec3<u32>(11199u, 1u, 42489u), vec3<u32>(0u, 1u, 94127u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 47057u, 37526u), vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(30892u, 83312u, 2335u), vec3<u32>(63634u, 1u, 1u), vec3<u32>(4294967295u, 20295u, 4294967295u), vec3<u32>(15657u, 0u, 13024u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 72389u, 65641u), vec3<u32>(16929u, 49985u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.a, 62327u))), 2u)]));
    global3 = array<f32, 2>();
    let var_1 = 530f;
    let var_2 = -104f;
    var var_3 = select(!vec2<bool>(true, all(vec2<bool>(false, false))), !vec2<bool>(u_input.c < firstLeadingBit(-1i), (global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 2u)] < -787f) == all(vec2<bool>(false, true))), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))));
    return global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(firstLeadingBit(abs(4294967295u)), 28u)], u_input.a), 30u)];
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = select(~func_3(), ~abs(vec3<u32>(_wgslsmith_div_u32(0u, arg_0.a.x), _wgslsmith_mult_u32(71423u, 0u), 1u)), !arg_1.c.x);
    global2 = array<u32, 28>();
    let var_1 = _wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(~var_0.x, max(4294967295u, 61692u))), vec2<u32>(arg_0.a.x | ~min(u_input.a, 46813u), global2[_wgslsmith_index_u32(~4294967295u, 28u)]));
    global1 = array<vec4<i32>, 10>();
    return vec3<bool>(~_wgslsmith_mult_u32(var_1.x >> (4294967295u % 32u), global2[_wgslsmith_index_u32(max(0u, arg_0.a.x), 28u)]) > var_1.x, select(select(false, any(arg_1.c), arg_1.b), arg_1.b, _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], 2u)] - arg_0.b.x)) < _wgslsmith_f_op_f32(-arg_1.a)), !all(select(select(vec4<bool>(false, arg_1.b, arg_1.c.x, true), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.b, arg_1.b), vec4<bool>(false, true, true, arg_1.c.x)), vec4<bool>(arg_1.b, false, true, false), false)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_3(-1984f, arg_0.c.x, arg_0.c, -(~_wgslsmith_sub_i32(1i, u_input.c)));
    let var_1 = Struct_2(arg_0.c.yy, !(!(20798i != var_0.d) && all(select(vec3<bool>(var_0.b, true, true), arg_0.c, vec3<bool>(true, arg_0.b, false)))));
    global1 = array<vec4<i32>, 10>();
    var var_2 = Struct_1(vec2<u32>(~(abs(global2[_wgslsmith_index_u32(arg_1, 28u)]) | 20889u), ~arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-791f, var_0.a, -500f, -327f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 327f, 585f, var_0.a) - vec4<f32>(260f, -1502f, 203f, -1003f)), var_0.c.x))))));
    return Struct_2(!var_0.c.zz, true);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global0 = array<Struct_2, 8>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~24614u, 2u)]), arg_0.a.x, vec3<bool>(func_2(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(1332f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 2u)], global3[_wgslsmith_index_u32(0u, 2u)], 142f) - vec4<f32>(global3[_wgslsmith_index_u32(2860u, 2u)], -1800f, 520f, 863f))), Struct_3(_wgslsmith_f_op_f32(-1609f + global3[_wgslsmith_index_u32(60248u, 2u)]), false, func_2(Struct_1(u_input.b.yx, vec4<f32>(701f, global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(17045u, 2u)], 507f)), Struct_3(-757f, false, vec3<bool>(true, true, arg_0.a.x), u_input.c)), ~0i)).x, !select(!arg_0.a.x, false, any(vec4<bool>(arg_0.a.x, arg_0.b, true, true))), !any(arg_0.a)), _wgslsmith_dot_vec4_i32(select(~select(global1[_wgslsmith_index_u32(4294967295u, 10u)], vec4<i32>(417i, -19422i, 1i, -1i), arg_0.a.x), countOneBits(-vec4<i32>(1i, u_input.c, u_input.c, 39767i)), any(vec3<bool>(true, arg_0.a.x, false))), ~vec4<i32>(-u_input.c, 0i, 1i, u_input.c)));
    var var_1 = var_0.c.zx;
    global3 = array<f32, 2>();
    global0 = array<Struct_2, 8>();
    return var_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> u32 {
    let var_0 = func_5(func_4(Struct_3(arg_1, arg_0.x, select(vec3<bool>(false, arg_0.x, arg_0.x), func_2(Struct_1(u_input.d.xw, vec4<f32>(-1456f, arg_1, global3[_wgslsmith_index_u32(32923u, 2u)], global3[_wgslsmith_index_u32(31939u, 2u)])), Struct_3(global3[_wgslsmith_index_u32(0u, 2u)], arg_0.x, vec3<bool>(true, false, false), u_input.c)), !arg_0.x), u_input.c), ~44175u, ~global2[_wgslsmith_index_u32(u_input.a, 28u)]));
    let var_1 = _wgslsmith_dot_vec3_i32((((vec3<i32>(-2147483647i, -2147483647i, -2147483647i) & vec3<i32>(-14066i, 33944i, var_0.d)) ^ reverseBits(vec3<i32>(-2147483647i, var_0.d, -1i))) | vec3<i32>(_wgslsmith_mod_i32(-33668i, -3717i), -u_input.c, _wgslsmith_clamp_i32(-15546i, var_0.d, 0i))) | ~(vec3<i32>(var_0.d, u_input.c, 2147483647i) ^ (vec3<i32>(0i, var_0.d, u_input.c) | vec3<i32>(-1i, u_input.c, -2147483647i))), _wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(-9362i, u_input.c), ~27691i, ~(-var_0.d)), min(vec3<i32>(var_0.d, u_input.c, u_input.c), vec3<i32>(~65053i, ~var_0.d, 24590i))));
    let var_2 = func_3().x;
    let var_3 = func_4(func_5(global0[_wgslsmith_index_u32(28441u, 8u)]), var_2, u_input.d.x);
    let var_4 = firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.d, var_1, var_0.d), vec3<i32>(-170i, 2147483647i, -39671i)), vec3<i32>(u_input.c, 2147483647i, -15934i)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, u_input.c, var_0.d), vec3<i32>(u_input.c, var_1, 11170i), vec3<i32>(var_1, 0i, u_input.c))), vec3<i32>(_wgslsmith_mult_i32(var_1, u_input.c), var_0.d, var_0.d)), reverseBits(-(vec3<i32>(var_0.d, 0i, var_1) & vec3<i32>(u_input.c, -78399i, -54087i)))));
    return ~_wgslsmith_mult_u32(~select(u_input.b.x, global2[_wgslsmith_index_u32(u_input.d.x, 28u)], true), u_input.b.x) ^ var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(~1u, 28u)], global2[_wgslsmith_index_u32(17011u, 28u)]), ~_wgslsmith_clamp_vec2_u32(u_input.d.zy, ~u_input.d.yz, u_input.d.wz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(9559u, 2u)], -294f, 476f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], 2u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], -454f, 878f, 1274f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-588f, global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25301u, 28u)], 28u)], 2u)])))))));
    var var_1 = Struct_1(abs(vec2<u32>(1u, _wgslsmith_clamp_u32(func_1(vec2<bool>(false, true), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], 2u)]), 1u, var_0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.b.x, -277f, true)), _wgslsmith_f_op_f32(-var_0.b.x), -877f, _wgslsmith_f_op_f32(step(var_0.b.x, 167f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, var_0.b)))));
    global3 = array<f32, 2>();
    var var_2 = max(_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(~u_input.d.yx, _wgslsmith_mod_vec2_u32(var_1.a, vec2<u32>(u_input.b.x, u_input.b.x))), var_1.a), max(reverseBits(select(_wgslsmith_div_vec2_u32(var_0.a, var_1.a), var_1.a ^ vec2<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 0u), true)), min(firstTrailingBit(u_input.b.zy & var_0.a), ~vec2<u32>(1u, 65523u) >> (var_0.a % vec2<u32>(32u)))));
    let var_3 = global0[_wgslsmith_index_u32(max(~global2[_wgslsmith_index_u32(~var_2.x, 28u)], _wgslsmith_add_u32(var_2.x, var_1.a.x)), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(i32(-1i) * -u_input.c, _wgslsmith_div_i32(u_input.c, u_input.c) << (var_2.x % 32u)));
}

