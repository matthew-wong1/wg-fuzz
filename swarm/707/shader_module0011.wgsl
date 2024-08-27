struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-227f, -557f, -1000f), vec3<f32>(1000f, -1238f, 1346f), vec3<f32>(760f, -1565f, -1304f), vec3<f32>(348f, 421f, -589f), vec3<f32>(-1114f, 1020f, 849f), vec3<f32>(-471f, -1423f, -929f), vec3<f32>(-1118f, 1861f, -424f), vec3<f32>(1000f, 557f, -2290f), vec3<f32>(913f, 2961f, 690f), vec3<f32>(-1512f, -1000f, 230f), vec3<f32>(1000f, -1704f, -698f), vec3<f32>(-1891f, 1155f, -682f), vec3<f32>(-308f, -518f, 534f), vec3<f32>(-1191f, -1776f, 1300f), vec3<f32>(-488f, 1195f, 136f), vec3<f32>(-224f, 1441f, 1322f));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = arg_1;
    var var_1 = arg_1.b;
    let var_2 = var_0.b;
    var var_3 = var_0.b.d;
    global1 = array<Struct_2, 19>();
    return _wgslsmith_sub_i32(~min(_wgslsmith_add_i32(-31897i, _wgslsmith_dot_vec3_i32(global3.b, var_0.b.b)), 31641i), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(2147483647i, arg_0, 47184i, 40464i)), abs(vec4<i32>(global3.c, 0i, var_0.a.x, 1i)) >> (u_input.c % vec4<u32>(32u))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: i32) -> vec3<f32> {
    var var_0 = global4[_wgslsmith_index_u32(~17363u, 29u)];
    let var_1 = arg_0.b;
    let var_2 = vec4<i32>(func_3(-64033i, arg_0, true), arg_0.b.c, var_0.b.x, var_1.b.x) << (vec4<u32>(var_0.d >> (reverseBits(_wgslsmith_sub_u32(39880u, 19398u)) % 32u), countOneBits(global3.a), global3.d, global3.d) % vec4<u32>(32u));
    global1 = array<Struct_2, 19>();
    let var_3 = all(!vec4<bool>(false, arg_0.d, arg_0.d, true));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(383f + 2407f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-224f, global0[_wgslsmith_index_u32(arg_2, 12u)], var_3)) - _wgslsmith_f_op_f32(592f * global0[_wgslsmith_index_u32(arg_0.c, 12u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(global3.a, 12u)]) + arg_1.x))))));
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = global4[_wgslsmith_index_u32(abs(~firstTrailingBit(u_input.c.x)), 29u)];
    global0 = array<f32, 12>();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.d), 19u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.a, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], 1572f, 1002f) + vec4<f32>(1439f, 1000f, 2478f, -1134f)), u_input.c.x, var_0.b.x)) + global2[_wgslsmith_index_u32(~global3.a, 16u)]) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-234f, global0[_wgslsmith_index_u32(92554u, 12u)]), _wgslsmith_div_f32(1364f, -526f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global3.d, 16u)]))))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    global3 = Struct_1(0u, vec3<i32>((select(var_0.c, -2869i, true) >> (11003u % 32u)) & global3.c, _wgslsmith_mult_i32(-global3.c, ~var_0.c) << (u_input.b.x % 32u), 1i), 1i, select(~(~select(44964u, global3.d, arg_0.x)), select(global3.d, global3.d, !(-1212f <= var_1.x)), arg_0.x));
    return _wgslsmith_mod_vec4_i32(abs(-(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 26212i, var_0.b.x, 9240i), vec4<i32>(var_0.b.x, 1i, 29092i, u_input.a.x)) ^ vec4<i32>(1i, -18948i, -9325i, global3.b.x))), -firstTrailingBit(vec4<i32>(~5578i, 2147483647i, var_0.b.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(~(-u_input.a.x), _wgslsmith_mult_i32(global3.b.x, ~(-1i | global3.c)) >> (_wgslsmith_mod_u32(~firstTrailingBit(13993u), u_input.d) % 32u));
    let var_1 = global1[_wgslsmith_index_u32(32034u, 19u)];
    let var_2 = _wgslsmith_f_op_f32(-343f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-150f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1103f * global0[_wgslsmith_index_u32(4061u, 12u)]))))) == 1140f;
    global1 = array<Struct_2, 19>();
    var var_3 = -32344i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.b.x, u_input.a.x, 34726i, -18799i), vec4<i32>(var_1.b.c, 1i, u_input.a.x, -7442i), vec4<i32>(var_1.a.x, 14032i, u_input.a.x, -1i))) ^ vec4<i32>(var_0, 0i, countOneBits(7358i), 1i), -func_1(!vec2<bool>(true, var_1.d))), vec3<u32>(u_input.b.x, 29901u, ~1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(global3.d, 12u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, 185f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(806f, -542f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(54154u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]) + vec2<f32>(global0[_wgslsmith_index_u32(85338u, 12u)], -2518f)) - vec2<f32>(global0[_wgslsmith_index_u32(global3.d, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])))));
}

