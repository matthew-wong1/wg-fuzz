struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 319f;

var<private> global1: array<i32, 16> = array<i32, 16>(2147483647i, -25359i, 0i, -12299i, 5824i, 2147483647i, i32(-2147483648), -1i, -50388i, i32(-2147483648), 0i, 17486i, -1i, 0i, 2147483647i, 23944i);

var<private> global2: array<Struct_2, 18>;

var<private> global3: Struct_3 = Struct_3(Struct_2(vec3<bool>(false, false, false), 0u, vec2<bool>(false, false)), vec2<i32>(i32(-2147483648), -1i), 1i, 36061u, vec4<u32>(1u, 1u, 1u, 1u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.x)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1465f);
    var var_1 = false;
    global2 = array<Struct_2, 18>();
    let var_2 = -_wgslsmith_clamp_i32(max(global3.c, arg_1.d), u_input.a, ~global3.b.x & -max(u_input.a, 0i));
    return -137f;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    global1 = array<i32, 16>();
    global2 = array<Struct_2, 18>();
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(vec3<bool>(global3.a.c.x, global3.a.c.x, true), global3.a.a), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1027f, 283f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(982f, -1187f, arg_0.x, -1018f))), global3.a.b <= 1u, u_input.a ^ -5461i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), -1000f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), -2572f), !all(vec2<bool>(true, !global3.a.c.x)), global1[_wgslsmith_index_u32(countOneBits(28327u), 16u)]);
    var var_1 = _wgslsmith_add_u32(u_input.b.x, ~26643u) | ~(~(~abs(global3.d)));
    let var_2 = global3.a.a.x;
    return 1000f;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-848f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2505f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(204f, 1000f)))))), false)));
    var var_0 = global3.a.a.xz;
    var var_1 = Struct_4(vec2<i32>(~(~(-26202i)), firstTrailingBit(-6717i)), select(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-115i, -1i, global1[_wgslsmith_index_u32(global3.d, 16u)], 32077i), vec4<i32>(-1i, 2147483647i, 13325i, 6306i)), countOneBits(vec4<i32>(u_input.a, 73920i, global3.b.x, global3.b.x))), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, global3.b.x, u_input.a, -2147483647i), vec4<i32>(0i, -2147483647i, global1[_wgslsmith_index_u32(0u, 16u)], global3.b.x))), abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(35355u, 16u)], global3.c, global1[_wgslsmith_index_u32(37691u, 16u)], u_input.a), vec4<i32>(global3.b.x, -1i, -45250i, global3.c))), select(!(!vec4<bool>(var_0.x, global3.a.c.x, var_0.x, true)), vec4<bool>(any(vec4<bool>(false, global3.a.a.x, global3.a.a.x, global3.a.c.x)), true, global3.a.a.x, all(vec2<bool>(global3.a.c.x, false))), false)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(224f, -120f), vec2<f32>(715f, 587f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, 759f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(552f - 486f), -349f, -1096f, -438f)), var_0.x, countOneBits(2147483647i)));
    global1 = array<i32, 16>();
    var var_2 = var_1.b;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -310f;
    global1 = array<i32, 16>();
    var var_0 = func_1();
    var_0 = Struct_1(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, -152f, var_0.b.x, -890f), _wgslsmith_f_op_vec4_f32(sign(var_0.b))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 221f, 715f, -349f), vec4<f32>(-1209f, var_0.b.x, var_0.a.x, -530f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(101f)), 1000f, -262f, _wgslsmith_f_op_f32(1495f + 1000f))))), var_0.c, global3.b.x);
    var var_1 = !select(global3.a.a, global3.a.a, vec3<bool>(all(!global3.a.a), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-global3.b), abs(u_input.b.x), vec2<u32>(_wgslsmith_dot_vec2_u32(global3.e.yz, abs(~u_input.b)), 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.b.x))) + var_0.a) - var_0.a), vec4<f32>(var_0.a.x, -1609f, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), 906f))));
}

