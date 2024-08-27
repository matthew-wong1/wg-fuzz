struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<i32>(0i, 0i), 1366u, true, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<i32>(11847i, -48226i), 19600u, false, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<i32>(1i, -1i), 62157u, false, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<i32>(-1i, -52795i), 1u, true, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<i32>(0i, 5830i), 1u, false, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<i32>(35505i, 0i), 4294967295u, false, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<i32>(2147483647i, 25844i), 1u, false, vec2<bool>(true, false))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-421f, -1000f, 2200f, arg_0.x), vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(987f, -238f, arg_0.x, 735f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 127f, -1570f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(856f, arg_0.x, arg_0.x, -1290f) * vec4<f32>(-1902f, -684f, arg_0.x, arg_0.x)))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), 324f, var_0.x);
    let var_2 = !vec3<bool>(true, !any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), select(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), false, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 1u), vec3<u32>(1u, 34350u, 12034u)) < 114095u));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(var_1.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(315f + arg_0.x))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(424f, 741f, var_0.x))))));
    let var_3 = Struct_2(Struct_1(~vec2<i32>(reverseBits(9216i), min(-603i, u_input.a.x)), min(~arg_1, ~arg_1) << (~(~arg_1) % 32u), _wgslsmith_f_op_f32(-arg_0.x) != _wgslsmith_f_op_f32(-var_0.x), !select(select(var_2.yx, vec2<bool>(var_2.x, var_2.x), var_2.yy), select(var_2.xy, var_2.yz, false), var_2.x)));
    return var_3.a.c;
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<bool>(true, ((true | all(vec2<bool>(false, false))) && false) | !func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1032f, 294f, -441f))), ~1u));
    let var_1 = global0[_wgslsmith_index_u32(abs(countOneBits(1u)), 7u)];
    var var_2 = vec3<i32>(~var_1.a.a.x, u_input.a.x, _wgslsmith_mult_i32(reverseBits(-u_input.a.x), -1i));
    var var_3 = abs(abs(_wgslsmith_sub_vec3_u32(max(vec3<u32>(0u, 52748u, var_1.a.b), vec3<u32>(var_1.a.b, var_1.a.b, 1u)) | ~vec3<u32>(var_1.a.b, var_1.a.b, var_1.a.b), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, var_1.a.b) << (vec3<u32>(var_1.a.b, var_1.a.b, 4294967295u) % vec3<u32>(32u)), vec3<u32>(var_1.a.b, 1u, var_1.a.b)))));
    var var_4 = var_3.x;
    return global0[_wgslsmith_index_u32(~var_1.a.b, 7u)];
}

fn func_1() -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_3 {
    return Struct_3(!arg_3.a.c, countOneBits((~vec3<i32>(2147483647i, 0i, -1i) & vec3<i32>(u_input.a.x, u_input.b, 0i)) << (~arg_2 % vec3<u32>(32u))), vec3<f32>(arg_1.x, -923f, arg_1.x), ~_wgslsmith_dot_vec3_u32(select(~vec3<u32>(arg_2.x, arg_2.x, 4294967295u), arg_2 << (arg_2 % vec3<u32>(32u)), vec3<bool>(true, true, true)), arg_2), arg_3.a.c);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> vec3<i32> {
    return vec3<i32>(2147483647i, -_wgslsmith_sub_i32(arg_3.b.x, u_input.a.x), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 7>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(-986f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(686f * 968f) + _wgslsmith_f_op_f32(1591f + 1163f))), !(abs(u_input.a.x) < _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, u_input.b))))), 1000f, _wgslsmith_f_op_f32(505f + _wgslsmith_f_op_f32(ceil(508f))));
    var var_1 = Struct_3(true, func_5(func_4(u_input.a.x, vec4<f32>(_wgslsmith_div_f32(-383f, -1165f), _wgslsmith_f_op_f32(min(var_0.x, 912f)), 310f, _wgslsmith_f_op_f32(round(-1000f))), vec3<u32>(1u, 1u, 1u), func_1()), false, func_1().a.a.x, Struct_3(_wgslsmith_clamp_u32(12782u, 4294967295u, 0u) <= reverseBits(4294967295u), vec3<i32>(u_input.a.x, -951i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -408f), var_0.x, -1515f), firstLeadingBit(max(14503u, 4294967295u)), true)), _wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(68730u, _wgslsmith_mult_u32(1u, 4294967295u), 45671u)), true);
    var var_2 = ~max(~(firstTrailingBit(vec4<i32>(-10885i, var_1.b.x, u_input.a.x, u_input.a.x)) ^ abs(vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, -2147483647i))), vec4<i32>(abs(var_1.b.x) >> (~var_1.d % 32u), min(~u_input.a.x, func_5(Struct_3(var_1.a, var_1.b, vec3<f32>(-1171f, var_0.x, var_1.c.x), 28758u, var_1.a), var_1.e, -12431i, Struct_3(var_1.e, var_1.b, vec3<f32>(1304f, 662f, 241f), 1u, false)).x), _wgslsmith_div_i32(~u_input.b, _wgslsmith_sub_i32(-43331i, 5909i)), -1i));
    let var_3 = Struct_1(vec2<i32>(var_2.x, -_wgslsmith_div_i32(var_1.b.x, var_2.x ^ u_input.b)), firstLeadingBit(_wgslsmith_div_u32(var_1.d ^ 21800u, abs(1693u)) << (~(~18847u) % 32u)), true, !(!select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(var_1.e, false), !vec2<bool>(false, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec2<u32>(var_1.d, var_3.b) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_1.d, var_3.b), vec2<u32>(var_1.d, var_1.d)) % vec2<u32>(32u)))), var_2.zzz);
}

