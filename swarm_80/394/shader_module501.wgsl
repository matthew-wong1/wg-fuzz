struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(31050i, -22847i, 2147483647i, 42231i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(1196f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(474f)) + -1061f));
    global0 = firstTrailingBit(-vec4<i32>(_wgslsmith_sub_i32(0i << (u_input.a.x % 32u), _wgslsmith_sub_i32(47270i, global0.x)), 1i, max(firstLeadingBit(17865i), _wgslsmith_dot_vec2_i32(u_input.b.wz, vec2<i32>(u_input.b.x, -20249i))), u_input.b.x));
    global0 = firstTrailingBit(vec4<i32>(global0.x, abs(abs(0i)), ~(-2147483647i), ~(-u_input.b.x))) ^ reverseBits(min(vec4<i32>(-global0.x, 4768i, _wgslsmith_mod_i32(-39637i, global0.x), _wgslsmith_mult_i32(u_input.b.x, global0.x)), countOneBits(vec4<i32>(2147483647i, -25316i, u_input.b.x, u_input.b.x))));
    global0 = vec4<i32>(_wgslsmith_mod_i32(~global0.x, -abs(~1i)), u_input.b.x, global0.x << (u_input.a.x % 32u), -1258i);
    let var_1 = arg_3.a;
    return ~vec2<u32>(u_input.a.x << ((_wgslsmith_clamp_u32(90268u, u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u)) % 32u), firstTrailingBit(countOneBits(max(13334u, u_input.a.x))));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2653f - -1464f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(913f, -209f, false)))), -591f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(275f)) + -1000f))));
    let var_1 = _wgslsmith_div_f32(var_0.a.a.x, var_0.a.a.x);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.a.a))) - var_0.a.a)));
    let var_2 = -u_input.b.xyy;
    var var_3 = func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.a - vec4<f32>(-241f, -730f, 1644f, -710f))))), var_0.a.a.x, -645f, Struct_2(var_0.a));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1))))), _wgslsmith_f_op_f32(abs(-1000f))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = u_input.b;
    global0 = vec4<i32>(-5296i, i32(-1i) * -6538i, u_input.b.x ^ (max(u_input.b.x, 0i) ^ -4394i), min(~_wgslsmith_mod_i32(3847i, -2147483647i), _wgslsmith_mult_i32(1i, global0.x)));
    global0 = u_input.b;
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))))));
    let var_1 = vec4<bool>(true, arg_0, false, !(!any(vec3<bool>(arg_0, true, arg_0))));
    return ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), vec4<i32>(global0.x, 2147483647i, global0.x, global0.x) << (vec4<u32>(arg_2, 0u, 59141u, u_input.a.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(u_input.b >> (vec4<u32>(64978u, u_input.a.x, 34380u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -24075i, u_input.b.x, u_input.b.x), u_input.b)), vec4<i32>(global0.x, ~u_input.b.x, _wgslsmith_add_i32(-u_input.b.x, 2147483647i), reverseBits(u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<i32>(min(global0.x, countOneBits(u_input.b.x)), -_wgslsmith_dot_vec2_i32(u_input.b.ww, global0.zw << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), u_input.b.x >> (~(4294967295u >> (u_input.a.x % 32u)) % 32u), ~u_input.b.x);
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 508f), _wgslsmith_f_op_f32(ceil(-484f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(258f)), _wgslsmith_f_op_f32(f32(-1f) * -115f))), 1702f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(744f, 337f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f * 637f) - 741f)), -128f));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.a.yz + _wgslsmith_f_op_vec2_f32(var_0.a.xx - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1993f - var_0.a.x), _wgslsmith_div_f32(var_0.a.x, var_0.a.x)), vec2<f32>(-1233f, var_0.a.x)))));
    global0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-15123i, 2147483647i, func_1(true, Struct_1(var_0.a), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) << (~(u_input.a.x & u_input.a.x) % 32u), ~(-global0.x)), u_input.b);
    var var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1118f + var_1.x), var_2.x, -731f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, 1575f, 1275f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 341f, 680f)) - _wgslsmith_f_op_vec3_f32(select(var_0.a.zxx, vec3<f32>(var_1.x, var_1.x, -696f), true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(676f, -321f, -1000f, 2078f) - vec4<f32>(-1562f, 2010f, var_1.x, var_2.x))))));
}

