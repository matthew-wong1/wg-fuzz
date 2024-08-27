struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = 1183f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1437f * arg_0.c.c.x), _wgslsmith_f_op_f32(arg_0.c.c.x + -959f)) - 493f));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1324f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.c.x, var_1) * _wgslsmith_f_op_f32(917f * -234f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - 532f)));
    var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.a.c.xz);
    let var_3 = Struct_2(Struct_1(arg_0.b.d.x, arg_0.a.b, arg_0.b.c, arg_0.b.d), arg_0.b, Struct_1(arg_0.b.a && (_wgslsmith_f_op_f32(1697f + var_2.x) > _wgslsmith_f_op_f32(-arg_0.c.c.x)), _wgslsmith_clamp_u32(firstTrailingBit(30366u), ~_wgslsmith_mod_u32(0u, 88203u), _wgslsmith_dot_vec3_u32(u_input.a >> (u_input.a % vec3<u32>(32u)), u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), arg_0.a.c.x, _wgslsmith_f_op_f32(var_2.x * var_1), _wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(531f, -1099f, -855f, var_2.x)))), arg_0.c.d));
    return ~(~19894u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = ~reverseBits(reverseBits(~(~vec2<u32>(4294967295u, 0u))));
    let var_1 = Struct_2(Struct_1(any(!vec3<bool>(false, false, arg_1.a.x)) | !(arg_1.d > 61834u), arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.b, -1260f, -216f)))), !select(vec2<bool>(arg_1.a.x, arg_1.a.x), !vec2<bool>(true, arg_1.a.x), select(arg_1.a.zy, arg_1.a.xx, arg_1.a.yx))), Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, arg_2, 22509u, 42482u), ~vec4<u32>(31903u, arg_2, arg_0.x, 0u)) >= var_0.x, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(27608u, 4294967295u)), _wgslsmith_clamp_vec2_u32(u_input.a.zz, vec2<u32>(arg_0.x, arg_2), arg_0.xz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.c, arg_1.b, arg_1.c, arg_1.c))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, arg_1.c, arg_1.b, 744f), vec4<f32>(arg_1.c, 1704f, arg_1.c, arg_1.c))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-271f, 1483f, -1353f, 1989f) + vec4<f32>(328f, -1612f, arg_1.c, -1239f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-191f, arg_1.b, -846f, arg_1.b)))))), !vec2<bool>(arg_1.a.x, !arg_1.a.x)), Struct_1(true || arg_1.a.x, arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(929f, -1094f, arg_1.b, 337f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.c)), _wgslsmith_f_op_f32(-arg_1.b), arg_1.b, _wgslsmith_div_f32(arg_1.b, arg_1.c))), vec2<bool>(!(0u > arg_0.x), true)));
    let var_2 = vec2<bool>(all(select(vec2<bool>(true, all(vec2<bool>(false, arg_1.a.x))), vec2<bool>(var_1.c.d.x, !var_1.c.a), !select(arg_1.a.xz, arg_1.a.yx, false))), false);
    var var_3 = 3694u;
    var var_4 = 636f;
    return _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(~(-37041i), 1i >> (u_input.a.x % 32u)));
}

fn func_2() -> vec2<bool> {
    var var_0 = (u_input.a.x <= ~u_input.a.x) & (min(-1i, func_4(vec3<u32>(20744u, u_input.a.x, u_input.a.x) ^ vec3<u32>(4294967295u, 1258u, 0u), Struct_3(vec3<bool>(false, true, true), -1002f, -2085f, u_input.a.x, 0i), func_3(Struct_2(Struct_1(true, u_input.a.x, vec4<f32>(-1570f, 1004f, -294f, -1274f), vec2<bool>(false, false)), Struct_1(true, 46586u, vec4<f32>(781f, -1000f, -1373f, 324f), vec2<bool>(false, false)), Struct_1(false, u_input.a.x, vec4<f32>(761f, -235f, 1855f, -450f), vec2<bool>(false, false)))))) < -21969i);
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2207f + -650f), _wgslsmith_f_op_f32(1267f + 2303f), 583f, 1376f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-896f, -1169f, 1203f, 1720f), vec4<f32>(957f, 1414f, 520f, -904f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1403f, 1569f, 111f, -550f) * vec4<f32>(223f, 2458f, -774f, 1735f))))), Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) <= (u_input.a.x & 92072u), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), max(u_input.a.x, 72911u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(147f, -851f, 939f, 754f) * vec4<f32>(-1488f, 1879f, 267f, 223f)))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), Struct_1(false, u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(-264f * -704f), -1147f, 1044f, -574f), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false), vec2<bool>(false, false))), Struct_1(false, _wgslsmith_clamp_u32(max(u_input.a.x, 11470u), _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zy), u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, 572f, 171f, 2457f) - vec4<f32>(229f, 1683f, -206f, 1250f)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, -15101i) << (_wgslsmith_div_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(40998i, 2147483647i)), _wgslsmith_clamp_i32(0i, 1i, -1i), 1i))));
    let var_2 = max(~(~reverseBits(u_input.a.x)), u_input.a.x << (~0u % 32u));
    let var_3 = var_1.b.a;
    return select(var_1.b.a.d, vec2<bool>(!var_1.b.b.d.x || var_3.d.x, var_1.b.a.d.x), all(vec3<bool>(any(vec4<bool>(false, var_1.b.b.a, var_3.d.x, false)), false, var_3.d.x)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    var var_0 = 779f;
    let var_1 = arg_1;
    var var_2 = !(!select(select(select(vec2<bool>(true, arg_1.c.a), var_1.b.d, false), arg_0.b.b.d, arg_1.c.d), select(!var_1.c.d, vec2<bool>(false, arg_0.b.b.d.x), !arg_0.b.c.a), vec2<bool>(any(var_1.a.d), any(vec3<bool>(arg_1.c.a, arg_0.b.a.a, arg_1.b.d.x)))));
    var_0 = arg_0.b.a.c.x;
    var_2 = select(select(!func_2(), arg_0.b.b.d, arg_0.b.a.d.x), !arg_1.a.d, select(!var_1.b.d, vec2<bool>(any(vec4<bool>(arg_0.b.b.a, true, arg_0.b.a.d.x, false)), true | arg_0.b.b.d.x), true));
    return 26205u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_div_vec2_u32(firstLeadingBit(u_input.a.xy), ~u_input.a.xx)), vec2<u32>(~func_1(Struct_4(vec4<f32>(336f, -249f, -532f, 1213f), Struct_2(Struct_1(true, u_input.a.x, vec4<f32>(-427f, -1325f, -508f, -674f), vec2<bool>(false, true)), Struct_1(true, u_input.a.x, vec4<f32>(-308f, -816f, 861f, 1000f), vec2<bool>(false, false)), Struct_1(false, 10577u, vec4<f32>(1630f, 1000f, 317f, -241f), vec2<bool>(true, true))), vec3<i32>(-2147483647i, 2147483647i, -13268i)), Struct_2(Struct_1(false, u_input.a.x, vec4<f32>(-524f, -569f, -936f, -423f), vec2<bool>(false, false)), Struct_1(true, 0u, vec4<f32>(1000f, -1146f, -886f, -706f), vec2<bool>(true, true)), Struct_1(false, u_input.a.x, vec4<f32>(-613f, -1466f, -240f, -548f), vec2<bool>(false, false)))), ~(~abs(4294967295u))));
}

