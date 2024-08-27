struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(1u), Struct_4(21039u), Struct_4(76380u), Struct_4(39695u), Struct_4(26367u), Struct_4(4294967295u), Struct_4(27267u), Struct_4(0u), Struct_4(1u), Struct_4(4294967295u), Struct_4(0u), Struct_4(0u), Struct_4(4294967295u), Struct_4(4783u), Struct_4(68652u), Struct_4(50321u), Struct_4(0u), Struct_4(4294967295u), Struct_4(9422u), Struct_4(1u), Struct_4(67085u));

var<private> global2: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(1u), Struct_4(4294967295u), Struct_4(68995u), Struct_4(4294967295u), Struct_4(4294967295u), Struct_4(21172u), Struct_4(0u), Struct_4(0u), Struct_4(0u), Struct_4(0u), Struct_4(39652u), Struct_4(1u), Struct_4(4294967295u), Struct_4(42581u), Struct_4(100733u), Struct_4(14204u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-837f - -103f)))), _wgslsmith_f_op_f32(min(-195f, _wgslsmith_f_op_f32(max(-513f, _wgslsmith_f_op_f32(round(-214f)))))), _wgslsmith_f_op_f32(step(-662f, 669f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f * 1572f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - 1f)) + _wgslsmith_f_op_f32(711f + 1482f)));
    let var_1 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-44095i, firstTrailingBit(min(66739i, -2147483647i)), _wgslsmith_clamp_i32(-10730i, 40060i, -34249i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(2147483647i, 2147483647i, 3742i))));
    global1 = array<Struct_4, 21>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(step(845f, 347f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) - var_0.x), all(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec2_f32(var_0.zx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-734f - -1774f)))), abs(_wgslsmith_sub_i32(var_1.x, -reverseBits(var_1.x))), _wgslsmith_div_i32(~31607i, var_1.x), false);
    global2 = array<Struct_4, 16>();
    return vec4<f32>(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-2279f * 1359f), _wgslsmith_f_op_f32(-1649f + _wgslsmith_f_op_f32(round(var_2.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(136f, -1870f)), _wgslsmith_f_op_f32(round(-232f)))));
}

fn func_2(arg_0: Struct_5) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, -169f, -1034f, -1000f), _wgslsmith_f_op_vec4_f32(func_3())));
    let var_2 = u_input.d;
    let var_3 = -1i;
    global1 = array<Struct_4, 21>();
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>) -> f32 {
    global0 = array<Struct_4, 22>();
    var var_0 = vec2<bool>(true && !(all(vec2<bool>(false, false)) != func_2(Struct_5(vec3<f32>(arg_1.x, arg_1.x, 527f), 1i, 0u, arg_1.x))), true);
    var_0 = select(vec2<bool>(select(true, !(!var_0.x), var_0.x), true), !vec2<bool>(any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(arg_1.x + 1272f) >= 1757f), var_0.x);
    let var_1 = _wgslsmith_f_op_f32(arg_1.x + arg_1.x);
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(~1u), ~(~arg_0.a)), 44312u, 1u), 22u)];
    return -694f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 22>();
    var var_0 = -856f;
    var var_1 = abs(max(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), vec2<u32>(u_input.a.x, 0u)), ~vec2<u32>(3781u, u_input.a.x)), u_input.a.zz)) >> ((vec2<u32>(_wgslsmith_mult_u32(42148u, abs(14923u)), ~_wgslsmith_div_u32(93992u, 83646u)) >> (~u_input.a.zz % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-267f, -815f) - _wgslsmith_f_op_f32(func_1(Struct_4(43309u), vec2<f32>(791f, -848f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-895f + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(516f, 854f))))));
    global1 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-683f)), -1181f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(611f, -1300f) * -773f))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(1098u), ~var_1.x), vec2<u32>(var_1.x & 4294967295u, u_input.a.x)));
}

