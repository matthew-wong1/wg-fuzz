struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<f32> {
    let var_0 = Struct_3(select(select(vec4<bool>(!arg_1, arg_0 > 14107u, all(vec2<bool>(arg_1, arg_1)), any(vec3<bool>(arg_1, arg_1, true))), !vec4<bool>(true, true, arg_1, false), !select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(true, true, arg_1, true))), select(!vec4<bool>(false, false, false, arg_1), vec4<bool>(true, true, true, true), arg_1), all(!select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(true, true, false, false), vec4<bool>(true, arg_1, arg_1, arg_1)))), 4294967295u);
    let var_1 = !vec4<bool>(any(var_0.a.wx), any(var_0.a.wz), var_0.a.x, arg_1);
    let var_2 = Struct_2(~(~vec2<u32>(arg_0 >> (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 26979u), vec2<u32>(var_0.b, 4592u)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(2315f, 123f, 290f, 599f) - vec4<f32>(-362f, -306f, 675f, 783f)))), vec4<f32>(_wgslsmith_f_op_f32(-480f + -2109f), _wgslsmith_f_op_f32(-2050f - 2372f), _wgslsmith_f_op_f32(step(-722f, -1144f)), 1202f), var_1)))), Struct_1(-select(~vec4<i32>(-1i, u_input.a, -13138i, u_input.a), -vec4<i32>(2147483647i, 30297i, 0i, 23411i), arg_1)), Struct_1(-abs(vec4<i32>(u_input.a, 0i, u_input.b, 1376i))));
    var var_3 = vec4<i32>(29983i, _wgslsmith_dot_vec4_i32(var_2.d.a, _wgslsmith_sub_vec4_i32((var_2.c.a | var_2.d.a) | _wgslsmith_add_vec4_i32(var_2.c.a, vec4<i32>(u_input.c, 1i, -67729i, -20435i)), select(var_2.c.a, vec4<i32>(1818i, 2147483647i, var_2.d.a.x, 0i), vec4<bool>(arg_1, arg_1, false, var_0.a.x)) ^ abs(var_2.d.a))), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(-2308i, u_input.c), u_input.c, abs(_wgslsmith_div_i32(var_2.d.a.x, 2147483647i) ^ var_2.c.a.x)), 2147483647i);
    var var_4 = false;
    return _wgslsmith_f_op_vec3_f32(var_2.b.yyz - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.xxy)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)), 474f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) * 257f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(7087u, true)) + vec3<f32>(-1511f, -1013f, -406f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1302f, -334f, 989f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-171f, -128f, -446f), vec3<f32>(1288f, -1012f, 2094f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1506f, 1115f, 1038f) * vec3<f32>(-969f, -488f, -436f))))));
    var var_1 = var_0.xz;
    var_1 = _wgslsmith_f_op_vec2_f32(var_0.yx - var_0.zz);
    var_1 = _wgslsmith_div_vec2_f32(var_0.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 538f), var_0.x) - vec2<f32>(var_1.x, 1f)));
    var_1 = var_0.zz;
    return Struct_1(abs(vec4<i32>(-u_input.b, 1i, u_input.b, u_input.b)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = ~(~(-_wgslsmith_sub_i32(u_input.a, 0i))) >> (max(_wgslsmith_mult_u32(1u, ~_wgslsmith_sub_u32(4294967295u, arg_0.b)), 0u) % 32u);
    var var_1 = _wgslsmith_dot_vec4_i32(arg_1.a, _wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-69954i, u_input.c, -1i, arg_2)), arg_1.a));
    var_1 = arg_3.d.a.x;
    var_1 = -2147483647i;
    var_1 = 2147483647i;
    return -12043i;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> StorageBuffer {
    var var_0 = i32(-1i) * -(~(-select(arg_0.x, arg_1.x, false)));
    var_0 = _wgslsmith_mult_i32(-arg_1.x, u_input.c);
    var_0 = _wgslsmith_sub_i32(func_4(Struct_3(vec4<bool>(true, select(true, false, false), true, true), 4294967295u), func_2(), firstTrailingBit(u_input.c), Struct_2(max(_wgslsmith_mult_vec2_u32(vec2<u32>(28933u, 0u), vec2<u32>(106579u, 4294967295u)), vec2<u32>(4294967295u, 1u)), vec4<f32>(1f, _wgslsmith_f_op_f32(-401f + 837f), _wgslsmith_f_op_f32(sign(536f)), _wgslsmith_f_op_f32(select(-1000f, 1000f, true))), func_2(), func_2())), _wgslsmith_add_i32(32480i, -2147483647i));
    let var_1 = vec2<bool>(all(vec4<bool>(true, true, true, true)), select(any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)), true, all(vec2<bool>(true, true))));
    var_0 = -7682i;
    return StorageBuffer(_wgslsmith_div_vec2_i32(arg_0, vec2<i32>(_wgslsmith_sub_i32(arg_0.x, u_input.b), _wgslsmith_add_i32(30863i, arg_1.x)) & arg_0), arg_1.xx, reverseBits(vec3<u32>(abs(0u), ~920u, ~19381u)) & vec3<u32>(abs(_wgslsmith_div_u32(0u, 29945u)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(33745u, 1u), abs(vec2<u32>(30513u, 41597u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(439f))), any(select(vec3<bool>(false, var_1.x, false), vec3<bool>(false, var_1.x, true), vec3<bool>(false, true, var_1.x)))))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 37676u), reverseBits(vec3<u32>(4294967295u, 30630u, 1u))), ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(44929u, 77094u, 0u), vec3<u32>(18432u, 100806u, 34207u)), vec3<u32>(1u, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.c, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b ^ u_input.c, u_input.b), u_input.b), u_input.c);
    var var_1 = any(vec3<bool>(0u != _wgslsmith_clamp_u32(44655u, ~58490u, abs(58929u)), false, any(vec4<bool>(true, any(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, true)), true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1353f)), 856f, _wgslsmith_f_op_f32(867f - -110f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    let x = u_input.a;
    s_output = func_1(vec2<i32>(~1i, ~5151i), vec4<i32>(-max(~var_0.x, var_0.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(3353i, u_input.a), _wgslsmith_mult_i32(20934i, 1i)), var_0.x, firstLeadingBit(var_0.x)));
}

