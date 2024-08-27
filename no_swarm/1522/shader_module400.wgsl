struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32) -> bool {
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    var var_0 = vec3<bool>(-2147483647i <= -(u_input.a | ~71687i), _wgslsmith_f_op_f32(-arg_0.e.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(-639f + arg_0.d.x)))), func_3(arg_1.x));
    let var_1 = arg_0;
    var var_2 = vec2<bool>(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.c, u_input.c, arg_1.x), ~u_input.b.xyw, !vec3<bool>(false, false, var_0.x)), _wgslsmith_add_vec3_u32(arg_1.yxx & arg_1.zyz, vec3<u32>(u_input.c, arg_1.x, 79805u))) > min(~arg_1.x, arg_1.x), select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-662f)) + _wgslsmith_f_op_f32(-var_1.e.x)) < -495f, false));
    var_2 = var_0.zy;
    let var_3 = all(select(vec2<bool>(var_0.x, var_2.x), select(!(!var_0.xx), vec2<bool>(!var_0.x, var_2.x), !(!vec2<bool>(var_2.x, true))), var_0.yx));
    return countOneBits(_wgslsmith_mod_i32(-6767i & var_1.b, -_wgslsmith_div_i32(-var_1.b, 3614i)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(func_2(Struct_1(_wgslsmith_div_i32(-29240i, u_input.a), -25362i, _wgslsmith_f_op_f32(arg_0.e.x * -561f), vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.d.x, arg_0.e.x, arg_0.d.x, arg_0.c)))), u_input.b), 1i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(arg_0.a), firstLeadingBit(arg_0.b), _wgslsmith_sub_i32(-2147483647i, -1i), arg_0.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2675i, arg_0.b, -1i, u_input.a) >> (vec4<u32>(u_input.c, 4294967295u, u_input.b.x, 19256u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_0.b, 14416i, -61980i), vec4<i32>(u_input.a, -1i, 34848i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 36757i, -12268i, arg_0.a), vec4<i32>(2147483647i, 2147483647i, -42804i, -56934i))))));
    let var_1 = Struct_1(arg_0.b, var_0 | var_0, _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, arg_0.e.x, -1579f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-393f - -1429f), _wgslsmith_div_f32(-1438f, arg_0.e.x), _wgslsmith_f_op_f32(select(-1127f, arg_0.e.x, false))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(592f, arg_0.d.x, -269f))))), arg_0.e);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_i32(max(firstTrailingBit(u_input.a << (u_input.b.x % 32u)), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), -71686i)), abs(-reverseBits(2147483647i))), abs(func_1(Struct_1(u_input.a ^ u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), -148f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, 1636f, 544f)), vec4<f32>(306f, 1954f, -347f, -1169f)))), -887f, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-455f)) + _wgslsmith_f_op_f32(ceil(-311f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1748f) - _wgslsmith_f_op_f32(ceil(2592f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1523f * -2471f) - _wgslsmith_div_f32(303f, -244f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1239f, _wgslsmith_div_f32(554f, 999f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(500f)) * 982f) * _wgslsmith_f_op_f32(-586f - _wgslsmith_f_op_f32(f32(-1f) * -3595f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1806f) * _wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_f32(sign(-927f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1259f)), _wgslsmith_f_op_f32(f32(-1f) * -1372f))), -409f));
    let var_1 = Struct_1(_wgslsmith_add_i32(1i, u_input.a), ~(-1i), -1576f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1299f, var_0.d.x, -1619f)) * var_0.d) + var_0.d), _wgslsmith_f_op_vec4_f32(-var_0.e));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_1.e.x + -869f))));
    let var_3 = vec4<bool>(true, false, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)))), var_0.c != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-225f + _wgslsmith_f_op_f32(floor(var_2.x))) - _wgslsmith_f_op_f32(-var_2.x)));
    let var_4 = 48221u;
    let var_5 = var_2.x;
    var var_6 = Struct_1(var_1.b, ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(countOneBits(-38031i), var_0.a), func_2(Struct_1(0i, var_0.b, var_0.e.x, vec3<f32>(275f, var_5, 307f), vec4<f32>(-299f, var_1.e.x, var_1.e.x, var_2.x)), u_input.b) >> (_wgslsmith_sub_u32(u_input.c, var_4) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(450f * _wgslsmith_f_op_f32(step(810f, var_5))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5 - var_2.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-702f, 1488f)) + _wgslsmith_f_op_f32(ceil(var_0.d.x))) * -978f)), _wgslsmith_f_op_vec3_f32(abs(var_0.e.zxw)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1142f, _wgslsmith_div_f32(var_2.x, var_5), _wgslsmith_f_op_f32(step(var_1.c, 1193f)), var_1.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, 335f, -600f, var_2.x), var_0.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(657f, -621f, -2338f, var_5) - vec4<f32>(var_2.x, var_2.x, -1000f, 1361f)) - var_1.e))));
    var var_7 = u_input.b.yww;
    var var_8 = select((vec4<i32>(firstTrailingBit(var_6.a), u_input.a << (var_7.x % 32u), var_0.a, -24485i) | _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-36250i, u_input.a, -2147483647i, var_1.b), vec4<i32>(u_input.a, var_1.a, 1i, -11010i), vec4<i32>(var_6.b, -6027i, 5888i, var_6.a)), vec4<i32>(var_6.a, 60997i, var_1.b, var_0.b))) >> (~vec4<u32>(var_7.x, var_4, max(1u, u_input.c), u_input.c) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(var_1.b, _wgslsmith_mod_i32(~var_6.a, 2147483647i), u_input.a), max(-27649i, u_input.a), var_0.b, var_6.a), false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.e - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, 956f, 1051f, var_0.c)))))), vec2<i32>(7690i, func_1(Struct_1(0i, max(1i, -2147483647i), _wgslsmith_f_op_f32(-var_1.c), var_0.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(136f, var_2.x, 1296f, 741f), vec4<f32>(-697f, var_1.e.x, var_5, -686f), var_3))))), 0u, min(_wgslsmith_add_vec3_i32(-vec3<i32>(-28102i, var_1.a, 1i) & (var_8.xxw | var_8.xzw), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_8.wxy, vec3<i32>(1i, var_0.a, -2147483647i)), -var_8.yyw)), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(var_0.b, 1i, -2147483647i)), vec3<i32>(var_1.b, u_input.a, 0i) | vec3<i32>(0i, var_6.b, var_6.b), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_1.a, u_input.a), -vec3<i32>(var_1.a, var_6.b, -41650i)))));
}

