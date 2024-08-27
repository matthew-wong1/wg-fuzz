struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    return u_input.b;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_i32(~arg_1.d.c, vec3<i32>(21134i, ~_wgslsmith_sub_i32(global0.x, -31681i), max(arg_2.b.c.x & global0.x, ~global0.x)) | ~vec3<i32>(2147483647i, global0.x << (u_input.b % 32u), ~arg_2.a.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1286f));
    global0 = arg_3.c;
    global0 = arg_2.a.zzw ^ -arg_3.c;
    var var_2 = any(!(!(!select(vec4<bool>(false, arg_2.b.a.x, arg_2.b.b.x, arg_3.a.x), vec4<bool>(false, arg_1.d.b.x, false, true), vec4<bool>(false, arg_1.b.a.x, true, arg_2.b.b.x)))));
    return _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(var_0.yz, -((vec2<i32>(1i, -1i) & u_input.c) | (vec2<i32>(arg_2.c.x, global0.x) | arg_1.a.yx))));
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = Struct_3(min(~firstLeadingBit(vec4<i32>(arg_0.d.c.x, arg_0.c.c.x, -9501i, global0.x)), ~(~(vec4<i32>(-17912i, global0.x, -1i, 0i) ^ vec4<i32>(2147483647i, -39617i, -2147483647i, 1i)))), Struct_1(select(arg_0.d.a, vec2<bool>(arg_0.b.x, arg_0.d.b.x), arg_0.c.a), vec2<bool>(!arg_0.b.x, true), arg_0.c.c), _wgslsmith_mod_vec2_i32(vec2<i32>(4771i, min(select(u_input.c.x, 20470i, true), _wgslsmith_sub_i32(-42083i, global0.x))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-22312i, global0.x, -2147483647i, -27273i), vec4<i32>(194i, global0.x, 0i, global0.x)), -22660i) | abs(~arg_0.a.xz)), arg_0.c, vec3<u32>(func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.e, arg_0.e, arg_0.e, arg_0.e))), -2147483647i >> (~u_input.b % 32u)), ~5606u, abs(1u)));
    global0 = _wgslsmith_mult_vec3_i32(arg_0.a, -vec3<i32>(arg_0.a.x | ~(-17820i), 1i, select(-2147483647i, -arg_0.c.c.x, false)));
    global0 = vec3<i32>(_wgslsmith_dot_vec3_i32((~var_0.a.wyx & -vec3<i32>(1107i, var_0.d.c.x, global0.x)) >> (vec3<u32>(1u, firstLeadingBit(var_0.e.x), var_0.e.x) % vec3<u32>(32u)), reverseBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, 2147483647i), ~arg_0.c.c))), min(_wgslsmith_mult_i32(global0.x >> (var_0.e.x % 32u), ~1i) << (reverseBits(u_input.b) % 32u), ~func_3(true, var_0, var_0, var_0.d)), global0.x);
    var var_1 = var_0.d;
    global0 = (-firstTrailingBit(firstLeadingBit(arg_0.d.c)) & select(vec3<i32>(-1i) * -var_1.c, vec3<i32>(min(var_1.c.x, var_1.c.x), ~3269i, -var_0.c.x), select(vec3<bool>(false, arg_0.b.x, var_1.b.x), select(vec3<bool>(arg_0.d.a.x, var_0.d.a.x, arg_0.c.a.x), vec3<bool>(var_1.a.x, arg_0.b.x, true), var_1.a.x), arg_0.b.x))) & vec3<i32>(~arg_0.a.x, ~1i, arg_0.d.c.x);
    return vec3<i32>(_wgslsmith_div_i32(abs(var_1.c.x), -39248i), ~1i, -19005i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<i32>(_wgslsmith_div_i32(2147483647i, -1i), u_input.c.x ^ 0i, -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 5613i, -2147483647i), vec4<i32>(0i, u_input.c.x, global0.x, 70199i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 0i, -19234i, -3874i), vec4<i32>(-24648i, 0i, u_input.c.x, u_input.c.x)))), vec3<i32>(global0.x, 0i, i32(-1i) * -11046i), vec3<bool>(true, true, true));
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(87432u, firstLeadingBit(u_input.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(97361u, u_input.a)) >> (vec2<u32>(u_input.b, ~4294967295u) % vec2<u32>(32u))) <= u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, 1000f)));
    var var_2 = countOneBits(_wgslsmith_div_vec3_i32(max(max(func_1(Struct_2(vec3<i32>(759i, -3625i, -30804i), vec2<bool>(true, false), Struct_1(vec2<bool>(false, true), vec2<bool>(false, true), vec3<i32>(-1i, 1i, -29806i)), Struct_1(vec2<bool>(false, true), vec2<bool>(true, false), vec3<i32>(0i, -10302i, global0.x)), var_1.x)), -vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)), firstLeadingBit(~vec3<i32>(0i, u_input.c.x, global0.x))), vec3<i32>(~(-1633i), min(global0.x, ~u_input.c.x), func_1(Struct_2(vec3<i32>(u_input.c.x, global0.x, 11152i), vec2<bool>(false, true), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), vec3<i32>(global0.x, global0.x, global0.x)), Struct_1(vec2<bool>(false, false), vec2<bool>(false, false), vec3<i32>(-9801i, global0.x, u_input.c.x)), 825f)).x | u_input.c.x)));
    global0 = -vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(abs(~global0.x), -1i), var_2.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_div_f32(2034f, 1000f)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-396f, 265f, var_3.x) + vec3<f32>(-1638f, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1288f, 1074f), vec3<f32>(-581f, var_1.x, var_1.x)))))), select(vec3<bool>(u_input.c.x <= global0.x, true, var_2.x < var_2.x), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x))), -1131f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(954f, var_1.x), _wgslsmith_f_op_f32(round(-2037f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2209f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a, ~_wgslsmith_mult_u32(21370u, 1u)), vec4<u32>(5950u, u_input.a, 0u, _wgslsmith_clamp_u32(8500u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.b), max(vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(21205u, 1u, 0u))), abs(~4294967295u))), abs(26740i) | min(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_2.x, 1i), var_2.x), select(global0.x << (48872u % 32u), ~u_input.c.x, true)));
}

