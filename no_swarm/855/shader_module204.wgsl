struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: i32) -> vec3<u32> {
    var var_0 = -1i;
    return _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(56632u, ~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a))), vec3<u32>(_wgslsmith_add_u32(4239u, u_input.a << (0u % 32u)), firstTrailingBit(0u) >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), ~u_input.a) % 32u), 0u), countOneBits(vec3<u32>(~(~u_input.a), _wgslsmith_add_u32(countOneBits(u_input.a), 1u), _wgslsmith_mod_u32(u_input.a | u_input.a, 0u))));
}

fn func_2() -> vec4<bool> {
    let var_0 = 0u;
    let var_1 = ~(~(~vec3<u32>(_wgslsmith_div_u32(u_input.a, 8313u), _wgslsmith_add_u32(1u, u_input.a), 27178u)));
    var var_2 = Struct_4(vec2<bool>(true, true), vec4<u32>(~(~0u >> ((4294967295u << (u_input.a % 32u)) % 32u)), 1u, u_input.a << (34629u % 32u), ~abs(_wgslsmith_sub_u32(var_0, 129699u))), var_1, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-961f - -351f) + _wgslsmith_f_op_f32(f32(-1f) * -373f)), Struct_1(u_input.c.zxx, select(u_input.b.x, u_input.c.x, true), ~(~u_input.c.xyy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(402f, 1000f) * vec2<f32>(1576f, 443f))), true), ~var_1.x, Struct_1(u_input.b.yyw | _wgslsmith_add_vec3_i32(u_input.c.xwy, u_input.c.yyy), -16325i, select(u_input.b.wyw, vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-451f, -693f)))), false)));
    var_2 = Struct_4(vec2<bool>(true, !any(vec4<bool>(var_2.d.b.e, false, false, var_2.d.d.e))), ~var_2.b, func_3(u_input.c, Struct_3(var_2.d.d, any(vec2<bool>(false, var_2.d.b.e)), false), vec3<bool>(var_2.d.d.e, _wgslsmith_dot_vec4_u32(var_2.b, var_2.b) > var_1.x, var_2.a.x), 1i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)), var_2.d.d, var_1.x, var_2.d.b));
    var_2 = Struct_4(var_2.a, ~var_2.b, var_2.b.xww ^ vec3<u32>(1u, 1u, 0u), Struct_2(var_2.d.b.d.x, Struct_1(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, 0i), countOneBits(u_input.b.x), u_input.b.x), 1i, countOneBits(var_2.d.b.c), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.d.d.d, vec2<f32>(var_2.d.a, 163f)), vec2<f32>(var_2.d.a, var_2.d.a)), any(select(vec2<bool>(true, var_2.a.x), vec2<bool>(var_2.d.b.e, false), var_2.d.d.e))), var_1.x >> ((var_0 ^ _wgslsmith_dot_vec4_u32(vec4<u32>(56075u, var_0, 6003u, 18085u), var_2.b)) % 32u), Struct_1(var_2.d.b.c, u_input.b.x, var_2.d.b.c, _wgslsmith_f_op_vec2_f32(-var_2.d.d.d), !all(vec2<bool>(false, var_2.a.x)))));
    return vec4<bool>(var_2.a.x, all(select(vec2<bool>(var_2.a.x | var_2.d.d.e, true), select(var_2.a, vec2<bool>(false, var_2.a.x), all(vec3<bool>(true, false, var_2.d.d.e))), var_2.a)), ~func_3(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, var_2.d.d.b, -2147483647i), vec4<i32>(-2147483647i, u_input.b.x, -1i, u_input.b.x)), Struct_3(Struct_1(u_input.c.yzw, u_input.b.x, vec3<i32>(u_input.c.x, -14572i, 43471i), var_2.d.d.d, var_2.d.d.e), false, false), select(vec3<bool>(var_2.a.x, false, var_2.a.x), vec3<bool>(true, false, var_2.a.x), vec3<bool>(false, var_2.a.x, false)), var_2.d.d.b).x <= 1u, !var_2.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(574f, -1217f, 275f, arg_0.d.x))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.d.x + arg_1.a.d.x), -1000f, _wgslsmith_div_f32(1004f, -249f), -2182f), select(func_2(), select(arg_2, vec4<bool>(true, true, arg_1.c, arg_0.e), arg_1.b), !vec4<bool>(true, false, arg_2.x, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.d.x * 605f), _wgslsmith_f_op_f32(trunc(arg_1.a.d.x)), arg_1.a.d.x, arg_1.a.d.x))));
    let var_1 = arg_0.a.yx;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -545f) + arg_1.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), !(true != (arg_0.c.x != u_input.b.x)))), Struct_1(countOneBits(countOneBits(arg_3.xww)), 0i, vec3<i32>(-_wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(1i, -16171i, u_input.b.x)), _wgslsmith_div_i32(min(arg_1.a.c.x, -1i), arg_1.a.c.x), abs(12292i)), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * arg_0.d.x)))), arg_0.e), 29802u, arg_0);
    let var_3 = arg_0.d.x;
    var var_4 = var_0.zxy;
    return vec4<bool>(arg_1.b, any(arg_2.wxz), all(arg_2), !(u_input.a >= ~u_input.a) | arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.a, max(4294967295u, 0u), ~28930u, u_input.a);
    var var_1 = ((any(vec4<bool>(true, true, true, true)) || all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))) | ((~u_input.a | var_0.x) != abs(_wgslsmith_sub_u32(4294967295u, 1u)))) && (true & all(select(vec4<bool>(false, false, true, true), func_1(Struct_1(u_input.c.wxw, u_input.c.x, u_input.b.yyy, vec2<f32>(2001f, 1000f), false), Struct_3(Struct_1(u_input.c.wzy, u_input.c.x, u_input.c.yyz, vec2<f32>(-787f, 1457f), false), true, false), vec4<bool>(false, false, false, true), vec4<i32>(u_input.b.x, u_input.b.x, 44036i, u_input.c.x)), vec4<bool>(true, true, true, true))));
    var_1 = any(func_1(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), u_input.c.x, ~vec3<i32>(35679i, u_input.c.x, u_input.b.x) & _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), u_input.c.yzz), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1117f, 764f))), all(vec2<bool>(false, true)) | true), Struct_3(Struct_1(firstLeadingBit(vec3<i32>(-23467i, -1i, 0i)), abs(u_input.b.x), _wgslsmith_mod_vec3_i32(u_input.c.wzy, vec3<i32>(u_input.c.x, u_input.b.x, 1126i)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1612f), vec2<f32>(1538f, 164f)), true), all(func_1(Struct_1(vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x), -1i, u_input.b.www, vec2<f32>(1540f, 247f), true), Struct_3(Struct_1(u_input.b.xxw, -1i, u_input.c.zwz, vec2<f32>(-154f, -844f), false), false, true), vec4<bool>(true, false, true, true), vec4<i32>(39394i, 1i, -23669i, u_input.c.x))), func_2().x), func_2(), u_input.b));
    var_1 = all(vec2<bool>(all(vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true)), true));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.c.yw, ~(u_input.b.yx | max(u_input.c.xw, u_input.b.yw)) | reverseBits(firstLeadingBit(vec2<i32>(u_input.c.x, u_input.c.x)) & (vec2<i32>(-22586i, -7540i) >> (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u)))));
    var var_3 = abs(~(~firstLeadingBit(vec3<u32>(40437u, 0u, var_0.x))));
    let var_4 = u_input.b.yyz;
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

