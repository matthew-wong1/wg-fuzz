struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-6683i, 19677i, 2147483647i, 2147483647i, 0i, -11274i, 0i, -9535i, 59726i, -11027i, -24037i, -1i, 1i, 2147483647i, 8241i, 42230i, -10659i, 2147483647i, -1i, -36942i, 8832i, 50058i, 2147483647i, 10340i, 84084i, 16782i, 56819i, i32(-2147483648), -36915i, -53027i);

var<private> global1: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(6799u, 34771u), vec2<u32>(0u, 50162u), vec2<u32>(4294967295u, 5107u), vec2<u32>(0u, 58130u));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<bool, 6> = array<bool, 6>(false, true, false, true, false, true);

var<private> global4: Struct_4;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> i32 {
    global3 = array<bool, 6>();
    var var_0 = Struct_1(min(global4.a.a >> (global4.a.e % 32u), _wgslsmith_add_u32(36037u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global4.a.a, u_input.a, u_input.a, 1u)), firstTrailingBit(vec4<u32>(global4.a.a, 1u, global4.a.a, u_input.a))))), 14951i | global4.a.b, global3[_wgslsmith_index_u32(81181u | _wgslsmith_clamp_u32(5331u, ~_wgslsmith_div_u32(1u, 14229u), arg_0.a), 6u)], _wgslsmith_f_op_vec3_f32(global4.a.d + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(114f * -2194f), _wgslsmith_f_op_f32(arg_0.d.x - -1108f))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_0.d.x) * global4.a.d.x))), arg_0.a);
    let var_1 = arg_0;
    let var_2 = var_1.b;
    global0 = array<i32, 30>();
    return arg_0.b;
}

fn func_2() -> vec4<bool> {
    global3 = array<bool, 6>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_u32(4303u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.b.x), _wgslsmith_div_u32(98771u, global4.a.a))), global4.a.b, firstTrailingBit(2147483647i) == global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 27116u), 30u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global4.a.d.x * -1000f), -1829f, -1166f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.d.x, global4.a.d.x, global4.a.d.x)), select(!vec3<bool>(global3[_wgslsmith_index_u32(global4.a.a, 6u)], false, false), vec3<bool>(true, global2.x, false), global4.a.b >= global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))), reverseBits(~global4.a.a)), vec3<bool>(firstLeadingBit(global0[_wgslsmith_index_u32(~global4.a.a, 30u)]) > -abs(2147483647i), global3[_wgslsmith_index_u32(global4.a.a, 6u)], !(!global2.x)));
    global3 = array<bool, 6>();
    var var_1 = ~u_input.b.yzy;
    let var_2 = select(vec4<i32>(21982i, var_0.a.b, _wgslsmith_mult_i32(func_3(var_0.a, var_0.a.d.x, _wgslsmith_f_op_vec2_f32(var_0.a.d.yz * vec2<f32>(-1000f, global4.a.d.x))), ~_wgslsmith_mult_i32(11483i, global0[_wgslsmith_index_u32(global4.a.a, 30u)])), ~(-28983i | _wgslsmith_mult_i32(11824i, var_0.a.b))), ~(~(~vec4<i32>(17837i, global4.a.b, 11330i, global4.a.b))), false);
    return select(vec4<bool>(true, any(!(!var_0.b)), true, -2147483647i == var_2.x), vec4<bool>(any(!select(var_0.b.zx, var_0.b.xz, false)), false, any(!var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-332f, 512f))) < _wgslsmith_f_op_f32(trunc(var_0.a.d.x))), vec4<bool>(!(var_0.a.c & select(false, true, true)), true, any(!var_0.b), !global2.x));
}

fn func_1(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = !func_2();
    var var_1 = 0i;
    var var_2 = ~(~_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-38668i, 1i, global4.a.b)), -vec3<i32>(45683i, 32425i, global0[_wgslsmith_index_u32(global4.a.e, 30u)])));
    var var_3 = -816f;
    let var_4 = Struct_4(Struct_1(~44302u, global4.a.b, global2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zww + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.a.d.x, -1502f, global4.a.d.x), arg_0.zwz)))), ~(abs(global4.a.a) << (61161u % 32u))));
    return ~countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -10379i, 44494i, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_div_vec4_i32(vec4<i32>(global4.a.b, 39600i, 1i, var_4.a.b), vec4<i32>(global0[_wgslsmith_index_u32(1u, 30u)], var_4.a.b, -46138i, -21548i))), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 30u)], -9994i, -4592i) >> (u_input.b.wwz % vec3<u32>(32u)), countOneBits(vec3<i32>(1694i, global4.a.b, 0i))), min(func_3(Struct_1(global4.a.e, -2147483647i, global2.x, vec3<f32>(-722f, var_4.a.d.x, global4.a.d.x), 44616u), var_4.a.d.x, arg_0.xx), global0[_wgslsmith_index_u32(global4.a.e, 30u)] ^ 16977i), _wgslsmith_div_i32(i32(-1i) * -40629i, ~var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.a.d.x, 560f) + _wgslsmith_f_op_f32(global4.a.d.x + global4.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.a.d.x, 1281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(416f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.d.x, _wgslsmith_f_op_f32(global4.a.d.x * -1615f), 1000f))));
    let var_1 = -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(41098u, 4u)], global1[_wgslsmith_index_u32(abs(1u) ^ ~u_input.b.x, 4u)]), ~(~(~vec2<u32>(0u, global4.a.a)))), 30u)];
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.a.d.x)))), var_0.x, true));
    global1 = array<vec2<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(666f, 903f) * global4.a.d.zx)), global4.a.d.xx))), min(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, global0[_wgslsmith_index_u32(u_input.a, 30u)], var_1, 47081i) & vec4<i32>(global4.a.b, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], -1027i, var_1), func_1(vec4<f32>(global4.a.d.x, var_0.x, global4.a.d.x, global4.a.d.x)))), _wgslsmith_add_vec4_i32(-(~vec4<i32>(var_1, global4.a.b, 2147483647i, -2147483647i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global4.a.b, 1i, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global4.a.a, 30u)]), vec4<i32>(var_1, global0[_wgslsmith_index_u32(u_input.a, 30u)], global4.a.b, var_1)))));
}

