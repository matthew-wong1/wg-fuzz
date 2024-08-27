struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(38449u, 28071u, 9862u, 4294967295u, 1u, 4294967295u, 12691u, 0u, 1u, 4294967295u, 19344u);

var<private> global1: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(5002u, 69534u), vec2<u32>(62138u, 0u), vec2<u32>(101789u, 0u), vec2<u32>(10633u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(43146u, 22911u), vec2<u32>(30955u, 5275u), vec2<u32>(1u, 4294967295u), vec2<u32>(2001u, 4294967295u), vec2<u32>(53134u, 37885u), vec2<u32>(35475u, 42000u), vec2<u32>(33030u, 48765u));

var<private> global2: vec3<i32>;

var<private> global3: u32 = 0u;

var<private> global4: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    let var_0 = vec3<u32>(4294967295u, min(48913u, 1u), 4294967295u);
    global1 = array<vec2<u32>, 13>();
    global1 = array<vec2<u32>, 13>();
    var var_1 = false;
    var var_2 = Struct_1(reverseBits(~_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.x, 1u), max(u_input.d.xw, u_input.d.yw))), vec2<i32>(0i, i32(-1i) * -39039i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-294f + 2228f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f + -1011f) + -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f), _wgslsmith_f_op_f32(trunc(1916f))) + -960f)), max(vec4<u32>(~(18011u << (global0[_wgslsmith_index_u32(32369u, 11u)] % 32u)), firstTrailingBit(9169u >> (var_0.x % 32u)), 29513u, u_input.c), u_input.d));
    return -2114f;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    global4 = ~25095u;
    global2 = select(abs(~abs(vec3<i32>(-6812i, -47094i, arg_3.b.x))), vec3<i32>(u_input.b.x & arg_2.b.x, _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(arg_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(0i, 2147483647i)))), 2147483647i), 78490i > global2.x);
    global2 = ~vec3<i32>(firstLeadingBit(-arg_3.b.x), arg_3.b.x, _wgslsmith_mult_i32(-arg_1.b.x, max(1i, arg_1.b.x))) | _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(arg_1.b.x, _wgslsmith_div_i32(arg_3.b.x, u_input.b.x), 2147483647i)), vec3<i32>(~42189i, ~(-2147483647i), ~reverseBits(u_input.b.x)));
    let var_0 = vec3<i32>(min(global2.x, u_input.b.x), arg_3.b.x, arg_3.b.x);
    let var_1 = -24820i;
    return max(firstTrailingBit(vec3<u32>(u_input.c, arg_2.a.x & arg_2.a.x, 4294967295u >> (arg_3.a.x % 32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(min(global0[_wgslsmith_index_u32(u_input.a, 11u)], 69622u), u_input.d.x | arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_3.d.x, 0u, arg_3.d.x), arg_1.d)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_3.a.x, 39257u), arg_1.d.wxz), u_input.d.wxz))) ^ vec3<u32>(1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_1.d.x, arg_3.a.x, arg_3.a.x), vec4<u32>(4294967295u, 6561u, 1u, global0[_wgslsmith_index_u32(arg_3.d.x, 11u)]))), 4294967295u << (0u % 32u));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = u_input.b.xzw;
    global3 = _wgslsmith_dot_vec3_u32(func_3(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f))), Struct_1(u_input.d.xw, vec2<i32>(var_0.x << (4294967295u % 32u), _wgslsmith_div_i32(var_0.x, arg_0)), arg_1.x, abs(firstLeadingBit(u_input.d))), Struct_1(u_input.d.wz, vec2<i32>(reverseBits(u_input.b.x), 0i), 1210f, u_input.d), Struct_1(~u_input.d.wz, _wgslsmith_mult_vec2_i32(vec2<i32>(24276i, u_input.b.x), vec2<i32>(global2.x, -14241i)), -560f, _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(global0[_wgslsmith_index_u32(0u, 11u)], 6542u, 29210u, global0[_wgslsmith_index_u32(3269u, 11u)])), u_input.d, select(u_input.d, vec4<u32>(42792u, 42397u, 51217u, 0u), false)))), vec3<u32>(1u, _wgslsmith_sub_u32(23629u, func_3(336f, Struct_1(vec2<u32>(u_input.d.x, 4294967295u), var_0.yy, arg_1.x, u_input.d), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 13u)], var_0.zz, -218f, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], global0[_wgslsmith_index_u32(61202u, 11u)], 4294967295u, global0[_wgslsmith_index_u32(51465u, 11u)])), Struct_1(u_input.d.xx, vec2<i32>(u_input.b.x, var_0.x), 2412f, u_input.d)).x | _wgslsmith_add_u32(14983u, u_input.a)), _wgslsmith_div_u32(65960u, ~_wgslsmith_mult_u32(0u, 4294967295u))));
    let var_1 = Struct_1(u_input.d.zz, vec2<i32>(~(-43928i), min((i32(-1i) * -17128i) | _wgslsmith_div_i32(var_0.x, -38540i), var_0.x)), -1442f, _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(u_input.d.x, 11u)] << (u_input.c % 32u), _wgslsmith_mult_u32(15159u, global0[_wgslsmith_index_u32(u_input.d.x, 11u)])), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.d.xww), reverseBits(vec3<u32>(85182u, u_input.a, 4294967295u))), _wgslsmith_add_u32(13683u, u_input.c & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8145u, 11u)], 11u)]), (1312u & u_input.d.x) ^ ~0u)));
    return vec3<u32>(~0u, 1u, u_input.a);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: bool) -> u32 {
    var var_0 = vec2<u32>(max(~1u, global0[_wgslsmith_index_u32(0u, 11u)]), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c, _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(u_input.d.x, 11u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a, 11u)], 4294967295u)), global0[_wgslsmith_index_u32(countOneBits(1u), 11u)]), 11u)]);
    global1 = array<vec2<u32>, 13>();
    let var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(-arg_0) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1045f)))), all(!select(!vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), any(vec4<bool>(arg_2, true, arg_2, arg_2)))), arg_2);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-arg_0));
    global3 = arg_1.x;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    global1 = array<vec2<u32>, 13>();
    global4 = 588u;
    let var_1 = u_input.b & _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(i32(-1i) * -29930i, u_input.b.x, ~u_input.b.x, ~u_input.b.x));
    global4 = _wgslsmith_mod_u32(func_4(_wgslsmith_f_op_f32(1077f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f * 545f))), select(reverseBits(func_2(-1i, vec3<f32>(-351f, 1000f, -349f))), u_input.d.xwz, true), true == !any(vec4<bool>(true, false, true, true))), select(~_wgslsmith_div_u32(1u, u_input.a & u_input.a), u_input.a, !(!(u_input.b.x != u_input.b.x))));
    let var_2 = Struct_1(~_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(~func_4(489f, u_input.d.xxx, true), 13u)], _wgslsmith_clamp_vec2_u32(select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], u_input.d.x), true), ~vec2<u32>(5467u, u_input.d.x), vec2<u32>(u_input.a, 4294967295u))), firstTrailingBit(~(-var_1.wz) << (u_input.d.yx % vec2<u32>(32u))), -713f, ~vec4<u32>(u_input.d.x, ~u_input.a, global0[_wgslsmith_index_u32(~40239u, 11u)], u_input.a) & u_input.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-883f, var_2.c, 1209f) - vec3<f32>(-792f, 1391f, var_2.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 767f, -971f) + vec3<f32>(var_2.c, 1428f, var_2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(566f, var_2.c, 408f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1324f, _wgslsmith_div_f32(-460f, var_2.c), var_2.c) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(812f, var_2.c, var_2.c) + vec3<f32>(var_2.c, -312f, var_2.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_2.c, 320f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, vec2<f32>(_wgslsmith_f_op_f32(floor(-2002f)), _wgslsmith_f_op_f32(-var_3.x)), vec4<i32>(var_1.x, u_input.b.x << (func_3(_wgslsmith_f_op_f32(-1179f + var_3.x), var_2, var_2, var_2).x % 32u), var_1.x, 2147483647i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c))), _wgslsmith_f_op_f32(var_2.c * 1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.c)))), 1f))));
}

