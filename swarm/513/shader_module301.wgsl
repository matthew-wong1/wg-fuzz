struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -638f;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(sign(arg_0.d));
    var var_0 = _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(46333u, 56281u)), firstLeadingBit(_wgslsmith_sub_u32(~u_input.a.x, arg_0.e) >> (_wgslsmith_clamp_u32(select(4294967295u, arg_0.e, false), _wgslsmith_mult_u32(17379u, arg_0.e), _wgslsmith_sub_u32(u_input.b, arg_0.e)) % 32u)));
    var_0 = u_input.a.x;
    var_0 = _wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(22971u, 8279u, u_input.b, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.e, 47297u, arg_0.e, u_input.b), vec4<u32>(u_input.a.x, 1u, 12913u, arg_0.e)) ^ vec4<u32>(countOneBits(u_input.b), ~1177u, _wgslsmith_add_u32(4294967295u, arg_0.e), 1u), !(!select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, false), vec4<bool>(false, true, false, arg_0.b.x), vec4<bool>(false, arg_0.b.x, true, arg_0.b.x)))), vec4<u32>(select(~34605u, 19778u, true), u_input.a.x, 0u, firstLeadingBit(arg_0.e)));
    return 733f;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> vec2<i32> {
    var var_0 = Struct_2(abs(-abs(14787i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.c.e, u_input.b) ^ vec4<u32>(8407u, u_input.a.x, arg_0.a.b.e, arg_0.c.e), vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x)) % 32u)), Struct_1(_wgslsmith_div_f32(1577f, 1000f), !arg_0.a.b.b, arg_0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2956f - arg_2), _wgslsmith_div_f32(arg_0.a.b.c.x, -269f))), _wgslsmith_div_u32(u_input.b << (firstTrailingBit(arg_0.a.b.e) % 32u), u_input.a.x)), max(firstTrailingBit(vec4<i32>(16385i, ~(-38828i), 1i, -arg_0.e.x)), min(u_input.c, arg_0.a.c)), select(select(select(select(vec2<bool>(arg_0.b.x, true), vec2<bool>(arg_0.b.x, false), arg_0.a.b.b.x), arg_0.b, vec2<bool>(true, true)), select(vec2<bool>(arg_0.b.x, true), vec2<bool>(arg_0.b.x, arg_0.a.d.x), vec2<bool>(arg_0.b.x, arg_0.b.x)), arg_0.c.b.x), arg_0.c.b, true));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_0.c.d)) - _wgslsmith_f_op_f32(-arg_0.a.b.d)))) - _wgslsmith_f_op_f32(1145f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.a - -139f))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-1074f - -416f), true)), true))));
    var var_1 = select(vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, var_0.d.x), false)) && true, any(vec4<bool>(var_0.b.b.x, arg_0.a.b.b.x, true, arg_0.c.b.x))), select(select(!vec2<bool>(true, var_0.b.b.x), select(vec2<bool>(true, arg_0.a.d.x), select(arg_0.c.b, var_0.d, arg_0.b.x), vec2<bool>(arg_0.b.x, arg_0.c.b.x)), var_0.d), select(vec2<bool>(var_0.b.a != var_0.b.d, arg_0.c.b.x), select(select(var_0.d, var_0.b.b, vec2<bool>(false, arg_0.a.d.x)), vec2<bool>(var_0.d.x, arg_0.b.x), arg_0.a.b.b), select(vec2<bool>(arg_0.b.x, arg_0.c.b.x), select(arg_0.b, var_0.d, vec2<bool>(arg_0.c.b.x, true)), var_0.d.x | true)), !var_0.d), any(!vec4<bool>(true, arg_0.c.b.x, var_0.d.x || var_0.d.x, -1976f < var_0.b.a)));
    var var_2 = select(!(!(!vec4<bool>(arg_0.c.b.x, var_0.d.x, false, true))), !vec4<bool>(any(vec4<bool>(true, arg_0.b.x, false, var_0.b.b.x)), false & var_1.x, var_0.d.x, true), var_1.x);
    var var_3 = Struct_4(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.d), vec3<u32>(47749u, u_input.b, arg_0.a.b.e)) | ~vec3<u32>(u_input.a.x, 76081u, u_input.b)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2215f))), !select(vec2<bool>(false, false), var_2.yz, vec2<bool>(false, var_0.d.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(327f, -1173f, true)) * _wgslsmith_f_op_f32(-arg_2)), -536f), -548f, reverseBits(u_input.b)));
    return vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), ~u_input.c.zy), _wgslsmith_div_i32(arg_1.x, 8915i)) >> (u_input.a % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1636f, _wgslsmith_f_op_f32(-418f - -1379f)))) != _wgslsmith_f_op_f32(arg_0.c.x * arg_0.a);
    var var_1 = -643f;
    global0 = 775f;
    var var_2 = _wgslsmith_dot_vec2_i32(func_4(Struct_3(Struct_2(u_input.d, Struct_1(-1769f, arg_0.b, arg_0.c, arg_0.c.x, 0u), u_input.c, vec2<bool>(arg_0.b.x, true)), arg_0.b, arg_0, arg_0.e, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.d, -2147483647i), vec4<i32>(-8500i, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c)), vec3<i32>(_wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d), _wgslsmith_dot_vec2_i32(u_input.c.wy, u_input.c.yz), -u_input.c.x), _wgslsmith_f_op_f32(func_3(arg_0))) >> (vec2<u32>(abs(0u), arg_0.e) % vec2<u32>(32u)), reverseBits(select(vec2<i32>(-1i, u_input.c.x), u_input.c.wx, vec2<bool>(false, arg_0.b.x)) >> (~(~vec2<u32>(arg_0.e, 4294967295u)) % vec2<u32>(32u))));
    let var_3 = u_input.a.x;
    return -10473i;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> f32 {
    global0 = arg_0.b.d;
    var var_0 = _wgslsmith_sub_i32(-arg_1, func_2(arg_0.b) << (~arg_0.a.x % 32u));
    let var_1 = arg_0;
    let var_2 = ~_wgslsmith_div_vec2_i32(firstTrailingBit(arg_2.a.c.yy), u_input.c.xy);
    var var_3 = Struct_3(arg_2.a, !arg_0.b.b, var_1.b, arg_2.a.b.e, -reverseBits(select(min(vec4<i32>(-33850i, arg_2.e.x, 3685i, -5473i), vec4<i32>(u_input.c.x, 2147483647i, var_2.x, arg_2.e.x)), select(vec4<i32>(2147483647i, arg_1, -3030i, 0i), arg_2.e, arg_0.b.b.x), true)));
    return -821f;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_4) -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(round(-673f));
    global0 = 311f;
    global0 = _wgslsmith_f_op_f32(768f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) - 1975f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1164f, _wgslsmith_div_f32(180f, arg_3.b.c.x)) - _wgslsmith_f_op_f32(step(arg_3.b.a, arg_0.a.b.d)));
    let var_0 = arg_0.d;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1310f, _wgslsmith_div_f32(arg_3.b.c.x, arg_0.c.a), _wgslsmith_f_op_f32(min(arg_0.c.a, 165f)), _wgslsmith_f_op_f32(arg_0.a.b.c.x - arg_3.b.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.d, 1152f, -317f, arg_3.b.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let x = u_input.a;
    s_output = func_5(Struct_3(Struct_2(-reverseBits(u_input.d), Struct_1(_wgslsmith_f_op_f32(func_1(Struct_4(vec3<u32>(var_0, 4294967295u, var_0), Struct_1(-946f, vec2<bool>(true, true), vec2<f32>(1102f, 496f), -454f, 4294967295u)), u_input.c.x, Struct_3(Struct_2(u_input.c.x, Struct_1(977f, vec2<bool>(false, false), vec2<f32>(-1428f, -522f), -140f, 0u), vec4<i32>(u_input.c.x, 0i, 9510i, u_input.d), vec2<bool>(true, true)), vec2<bool>(false, false), Struct_1(-118f, vec2<bool>(true, false), vec2<f32>(972f, -709f), -808f, 89616u), 27724u, u_input.c))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-962f, 1000f))), _wgslsmith_f_op_f32(-1164f + -702f), _wgslsmith_div_u32(0u, 1u)), u_input.c, vec2<bool>(false, true)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true), Struct_1(564f, select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1862f, 1253f), vec2<f32>(-1113f, -2156f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1056f, -765f) * vec2<f32>(-824f, -676f))), 1000f, var_0), _wgslsmith_mult_u32(var_0 ^ _wgslsmith_mod_u32(u_input.b, 6938u), ~u_input.b), u_input.c), min(22234i, u_input.d), select(vec3<bool>(true == (u_input.b <= u_input.a.x), ~u_input.a.x == 46524u, !select(true, true, false)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), ~u_input.b <= ~_wgslsmith_div_u32(4294967295u, 32277u)), Struct_4(~vec3<u32>(6410u, u_input.a.x, 1u) | (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(36381u, 1u, u_input.b)) ^ vec3<u32>(var_0, 0u, 5597u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-728f))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, 1071f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-754f)), 839f), var_0)));
}

