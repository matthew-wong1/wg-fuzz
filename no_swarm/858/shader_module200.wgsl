struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 19295i, 1i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec2<f32>) -> u32 {
    var var_0 = 0i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - 660f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x)))))), -830f, arg_2.x, arg_0);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_2.x, arg_0)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(776f, -1248f, -266f, -683f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, arg_2.x, var_1.x, 1000f))))))), vec4<f32>(1500f, -1361f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_2.x)) - _wgslsmith_f_op_f32(596f * -193f)), arg_0));
    var var_2 = !((_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-420f + var_1.x))) == arg_0) && false);
    let var_3 = var_1.x;
    return arg_1.d.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> i32 {
    global0 = false;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_2)) * -385f);
    let var_1 = Struct_3(vec4<i32>(countOneBits(-2147483647i ^ max(26066i, global2.x)), arg_1.a, global2.x, global2.x), select(vec4<bool>(any(!arg_1.b), all(select(arg_1.b.yz, vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.b.zx)), _wgslsmith_mod_u32(4294967295u, arg_3) == _wgslsmith_mod_u32(38865u, arg_1.c), -899f < _wgslsmith_f_op_f32(-var_0)), select(!(!vec4<bool>(false, true, false, arg_1.b.x)), vec4<bool>(true, false, var_0 <= arg_2, true), select(vec4<bool>(arg_1.b.x, false, true, true), !vec4<bool>(arg_1.b.x, arg_1.b.x, false, true), vec4<bool>(true, false, false, arg_1.b.x))), true));
    let var_2 = ~u_input.b.ww;
    global0 = all(select(vec2<bool>(false, ~67818u < select(arg_1.c, 295u, false)), vec2<bool>(true, all(var_1.b) || var_1.b.x), arg_1.b.x));
    return i32(-1i) * -39526i;
}

