struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 10>;

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    let var_0 = firstTrailingBit(-arg_3.d.b);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -262f);
    var var_2 = -1i;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b))))))));
    global2 = array<vec4<f32>, 32>();
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_3() -> vec4<bool> {
    let var_0 = !(!select(vec3<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, false, false))), vec3<bool>(68216i < u_input.d, any(vec2<bool>(true, true)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, _wgslsmith_f_op_f32(min(279f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)])))), global1[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 10u)] * 1633f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 10u)])))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1531f, -113f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -433f) - _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(0u, 32u)] + global2[_wgslsmith_index_u32(1u, 32u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], 1174f, 1000f))))), 4294967295u, vec2<bool>(all(var_0.xy), all(!(!var_0.yx))), Struct_1(~(~vec4<u32>(97303u, 55128u, u_input.c.x, u_input.e.x)), reverseBits(max(_wgslsmith_mult_i32(0i, 2147483647i), ~(-2147483647i))), _wgslsmith_f_op_f32(-258f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 10u)]) - _wgslsmith_f_op_f32(-644f + global1[_wgslsmith_index_u32(u_input.c.x, 10u)])))));
    global2 = array<vec4<f32>, 32>();
    global2 = array<vec4<f32>, 32>();
    let var_2 = -1326f;
    return !select(vec4<bool>(all(vec2<bool>(var_1.c.x, var_0.x)), any(var_0), true, false), select(!select(vec4<bool>(true, true, var_1.c.x, false), vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, var_0.x, false, false)), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_1.c.x), select(vec4<bool>(var_0.x, true, var_1.c.x, any(vec3<bool>(false, false, true))), vec4<bool>(var_1.c.x, false, false, any(vec4<bool>(var_0.x, var_1.c.x, false, var_0.x))), (var_1.b | 24955u) < ~31484u));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = func_3();
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_1(905f, Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 32u)], 44737u, vec2<bool>(var_0.x, arg_0.x), Struct_1(arg_2.d.a, u_input.b.x, arg_2.d.c)), -1070f, arg_2.d, func_3()), Struct_3(arg_2, -186f, Struct_1(vec4<u32>(2435u, arg_2.d.a.x, arg_2.d.a.x, u_input.c.x), arg_2.d.b, global1[_wgslsmith_index_u32(66077u, 10u)]), vec4<bool>(arg_0.x, true, arg_2.c.x, true)), arg_2)), _wgslsmith_f_op_f32(floor(855f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1108f))), 960f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.c))))), 1u, vec2<bool>(true, arg_0.x && true), Struct_1(~abs(abs(vec4<u32>(1u, u_input.e.x, 4294967295u, u_input.c.x))), _wgslsmith_add_i32(u_input.b.x, -_wgslsmith_mod_i32(u_input.b.x, arg_2.d.b)), global1[_wgslsmith_index_u32(arg_2.b, 10u)]));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1, global1[_wgslsmith_index_u32(14417u, 10u)]), arg_1)) * -818f))));
    global1 = array<f32, 10>();
    let var_3 = max(_wgslsmith_sub_u32(arg_2.b, u_input.c.x), 4294967295u);
    return vec2<bool>(~(~_wgslsmith_dot_vec3_u32(var_1.d.a.wwz, vec3<u32>(arg_2.d.a.x, var_1.b, arg_2.d.a.x))) < ~(~(~0u)), true);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    global2 = array<vec4<f32>, 32>();
    var var_0 = vec2<bool>(!func_3().x, -1397f >= _wgslsmith_f_op_f32(886f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(21389u, 10u)], 438f, true)) * -380f)));
    let var_1 = arg_2;
    let var_2 = var_1.a.wx;
    global2 = array<vec4<f32>, 32>();
    return Struct_1(arg_1, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(global0.x, -1i, 40943i, global0.x), vec4<i32>(arg_2.d.b, 49208i, 2147483647i, 2147483647i)), vec4<i32>(u_input.d, 0i, u_input.b.x, var_1.d.b)), -_wgslsmith_add_i32(arg_2.d.b, var_1.d.b)) >> (~arg_2.b % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1721f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1746f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 0u), 10u)]), global1[_wgslsmith_index_u32(26531u & u_input.c.x, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(62175u, 10u)])), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 10u)])))), ~vec4<u32>(_wgslsmith_mod_u32(~59375u, 1u), abs(~u_input.e.x), ~0u, _wgslsmith_mult_u32(abs(u_input.c.x), ~u_input.e.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(61620u, 2022u), 32u)])), ~firstLeadingBit(u_input.c.x), !func_2(select(vec2<bool>(false, false), vec2<bool>(false, false), false), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(0u, 10u)], Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.e.x, 32u)], 22500u, vec2<bool>(true, false), Struct_1(vec4<u32>(u_input.e.x, 66474u, u_input.c.x, 1483u), 0i, global1[_wgslsmith_index_u32(4294967295u, 10u)])), global1[_wgslsmith_index_u32(17473u, 10u)], Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, 14492u, u_input.e.x), 55124i, global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec4<bool>(false, false, false, false)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 32u)], u_input.e.x, vec2<bool>(true, true), Struct_1(vec4<u32>(u_input.c.x, u_input.e.x, u_input.c.x, u_input.e.x), 60443i, global1[_wgslsmith_index_u32(31060u, 10u)])), global1[_wgslsmith_index_u32(u_input.c.x, 10u)], Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), global0.x, -1000f), vec4<bool>(true, true, false, true)), Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], u_input.c.x, vec2<bool>(true, true), Struct_1(vec4<u32>(0u, 4942u, 37736u, 8495u), 0i, -1000f)))), Struct_2(global2[_wgslsmith_index_u32(1u, 32u)], u_input.c.x, vec2<bool>(true, false), Struct_1(vec4<u32>(0u, 40885u, 1u, 74601u), -25164i, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]))), Struct_1(vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, 1u, u_input.c.x), 11730u >> (u_input.e.x % 32u), _wgslsmith_sub_u32(17032u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<u32>(48790u, 0u, u_input.c.x))), -5480i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u >> (u_input.c.x % 32u)), 10u)])));
    global2 = array<vec4<f32>, 32>();
    var var_1 = 104850u;
    global2 = array<vec4<f32>, 32>();
    global0 = firstTrailingBit(reverseBits(vec4<i32>(u_input.b.x, ~u_input.d, var_0.b, global0.x) | _wgslsmith_sub_vec4_i32(max(vec4<i32>(-27572i, -28156i, u_input.b.x, global0.x), vec4<i32>(var_0.b, global0.x, var_0.b, 1851i)), vec4<i32>(-627i, 0i, -2147483647i, u_input.d))));
    var var_2 = var_0;
    global2 = array<vec4<f32>, 32>();
    global2 = array<vec4<f32>, 32>();
    var_1 = _wgslsmith_mult_u32(abs(4294967295u), ~_wgslsmith_add_u32(max(select(var_2.a.x, u_input.c.x, true), u_input.e.x), min(4951u, var_2.a.x) ^ func_4(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], var_0.c, global1[_wgslsmith_index_u32(var_2.a.x, 10u)], -118f), vec4<u32>(var_0.a.x, u_input.e.x, 15116u, 54280u), Struct_2(vec4<f32>(var_2.c, 551f, var_2.c, var_2.c), 4294967295u, vec2<bool>(false, false), var_0)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(firstTrailingBit(reverseBits(16400u)), 1u, 1u)), var_0.a.x, ~_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(u_input.e.x, u_input.e.x))), var_2.b, _wgslsmith_f_op_f32(-var_2.c));
}

