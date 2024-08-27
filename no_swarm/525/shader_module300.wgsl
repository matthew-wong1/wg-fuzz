struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = ~(-25273i);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2208f))), vec3<u32>(4294967295u, u_input.a, 3206u)));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -100f), ~var_1.a.b));
    var_1 = Struct_3(var_1.a);
    let var_2 = !vec2<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(-var_1.a.a))) > var_1.a.a);
    return 31856u;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = arg_0.wzz;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(-1686f, -457f)), firstTrailingBit(~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a.b.x, arg_2.a.b.x, arg_1.a.b.x), vec3<u32>(u_input.a, 4294967295u, u_input.a)) ^ arg_2.a.b)));
    let var_2 = vec3<bool>(true, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-786f + arg_1.a.a), _wgslsmith_f_op_f32(var_1.a - 1401f), false))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-257f * 195f), _wgslsmith_f_op_f32(-arg_2.a.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a)) - arg_1.a.a))));
    let var_4 = var_1;
    return ~_wgslsmith_mult_u32(u_input.a >> (_wgslsmith_mod_u32(~0u, func_3()) % 32u), min(38034u, _wgslsmith_mod_u32(u_input.a >> (var_4.b.x % 32u), ~0u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = arg_0.wzx;
    let var_1 = ~vec4<u32>(arg_1, 17478u, 47109u, _wgslsmith_dot_vec3_u32(reverseBits(min(vec3<u32>(arg_2.x, arg_1, arg_1), vec3<u32>(4294967295u, u_input.a, 0u))), vec3<u32>(~84461u, _wgslsmith_mod_u32(1u, 3156u), func_2(vec4<bool>(true, true, true, false), Struct_3(Struct_1(187f, vec3<u32>(20445u, arg_2.x, 0u))), Struct_3(Struct_1(-770f, vec3<u32>(arg_1, 0u, arg_2.x)))))));
    var var_2 = ~_wgslsmith_clamp_vec2_u32(countOneBits(min(~var_1.yx, firstLeadingBit(vec2<u32>(0u, var_1.x)))), select(vec2<u32>(_wgslsmith_mod_u32(arg_1, 1u), arg_2.x), vec2<u32>(~4294967295u, arg_2.x >> (31577u % 32u)), vec2<bool>(true, true)), arg_2);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f) + 1839f), _wgslsmith_f_op_f32(max(-1736f, _wgslsmith_f_op_f32(-1410f * 198f))), min(-2487i, arg_0.x) == select(-1i, var_0.x, true))))), vec3<u32>(~(arg_2.x | u_input.a), 1u, ~(~4294967295u)));
    let var_4 = _wgslsmith_mult_u32(var_1.x, 77878u);
    return vec2<u32>(~func_3(), var_2.x);
}

fn func_4(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(i32(-1i) * -3145i, abs(0i))) & vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 30894i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(17787i, 1i, -2147483647i, 6014i), vec4<i32>(23485i, -1i, 16601i, -2147483647i)))), ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i) * -vec2<i32>(25899i, -1i)));
    let var_1 = Struct_5(true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(2007f, 228f), _wgslsmith_f_op_f32(1573f + -883f), _wgslsmith_f_op_f32(ceil(1427f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1739f, -2334f, 3293f))))))));
    return Struct_2(Struct_1(-845f, max(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(66544u, u_input.a, u_input.a), vec3<u32>(arg_0.x, 4294967295u, 32762u))), vec3<u32>(1u, 0u, u_input.a) << (firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 4294967295u)) % vec3<u32>(32u)))), _wgslsmith_clamp_vec2_i32(~(~(-vec2<i32>(94i, var_0))), vec2<i32>(var_0, -var_0) << (firstLeadingBit(_wgslsmith_mod_vec2_u32(arg_0, vec2<u32>(u_input.a, 0u))) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0)) >> (((vec2<u32>(4294967295u, 60913u) << (arg_0 % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(1u, 28228u)) % vec2<u32>(32u))) % vec2<u32>(32u))), Struct_1(var_1.b.x, max(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1519u, 14093u), vec3<u32>(arg_0.x, 28135u, u_input.a)), vec3<u32>(_wgslsmith_add_u32(u_input.a, 16095u), _wgslsmith_mult_u32(1u, 42217u), arg_0.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f * _wgslsmith_f_op_f32(min(var_1.b.x, -313f)))), ~max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 66481u, 0u), vec3<u32>(arg_0.x, u_input.a, 34433u)), vec3<u32>(0u, u_input.a, u_input.a))), _wgslsmith_mod_u32(arg_0.x, 30461u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f), -1290f);
    var var_1 = func_4(firstLeadingBit(func_1(vec4<i32>(1i, i32(-1i) * -21002i, 1i, -26754i), 125270u, ~vec2<u32>(28376u, u_input.a))));
    var var_2 = Struct_3(func_4(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), var_1.a.b.yy)).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.b.x, -31585i, 2147483647i, firstTrailingBit(40762i)), var_2.a.a, ~4294967295u, vec2<u32>(var_1.e, 4294967295u));
}

