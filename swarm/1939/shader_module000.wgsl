struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_2(329f, u_input.a, 0u ^ ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.e.x, u_input.c, 0u, u_input.e.x), vec4<u32>(0u, 30569u, u_input.e.x, u_input.d)), abs(vec4<u32>(u_input.e.x, 33219u, 18549u, u_input.d))), true);
    let var_1 = ~max(u_input.a, var_0.b);
    var var_2 = abs(abs(_wgslsmith_add_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(17193u, u_input.d, 1u, 40668u), vec4<u32>(33237u, 0u, 0u, 15170u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, 40063u, var_0.c, u_input.e.x), vec4<u32>(u_input.e.x, 59276u, 18417u, u_input.e.x))), firstLeadingBit(firstTrailingBit(vec4<u32>(58842u, 4294967295u, 24006u, u_input.d))))));
    let var_3 = ~min(1u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(82056u, 63827u, 0u, 76798u), vec4<u32>(6111u, u_input.d, u_input.c, var_2.x))) & 31390u);
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(244f * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1074f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, var_0.a), -1002f)))), arg_2.x, -vec3<i32>(firstLeadingBit(arg_1), 1i, 1i), vec2<u32>(abs(~(~47444u)), ~_wgslsmith_add_u32(select(var_2.x, 4294967295u, true), 32644u)));
    return !(!(!select(select(vec3<bool>(var_4.b, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, arg_2.x)), !vec3<bool>(true, var_4.b, var_0.d), select(vec3<bool>(true, var_4.b, var_4.b), vec3<bool>(var_0.d, false, false), false))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -280f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 821f)), _wgslsmith_f_op_f32(-var_0.a.x));
    var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(897f, arg_0.a.x, 2738f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, -528f, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-364f, -114f, var_0.a.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-568f, var_0.a.x, -407f) * vec3<f32>(1260f, -762f, -1484f))))), true));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -775f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1318f, arg_0.a.x, 238f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-646f, var_1.x, var_0.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(-405f, 233f, arg_0.a.x), vec3<f32>(arg_0.a.x, 594f, -1000f)), func_3(vec3<f32>(-560f, -1317f, 992f), arg_0.c.x, vec2<bool>(true, true))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(-376f)), var_1.x, _wgslsmith_f_op_f32(154f - var_0.a.x))))));
    let var_2 = ~vec2<u32>(41524u, 37239u);
    return vec3<bool>(true, !any(vec4<bool>(false, true || var_0.b, true, false)), arg_0.c.x == _wgslsmith_add_i32(~max(arg_0.c.x, var_0.c.x), 1i));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_2(arg_0.x, u_input.a >> (firstTrailingBit(~vec3<u32>(1u, u_input.e.x, 26406u) | vec3<u32>(u_input.c, 33640u, 0u)) % vec3<u32>(32u)), ~(~u_input.e.x), !((~0u >> (~u_input.d % 32u)) <= _wgslsmith_mult_u32(1613u ^ u_input.c, u_input.e.x)));
    let var_1 = Struct_1(arg_1.yx, var_0.d, vec3<i32>(u_input.a.x, -26679i ^ var_0.b.x, -var_0.b.x), u_input.e);
    var var_2 = func_2(Struct_1(arg_1.zx, _wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_div_f32(var_1.a.x, -631f), var_1.c, ~reverseBits(~vec2<u32>(69492u, 18824u))), vec2<u32>(max(var_1.d.x, ~u_input.e.x), var_0.c) >> (~var_1.d % vec2<u32>(32u)));
    let var_3 = arg_0.yz;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-205f, _wgslsmith_f_op_f32(var_1.a.x + arg_1.x), _wgslsmith_div_f32(var_3.x, -876f), arg_0.x))), _wgslsmith_f_op_vec4_f32(min(arg_0, vec4<f32>(_wgslsmith_f_op_f32(ceil(-358f)), arg_0.x, -1539f, var_0.a))), vec4<bool>(true, false, !var_0.d, true))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = any(vec3<bool>(true, false, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, 1188f, 1958f, -1088f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-421f, 1183f, -1734f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1363f, -1231f, 1000f))))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2067f + 846f), -1744f, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1f))))), false, ~(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -51004i, u_input.a.x), vec3<i32>(u_input.b, u_input.b, -69641i)) >> (vec3<u32>(~30216u, 1u, ~u_input.d) % vec3<u32>(32u))), ~_wgslsmith_div_vec2_u32(max(~vec2<u32>(29660u, 28103u), u_input.e), u_input.e));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 142f))), var_1.a)), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(floor(var_1.a.x)), 1f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<f32>(var_1.a.x, 1243f, 2082f), vec3<bool>(true, var_1.b, var_1.b))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-118f, 2545f, 786f), vec3<f32>(1519f, -817f, -1065f))))), _wgslsmith_mod_i32(min(45289i, -1i), countOneBits(2147483647i)) ^ var_1.c.x, !select(func_2(var_1, var_1.d).yx, func_3(vec3<f32>(var_1.a.x, var_1.a.x, 890f), -61692i, vec2<bool>(false, var_1.b)).zy, var_1.b)).x, reverseBits(var_1.c), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(6344u, ~u_input.c), _wgslsmith_div_u32(u_input.c, 68365u)), abs(~countOneBits(var_1.d.x))));
    var var_3 = Struct_1(var_1.a, false, ~var_1.c, u_input.e);
    let var_4 = !(!vec4<bool>(true, true, select(var_1.b && var_1.b, !var_1.b, true), false));
    let var_5 = u_input.c;
    var_0 = true;
    let var_6 = ~reverseBits(_wgslsmith_mod_i32(-32385i, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1687f, -218f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f) + _wgslsmith_f_op_f32(select(279f, var_1.a.x, var_4.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_3.a)) + _wgslsmith_f_op_vec2_f32(round(var_1.a))), var_1.a)), vec4<f32>(-695f, var_2.a.x, var_1.a.x, 1076f), vec2<u32>(var_1.d.x, var_5), select(abs(~var_3.d.x), min(u_input.c, 1u), var_2.b));
}

