struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = false;
    var var_1 = arg_0;
    var_1 = Struct_1(select(vec4<u32>(~0u, arg_0.a.x, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_clamp_u32(1u, u_input.b.x, var_1.a.x)), _wgslsmith_mod_u32(~var_1.a.x, arg_0.a.x)), var_1.a ^ vec4<u32>(var_1.a.x, _wgslsmith_sub_u32(4294967295u, arg_0.a.x), 1u, 69619u), select(select(select(vec4<bool>(arg_0.b.x, var_1.b.x, true, true), vec4<bool>(true, var_1.b.x, true, true), vec4<bool>(true, var_1.b.x, arg_0.b.x, true)), !vec4<bool>(var_1.b.x, false, true, true), arg_0.b.x), vec4<bool>(true, any(vec3<bool>(true, true, arg_0.b.x)), false, var_1.b.x), select(select(vec4<bool>(true, false, true, arg_0.b.x), vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), var_1.b.x), select(vec4<bool>(arg_0.b.x, var_1.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, var_1.b.x, arg_0.b.x), vec4<bool>(false, var_1.b.x, false, arg_0.b.x)), vec4<bool>(var_1.b.x, false, var_1.b.x, true)))), select(vec2<bool>(!all(vec3<bool>(var_1.b.x, false, false)), select(true, true, false)), arg_0.b, select(select(vec2<bool>(true, arg_0.b.x), var_1.b, !vec2<bool>(false, var_1.b.x)), vec2<bool>(any(vec3<bool>(arg_0.b.x, var_1.b.x, true)), all(arg_0.b)), true)));
    var var_2 = 1f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 441f, 1946f)))) * vec3<f32>(-308f, _wgslsmith_f_op_f32(-838f - -288f), _wgslsmith_f_op_f32(f32(-1f) * -1838f))))));
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b.x, ~u_input.b.x, arg_0.a.x << (4294967295u % 32u), _wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, 4294967295u)) >> (_wgslsmith_div_vec4_u32(var_1.a, max(arg_0.a, var_1.a)) % vec4<u32>(32u)), vec4<u32>(var_1.a.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(arg_0.a.x, 1u, 0u, 19747u)), reverseBits(38500u), !arg_0.b.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, 51197u), vec2<u32>(arg_0.a.x, 6560u))), ~reverseBits(u_input.b.x)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(func_3(Struct_1(~(~vec4<u32>(46148u, 4294967295u, u_input.b.x, u_input.b.x)), select(!vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), all(vec2<bool>(false, false))))), select(!select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(false, arg_1)), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(true, true))), vec2<bool>(any(vec3<bool>(arg_1, true, arg_1)), false), true), arg_1));
    let var_1 = false;
    var var_2 = var_0;
    var var_3 = true;
    var var_4 = ~(vec4<i32>(abs(u_input.a), reverseBits(arg_0), u_input.a, min(-4778i, u_input.a)) >> (~(~var_2.a) % vec4<u32>(32u))) << (min(firstTrailingBit(var_0.a), firstLeadingBit(~(~vec4<u32>(79090u, u_input.b.x, 72049u, var_2.a.x)))) % vec4<u32>(32u));
    return Struct_1(~var_0.a, var_0.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = func_2(_wgslsmith_div_i32(u_input.a, min(0i, -43627i)), min(-arg_1.x, 27069i) <= (-u_input.a ^ 1i));
    let var_1 = var_0;
    var var_2 = var_0.a.x;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -859f), 3452f, 699f, 664f))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1050f), _wgslsmith_f_op_f32(floor(214f)))), 806f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1112f, -532f) - _wgslsmith_f_op_f32(select(-102f, 578f, var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-416f, -335f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) + _wgslsmith_f_op_f32(floor(225f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-599f + -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-722f, -816f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f + _wgslsmith_f_op_f32(1000f + 1000f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-285f)), _wgslsmith_f_op_f32(-1067f * 177f), var_0.b.x != var_1.b.x)))));
    var_2 = 24421u;
    return _wgslsmith_mod_u32(func_2(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, arg_1.x, arg_1.x, arg_1.x), arg_1, vec4<bool>(false, var_1.b.x, var_0.b.x, var_1.b.x)), vec4<i32>(u_input.a, 1i, arg_1.x, arg_1.x)) << (min(arg_0.x & arg_0.x, u_input.b.x) % 32u), true).a.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~u_input.b.x >> (func_1(~abs(vec4<u32>(0u, 0u, 19720u, 33659u)), -vec4<i32>(u_input.a, u_input.a, u_input.a, 78376i)) % 32u), u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-251f + -116f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1356f - 475f) + _wgslsmith_f_op_f32(-1000f + 1525f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(784f * -789f)))), 1000f));
    let var_2 = (~firstLeadingBit(vec3<i32>(-2147483647i, u_input.a, -2147483647i)) | firstTrailingBit(vec3<i32>(2147483647i, 9151i, 5093i))) << (vec3<u32>(~((20553u ^ var_0) | u_input.b.x), ~(~1u), var_0) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(442f * _wgslsmith_div_f32(var_1, var_1)), -1237f, 457f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -250f)))) * vec3<f32>(1f, 1f, 1f));
    let var_4 = _wgslsmith_mult_i32(u_input.a, -var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(329f, _wgslsmith_f_op_f32(-476f * _wgslsmith_f_op_f32(sign(893f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -541f) * vec2<f32>(var_3.x, 344f)))))), _wgslsmith_div_vec4_u32(func_2(1i, true).a, ~_wgslsmith_mod_vec4_u32(vec4<u32>(494u, 454u, u_input.b.x, 2272u), vec4<u32>(var_0, 4294967295u, var_0, var_0))) >> (firstTrailingBit(select(~vec4<u32>(1u, 4294967295u, var_0, var_0), vec4<u32>(u_input.b.x, u_input.b.x, 17774u, 4294967295u) | vec4<u32>(1u, u_input.b.x, 6720u, 4294967295u), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x - var_3.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1, var_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -462f)))), countOneBits(min(_wgslsmith_sub_vec2_i32(var_2.zx, abs(vec2<i32>(var_4, u_input.a))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_2.x), vec2<i32>(var_2.x, 13940i), var_2.yz), _wgslsmith_mult_vec2_i32(var_2.zx, vec2<i32>(u_input.a, 2147483647i))))), var_3.xx);
}

