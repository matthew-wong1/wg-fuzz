struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(7792i, vec3<u32>(52520u, 4294967295u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(0i, vec3<u32>(3505u, 1u, 60130u), vec3<bool>(true, false, true)), Struct_1(18687i, vec3<u32>(1u, 48899u, 29241u), vec3<bool>(true, false, true)), Struct_1(-24661i, vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(false, false, true)), Struct_1(-8172i, vec3<u32>(14232u, 98063u, 34891u), vec3<bool>(false, false, false)), Struct_1(232i, vec3<u32>(21526u, 0u, 4294967295u), vec3<bool>(true, false, false)), Struct_1(2147483647i, vec3<u32>(1u, 93794u, 50425u), vec3<bool>(false, true, true)), Struct_1(46338i, vec3<u32>(1u, 13738u, 8926u), vec3<bool>(false, true, false)), Struct_1(-3063i, vec3<u32>(1u, 48437u, 14844u), vec3<bool>(false, true, true)));

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-21044i, vec3<u32>(4294967295u, 65252u, 12001u), vec3<bool>(true, true, true)), Struct_1(0i, vec3<u32>(0u, 49043u, 25784u), vec3<bool>(true, false, false)), Struct_1(-1i, vec3<u32>(8482u, 0u, 6323u), vec3<bool>(false, true, true)), Struct_1(1i, vec3<u32>(22150u, 37746u, 0u), vec3<bool>(true, false, false)), Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 1u, 96522u), vec3<bool>(true, false, false)), Struct_1(7452i, vec3<u32>(26893u, 16301u, 0u), vec3<bool>(true, false, false)), Struct_1(-1i, vec3<u32>(1u, 6135u, 20716u), vec3<bool>(true, true, true)), Struct_1(i32(-2147483648), vec3<u32>(86392u, 4294967295u, 82210u), vec3<bool>(true, true, false)), Struct_1(22504i, vec3<u32>(42043u, 1u, 0u), vec3<bool>(false, true, false)), Struct_1(2147483647i, vec3<u32>(11852u, 32851u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(-11394i, vec3<u32>(66628u, 0u, 7023u), vec3<bool>(false, false, false)), Struct_1(19103i, vec3<u32>(311u, 4294967295u, 11232u), vec3<bool>(true, false, true)), Struct_1(6038i, vec3<u32>(71812u, 11118u, 38810u), vec3<bool>(false, true, true)), Struct_1(-6766i, vec3<u32>(52689u, 1u, 46408u), vec3<bool>(false, true, true)), Struct_1(-6804i, vec3<u32>(76158u, 1u, 7670u), vec3<bool>(true, true, true)), Struct_1(28205i, vec3<u32>(0u, 4294967295u, 44813u), vec3<bool>(false, true, false)), Struct_1(0i, vec3<u32>(4294967295u, 1u, 1u), vec3<bool>(false, true, false)), Struct_1(1i, vec3<u32>(6625u, 0u, 4294967295u), vec3<bool>(true, true, true)), Struct_1(60978i, vec3<u32>(0u, 57681u, 1u), vec3<bool>(false, false, true)), Struct_1(1870i, vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(false, true, true)), Struct_1(-77034i, vec3<u32>(69454u, 1u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(3181i, vec3<u32>(3382u, 41629u, 0u), vec3<bool>(false, true, true)), Struct_1(35037i, vec3<u32>(0u, 0u, 50249u), vec3<bool>(false, false, false)), Struct_1(0i, vec3<u32>(1u, 4294967295u, 1u), vec3<bool>(true, true, false)), Struct_1(-31361i, vec3<u32>(28339u, 8056u, 3854u), vec3<bool>(false, false, false)), Struct_1(1i, vec3<u32>(76578u, 0u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(236i, vec3<u32>(27956u, 50221u, 1u), vec3<bool>(false, true, false)), Struct_1(-111615i, vec3<u32>(4294967295u, 12453u, 1u), vec3<bool>(true, false, false)), Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 15967u, 31470u), vec3<bool>(false, false, true)), Struct_1(-5676i, vec3<u32>(1u, 4294967295u, 79126u), vec3<bool>(true, true, true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    return Struct_2(vec2<i32>(arg_0.e, 2147483647i), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 31296i), u_input.e) >> (~_wgslsmith_sub_u32(~16596u, u_input.b) % 32u), _wgslsmith_div_vec3_f32(arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -640f))), -377f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(382f, -1000f)))), arg_0.d, ~(_wgslsmith_add_i32(select(1i, -4766i, arg_0.d), _wgslsmith_div_i32(800i, -1i)) | ((u_input.d >> (u_input.b % 32u)) >> (_wgslsmith_mod_u32(u_input.a.x, 45676u) % 32u))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = vec3<u32>(u_input.b, 25651u, 0u);
    global3 = array<Struct_1, 30>();
    global1 = arg_1.d;
    global0 = array<i32, 9>();
    let var_1 = true;
    return 311f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1861f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-483f - -1527f), func_1(Struct_2(vec2<i32>(2147483647i, 24174i), global0[_wgslsmith_index_u32(var_0.x, 9u)], vec3<f32>(-1044f, -204f, -754f), true, 67914i)), 2147483647i)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1161f * 335f), _wgslsmith_f_op_f32(f32(-1f) * -1337f))))));
    var var_2 = global3[_wgslsmith_index_u32(~12518u, 30u)];
    let var_3 = ~vec2<u32>(var_0.x, select(~(var_0.x << (var_2.b.x % 32u)), (u_input.b << (u_input.a.x % 32u)) & (var_2.b.x & 59484u), true));
    var_2 = global3[_wgslsmith_index_u32(0u, 30u)];
    let var_4 = firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.b.x, 11046u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 116420u)), vec2<u32>(u_input.b, abs(36984u)))));
    let var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(1i, firstTrailingBit(global0[_wgslsmith_index_u32(var_5.x, 9u)]), var_2.c.x || var_2.c.x), abs(~var_3), var_3.x ^ 82293u, var_1.x);
}

