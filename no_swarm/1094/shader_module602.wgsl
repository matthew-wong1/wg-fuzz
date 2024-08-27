struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

var<private> global1: array<vec3<u32>, 25>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = 19507u;
    let var_1 = -firstLeadingBit(vec2<i32>(~(i32(-1i) * -824i), ~(-u_input.b.x)));
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(arg_2.a.a.x, _wgslsmith_add_u32(47116u, u_input.c.x)) | arg_2.a.a.x, abs(4294967295u)));
    global1 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 22>();
    return ~(14509u ^ ~(~var_2.a.x)) & _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(~(~4294967295u), ~u_input.e));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(func_3(vec3<u32>(3715u, 3342u, 36336u), vec3<bool>(arg_0, true, arg_0), Struct_2(Struct_1(arg_1.yz))), min(arg_1.x, u_input.e)))));
    let var_1 = Struct_1(select(vec2<u32>(arg_1.x, 16350u), vec2<u32>(22689u, abs(4294967295u)), vec2<bool>(any(vec4<bool>(false, true, true, arg_0)), any(vec3<bool>(false, false, arg_0)))) << (abs(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.xwz, arg_1), ~var_0.a.a.x)) % vec2<u32>(32u)));
    let var_2 = vec4<f32>(-662f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1431f)) + 281f) - _wgslsmith_f_op_f32(select(-675f, -1000f, !arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-700f, 517f)) * _wgslsmith_f_op_f32(-1206f - 1097f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f * 726f) + -1498f) - _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-518f, _wgslsmith_f_op_f32(floor(330f)), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2013f - 2650f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1898f))))));
    global1 = array<vec3<u32>, 25>();
    var var_3 = var_2.wx;
    return Struct_1(vec2<u32>(u_input.c.x, arg_1.x >> (u_input.c.x % 32u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(func_2(true, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.c.x, arg_1.x, arg_2.a.x)), firstTrailingBit(vec3<u32>(50133u, 4294967295u, 1u))) << (global0[_wgslsmith_index_u32(~arg_1.x | u_input.e, 22u)] % vec3<u32>(32u))));
    var var_1 = _wgslsmith_add_i32(i32(-1i) * -u_input.d.x, reverseBits(1i << (~u_input.e % 32u)));
    let var_2 = -1i;
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    return Struct_2(Struct_1(firstTrailingBit(~arg_1.yx & select(u_input.c.yz, u_input.c.xw, true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.a.x, 0u), u_input.c.xz), arg_3.a), ~vec2<u32>(arg_0.a.a.x, 5848u) | ~vec2<u32>(26784u, 0u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2766f + -728f), _wgslsmith_f_op_f32(min(-501f, -667f)), _wgslsmith_f_op_f32(-628f + 1305f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-323f, 816f, 194f)))))))));
    var_0 = Struct_1(vec2<u32>(1u, u_input.e | arg_0.a.a.x));
    var var_2 = max(_wgslsmith_sub_vec2_i32(u_input.a.zw, abs(-u_input.b.yw) << (select(_wgslsmith_mult_vec2_u32(arg_3.a, u_input.c.wx), vec2<u32>(var_0.a.x, arg_3.a.x) & arg_3.a, arg_2) % vec2<u32>(32u))), select(abs(max(_wgslsmith_clamp_vec2_i32(u_input.a.yz, u_input.d.yy, u_input.d.xz), vec2<i32>(u_input.a.x, u_input.d.x))), select(u_input.b.yx, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-90086i, 1i)), u_input.d.xz), !(true & arg_1.x)), true));
    global0 = array<vec3<u32>, 22>();
    return arg_3.a;
}

fn func_5(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = func_1(vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 21682i, var_0.x, u_input.a.x), u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.d.x, u_input.a.x), ~vec4<i32>(var_0.x, 2147483647i, u_input.d.x, -8078i))), -(~_wgslsmith_mult_i32(2147483647i, var_0.x)), u_input.b.x), ~firstLeadingBit(~global0[_wgslsmith_index_u32(~arg_1, 22u)]), Struct_1(func_4(func_1(max(u_input.d, vec3<i32>(u_input.b.x, u_input.b.x, var_0.x)), global0[_wgslsmith_index_u32(~0u, 22u)], func_2(true, vec3<u32>(u_input.c.x, 70927u, 0u))), vec3<bool>(true, any(vec2<bool>(true, true)), true), false, Struct_1(~vec2<u32>(arg_0.x, 22319u)))));
    global1 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 22>();
    let var_2 = ~(~global0[_wgslsmith_index_u32(1u, 22u)]);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 22>();
    var var_0 = true;
    global1 = array<vec3<u32>, 25>();
    var var_1 = select(~_wgslsmith_sub_i32(u_input.a.x, ~u_input.d.x ^ (u_input.a.x | -2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32((i32(-1i) * -18575i) & u_input.b.x, 33577i, _wgslsmith_mod_i32(1i << (u_input.c.x % 32u), 24263i)), -2147483647i, -2147483647i), false);
    let var_2 = func_5(_wgslsmith_clamp_vec2_u32(func_4(func_1(vec3<i32>(3697i, u_input.a.x, 11568i), vec3<u32>(u_input.e, u_input.e, 81868u), Struct_1(u_input.c.zy)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)), Struct_1(u_input.c.wz)) ^ ~u_input.c.zz, reverseBits(countOneBits(vec2<u32>(u_input.e, u_input.e))) ^ vec2<u32>(27199u, abs(u_input.e)), u_input.c.zz), _wgslsmith_dot_vec4_u32(~(~u_input.c), _wgslsmith_mult_vec4_u32(abs(u_input.c), ~vec4<u32>(61188u, 81594u, u_input.c.x, u_input.e))) & ~_wgslsmith_add_u32(func_1(u_input.d, vec3<u32>(1u, u_input.c.x, u_input.e), Struct_1(u_input.c.zx)).a.a.x, _wgslsmith_sub_u32(4294967295u, u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, u_input.d.zx);
}

