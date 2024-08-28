struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(1000f, -1576f), vec2<f32>(2021f, 731f), vec2<f32>(-722f, 1454f), vec2<f32>(1833f, -265f), vec2<f32>(-407f, 712f), vec2<f32>(-980f, -1145f), vec2<f32>(-1000f, 1967f), vec2<f32>(-1060f, 1000f), vec2<f32>(1434f, 320f), vec2<f32>(113f, 115f), vec2<f32>(578f, -560f), vec2<f32>(820f, 174f), vec2<f32>(585f, -321f), vec2<f32>(-705f, -757f), vec2<f32>(224f, 1544f), vec2<f32>(-859f, 1333f), vec2<f32>(-1283f, -902f), vec2<f32>(-1263f, -1000f), vec2<f32>(-524f, -415f), vec2<f32>(-862f, 1526f), vec2<f32>(-347f, 116f), vec2<f32>(-1822f, 2106f), vec2<f32>(-629f, -1909f), vec2<f32>(141f, -143f), vec2<f32>(1569f, 979f), vec2<f32>(914f, -1566f), vec2<f32>(680f, 331f), vec2<f32>(-1729f, 1334f), vec2<f32>(-984f, 1000f), vec2<f32>(420f, 449f));

var<private> global1: array<f32, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 5u)]), 1f, arg_1));
}

fn func_2() -> Struct_2 {
    global1 = array<f32, 5>();
    let var_0 = Struct_3(u_input.d);
    let var_1 = _wgslsmith_f_op_f32(func_3(vec2<u32>(firstLeadingBit(~_wgslsmith_clamp_u32(u_input.d.x, u_input.c, u_input.d.x)), 12516u), true, u_input.a));
    global1 = array<f32, 5>();
    var var_2 = !((2147483647i != (u_input.b.x >> (u_input.d.x % 32u))) || false);
    return Struct_2(Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 64490i)), u_input.b ^ vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -36881i))), 10535u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(85659u, 30u)], global0[_wgslsmith_index_u32(17334u, 30u)], vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(46598u, 30u)])))), u_input.d.x));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_add_i32(-(~(~(~u_input.a))), func_2().a.a);
    var var_2 = var_0.a.a;
    var var_3 = false;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(921f, global1[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(u_input.d.x, 5u)], global1[_wgslsmith_index_u32(u_input.c, 5u)]) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 5u)], global1[_wgslsmith_index_u32(u_input.d.x, 5u)], global1[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2041f, -1567f, -642f, 1128f) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 5u)], 321f, 261f, -866f))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(332f, global1[_wgslsmith_index_u32(u_input.d.x, 5u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.c, 5u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(u_input.d.x, 5u)])), -1959f))));
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~(~vec2<u32>(u_input.c, 64510u)), !any(vec4<bool>(true, false, false, false)), -u_input.b.x)) * global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, func_2().a.b, var_2.a.b), 5u)]) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f - var_1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(272f)), -327f)));
    let var_4 = func_1();
    var var_5 = false;
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-116f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1011f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1302f + -105f))))), -1650f);
    var_3 = !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), true)));
    let var_7 = Struct_3(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 0u, ~58433u, ~1u), vec4<u32>(select(var_7.a.x, var_7.a.x, false), var_2.a.b, 99917u, 30388u)), (vec3<i32>(-22231i, reverseBits(0i), _wgslsmith_div_i32(u_input.b.x, var_2.a.a)) << ((vec3<u32>(25165u, var_7.a.x, var_7.a.x) & ~vec3<u32>(0u, 1u, var_4.a.d)) % vec3<u32>(32u))) << (vec3<u32>(u_input.d.x, var_4.a.b >> (76393u % 32u), 31771u) % vec3<u32>(32u)));
}

