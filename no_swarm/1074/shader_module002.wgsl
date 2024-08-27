struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 1i);

var<private> global1: u32 = 45398u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = vec2<bool>(true, true);
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> u32 {
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(4294967295u), ~func_3()) << (vec2<u32>(~(~4294967295u), 19466u) % vec2<u32>(32u)), vec2<u32>(select(abs(~26171u), u_input.a, arg_1.x || arg_3.x), u_input.a));
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-global0.x, reverseBits(global0.x), arg_0, _wgslsmith_add_i32(firstTrailingBit(-1i), min(1i, arg_2.x))), ~_wgslsmith_add_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 0i, 0i, arg_2.x), vec4<i32>(1i, global0.x, arg_0, 0i)), min(vec4<i32>(global0.x, arg_0, global0.x, arg_2.x), vec4<i32>(arg_2.x, -2147483647i, arg_0, arg_0)), arg_3), ~(~vec4<i32>(arg_2.x, 40548i, arg_2.x, 0i))));
    global0 = _wgslsmith_sub_vec2_i32(arg_2.yx, arg_2.xy);
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f) * -1996f)), 1101f), _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1755f, _wgslsmith_f_op_f32(max(1745f, -1536f)))) - _wgslsmith_f_op_f32(select(-719f, 1259f, !arg_3.x)))), !(all(vec3<bool>(arg_1.x, arg_1.x, arg_3.x)) && true) | arg_3.x, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -237f), 386f)));
    let var_2 = Struct_2(abs(firstTrailingBit(vec4<i32>(global0.x, -12838i, arg_0, 27652i))), !(!arg_3.zy));
    return 51431u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> vec4<bool> {
    global0 = arg_0;
    global1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, u_input.a, arg_2.x, u_input.a), vec4<u32>(0u, u_input.a, 96561u, arg_2.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~24175u, select(11644u, 81949u, false)), 45315u, firstLeadingBit(4294967295u) >> (func_2(-1i, vec4<bool>(true, false, false, true), vec3<i32>(global0.x, global0.x, 2685i), vec4<bool>(false, false, false, true)) % 32u), u_input.a), vec4<u32>(u_input.a, arg_2.x, ~34435u, 1u)));
    var var_0 = false;
    global0 = _wgslsmith_sub_vec2_i32(countOneBits(firstLeadingBit(~(arg_0 & arg_0))), vec2<i32>(global0.x, global0.x));
    var var_1 = Struct_2(abs(vec4<i32>(~arg_0.x, ~(-2147483647i | arg_0.x), arg_0.x, ~(-12737i))), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    return !(!(!select(vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), vec4<bool>(true, false, var_1.b.x, var_1.b.x), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: u32) -> vec4<bool> {
    global1 = 48978u;
    let var_0 = -1000f;
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1917f + var_0))), _wgslsmith_f_op_f32(-var_0)), -263f));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(821f, -413f))), arg_1.zz)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.a.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -351f) + var_1.a)), _wgslsmith_f_op_vec2_f32(var_1.a + _wgslsmith_f_op_vec2_f32(-var_1.a)))));
    global1 = (max(~_wgslsmith_mod_u32(arg_3, u_input.a), ~u_input.a) | ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 94215u, u_input.a, arg_3), vec4<u32>(arg_3, arg_3, 39207u, 4294967295u)))) >> (max(u_input.a, _wgslsmith_mult_u32(1025u, 35116u)) % 32u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a | firstTrailingBit(~61560u);
    let var_0 = select(vec4<bool>(true, true, true, true), !func_4(select(vec4<bool>(true, true, true, true), func_1(vec2<i32>(global0.x, global0.x), vec2<f32>(-524f, -999f), vec3<u32>(0u, u_input.a, 26618u)), all(vec4<bool>(false, false, false, true))), func_1(vec2<i32>(global0.x, 10636i), vec2<f32>(-807f, 607f), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, 31182u), vec3<u32>(u_input.a, u_input.a, 93682u))).xyw, countOneBits(vec4<i32>(0i, -53930i, global0.x, -1i)), u_input.a), func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-1388i, global0.x), vec2<i32>(-983i, 2147483647i)) << (vec2<u32>(~u_input.a, u_input.a) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-3426f + 999f))), _wgslsmith_f_op_f32(step(474f, _wgslsmith_f_op_f32(f32(-1f) * -641f)))), ((vec3<u32>(1u, 0u, u_input.a) & vec3<u32>(u_input.a, 20976u, 0u)) | vec3<u32>(u_input.a, 82817u, u_input.a)) << (vec3<u32>(~15157u, _wgslsmith_mult_u32(13652u, u_input.a), ~0u) % vec3<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(495f)), _wgslsmith_f_op_f32(ceil(-987f)))), _wgslsmith_f_op_f32(f32(-1f) * -1051f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2532f, _wgslsmith_f_op_f32(-419f + 1398f), 1465f, _wgslsmith_f_op_f32(step(1279f, -1426f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1274f, 1220f, -1000f, 179f)))), ~abs(max(vec3<i32>(global0.x, -1i, 4248i), vec3<i32>(global0.x, 1i, -1i)) & -vec3<i32>(global0.x, 15821i, -41478i)));
    var var_2 = vec2<i32>(2147483647i, global0.x) | vec2<i32>(5811i, ~select(_wgslsmith_div_i32(var_1.c.x, global0.x), ~global0.x, false));
    var var_3 = _wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-1129f * 113f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.b.x) + _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-var_1.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.yz, _wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a))), max(vec3<u32>(u_input.a, 64027u, 23325u), ~vec3<u32>(u_input.a, 4294967295u, 64601u))) & _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(u_input.a), firstLeadingBit(u_input.a), u_input.a), ~vec3<u32>(u_input.a, 39411u, u_input.a) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(11937u, 0u, u_input.a), vec3<u32>(621u, u_input.a, u_input.a))), vec4<i32>(-1i) * -vec4<i32>(abs(global0.x), -2147483647i << (0u % 32u), -1i, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(sign(var_1.b.x))))))), _wgslsmith_dot_vec3_i32((~var_1.c >> (firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, 21248u)) % vec3<u32>(32u))) & ~var_1.c, -var_1.c));
}

