struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2255f;

var<private> global1: f32 = 578f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(u_input.b, (~_wgslsmith_add_u32(26102u, u_input.a) << (~(~18671u) % 32u)) > min(_wgslsmith_sub_u32(u_input.d << (15389u % 32u), 0u), ~abs(u_input.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-217f, 1637f, 859f, -491f), vec4<f32>(182f, -407f, -529f, 1429f))), vec4<f32>(-1000f, 854f, -268f, -1000f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-322f, -806f, -682f, -1031f)))))) + vec4<f32>(-1707f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(ceil(1649f))), 685f, _wgslsmith_f_op_f32(min(802f, _wgslsmith_f_op_f32(f32(-1f) * -194f))))), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)) | true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1545f, -1406f), vec2<f32>(493f, -1000f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1028f, -1000f)))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)))))));
    var var_1 = -var_0.a.x;
    let var_2 = var_0.a.xy;
    global1 = var_0.c.x;
    var var_3 = 1i;
    return var_0.c.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<f32> {
    global1 = _wgslsmith_f_op_f32(func_3());
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.e, 0i, arg_1.a.x ^ -21849i, abs(arg_1.a.x)), abs(vec4<i32>(u_input.b.x, -2147483647i, u_input.e, u_input.b.x))), firstTrailingBit(_wgslsmith_sub_vec4_i32(~arg_1.a, _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.a.x, -1i, 8335i), arg_1.a)))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1101f, -698f, -109f, arg_1.c.x) - arg_1.c), _wgslsmith_f_op_vec4_f32(exp2(arg_1.c)))))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.c.xz)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-796f, arg_1.e.x))))));
    let var_1 = _wgslsmith_mod_u32(~arg_0.x, _wgslsmith_sub_u32(arg_0.x, min(47062u, arg_0.x))) ^ 0u;
    global1 = var_0.c.x;
    global0 = _wgslsmith_f_op_f32(min(552f, arg_1.c.x));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.c.xwy), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(181f + -441f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = ~(~arg_3.e.a.yww);
    global0 = arg_3.a.x;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(~(~vec4<u32>(15643u, arg_1.d.x, arg_1.d.x, 0u)), arg_0))), !select(any(select(vec4<bool>(false, arg_0.b, arg_0.b, false), vec4<bool>(arg_0.b, false, true, arg_1.b), arg_1.b)), any(!vec2<bool>(arg_1.c.b, arg_3.e.d)), (arg_3.d.x << (24018u % 32u)) > ~arg_3.d.x), Struct_1(vec4<i32>(-1i) * -vec4<i32>(2147483647i, arg_3.c.a.x, -36224i, -1i), true, _wgslsmith_f_op_vec4_f32(exp2(arg_3.c.c)), arg_0.b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -572f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c.x, arg_3.c.c.x)))))), ~vec2<u32>(97376u >> (_wgslsmith_mult_u32(arg_1.d.x, arg_3.d.x) % 32u), 1u & ~arg_1.d.x), Struct_1(-arg_1.c.a, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1123f, -1291f, arg_1.e.c.x, arg_3.e.c.x))) - _wgslsmith_f_op_vec4_f32(round(arg_1.e.c)))), !(arg_3.d.x >= (0u << (u_input.d % 32u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3.c.c.x, -159f), arg_3.c.e)) * vec2<f32>(arg_1.a.x, -133f)), vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.e.c.x, 327f)), 439f)))));
    var var_2 = ~(~(~vec3<u32>(44107u, 22066u, 1u)) << (_wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.c), ~u_input.c | ~vec3<u32>(1u, u_input.a, 4294967295u)) % vec3<u32>(32u)));
    var var_3 = -firstLeadingBit(-1i);
    return arg_0.c.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = -1438f;
    let var_1 = all(!vec4<bool>(!all(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, false, false)), any(vec3<bool>(false, false, false)), false));
    return Struct_1(~u_input.b, true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1062f, -1000f, arg_1.x, 1707f) + vec4<f32>(arg_1.x, -667f, arg_1.x, -731f))))))), all(vec3<bool>(false, select(var_1, var_1, false) && (u_input.e <= arg_3.x), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 + arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -2215f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1139f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(vec2<i32>(u_input.e, u_input.e) << (countOneBits(min(u_input.c.yz, vec2<u32>(u_input.c.x, u_input.c.x))) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, false, vec4<f32>(1352f, 1189f, 1398f, 889f), false, vec2<f32>(-1000f, 1081f)), Struct_2(vec3<f32>(950f, -1000f, -685f), true, Struct_1(vec4<i32>(u_input.e, u_input.e, -1i, 0i), false, vec4<f32>(-827f, 472f, 1098f, 1321f), false, vec2<f32>(-2219f, 1734f)), u_input.c.xx, Struct_1(u_input.b, true, vec4<f32>(-1055f, 188f, -1381f, 1000f), false, vec2<f32>(1020f, -224f))), u_input.b.x, Struct_2(vec3<f32>(-1299f, -136f, -843f), true, Struct_1(vec4<i32>(u_input.b.x, -1i, 0i, u_input.e), false, vec4<f32>(717f, 1000f, -876f, 641f), true, vec2<f32>(1000f, -158f)), vec2<u32>(u_input.d, 4294967295u), Struct_1(u_input.b, true, vec4<f32>(221f, -1263f, 790f, -279f), true, vec2<f32>(-1000f, 1413f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-797f))))), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, i32(-1i) * -u_input.b.x), select(abs(u_input.b.wx), abs(countOneBits(u_input.b.ww)), vec2<bool>(true, true))), select(-u_input.b.wzy, countOneBits(reverseBits(vec3<i32>(0i, u_input.b.x, u_input.e))), false));
    global1 = _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-func_4(~(~vec2<i32>(var_0.a.x, var_0.a.x)), var_0.c.zx, select(vec2<i32>(var_0.a.x, 0i), firstTrailingBit(var_0.a.yz), vec2<bool>(true, var_0.b)), u_input.b.xwx).e.x));
    let var_1 = _wgslsmith_f_op_f32(-var_0.e.x);
    let var_2 = u_input.c;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_0, Struct_2(vec3<f32>(1741f, -284f, var_0.c.x), var_0.d, Struct_1(var_0.a, var_0.b, vec4<f32>(var_1, 354f, var_1, 1087f), var_0.d, vec2<f32>(var_1, 377f)), ~vec2<u32>(var_2.x, var_2.x), func_4(vec2<i32>(56179i, -37159i), vec2<f32>(1000f, var_1), vec2<i32>(u_input.b.x, u_input.e), u_input.b.zxx)), _wgslsmith_mult_i32(~67493i, u_input.e | -47865i), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_1, 962f) - vec3<f32>(var_1, -1000f, var_0.e.x)), true, var_0, vec2<u32>(4294967295u, 6169u), Struct_1(vec4<i32>(u_input.b.x, -66074i, 54439i, -731i), false, var_0.c, false, vec2<f32>(var_1, var_0.c.x))))) + -659f));
    let var_3 = Struct_1(select(countOneBits(vec4<i32>(~u_input.b.x, var_0.a.x, u_input.b.x ^ var_0.a.x, 0i)), u_input.b, var_0.b), true, _wgslsmith_f_op_vec4_f32(floor(var_0.c)), !select(true, false, true), vec2<f32>(2996f, _wgslsmith_f_op_f32(round(var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-965f);
}

