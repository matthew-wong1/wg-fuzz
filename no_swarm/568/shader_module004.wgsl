struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(808f, -1508f, -205f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, 639f, 850f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, 1000f, var_0.x) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1195f, 159f, -514f)))))));
    let var_1 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, ~u_input.a.x), ~vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~u_input.a.x));
    let var_2 = Struct_3(~firstTrailingBit(var_1) > ~var_1);
    let var_3 = Struct_4(~u_input.a, var_2, u_input.b.x, -29101i, u_input.a.zw);
    return Struct_1(vec3<u32>(~u_input.a.x, 0u, 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(901f + 1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(220f)) + _wgslsmith_f_op_f32(-var_0.x)))), -1721f));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.ww, u_input.b.yx) ^ vec2<i32>(arg_0, arg_0), u_input.b.yz) >> (4294967295u % 32u), ~(0i << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 7704u), vec2<u32>(var_0, var_0)) % 32u)) >> (select(~var_0 ^ 29257u, _wgslsmith_mod_u32(u_input.a.x, 51969u), !all(vec2<bool>(arg_1, true))) % 32u), arg_0, 1i);
    var_1 = _wgslsmith_mod_vec4_i32(u_input.b, min(u_input.b, _wgslsmith_sub_vec4_i32(firstTrailingBit(~u_input.b), -u_input.b)));
    var_1 = reverseBits(u_input.b << (vec4<u32>(abs(min(u_input.a.x, 50817u)), 1u, ~1u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 44788u, u_input.a.x))) % vec4<u32>(32u)));
    var var_2 = select(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), abs(var_1.xz)), -var_1.xz, arg_1);
    return _wgslsmith_sub_i32(max(_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, min(var_2.x, 46604i)), var_2.x), -2147483647i);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec2<u32>) -> vec4<i32> {
    let var_0 = true;
    let var_1 = 102f;
    var var_2 = u_input.b.x;
    let var_3 = Struct_2(func_2(), func_3(-38002i, any(!(!vec4<bool>(true, false, arg_0.x, arg_0.x))), 781f), vec4<f32>(_wgslsmith_f_op_f32(min(-727f, var_1)), _wgslsmith_f_op_f32(step(var_1, 1328f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(316f)), -511f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-203f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1, -271f), _wgslsmith_f_op_f32(-var_1))))));
    var_2 = select(var_3.b, -(min(u_input.b.x, u_input.b.x) & var_3.b), !(!var_0));
    return max(u_input.b >> (~abs(u_input.a) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(-53084i), -2147483647i, firstLeadingBit(~var_3.b), _wgslsmith_mult_i32(_wgslsmith_div_i32(-484i, u_input.b.x), _wgslsmith_sub_i32(8607i, var_3.b))), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>((u_input.b.x <= -1i) || any(vec2<bool>(true, false)), true));
    var var_1 = func_1(var_0, Struct_3(var_0.x | true), firstLeadingBit(vec2<u32>(~u_input.a.x, reverseBits(4294967295u)))) | u_input.b;
    let var_2 = var_1.ww;
    var_1 = vec4<i32>(-1i) * -vec4<i32>(-26104i, _wgslsmith_add_i32(min(u_input.b.x, -13173i), ~var_2.x), var_2.x, u_input.b.x);
    var var_3 = !select(!(!vec3<bool>(var_0.x, var_0.x, true)), select(!select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, var_0.x)), vec3<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), select(var_0.x, var_0.x, var_0.x), all(var_0)), true), false);
    let var_4 = Struct_2(Struct_1(u_input.a.wyx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(258f, 890f, 181f) - vec3<f32>(-480f, -631f, 1131f))))), -u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1046f, _wgslsmith_f_op_f32(877f - 991f), -603f, _wgslsmith_f_op_f32(max(167f, 1266f))), vec4<f32>(1f, _wgslsmith_f_op_f32(floor(-2230f)), _wgslsmith_f_op_f32(-921f + -817f), _wgslsmith_f_op_f32(1614f - -1528f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-223f, 460f, 1455f, -362f), vec4<f32>(946f, 1000f, 1093f, 627f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(908f, 1224f, -2385f, -488f)))))));
    let var_5 = Struct_4(u_input.a, Struct_3(all(vec4<bool>(var_3.x, false, false, var_3.x)) & var_0.x), _wgslsmith_add_i32(min(-var_4.b, var_1.x), -22262i), var_1.x << (var_4.a.a.x % 32u), vec2<u32>(var_4.a.a.x, 1u));
    var var_6 = ~(~u_input.b.yz);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.x);
}

