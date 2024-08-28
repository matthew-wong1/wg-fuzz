struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 10216u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<i32> {
    global0 = Struct_1(-vec3<i32>(abs(countOneBits(13402i)), global0.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(global0.a.x, global0.a.x), _wgslsmith_div_i32(44746i, global0.a.x))), abs(~(~_wgslsmith_mult_u32(1155u, u_input.a.x))));
    var var_0 = Struct_1(abs(vec3<i32>(global0.a.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(-44519i, 38633i, -637i, -1i)))), u_input.a.x);
    let var_1 = Struct_1(~((var_0.a & global0.a) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 46175u, global0.b), vec3<u32>(var_0.b, 26356u, global0.b), u_input.a.ywx) & (vec3<u32>(global0.b, 14005u, global0.b) ^ u_input.a.xzw)) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(reverseBits(max(_wgslsmith_add_vec3_u32(u_input.a.ywx, u_input.a.xxy), ~u_input.a.yzz)), vec3<u32>(countOneBits(global0.b), _wgslsmith_dot_vec3_u32(select(u_input.a.xxy, u_input.a.yxy, vec3<bool>(true, true, true)), vec3<u32>(1u, u_input.a.x, 61676u)), 4510u)));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(541f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1540f, !all(vec4<bool>(false, false, true, true))))))));
    global0 = Struct_1(var_1.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(global0.b, 65344u, 0u, 4294967295u)), select(u_input.a, vec4<u32>(53761u, global0.b, 1u, 1u), true)), ~(u_input.a >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, global0.b) % vec4<u32>(32u)))) ^ var_0.b);
    return firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(-(var_0.a & vec3<i32>(var_0.a.x, 13881i, -1i)), vec3<i32>(global0.a.x, global0.a.x, _wgslsmith_div_i32(var_1.a.x, var_1.a.x))), _wgslsmith_div_vec3_i32(countOneBits(var_0.a), min(var_1.a, vec3<i32>(var_1.a.x, var_1.a.x, -14726i))) | min(select(vec3<i32>(var_1.a.x, -1i, 0i), vec3<i32>(14788i, var_0.a.x, var_0.a.x), vec3<bool>(false, false, false)), -global0.a)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = arg_0;
    global0 = Struct_1(min(_wgslsmith_div_vec3_i32(func_3(), arg_0.a), var_0.a), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_div_u32(~0u, ~_wgslsmith_dot_vec3_u32(u_input.a.yyy, u_input.a.zzx))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1015f))))), _wgslsmith_f_op_f32(-639f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -284f))), _wgslsmith_div_f32(1008f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -757f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -495f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(873f))))));
    var var_2 = select(vec4<bool>(select(false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), false, 2147483647i > arg_1, select(true, true, any(vec4<bool>(false, false, false, true))) | true), !(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true)), all(vec4<bool>(var_1.x > var_1.x, false, true, true | any(vec4<bool>(false, false, true, false)))));
    global0 = arg_0;
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_4(arg_0: vec4<f32>) -> vec2<u32> {
    global0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(max(global0.a, global0.a) | countOneBits(vec3<i32>(global0.a.x, 1i, global0.a.x)), global0.a), _wgslsmith_dot_vec3_i32(-(global0.a & global0.a), vec3<i32>(-2147483647i, select(global0.a.x, global0.a.x, true), global0.a.x)), _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -5275i, 0i, -1i), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)), global0.a.x)), min(~15683u, u_input.a.x));
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(vec3<i32>(2147483647i, ~(-global0.a.x) | -1i, 1i), global0.b >> (4294967295u % 32u));
    let var_2 = any(vec3<bool>(any(vec2<bool>(false, true)), true, true)) || false;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-307f * _wgslsmith_f_op_f32(f32(-1f) * -1203f)), -319f)))));
    return firstLeadingBit(abs(~vec2<u32>(u_input.a.x, abs(4294967295u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    let var_0 = -1437f;
    var var_1 = ~(~(~(69578u << (arg_1 % 32u))) << (13466u % 32u));
    var var_2 = vec2<i32>(arg_2.a.x, -28185i);
    var var_3 = 1f;
    var var_4 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, -12697i), -_wgslsmith_mod_vec3_i32(select(vec3<i32>(1i, -36185i, 0i), vec3<i32>(arg_2.a.x, arg_2.a.x, -27459i), arg_0.x), global0.a)), 4294967295u);
    return func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, -365f, 169f, 278f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(695f * var_0), _wgslsmith_f_op_f32(var_0 * var_0), -1266f) * vec4<f32>(470f, -1482f, _wgslsmith_f_op_f32(func_2(Struct_1(arg_2.a, arg_3), -39334i)), _wgslsmith_f_op_f32(-var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(abs(0u), 1190u);
    let var_1 = _wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(~u_input.a, ~(~vec4<u32>(var_0, u_input.a.x, 40612u, 43303u) ^ ~vec4<u32>(28333u, global0.b, 1u, 41507u))));
    let var_2 = func_1(vec4<bool>(_wgslsmith_div_f32(-901f, _wgslsmith_f_op_f32(-676f - 463f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-938f * -1836f))), true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true)) & true, reverseBits(0u | var_0) < _wgslsmith_add_u32(~var_0, ~1u)), ~reverseBits(u_input.a.x), Struct_1(~(-global0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), global0.b ^ 45610u), var_1.ww)), ~global0.b);
    global0 = Struct_1(global0.a, u_input.a.x);
    global0 = Struct_1(vec3<i32>(~_wgslsmith_add_i32(global0.a.x, global0.a.x) & -1i, -2147483647i, global0.a.x), u_input.a.x);
    global0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.a.x, 1i, 1i, 12210i)), vec4<i32>(-2147483647i, 1i, -5305i, -9875i)) & global0.a.x, 1i, 8308i), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a >> (vec4<u32>(var_0, var_1.x, 14812u, var_1.x) % vec4<u32>(32u))), countOneBits(vec4<u32>(1u, var_1.x, global0.b, 9893u))) | _wgslsmith_clamp_u32(var_0, ~60562u, _wgslsmith_dot_vec4_u32(var_1, var_1)));
    global0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(~global0.a.x, 0i & _wgslsmith_mult_i32(2147483647i, global0.a.x), countOneBits(global0.a.x)), countOneBits(global0.a)), abs(global0.b) << (~firstTrailingBit(~64391u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(((18804i >> (u_input.a.x % 32u)) | min(global0.a.x, 1i)) | (global0.a.x | (global0.a.x >> (94814u % 32u))), select(select(2147483647i, 2147483647i, true), global0.a.x | 7053i, !any(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1182f, -655f), _wgslsmith_f_op_f32(-2041f + -537f), _wgslsmith_f_op_f32(sign(545f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(671f, -1707f, -388f) + vec3<f32>(1419f, 441f, 295f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(263f, 465f, -1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-766f, 524f, -791f) * vec3<f32>(357f, -701f, 1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-573f, -349f, -196f))))))), ~global0.b, max(_wgslsmith_mult_i32(~global0.a.x, 24362i), func_3().x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-839f, 2829f), _wgslsmith_f_op_f32(round(-339f)), -1125f, -289f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(371f, 1230f, -1238f, -1000f), vec4<f32>(1177f, -1701f, -1022f, -669f)))))));
}

