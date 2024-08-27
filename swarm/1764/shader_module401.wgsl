struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.d.zx))));
    let var_1 = _wgslsmith_mult_u32(~reverseBits((arg_2.c.x | arg_2.a.x) | 64292u), _wgslsmith_dot_vec2_u32(~(~arg_2.a.yx), arg_2.a.wx));
    var var_2 = Struct_2(arg_0.b, Struct_1(all(select(!vec3<bool>(arg_2.b.a, arg_2.b.a, false), !vec3<bool>(false, arg_2.b.a, false), arg_0.b.a))), arg_0.b.a);
    var_2 = Struct_2(arg_2.b, Struct_1(all(!vec4<bool>(arg_2.b.a, arg_0.a.a, arg_2.b.a, arg_2.b.a))), arg_0.c);
    let var_3 = arg_2.d;
    return _wgslsmith_add_u32(abs(arg_2.a.x), _wgslsmith_sub_u32(firstTrailingBit(12056u), ~(~1u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = select(vec3<bool>(71237u != func_3(Struct_2(Struct_1(true), Struct_1(true), true), u_input.a, Struct_3(vec4<u32>(0u, 4294967295u, 1u, 0u), Struct_1(true), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), arg_1.zxz)), any(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !vec3<bool>(true, select(true, u_input.c >= 35800i, arg_1.x <= 1465f), any(vec2<bool>(false, false))), vec3<bool>(select(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true, (arg_0.x << (0u % 32u)) != 0i), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), true))));
    var var_1 = Struct_4(var_0.x, arg_1.x, Struct_2(Struct_1(all(!vec3<bool>(true, var_0.x, var_0.x))), Struct_1(var_0.x), !var_0.x), u_input.c, -1210f);
    var var_2 = Struct_1(var_1.a & true);
    var var_3 = arg_1;
    let var_4 = -29922i;
    return Struct_4(any(!(!(!vec4<bool>(false, true, true, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f) + arg_1.x), Struct_2(Struct_1(any(var_0.xz)), var_1.c.b, all(vec4<bool>(!var_1.a, !var_2.a, true, 448f != arg_1.x))), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b.xxw ^ u_input.b.ywy), arg_0), var_3.x);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_4) -> u32 {
    var var_0 = func_2(u_input.b.wxw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(284f, arg_1.x, 725f, arg_3.e), vec4<f32>(523f, 719f, arg_3.e, -1000f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, 880f, arg_3.b, arg_3.e))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.e, -148f, 1302f, arg_3.b) + vec4<f32>(-1400f, arg_1.x, -677f, -1035f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_3.e, 867f, arg_1.x)))))));
    var var_1 = max(vec4<u32>(16706u, _wgslsmith_add_u32(func_3(func_2(vec3<i32>(-11379i, u_input.a, u_input.c), vec4<f32>(var_0.b, arg_1.x, var_0.e, arg_1.x)).c, ~arg_3.d, Struct_3(vec4<u32>(1u, 21032u, 0u, arg_0), var_0.c.a, vec4<u32>(13892u, arg_0, 0u, arg_0), arg_1)), max(4294967295u, ~35706u)), arg_0, abs(arg_0)), ~(~(countOneBits(vec4<u32>(37730u, arg_0, 33485u, 1u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(9774u, arg_0, arg_0, 1u), vec4<u32>(42742u, 1u, arg_0, 1u)) % vec4<u32>(32u)))));
    var var_2 = func_2(vec3<i32>(-u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.www << (var_1.yyx % vec3<u32>(32u)), vec3<i32>(3170i, -2147483647i, 1i)), u_input.b.zwx), min(~u_input.c, 15043i << (~var_1.x % 32u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1117f, -1924f, 709f)), vec4<f32>(arg_3.e, -432f, 700f, 1527f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1094f, 344f, -394f, arg_3.b), vec4<f32>(arg_3.e, arg_3.e, 923f, var_0.b), vec4<bool>(arg_3.a, false, false, arg_2))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(105f, 149f, -892f, 117f), vec4<f32>(-1152f, arg_3.b, -226f, -820f), var_0.c.b.a))))))).c;
    let var_3 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(1u, arg_0), ~var_1.x), vec2<u32>(36809u, arg_0));
    let var_4 = vec3<i32>(1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, u_input.c), u_input.b.zz) | func_2(vec3<i32>(-2147483647i, u_input.c, 0i), vec4<f32>(1090f, arg_1.x, -177f, -1961f)).d) >> (1u % 32u), ~(~(var_0.d & -31258i)));
    return max(var_3.x, _wgslsmith_sub_u32(min(var_3.x, ~firstTrailingBit(arg_0)), ~1u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x));
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.b.wxw, u_input.b.zxw);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(-522f - _wgslsmith_f_op_f32(-arg_1.d.x)))));
    let var_2 = vec4<i32>(u_input.a, 1i, _wgslsmith_dot_vec4_i32(u_input.b, ~(-vec4<i32>(u_input.c, u_input.c, u_input.a, -23125i)) ^ ~(~vec4<i32>(0i, u_input.c, u_input.a, u_input.c))), _wgslsmith_sub_i32(u_input.a, ~_wgslsmith_add_i32(u_input.b.x, -37513i)));
    var var_3 = vec3<bool>(true, _wgslsmith_div_u32(func_4(9770u, arg_1.d, any(vec2<bool>(false, false)), func_2(vec3<i32>(var_2.x, var_2.x, -28697i), vec4<f32>(-1130f, arg_1.d.x, arg_1.d.x, 1180f))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_1.a.x, arg_1.a.x), ~4294967295u, arg_1.c.x)) < 4294967295u, true);
    return func_4(~_wgslsmith_mult_u32(0u, arg_1.a.x), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(ceil(-454f))))), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(vec3<i32>(var_2.x, 1i, -49892i), vec4<f32>(arg_1.d.x, arg_1.d.x, -1764f, -461f)).b)))), all(!vec2<bool>(true, var_2.x != var_2.x)), Struct_4(!any(!vec3<bool>(var_3.x, arg_2.a, var_3.x)), -911f, Struct_2(func_2(~u_input.b.zzy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 333f, 1000f, arg_1.d.x))).c.a, arg_2, !all(vec3<bool>(arg_2.a, true, var_3.x))), -17225i, arg_1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 21337i >> (0u % 32u);
    var_0 = -69055i;
    var var_1 = !(~u_input.b.x <= u_input.c);
    var_0 = _wgslsmith_dot_vec2_i32(u_input.b.wz, _wgslsmith_div_vec2_i32(u_input.b.xw, abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(1i, -50018i), u_input.b.xz << (vec2<u32>(27437u, 66308u) % vec2<u32>(32u))))));
    let var_2 = Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(func_1(Struct_1(false), Struct_3(vec4<u32>(29512u, 0u, 15803u, 4294967295u), Struct_1(true), vec4<u32>(7098u, 4294967295u, 37790u, 0u), vec3<f32>(-343f, -308f, -997f)), Struct_1(false)), 2668u, ~0u, 1u) ^ ~vec4<u32>(4294967295u, 42823u, 1u, 1u), ~(~vec4<u32>(1u, 1u, 1u, 1u))), func_2(u_input.b.wxx, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-414f, 1185f, -704f, 1112f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(974f, 1563f, -495f, -1000f), vec4<f32>(-709f, -1479f, 665f, 753f))))))).c.b, ~(~vec4<u32>(1u, 1u, 1u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec3<i32>(2147483647i, 1i, u_input.c), vec4<f32>(1023f, 1000f, 1000f, -524f)).b)), -1358f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(987f + _wgslsmith_f_op_f32(f32(-1f) * -167f))))));
    var_0 = firstTrailingBit(firstTrailingBit(min(-2147483647i | _wgslsmith_add_i32(26924i, u_input.b.x), _wgslsmith_div_i32(-1i, u_input.b.x) | 27981i)));
    let x = u_input.a;
    s_output = StorageBuffer(470f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, -206f, var_2.d.x, var_2.d.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x) - vec4<f32>(-186f, var_2.d.x, 1345f, var_2.d.x)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_2.d.x * var_2.d.x), 922f, _wgslsmith_f_op_f32(abs(1299f)), _wgslsmith_f_op_f32(-var_2.d.x))))), select(4294967295u, ~_wgslsmith_sub_u32(7835u, ~var_2.c.x), true));
}

