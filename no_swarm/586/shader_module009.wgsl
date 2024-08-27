struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, vec3<u32>(14300u, 4294967295u, 9357u)), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 57761u)), Struct_1(false, vec3<u32>(0u, 8397u, 3227u)), Struct_1(false, vec3<u32>(1708u, 110021u, 35852u)), Struct_1(false, vec3<u32>(1u, 20084u, 4294967295u)));

var<private> global3: bool = true;

var<private> global4: vec3<i32> = vec3<i32>(-78553i, 33408i, 2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    global3 = select(u_input.a.x > reverseBits(i32(-1i) * -1i), !(_wgslsmith_f_op_f32(select(-1096f, -992f, true && arg_2.a)) == _wgslsmith_f_op_f32(-121f - -590f)), true);
    global2 = array<Struct_1, 5>();
    let var_0 = !(!(!select(vec4<bool>(false, true, arg_1.a, true), vec4<bool>(true, false, arg_1.a, false), !vec4<bool>(true, arg_0.a, true, arg_0.a))));
    global1 = arg_1;
    global2 = array<Struct_1, 5>();
    return vec3<i32>(abs(~u_input.b), -1342i, max(u_input.d, -u_input.d));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1572f, 499f)))));
    var var_1 = global2[_wgslsmith_index_u32(~arg_1, 5u)];
    global4 = (_wgslsmith_mult_vec3_i32(u_input.a, func_3(global2[_wgslsmith_index_u32(var_1.b.x, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], global1.b.x)) | (_wgslsmith_div_vec3_i32(-u_input.a, vec3<i32>(arg_0, 6871i, -1i)) & _wgslsmith_mod_vec3_i32(u_input.a, u_input.a))) << (reverseBits(select(vec3<u32>(abs(arg_1), max(34206u, global1.b.x), global1.b.x), ~vec3<u32>(24592u, arg_1, arg_1), !(!vec3<bool>(global1.a, global0.x, global0.x)))) % vec3<u32>(32u));
    let var_2 = ~global1.b.x;
    let var_3 = Struct_1(all(vec4<bool>(true, global0.x, false, _wgslsmith_f_op_f32(floor(1319f)) < var_0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(~(~global1.b.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.b, var_1.b), ~var_1.b.x), 17180u), vec3<u32>(92084u, ~max(1u, var_2), global1.b.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -530f, 223f)))) - vec3<f32>(var_0.x, _wgslsmith_div_f32(-1194f, var_0.x), _wgslsmith_f_op_f32(min(129f, 1429f))))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(global0.x, select(global1.b, min(~vec3<u32>(global1.b.x, 4294967295u, global1.b.x), _wgslsmith_div_vec3_u32(global1.b, max(global1.b, vec3<u32>(1u, global1.b.x, global1.b.x)))), all(vec2<bool>(global1.a, any(vec3<bool>(global1.a, false, global0.x))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global4.x, var_0.b.x)), _wgslsmith_f_op_vec3_f32(select(arg_0.wxx, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -2329f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 290f, arg_0.x)) * _wgslsmith_f_op_vec3_f32(-arg_0.xzy)))), !(!(!vec3<bool>(true, true, global0.x))))));
    let var_2 = Struct_1(global1.a, global1.b);
    let var_3 = firstTrailingBit(abs(-countOneBits(abs(u_input.c))));
    global3 = true;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<i32>(select(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d | global4.x, global4.x, 1i ^ global4.x, -28420i), countOneBits(vec4<i32>(1i, -1i, u_input.c, u_input.a.x))), u_input.d > (_wgslsmith_mod_i32(global4.x, global4.x) & 1i)), 1i, _wgslsmith_div_i32(1i, max(u_input.a.x, 1i)));
    var var_0 = vec4<i32>(2147483647i, -4508i, _wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~(vec4<i32>(global4.x, global4.x, -1i, -1i) ^ vec4<i32>(-2147483647i, global4.x, -6298i, -22281i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global4.x, -2147483647i, u_input.d, -1i), ~vec4<i32>(u_input.a.x, u_input.b, global4.x, global4.x), vec4<i32>(global4.x, -1i, u_input.b, global4.x))), _wgslsmith_sub_i32(global4.x, -25798i)));
    var_0 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x | 30894i, ~var_0.x, -24673i, u_input.a.x), vec4<i32>(-2147483647i << (global1.b.x % 32u), ~u_input.b, var_0.x, var_0.x));
    global2 = array<Struct_1, 5>();
    let var_1 = true;
    global2 = array<Struct_1, 5>();
    var var_2 = (_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 67124u) << (global1.b.x % 32u), ~(global1.b.x << (20299u % 32u))) & 1u) ^ global1.b.x;
    let var_3 = func_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1111f, _wgslsmith_f_op_f32(f32(-1f) * -596f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(941f * -605f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f * 1000f) - _wgslsmith_f_op_f32(ceil(-1424f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(157f))))), vec4<f32>(_wgslsmith_f_op_f32(step(-108f, _wgslsmith_div_f32(-1240f, 627f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(117f, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1010f * -1256f), -1193f)))));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1230f + _wgslsmith_div_f32(-1562f, -290f))) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_vec3_f32(func_2(-2405i, _wgslsmith_add_u32(global1.b.x, global1.b.x))).x)), _wgslsmith_sub_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(global4.x, 2147483647i, u_input.b)) | -vec3<i32>(var_0.x, u_input.a.x, var_0.x), min(select(u_input.a, u_input.a, vec3<bool>(false, true, false)), -vec3<i32>(-1i, -5190i, global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(1i, global1.b.x)).x))) + -1116f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-670f, -1000f)))) + -2778f));
}

