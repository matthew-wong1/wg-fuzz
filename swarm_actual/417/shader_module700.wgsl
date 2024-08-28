struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: vec3<i32> = vec3<i32>(-9821i, 0i, 19641i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_1(~((vec4<u32>(arg_0.c.x, arg_0.c.x, 84818u, arg_0.c.x) << (vec4<u32>(arg_0.c.x, arg_0.c.x, 30937u, 1u) % vec4<u32>(32u))) | vec4<u32>(9078u, arg_0.c.x, arg_0.c.x, arg_0.c.x)) << ((~(~vec4<u32>(0u, arg_0.c.x, 0u, arg_0.c.x)) & vec4<u32>(reverseBits(arg_0.c.x), arg_0.c.x, 1u, arg_0.c.x)) % vec4<u32>(32u)), ~1u, arg_0.b.x <= _wgslsmith_f_op_f32(select(1981f, -656f, false)), arg_0.c);
    let var_1 = Struct_1(var_0.a, countOneBits(~(~1u)), true, ~(~(~arg_0.c)));
    var var_2 = vec2<f32>(1688f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, 542f)) + arg_0.b.x));
    let var_3 = Struct_2(vec3<bool>(countOneBits(~0u) <= ((14087u << (1u % 32u)) | (var_0.d.x | 0u)), all(arg_0.a), !arg_0.a.x & (0u < (936u | var_0.d.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-872f, _wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f + var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(635f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.x, 1453f, var_2.x, arg_0.b.x), _wgslsmith_div_vec4_f32(arg_0.b, arg_0.b))))), var_0.a.ww);
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x)), _wgslsmith_div_f32(1000f, var_2.x))))), 1190f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f) * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(ceil(-1000f)), var_0.c))));
    return ~var_1.a;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    global0 = -global2.x;
    global2 = u_input.b.xwx;
    global2 = -max(~select(arg_0, vec3<i32>(44573i, arg_0.x, 12067i) | u_input.b.wxy, vec3<bool>(arg_2.x, arg_2.x, arg_3.a.x)), vec3<i32>(2147483647i, 11244i, arg_0.x));
    global0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i ^ global2.x, -36101i) | -_wgslsmith_dot_vec3_i32(vec3<i32>(-20616i, global2.x, 42050i), u_input.b.wyw), 0i);
    return var_0.c.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1((func_2(Struct_2(vec3<bool>(false, true, false), vec4<f32>(541f, 537f, 173f, 702f), vec2<u32>(45707u, 4294967295u))) | vec4<u32>(abs(21342u), ~66094u, func_3(vec3<i32>(global2.x, u_input.a, 2734i), 16070u, vec3<bool>(false, false, true), Struct_2(vec3<bool>(false, false, true), vec4<f32>(-566f, 485f, -1387f, -173f), vec2<u32>(19052u, 137346u))), 1u)) | abs(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(13284u, _wgslsmith_clamp_u32(69704u, 78482u, 11767u))), max(~0u, _wgslsmith_add_u32(70681u, 38285u) | _wgslsmith_dot_vec3_u32(vec3<u32>(51793u, 16261u, 47592u), vec3<u32>(1u, 4294967295u, 26553u)))), !any(vec4<bool>(true, true, true, false)), countOneBits(select(abs(vec2<u32>(1u, 977u)), vec2<u32>(abs(56388u), ~5973u), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))) - -1052f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-771f + 366f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-373f)))));
    global2 = vec3<i32>(~(-u_input.a), 1i, 10763i);
    global1 = abs(1u);
    var var_2 = Struct_1(var_0.a, var_0.a.x, var_0.c, vec2<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(var_0.b, 1u, var_0.a.x, 2704u), var_0.a), _wgslsmith_add_vec4_u32(var_0.a, var_0.a)), var_0.d.x));
    return Struct_1(~(~vec4<u32>(abs(var_2.a.x), _wgslsmith_mod_u32(var_2.d.x, 1u), 20519u, var_0.b)), _wgslsmith_div_u32(max(0u, 1u), ~countOneBits(1u)), any(vec3<bool>(true, var_1 != -1000f, !var_0.c)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.b, var_2.a.x), var_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<bool>(var_0.c, var_0.c, true, !var_0.c);
    global0 = -global2.x ^ 2147483647i;
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1522f)), _wgslsmith_f_op_f32(min(879f, 1187f)), all(var_1.wyz)))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -661f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2136f * 471f) * _wgslsmith_f_op_f32(ceil(586f)))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-491f))))), false, var_0.c);
    let var_2 = var_1.yx;
    let var_3 = Struct_2(!select(var_1.yxz, var_1.wyx, !all(vec4<bool>(var_1.x, false, false, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x << (var_0.b % 32u), firstTrailingBit(0u)), var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(var_0.a.zwz, ~(~vec3<u32>(var_3.c.x, var_3.c.x, 0u) & var_0.a.wyw)), select(-71287i, 2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.wy, global2.zz | vec2<i32>(-5006i, global2.x)) >= _wgslsmith_clamp_i32(~u_input.a, ~u_input.b.x, -2147483647i)), u_input.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_3.b.wxx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-946f, -175f, var_3.b.x) * var_3.b.wyy))) * var_3.b.xzx))));
}

