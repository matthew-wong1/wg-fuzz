struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, false, false, true, false, true, false, false, false, false, true, false, false, true, true, false, false, true, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_mult_u32((1u << (~u_input.a.x % 32u)) & u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_1.a, u_input.a.x) << ((vec3<u32>(10502u, u_input.c.x, arg_1.b) << (vec3<u32>(arg_1.b, u_input.c.x, arg_1.b) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(arg_1.a, ~u_input.c.x, 59808u | u_input.a.x)));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(arg_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1600f))) + -636f)), -119f);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(var_1, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(select(var_1.x, -1051f, arg_1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -994f))))));
    let var_3 = select(countOneBits(vec4<u32>(5429u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, arg_1.b), vec3<u32>(u_input.a.x, arg_1.a, 4294967295u)) | 1u, countOneBits(u_input.c.x), min(arg_1.a, 4294967295u))), ~vec4<u32>(u_input.c.x, 0u, _wgslsmith_sub_u32(~4294967295u, arg_1.a & u_input.a.x), 0u), !vec4<bool>(!(!arg_1.d.x), !(!arg_1.d.x), false, true));
    var_0 = ~(~45634u);
    return -_wgslsmith_clamp_i32(max(-(~u_input.b), u_input.b), u_input.b, arg_2);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec3<i32>(arg_3.c, abs(func_3(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_3.d.x, false), vec3<bool>(true, true, true), true), Struct_1(arg_2.x & arg_0.x, ~u_input.c.x, _wgslsmith_div_i32(16893i, -1896i), arg_3.d, _wgslsmith_f_op_f32(arg_1 - arg_1)), ~(1i << (arg_2.x % 32u)))), _wgslsmith_mult_i32(countOneBits(u_input.b), -arg_3.c) | -18525i);
    let var_1 = i32(-1i) * -31425i;
    global0 = array<bool, 21>();
    let var_2 = Struct_1(~_wgslsmith_div_u32(1u, ~1u), 13083u, -(~(-func_3(vec3<bool>(false, arg_3.d.x, true), arg_3, var_1))), vec3<bool>(any(!arg_3.d.yy), true, false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2278f - _wgslsmith_f_op_f32(-1500f - -268f))))));
    return func_3(arg_3.d, var_2, 1i ^ reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.yx, var_0.zz), abs(var_0.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    var var_0 = vec4<bool>(false, !all(select(vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(19977u, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], true))), true, true);
    global0 = array<bool, 21>();
    var_0 = vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(1u, u_input.c.x), 0u), 21u)], var_0.x, var_0.x);
    var var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, u_input.b | 1i, firstLeadingBit(-27042i)) << (~abs(vec3<u32>(1u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(u_input.b, u_input.b, arg_0.x)) << (firstLeadingBit(~vec3<u32>(arg_1, u_input.c.x, 4294967295u)) % vec3<u32>(32u))), abs(firstTrailingBit(-vec3<i32>(0i, -1i, 0i)) >> (vec3<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 37257u), u_input.a.x) % vec3<u32>(32u))));
    var_1 = ~vec3<i32>(12654i, var_1.x, max(-func_2(u_input.a, 1000f, vec4<u32>(25154u, 14832u, 1u, u_input.a.x), Struct_1(0u, 4294967295u, -2147483647i, var_0.xzx, -354f)), func_3(vec3<bool>(true, true, var_0.x), Struct_1(arg_1, 89796u, 0i, vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), 1140f), -24203i)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-353f))))), 570f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 21>();
    var var_0 = !vec3<bool>(any(!select(vec4<bool>(global0[_wgslsmith_index_u32(49503u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(12727u, 21u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), !(!global0[_wgslsmith_index_u32(abs(u_input.c.x), 21u)]), global0[_wgslsmith_index_u32(~(min(u_input.a.x, 4294967295u) >> (23344u % 32u)), 21u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1748f, -2653f, _wgslsmith_f_op_f32(select(128f, 612f, false))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(func_1(vec2<i32>(-2147483647i, 2147483647i), 156949u)), _wgslsmith_f_op_f32(-1596f - -1077f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(945f, 935f, -1323f)))))));
    let var_2 = var_0.x;
    var var_3 = -34792i;
    var var_4 = 1i;
    var_0 = vec3<bool>(u_input.a.x > _wgslsmith_sub_u32(select(4294967295u, ~6457u, true), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(25058u, u_input.c.x), u_input.c), countOneBits(u_input.c.x))), var_0.x && false, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(-(~vec4<i32>(42687i, 16913i, u_input.b, u_input.b)), reverseBits(vec4<i32>(u_input.b, 6291i, u_input.b, u_input.b)) & vec4<i32>(u_input.b, -2147483647i, 22289i, 2147483647i)), ~24438i, -vec4<i32>(2147483647i, -2147483647i, u_input.b, 0i) ^ vec4<i32>(u_input.b, u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b) & u_input.b, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(313f, var_1.x)) + var_1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(-1i, u_input.b), _wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, u_input.c.x))), var_1.x)), vec4<f32>(-932f, -350f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + var_1.x)))), 890f));
}

