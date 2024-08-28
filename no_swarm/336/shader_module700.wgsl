struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = false;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) * _wgslsmith_f_op_f32(floor(-876f))) * 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2639f) - _wgslsmith_f_op_f32(-1135f - -1346f)) - -1000f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-419f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-350f, 2458f) - _wgslsmith_f_op_f32(step(1143f, -1512f))) - _wgslsmith_div_f32(-1180f, _wgslsmith_f_op_f32(f32(-1f) * -495f)))) != _wgslsmith_f_op_f32(f32(-1f) * -355f);
    var_0 = true;
    let var_1 = arg_0;
    return vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(~(-u_input.a.yzy), vec3<i32>(1i, u_input.a.x, 0i));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = Struct_3(max(abs(-func_3(Struct_2(u_input.b.x), Struct_2(0u))), abs(u_input.a.wyy)), 28987u);
    let var_1 = Struct_2(max(countOneBits(0u), 4294967295u));
    var var_2 = Struct_1(!arg_0.xz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1532f, -871f)), -1507f)), vec2<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(555f + -1106f), 1169f, arg_0.x)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1203f * -551f), _wgslsmith_f_op_f32(-236f * -326f)))), ~(-_wgslsmith_dot_vec2_i32(max(arg_3.a.xy, u_input.a.zy), vec2<i32>(arg_3.a.x, 0i))), -1003f);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-864f))))), _wgslsmith_f_op_f32(1753f * var_2.e)), vec2<f32>(var_2.b, _wgslsmith_f_op_f32(-var_2.e)));
    let var_4 = Struct_2(15696u);
    return var_0.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(max(~(-2147483647i), u_input.a.x), min(2147483647i >> (0u % 32u), -1i)), u_input.a.zy);
    var var_1 = Struct_3(func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)), ~(vec2<u32>(u_input.b.x, 41291u) | reverseBits(u_input.b)), max(abs(u_input.c << (38634u % 32u)), 31036u), Struct_3(u_input.a.xyx, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(35932u, u_input.c)))), 4294967295u);
    var var_2 = Struct_1(vec2<bool>(false, !(true | any(vec4<bool>(true, false, false, true)))), arg_1.x, select(select(vec2<bool>(true, false), vec2<bool>(u_input.b.x != u_input.b.x, true), true), vec2<bool>(true, all(vec2<bool>(false, false))), true), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, -1354f), -1000f)));
    var var_3 = var_2.d;
    var_2 = Struct_1(!(!vec2<bool>(var_2.a.x, true)), _wgslsmith_f_op_f32(sign(arg_1.x)), var_2.a, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return -var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~(i32(-1i) * -u_input.e), func_1(~vec2<i32>(u_input.a.x, -u_input.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2164f * -375f), 1678f, _wgslsmith_f_op_f32(f32(-1f) * -578f)))), -u_input.a.x);
    let var_1 = Struct_3(vec3<i32>(_wgslsmith_add_i32(min(u_input.a.x ^ 0i, var_0.x), ~abs(33931i)), func_3(Struct_2(~1u), Struct_2(firstTrailingBit(4294967295u))).x, abs(-41958i) & var_0.x), max(121427u, u_input.b.x));
    var var_2 = Struct_1(vec2<bool>(all(vec3<bool>(true, true, true)), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true))), _wgslsmith_f_op_f32(round(-708f)), !select(vec2<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, false, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), true), vec2<bool>(true, true)), -_wgslsmith_sub_i32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(select(-1698f, -1481f, !any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))))));
    var var_3 = Struct_3(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, u_input.a.x), -select(vec2<i32>(-11800i, 41840i), u_input.a.yw, false)), _wgslsmith_clamp_i32(var_0.x, ~firstLeadingBit(var_0.x), 2147483647i), min(2147483647i, var_0.x)), ~(~var_1.b));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(1u | var_1.b), var_1.b), var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.e)), -226f, var_2.e))));
}

