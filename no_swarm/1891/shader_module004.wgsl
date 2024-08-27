struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2366f, 274f, -2753f)))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.x, arg_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), -206f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-918f - -1559f) - arg_0)))));
    let var_1 = !any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x << (arg_2.x % 32u), 6u)] != true, global0[_wgslsmith_index_u32(arg_3, 6u)], global0[_wgslsmith_index_u32(~abs(76467u), 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)]));
    var var_2 = !(!all(vec4<bool>(global0[_wgslsmith_index_u32(abs(arg_2.x), 6u)], false, global0[_wgslsmith_index_u32(firstLeadingBit(58347u), 6u)], true)));
    var_2 = !(any(!select(vec4<bool>(false, var_1, false, global0[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(var_1, true, global0[_wgslsmith_index_u32(37112u, 6u)], false), vec4<bool>(false, var_1, true, true))) & global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(arg_2, arg_2)), 6u)]);
    var var_3 = Struct_1(~vec4<u32>(arg_2.x, ~_wgslsmith_div_u32(arg_2.x, 4294967295u), arg_3, 35189u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -726f, var_0.x, arg_0)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, arg_1.x, 975f) + vec4<f32>(arg_1.x, -747f, 586f, -1000f))))))), ~_wgslsmith_add_i32(u_input.a.x, -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - 189f), 682f, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(round(683f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.x, -1164f)), _wgslsmith_f_op_f32(min(arg_1.x, 654f)), -685f, _wgslsmith_f_op_f32(arg_1.x * arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.x, var_0.x, arg_0)))))));
    return vec4<u32>(u_input.d.x, var_3.a.x, 29036u, _wgslsmith_dot_vec2_u32(~var_3.a.xy, ~(~(~var_3.a.xx))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec4<f32> {
    let var_0 = -(i32(-1i) * -firstLeadingBit(~(-1i)));
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_1 = vec4<u32>(4294967295u, 1u, firstTrailingBit(0u >> (max(u_input.c, u_input.c) % 32u)), _wgslsmith_clamp_u32(countOneBits(arg_0.a.x), 1u, arg_0.a.x)) | ~firstTrailingBit(~arg_0.a);
    var var_2 = Struct_2(min(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, arg_0.a.x, u_input.c, 71086u), vec4<u32>(91807u, var_1.x, 14810u, 1u))), var_1.x), -41367i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -488f, 1573f, 1043f), arg_0.d, vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], true))) - arg_0.d))) + vec4<f32>(_wgslsmith_f_op_f32(-1184f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) + _wgslsmith_f_op_f32(-1260f * -809f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, arg_1))) * arg_1), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(step(-427f, arg_0.d.x)), !(!global0[_wgslsmith_index_u32(arg_0.a.x, 6u)]))), _wgslsmith_f_op_f32(-arg_0.b.x)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global0 = array<bool, 6>();
    var var_0 = Struct_4(-2147483647i, _wgslsmith_mult_i32(u_input.b.x, ~(~14323i)) >> ((u_input.c >> (~u_input.c % 32u)) % 32u), -416f);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.c)), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(trunc(483f)))), var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(func_3(-1909f, vec2<f32>(-710f, var_0.c), vec4<u32>(u_input.c, arg_0.x, u_input.c, 12939u), 4294967295u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c))), -2147483647i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1130f, -120f, -486f, var_0.c)))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) - _wgslsmith_f_op_f32(-142f + -1597f))))), var_0.c <= var_0.c));
    var var_2 = Struct_4(max(-9749i, -4918i), reverseBits(_wgslsmith_mult_i32(reverseBits(_wgslsmith_add_i32(-36667i, -14194i)), firstTrailingBit(-50502i))), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - 2157f) - _wgslsmith_div_f32(var_0.c, 583f)))));
    var_0 = Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 2147483647i, var_2.a), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(1u, arg_0.x, 4294967295u) % vec3<u32>(32u)))), firstTrailingBit(select(countOneBits(vec3<i32>(0i, var_2.b, u_input.a.x)), vec3<i32>(-2147483647i, 1i, 2147483647i) << (arg_0 % vec3<u32>(32u)), !global0[_wgslsmith_index_u32(u_input.d.x, 6u)]))), var_2.b >> (4294967295u % 32u), -1262f);
    return Struct_3(true);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<bool, 6>();
    let var_0 = arg_0.a;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f * 223f)), -899f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-857f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-768f - 605f)))));
    let var_3 = func_2(vec3<u32>(~arg_2.a, 23780u, 27050u));
    return !vec2<bool>(!(!var_3.a != !var_0), !var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 1i);
    let var_1 = all(!(!select(func_1(Struct_3(true), Struct_2(4294967295u, 2147483647i), Struct_2(u_input.d.x, -2147483647i)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], true), global0[_wgslsmith_index_u32(2822u, 6u)])));
    var_0 = reverseBits(u_input.a.x);
    global0 = array<bool, 6>();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1052f * -849f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-247f * -632f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f * -475f) - -190f)), 346f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -501f, -563f, -1203f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1199f, 807f, 1000f, 363f), vec4<f32>(-1000f, -121f, 1454f, 1328f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-136f, -396f, -1045f, -381f)))))))));
    let var_3 = Struct_1(~(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 30021u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.c, u_input.d.x, 1u, 1u)))), vec4<f32>(var_2.x, var_2.x, 191f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-337f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-var_2.x)))), max(i32(-1i) * -(~u_input.b.x), 67152i), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(1f - -1517f), var_2.x, var_2.x));
    let var_4 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(~select(-47864i, -1i << (func_3(612f, vec2<f32>(var_2.x, -1000f), vec4<u32>(u_input.c, 0u, u_input.d.x, 1u), 113344u).x % 32u), var_3.a.x <= u_input.c), vec2<i32>(-1i) * -u_input.b, reverseBits(var_3.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) - var_2));
}

