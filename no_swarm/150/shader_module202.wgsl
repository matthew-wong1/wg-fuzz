struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
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

var<private> global0: vec4<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec3<u32> {
    let var_0 = 13360u;
    return _wgslsmith_clamp_vec3_u32(global0.yyw, ~min(global0.wxz >> (global0.www % vec3<u32>(32u)), global0.xxx), vec3<u32>(select(u_input.b.x, global0.x, false) >> (~global0.x % 32u), u_input.c.x, reverseBits(global0.x))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x ^ global0.x, ~57018u, ~_wgslsmith_sub_u32(arg_0, 1u)), _wgslsmith_sub_vec3_u32(global0.zyx, ~global0.wzw)) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec4<bool> {
    global0 = _wgslsmith_clamp_vec4_u32(~(~(~(~u_input.c))), vec4<u32>(arg_1.x, firstLeadingBit(0u), ~(~_wgslsmith_div_u32(15640u, 26093u)), ~(4294967295u ^ (global0.x | 23578u))), vec4<u32>(~(~(~u_input.c.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 1u), _wgslsmith_dot_vec4_u32(firstLeadingBit(arg_0.b.d), _wgslsmith_mod_vec4_u32(u_input.c, arg_0.b.d))), min(countOneBits(~4294967295u), min(arg_1.x, 1u)), firstTrailingBit(~17148u)));
    return select(vec4<bool>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, 0i, arg_2.x), vec3<i32>(u_input.a, u_input.a, 2912i)), -vec3<i32>(arg_2.x, u_input.a, arg_2.x)) <= arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1238f - -916f) + -847f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(254f))), select(select(false, true, arg_0.a | arg_0.b.b.x), false || select(arg_0.a, true, arg_0.a), arg_0.a), arg_0.a), select(vec4<bool>(true, !any(vec2<bool>(false, arg_0.b.b.x)), select(true, any(vec3<bool>(false, true, false)), false), all(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, arg_0.b.b.x, arg_0.b.c), arg_0.a))), !(!(!vec4<bool>(arg_0.b.c, true, false, arg_0.a))), !vec4<bool>(!arg_0.b.b.x, true, true, true)), select(select(select(!vec4<bool>(true, arg_0.b.b.x, true, false), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.b.c), !vec4<bool>(arg_0.a, false, arg_0.a, false)), vec4<bool>(u_input.a > arg_2.x, false, arg_0.b.b.x || false, all(vec3<bool>(arg_0.a, arg_0.b.b.x, true))), false), select(vec4<bool>(all(vec4<bool>(true, true, false, arg_0.b.b.x)), arg_0.b.c && arg_0.b.c, true, arg_0.a && arg_0.a), select(select(vec4<bool>(arg_0.b.c, false, arg_0.b.c, arg_0.b.b.x), vec4<bool>(arg_0.b.b.x, true, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.b.b.x, true, false)), vec4<bool>(arg_0.a, true, arg_0.b.b.x, arg_0.a), select(vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, arg_0.a, false, false), true)), arg_0.a), vec4<bool>(arg_0.b.c, true, ~u_input.b.x >= 4294967295u, false)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = select(!(!select(!vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, true, true), arg_0 && arg_0)), select(select(select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, arg_0)), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true)), !select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, false), true), any(!vec2<bool>(arg_0, true))), select(select(!vec4<bool>(arg_0, arg_0, false, true), !vec4<bool>(arg_0, false, false, true), !vec4<bool>(false, arg_0, true, true)), vec4<bool>(all(vec2<bool>(arg_0, true)), any(vec3<bool>(false, arg_0, false)), any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), all(vec3<bool>(false, arg_0, arg_0))), any(!vec3<bool>(arg_0, arg_0, true))), func_4(Struct_2(arg_0, Struct_1(0u, vec2<bool>(arg_0, arg_0), true, vec4<u32>(u_input.c.x, 0u, 4294967295u, global0.x))), min(func_3(0u, vec4<bool>(arg_0, true, arg_0, arg_0)), global0.xyz), (vec2<i32>(72226i, u_input.a) ^ vec2<i32>(u_input.a, 6675i)) >> ((vec2<u32>(u_input.b.x, 0u) ^ global0.ww) % vec2<u32>(32u)))), arg_0);
    global0 = firstTrailingBit(vec4<u32>(0u, 1u, 4294967295u, min(1490u, 12343u)));
    var var_1 = 5081i;
    let var_2 = vec4<bool>(select(true, u_input.a != _wgslsmith_div_i32(u_input.a, ~45460i), !var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -611f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1348f) * _wgslsmith_f_op_f32(trunc(862f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(993f)), 1000f)), arg_0, u_input.a == u_input.a);
    var var_3 = !var_2.yx;
    return _wgslsmith_div_u32(u_input.c.x, abs(~(global0.x >> (4294967295u % 32u))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(174f, 872f, -119f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(107f, -1043f)), -2446f) + vec3<f32>(_wgslsmith_f_op_f32(-1000f * 1576f), 1939f, -1403f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1083f, 261f, -1336f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(833f, 2289f, -586f) + vec3<f32>(728f, -330f, 1583f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2210f, 1178f, 209f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-243f, 1098f, -1102f), vec3<f32>(-1000f, 2081f, 299f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1423f, 1467f, -2294f) - vec3<f32>(728f, -813f, 363f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(572f, -1115f, 2588f), vec3<f32>(-1006f, 1033f, -190f))))), firstLeadingBit(func_2(arg_2.b.x)) > 50250u)));
    var var_1 = Struct_1(select(global0.x, ~(4294967295u & _wgslsmith_dot_vec4_u32(arg_2.d, vec4<u32>(31194u, global0.x, global0.x, 77083u))), !(_wgslsmith_f_op_f32(f32(-1f) * -2218f) >= _wgslsmith_f_op_f32(floor(-1381f)))), vec2<bool>(func_4(Struct_2(arg_2.b.x, Struct_1(4294967295u, vec2<bool>(arg_2.c, arg_2.b.x), arg_2.b.x, vec4<u32>(4294967295u, global0.x, 0u, arg_1.x))), min(arg_1.xwx, vec3<u32>(0u, 33825u, 5077u)) >> ((vec3<u32>(u_input.b.x, arg_1.x, global0.x) ^ vec3<u32>(arg_2.a, 59967u, 17508u)) % vec3<u32>(32u)), vec2<i32>(-23471i, ~arg_0)).x, true || arg_2.c), arg_2.b.x, firstLeadingBit(vec4<u32>(1u, _wgslsmith_mult_u32(arg_1.x, firstTrailingBit(global0.x)), 1u, 4294967295u | (4294967295u | u_input.b.x))));
    var var_2 = !(!(!vec4<bool>(var_1.c, any(vec4<bool>(arg_2.c, false, true, true)), false, var_0.x < var_0.x)));
    var var_3 = -(~(-vec2<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), -arg_0)));
    var var_4 = abs(vec4<u32>(~_wgslsmith_div_u32(u_input.c.x, var_1.a), var_1.d.x, _wgslsmith_dot_vec2_u32(var_1.d.zy, u_input.b.xx), ~(~arg_2.a))) & ~vec4<u32>(_wgslsmith_sub_u32(arg_1.x, var_1.d.x << (87840u % 32u)), u_input.c.x, ~(~4294967295u), func_3(1u, vec4<bool>(true, var_2.x, arg_2.b.x, false)).x ^ (127369u | u_input.c.x));
    return ~(~reverseBits(countOneBits(vec4<u32>(0u, 4294967295u, 44587u, var_1.a)))) & arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(reverseBits(~37176i), u_input.c, Struct_1(countOneBits(1261u ^ (74056u >> (u_input.c.x % 32u))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), true, ~select(~u_input.c, vec4<u32>(u_input.b.x, 11249u, 1u, u_input.c.x), vec4<bool>(false, true, false, true))));
    var var_0 = ~countOneBits(min(firstTrailingBit(17652u), 41587u));
    var var_1 = !(_wgslsmith_f_op_f32(sign(1f)) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(697f, 393f, true)))))));
    let var_2 = -1i;
    global0 = _wgslsmith_mod_vec4_u32(abs(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(global0.x, ~0u, u_input.b.x, 39797u))), ~countOneBits(_wgslsmith_mult_vec4_u32(u_input.c, ~vec4<u32>(0u, 34157u, 52665u, global0.x))));
    var var_3 = !all(vec2<bool>(true, true));
    let var_4 = select(_wgslsmith_clamp_vec2_i32(reverseBits(min(abs(vec2<i32>(var_2, var_2)), -vec2<i32>(-15003i, -1i))), vec2<i32>(firstTrailingBit(u_input.a), 33291i), select(~firstTrailingBit(vec2<i32>(var_2, 2147483647i)), vec2<i32>(~u_input.a, var_2), vec2<bool>(true, true))), ~(~(-vec2<i32>(u_input.a, -37457i))), vec2<bool>(!any(vec4<bool>(false, true, true, false)) == true, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

