struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: array<i32, 24> = array<i32, 24>(-10877i, 33094i, 31389i, i32(-2147483648), -1751i, -29705i, -18673i, -1i, -1i, i32(-2147483648), -54938i, 0i, 0i, 2147483647i, 2147483647i, -1i, 16217i, 1i, i32(-2147483648), -41181i, 36531i, 2147483647i, -70458i, 1i);

var<private> global1: array<Struct_2, 1>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(-17425i, 1i), false, vec3<f32>(2579f, -280f, 2314f)), Struct_1(vec2<i32>(20312i, -2083i), true, vec3<f32>(-1824f, -360f, 130f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = 4294967295u;
    let var_1 = Struct_4(Struct_1(vec2<i32>(-global0[_wgslsmith_index_u32(4294967295u, 24u)], ~2147483647i), 524f > _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, 1289f, 405f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -290f, 1398f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1348f, 133f, -200f) * vec3<f32>(-2155f, -1653f, 1680f))))), Struct_2(global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.a >> (0u % 32u)), 2u)]), -921f);
    global1 = array<Struct_2, 1>();
    let var_2 = arg_0;
    let var_3 = arg_0;
    return true;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = array<i32, 24>();
    let var_0 = func_3(~arg_3);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -342f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-908f, -273f, 165f)) - vec3<f32>(1f, 1f, 1f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(552f, 244f, -1092f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(419f, -1059f, 718f))))), vec3<f32>(-1291f, _wgslsmith_f_op_f32(var_2.x * -1000f), _wgslsmith_f_op_f32(-var_2.x)), arg_2))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(875f)))), _wgslsmith_f_op_f32(var_2.x - -185f)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-var_2.x), var_0))), -1180f));
    return Struct_1(countOneBits(arg_1), countOneBits(~(u_input.a >> (arg_3 % 32u))) >= 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-483f, var_2.x, -2054f))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_3 {
    global1 = array<Struct_2, 1>();
    var var_0 = true;
    let var_1 = -1132f;
    var var_2 = func_2(reverseBits(global0[_wgslsmith_index_u32(~(~u_input.a), 24u)]), select(reverseBits(vec2<i32>(~arg_1.x, 44741i)), firstTrailingBit(abs(arg_1)), _wgslsmith_f_op_f32(-var_1) != 1846f), false, _wgslsmith_sub_u32(abs(1u) | u_input.a, u_input.a));
    var var_3 = 0u;
    return Struct_3(arg_0.b.a.c.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global1 = array<Struct_2, 1>();
    global0 = array<i32, 24>();
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    return _wgslsmith_f_op_f32(-arg_1.c.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(Struct_4(func_2(arg_0.x, vec2<i32>(1i, -1i), true, 4294967295u), global1[_wgslsmith_index_u32(52925u, 1u)], -1098f), vec2<i32>(select(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(28560u, 24u)], false), 1i)), func_2(~_wgslsmith_mult_i32(-1i, global0[_wgslsmith_index_u32(1u, 24u)]), arg_0, false, 0u), Struct_4(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b.x, 1i), vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 24u)], 44546i)), vec2<i32>(arg_0.x, arg_0.x), func_3(u_input.a), ~55773u), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 2u)]), arg_1.a))));
    let var_1 = Struct_2(func_2(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, u_input.b.x, 0i), vec4<i32>(-3839i, global0[_wgslsmith_index_u32(u_input.a, 24u)], u_input.b.x, arg_0.x))), abs(select(reverseBits(u_input.b), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], u_input.b.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), true, _wgslsmith_add_u32(~(~u_input.a), 28305u)));
    var var_2 = select(vec4<u32>(min(reverseBits(u_input.a), u_input.a) >> (u_input.a % 32u), abs(u_input.a), ~u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 46473u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 0u), reverseBits(vec3<u32>(u_input.a, u_input.a, 1u)))), select(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 14754u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))), countOneBits(~vec4<u32>(18574u, 16919u, 1u, u_input.a)) ^ _wgslsmith_sub_vec4_u32(select(vec4<u32>(68398u, u_input.a, 41045u, 30556u), vec4<u32>(u_input.a, u_input.a, 1u, 1u), false), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(u_input.a, 0u, 18860u, u_input.a))), vec4<bool>(true, select(var_1.a.b | true, var_1.a.b, var_1.a.b), false, all(vec2<bool>(false, false)))), true && all(vec4<bool>(var_1.a.a.x == -72219i, true, u_input.a >= 0u, var_1.a.b)));
    var var_3 = any(!vec3<bool>(false, true, !var_1.a.b));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.c.x)), -152f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.c.x, -923f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.c.xx - var_1.a.c.xy))));
    return ~_wgslsmith_mod_u32(var_2.x, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), func_1(vec2<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 24u)]), Struct_3(1000f)) < 1u), vec3<bool>(true, !any(vec2<bool>(true, true)), true), !(!func_2(-26725i, vec2<i32>(29689i, -2147483647i), true, 6615u).b)));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, u_input.a), 2u)]);
    var var_2 = var_1.a.c.xz;
    global1 = array<Struct_2, 1>();
    var var_3 = u_input.a;
    global1 = array<Struct_2, 1>();
    let var_4 = ~abs(u_input.a);
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.c.x, 211f, var_2.x, var_1.a.c.x), _wgslsmith_div_vec4_f32(vec4<f32>(-796f, var_2.x, var_2.x, 490f), vec4<f32>(146f, -969f, -1000f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, -354f, var_2.x, var_1.a.c.x)))), select(vec4<bool>(var_1.a.b, true, true, var_1.a.b), vec4<bool>(var_1.a.b, var_1.a.b, var_1.a.b, false), !vec4<bool>(false, var_0, var_1.a.b, true))))), vec4<f32>(_wgslsmith_f_op_f32(round(var_1.a.c.x)), _wgslsmith_f_op_f32(731f * _wgslsmith_f_op_f32(f32(-1f) * -894f)), _wgslsmith_f_op_f32(-1176f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f * var_1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -779f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-479f, var_1.a.c.x)))))));
    let var_6 = Struct_1(-max(vec2<i32>(_wgslsmith_clamp_i32(1i, u_input.b.x, -2147483647i), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a, 24u)], u_input.b.x)), vec2<i32>(5312i, 0i)), var_0, var_1.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-44631i));
}

