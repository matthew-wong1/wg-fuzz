struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> vec2<u32> {
    var var_0 = Struct_1(arg_0.x != (arg_1 >= arg_1), true, u_input.d, u_input.c.xy, u_input.c.x);
    var var_1 = ~firstLeadingBit(arg_1 << (1u % 32u));
    var var_2 = var_0.c;
    var_1 = _wgslsmith_mod_u32(~arg_1, ~(~firstTrailingBit(4294967295u)));
    var var_3 = Struct_1(all(arg_0), true, 9592u, var_0.d, -(~(-u_input.a)));
    return firstTrailingBit(~(~(~vec2<u32>(var_3.c, u_input.b))));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, -399f, 1472f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1972f, -321f) * _wgslsmith_f_op_f32(min(-662f, 1000f))))) * vec4<f32>(208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f - -1784f) - _wgslsmith_f_op_f32(f32(-1f) * -944f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1207f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) - _wgslsmith_f_op_f32(127f * 2189f)) - -239f)));
    var var_1 = -58410i;
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = Struct_1(false, all(!select(var_2.zz, var_2.zx, true)) | any(vec2<bool>(var_2.x, all(vec3<bool>(false, var_2.x, false)))), arg_0, ~countOneBits(_wgslsmith_sub_vec2_i32(min(vec2<i32>(arg_1.x, 59797i), arg_1.yz), abs(vec2<i32>(arg_1.x, u_input.c.x)))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 1i, arg_1.x), _wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 16944i, arg_1.x))), vec3<i32>(_wgslsmith_mod_i32(arg_1.x, u_input.c.x), u_input.a, 31712i)));
    let var_4 = -(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1.x), vec2<i32>(arg_1.x, 2147483647i))) >> (~(~(~vec4<u32>(31833u, 1166u, 1u, arg_2))) % vec4<u32>(32u)));
    return var_0.wwx;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = (~arg_1 << (45199u % 32u)) | 0u;
    var_0 = ~(~arg_1);
    var var_1 = -vec4<i32>(((u_input.a << (u_input.d % 32u)) << (arg_1 % 32u)) << (~(~0u) % 32u), i32(-1i) * -33732i, u_input.a ^ ~(-u_input.a), ~(~select(-52457i, u_input.a, false)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2492f, arg_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1093f)))), _wgslsmith_f_op_f32(f32(-1f) * -338f)))), ~countOneBits(vec2<u32>(abs(21871u), arg_1)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(-1715f, arg_0.x, -1183f)) * vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(round(963f)), _wgslsmith_f_op_f32(-558f * arg_0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-142f, var_2.a.x)), _wgslsmith_f_op_f32(step(-1000f, -1000f)), _wgslsmith_f_op_f32(min(-1070f, var_2.a.x))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, -793f, 1732f))))), _wgslsmith_clamp_vec2_u32(var_2.b, func_3(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), func_3(vec4<bool>(false, true, true, true), 929u).x), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_2.b.x, var_2.b.x)), vec2<u32>(u_input.d, var_2.b.x)), _wgslsmith_mod_vec2_u32(var_2.b, ~var_2.b))));
    return 406f;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = -2247f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f * 1028f)));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_sub_u32(u_input.b, ~1u), arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.d, u_input.b) % vec2<u32>(32u)), func_3(vec4<bool>(false, true, true, true), 32998u)))), _wgslsmith_sub_u32(12532u, abs(u_input.b)) >> (_wgslsmith_add_u32(func_3(vec4<bool>(true, true, true, true), u_input.b).x, 0u) % 32u), -419f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(u_input.d, vec3<i32>(1i, 0i, -90389i), 0u)).x + _wgslsmith_f_op_vec3_f32(func_4(u_input.d, vec3<i32>(2147483647i, 25733i, arg_1), u_input.d)).x), _wgslsmith_f_op_f32(f32(-1f) * -432f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + -369f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2242f + 297f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2340f, -1000f, 2034f)), 18468u, _wgslsmith_f_op_f32(floor(-1519f)))) * 796f)));
    var var_1 = vec2<u32>(~firstLeadingBit(~18285u), min(0u, 0u)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(36631u, u_input.d), vec2<u32>(41444u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 77873u, 62580u), vec3<u32>(u_input.b, 61808u, u_input.d)))) % vec2<u32>(32u));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(620f, -199f, -250f) * vec3<f32>(-992f, -152f, 262f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-2192f, -1581f)), _wgslsmith_f_op_f32(1024f - 166f), _wgslsmith_div_f32(-241f, -138f)))), abs(~abs(~vec2<u32>(0u, u_input.b))));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a, u_input.c.x, firstTrailingBit(i32(-1i) * -6130i)) ^ _wgslsmith_add_vec3_i32(~u_input.c, -firstLeadingBit(vec3<i32>(u_input.c.x, 56700i, arg_2.x)));
    let var_1 = !select(!select(vec4<bool>(false, true, arg_1, false), !vec4<bool>(false, false, arg_1, true), all(vec2<bool>(true, arg_1))), select(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, true)), vec4<bool>(false, true, u_input.d >= arg_0.b.x, arg_1), !(!vec4<bool>(true, arg_1, true, false))), false);
    return Struct_1(!any(!var_1), !(!(arg_0.a.x == 712f) | any(var_1.zyz)), firstTrailingBit(_wgslsmith_mod_u32(u_input.b, 0u) >> (~u_input.d % 32u)), _wgslsmith_add_vec2_i32(var_0.xy, vec2<i32>(1i, 7929i)), -5456i);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = 40617i;
    var var_1 = func_6(func_2(~countOneBits(vec3<i32>(var_0, u_input.a, var_0)) >> (vec3<u32>(abs(4294967295u), 1u ^ u_input.b, u_input.d) % vec3<u32>(32u)), ~u_input.c.x), arg_0.x, u_input.c.yy);
    var_1 = func_6(func_2(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.d, vec2<i32>(0i, -38320i)), 515i, reverseBits(_wgslsmith_mod_i32(var_0, -577i))), abs(_wgslsmith_add_i32(max(-2147483647i, u_input.a), 30086i))), (4135i >> (1u % 32u)) != u_input.a, vec2<i32>(-1i, i32(-1i) * -33976i));
    var_1 = Struct_1(!arg_0.x, false, var_1.c, vec2<i32>(reverseBits(_wgslsmith_mod_i32(var_1.e, -2147483647i)), max(1i, var_1.e)), var_1.d.x);
    var_1 = func_6(func_2(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-2477i, -46728i, 52309i)), min(vec3<i32>(-1i, u_input.a, 10976i), ~vec3<i32>(var_0, -1i, var_0))), ~(_wgslsmith_add_i32(var_1.d.x, 2147483647i) & -2147483647i)), all(vec4<bool>(var_1.a, any(!vec3<bool>(var_1.b, arg_0.x, true)), var_1.a, var_1.a)), var_1.d & _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(54389i, 0i), vec2<i32>(var_1.e, var_0)), -select(vec2<i32>(1949i, var_1.e), var_1.d, vec2<bool>(false, arg_0.x))));
    return func_6(Struct_2(_wgslsmith_div_vec3_f32(func_2(_wgslsmith_add_vec3_i32(u_input.c, u_input.c), min(7650i, u_input.c.x)).a, vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1000f, 493f)), vec2<u32>(min(var_1.c, ~0u), _wgslsmith_mod_u32(~51708u, _wgslsmith_sub_u32(0u, var_1.c)))), any(select(select(!arg_0.zwx, !vec3<bool>(arg_0.x, var_1.b, false), vec3<bool>(true, var_1.b, var_1.b)), arg_0.xww, select(arg_0.zxy, vec3<bool>(var_1.a, var_1.a, arg_0.x), arg_0.x))), u_input.c.xy);
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = -506f;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)));
    let var_2 = select(select(vec4<bool>(func_6(Struct_2(vec3<f32>(arg_0, -139f, arg_0), vec2<u32>(22675u, 27540u)), func_1(vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a)).a, -vec2<i32>(arg_1.d.x, -1i)).a, arg_1.a, _wgslsmith_f_op_f32(ceil(-750f)) == 358f, false), !select(vec4<bool>(arg_1.b, arg_1.b, arg_1.a, arg_1.b), vec4<bool>(arg_1.b, true, true, true), true), select(vec4<bool>(false, !arg_1.a, all(vec2<bool>(arg_1.a, false)), true), select(!vec4<bool>(arg_1.a, arg_1.b, true, arg_1.a), vec4<bool>(false, true, arg_1.b, arg_1.a), arg_1.e > -24120i), vec4<bool>(!arg_1.a, !arg_1.b, all(vec2<bool>(false, arg_1.b)), all(vec2<bool>(false, true))))), !vec4<bool>(func_6(Struct_2(vec3<f32>(-688f, arg_0, 877f), vec2<u32>(u_input.d, 0u)), arg_1.b, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, 17140i), vec2<i32>(286i, arg_1.d.x))).a, false, true, true), !vec4<bool>(true, true, func_6(func_2(vec3<i32>(arg_1.e, arg_1.d.x, u_input.a), u_input.a), true, max(vec2<i32>(u_input.a, 2147483647i), arg_1.d)).a, !arg_1.a));
    let var_3 = _wgslsmith_clamp_vec2_i32(u_input.c.yx, -(~vec2<i32>(u_input.a, -arg_1.d.x)), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 7124i), 2147483647i) ^ u_input.c.yx);
    var_1 = -234f;
    return var_2.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(308f, func_1(select(vec4<bool>(all(vec2<bool>(false, false)), true, true, false), vec4<bool>(false, any(vec3<bool>(true, false, false)), true, true), vec4<bool>(true, true, true, true))));
    var_0 = func_7(1f, func_6(func_2(u_input.c, 1i), any(!select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false)), ~func_6(func_2(vec3<i32>(-88103i, u_input.c.x, u_input.a), -29360i), false, -vec2<i32>(-2147483647i, u_input.c.x)).d));
    var_0 = func_7(_wgslsmith_f_op_f32(floor(-1265f)), Struct_1(all(vec3<bool>(true, var_0.x, true)), func_1(!select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, false, true, var_0.x))).b, _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(u_input.b ^ 2841u, ~33597u)), vec2<i32>(u_input.c.x, max(1i << (u_input.b % 32u), _wgslsmith_add_i32(u_input.a, u_input.c.x))), ~abs(_wgslsmith_sub_i32(3964i, 1i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1597f, 1295f, 463f, -768f))))))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1560f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f + -1381f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-997f, 1451f)))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-673f, 1000f, 1429f)))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-418f)) * _wgslsmith_div_f32(671f, -1062f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-642f, _wgslsmith_f_op_f32(select(261f, 922f, false))))));
    var var_2 = u_input.b;
    var_0 = !select(vec3<bool>(!all(vec4<bool>(false, true, var_0.x, false)), ~27545u != select(u_input.d, u_input.d, false), true), func_7(var_1.x, func_1(vec4<bool>(true, var_0.x, var_0.x, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, var_0.x)), select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, false, false)), !vec3<bool>(var_0.x, false, true), true), select(!vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, var_0.x), vec3<bool>(false, true, false)), false)));
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.d, 15276u));
}