fn func_2() -> vec3<i32> {
    var var_0 = vec4<u32>(32922u, ~u_input.a, 20073u, u_input.b.x);
    var_0 = ~(vec4<u32>(u_input.a, max(var_0.x, 12423u), 46954u >> (0u % 32u), _wgslsmith_div_u32(29876u, 1u)) >> (vec4<u32>(abs(1u), _wgslsmith_div_u32(0u, 42556u), abs(var_0.x), countOneBits(76186u)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, ~_wgslsmith_mult_u32(u_input.a, u_input.a)), abs(~vec4<u32>(101928u, 4294967295u, 3301u, var_0.x))) % vec4<u32>(32u));
    var var_1 = Struct_3(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, -1i, 32637i, 0i), vec4<i32>(-36726i, -2147483647i, 56201i, global2.x), ~vec4<i32>(2147483647i, 18635i, global2.x, global2.x)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, global2.x, 14200i), vec4<i32>(global2.x, global2.x, 0i, 30081i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global2.x, 35661i), vec4<i32>(-2147483647i, 4384i, -55215i, global2.x))), true) ^ vec4<i32>(global2.x >> (var_0.x % 32u), func_4(vec3<u32>(19552u, 42675u, var_0.x), Struct_1(global2.x, vec3<bool>(true, true, true), 0u), -956f, func_3(398f, Struct_4(Struct_3(vec4<i32>(-2147483647i, global2.x, global2.x, global2.x), vec4<bool>(false, false, true, false)), vec2<bool>(true, true), global2.zz, u_input.b, global2.xz), vec2<f32>(405f, 1155f))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-23152i, -2147483647i, -14231i), vec3<i32>(0i, -24219i, 72837i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(16788i, -2147483647i, global2.x), vec3<i32>(-8438i, global2.x, global2.x))), select(!vec4<bool>(true, any(vec3<bool>(false, false, false)), select(false, false, true), any(vec4<bool>(true, false, false, false))), vec4<bool>(false, !all(vec3<bool>(false, false, false)), select(true, true, true), _wgslsmith_sub_i32(global2.x, global2.x) <= (1i >> (var_0.x % 32u))), true));
    var var_2 = Struct_1(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(global2.x, -1i, var_1.a.x & var_1.a.x), var_1.a.x), select(!var_1.b.yzy, select(!select(var_1.b.zyy, vec3<bool>(false, true, var_1.b.x), true), !var_1.b.wzw, !(!vec3<bool>(var_1.b.x, true, var_1.b.x))), -1i != var_1.a.x), 7699u);
    var_0 = vec4<u32>(~4294967295u, abs(var_0.x), u_input.a, _wgslsmith_clamp_u32(~0u, max(~max(47721u, 4294967295u), max(11471u & var_2.c, min(var_0.x, 4294967295u))), firstLeadingBit(~var_0.x) << (var_2.c % 32u)));
    return vec3<i32>(i32(-1i) * -(~(-2147483647i)), _wgslsmith_div_i32(~max(~global2.x, countOneBits(1i)), var_2.a ^ _wgslsmith_div_i32(-1443i, var_2.a << (var_2.c % 32u))), -23424i << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x & var_0.x, 1u), var_0.zy) % 32u));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    global0 = true;
    return Struct_1(_wgslsmith_dot_vec3_i32(arg_2.a.a.wzw, func_2() ^ ~(~vec3<i32>(global2.x, global2.x, global2.x))), arg_2.a.b.wwz, firstTrailingBit(369u));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec4<i32> {
    global2 = vec3<i32>(func_4(select(~vec3<u32>(0u, 1u, 0u), ~vec3<u32>(40852u, u_input.b.x, 4294967295u), true) | u_input.b.yzz, arg_0, -247f, ~(~1u)), ~1i, global2.x);
    var var_0 = ~arg_0.c;
    let var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 0u, ~16370u, ~u_input.b.x), _wgslsmith_div_vec4_u32(select(u_input.b, ~select(u_input.b, u_input.b, true), vec4<bool>(!arg_0.b.x, arg_0.a == arg_0.a, true, true)), vec4<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(arg_0.c, arg_0.c, 1u)), ~u_input.b.xzy), ~(arg_0.c & 46138u), ~4041u ^ _wgslsmith_clamp_u32(1u, u_input.b.x, 38689u), arg_0.c)), vec4<u32>(_wgslsmith_mult_u32(0u, u_input.b.x >> (~1u % 32u)), _wgslsmith_add_u32(0u, ~(~62050u)), select(3321u >> (~u_input.a % 32u), _wgslsmith_div_u32(1u, 9032u) >> (arg_0.c % 32u), true), u_input.a));
    let var_2 = arg_0.b;
    var_0 = ~_wgslsmith_sub_u32(u_input.a, var_1.x);
    return _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(global2.x, max(39369i, global2.x), i32(-1i) * -2147483647i, arg_0.a), -(~vec4<i32>(-1i, global2.x, 0i, 0i)), true), select(~abs(-vec4<i32>(2147483647i, -18980i, 15123i, arg_0.a)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-20006i, global2.x, 42734i, arg_0.a) >> (u_input.b % vec4<u32>(32u)), -vec4<i32>(-4695i, -2147483647i, -38242i, -2147483647i)), firstLeadingBit(vec4<i32>(global2.x, 0i, arg_0.a, -20558i)) | vec4<i32>(-5090i, 0i, arg_0.a, 1i)), select(true, var_2.x, !arg_0.b.x)), ~(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, 0i, -2147483647i, arg_0.a), vec4<i32>(-178i, global2.x, arg_0.a, arg_0.a)) & abs(vec4<i32>(arg_0.a, 2147483647i, -2147483647i, global2.x))) ^ ~select(-vec4<i32>(-4231i, arg_0.a, 1i, arg_0.a), countOneBits(vec4<i32>(arg_0.a, 0i, 0i, arg_0.a)), vec4<bool>(true, true, true, true)));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(617f, _wgslsmith_f_op_f32(f32(-1f) * -703f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-227f * -1506f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(736f - 325f), _wgslsmith_div_f32(-1419f, 541f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f * -1000f)))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f - 1426f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-464f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-199f)))))), _wgslsmith_div_f32(597f, _wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(floor(-218f)))));
    let var_1 = func_1(arg_1.wx, _wgslsmith_mult_i32(arg_0.c.x, func_1(arg_0.d.wx, -(~global2.x), arg_0).a), arg_0);
    global0 = var_1.a > 1i;
    let var_2 = _wgslsmith_mult_u32(var_1.c, _wgslsmith_dot_vec3_u32(arg_0.d.yxz, arg_0.d.xzw)) | var_1.c;
    return Struct_3(arg_0.a.a, !(!vec4<bool>(false, var_2 != 4294967295u, var_1.b.x != arg_0.b.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -970f;
    var var_0 = func_6(Struct_4(Struct_3(func_5(func_1(u_input.b.xx, global2.x, Struct_4(Struct_3(vec4<i32>(global2.x, global2.x, -19272i, 19604i), vec4<bool>(false, true, false, true)), vec2<bool>(false, false), global2.zz, vec4<u32>(u_input.a, u_input.a, 14558u, u_input.a), global2.zz)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))), vec2<bool>(true, true), ~(_wgslsmith_mult_vec2_i32(global2.xx, global2.yx) >> (~u_input.b.zz % vec2<u32>(32u))), select(u_input.b, vec4<u32>(~u_input.a, firstLeadingBit(u_input.b.x), _wgslsmith_add_u32(68990u, 26769u), u_input.a), true & all(vec3<bool>(false, true, true))), global2.yz), min(_wgslsmith_div_vec4_u32(~firstLeadingBit(u_input.b), (vec4<u32>(u_input.b.x, u_input.a, 0u, 4294967295u) >> (vec4<u32>(u_input.a, 4294967295u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) & vec4<u32>(u_input.a, 7344u, 41896u, u_input.b.x)), u_input.b << (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u)), vec4<u32>(u_input.a, 0u, 1787u, u_input.a)) % vec4<u32>(32u))), true);
    var_0 = func_6(Struct_4(Struct_3(vec4<i32>(func_5(Struct_1(var_0.a.x, var_0.b.ywz, u_input.a), var_0.b.x).x, 33488i, _wgslsmith_add_i32(global2.x, global2.x), global2.x), var_0.b), var_0.b.wx, vec2<i32>(_wgslsmith_dot_vec2_i32(~global2.xx, var_0.a.xx), global2.x), vec4<u32>(0u, 58891u, _wgslsmith_dot_vec2_u32(~u_input.b.wz, ~u_input.b.yx), _wgslsmith_mult_u32(25988u, 37072u) | (u_input.b.x << (u_input.a % 32u))), var_0.a.yx), u_input.b, false);
    var var_1 = Struct_3(countOneBits(var_0.a), vec4<bool>((false && (true == var_0.b.x)) | (global2.x <= -4894i), !all(vec2<bool>(true, true)), all(vec4<bool>(var_0.b.x, false, !var_0.b.x, false)), any(!(!vec2<bool>(var_0.b.x, false)))));
    let var_2 = Struct_2(vec2<f32>(-1005f, 864f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(964f)) - _wgslsmith_f_op_f32(f32(-1f) * -1071f)), _wgslsmith_f_op_f32(round(-1098f))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_1.a.x);
}

