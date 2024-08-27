struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 64723u;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = u_input.a.x;
    var var_0 = (u_input.a.x >> (~(1u | _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u)) & 45211u;
    var_0 = 4294967295u;
    let var_1 = Struct_1(u_input.a.x, !vec4<bool>(false, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true)), true, !(u_input.a.x <= u_input.a.x)), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)) && true), 1u);
    global0 = u_input.a.x;
    return 1962f;
}

fn func_2() -> u32 {
    global1 = 24043i;
    var var_0 = vec4<bool>(false, false, false, false);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2362f), -145f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1406f - 1497f), _wgslsmith_f_op_f32(func_3()), all(vec4<bool>(var_0.x, var_0.x, var_0.x, true))))))));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1737f, 1110f)), _wgslsmith_f_op_f32(func_3())))))));
    let var_2 = Struct_1(~u_input.a.x ^ ~1u, !(!vec4<bool>(!var_0.x, var_0.x, true, !var_0.x)), vec4<bool>(true, false, var_0.x, !select(!var_0.x, var_0.x, all(vec4<bool>(true, true, var_0.x, var_0.x)))), countOneBits(firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) ^ 0u)));
    return _wgslsmith_div_u32(~(var_2.d | _wgslsmith_sub_u32(_wgslsmith_add_u32(16651u, 46678u), abs(var_2.a))), ~u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_add_i32(abs(-u_input.b), u_input.b), -1i), abs(_wgslsmith_div_vec3_i32(abs(-vec3<i32>(2147483647i, 2147483647i, 4232i)), ~vec3<i32>(u_input.b, -2147483647i, 1i))));
    var var_1 = Struct_1(_wgslsmith_div_u32(arg_0.d >> (~arg_0.d % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3, 4294967295u, 57563u, 29495u), _wgslsmith_div_vec4_u32(vec4<u32>(36454u, arg_3, arg_3, 4294967295u), vec4<u32>(arg_3, u_input.a.x, arg_2.d, 1u)))) >> (reverseBits(25972u) % 32u), arg_0.b, arg_0.c, u_input.a.x);
    let var_2 = Struct_1(_wgslsmith_div_u32(~4432u, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, select(0u, arg_3, arg_0.c.x)), 25581u)), var_1.c, vec4<bool>(!(!(!arg_2.c.x)), all(arg_2.b), -1025f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-800f)) - _wgslsmith_f_op_f32(-376f * -576f)), -_wgslsmith_clamp_i32(-25300i, -26808i, u_input.b) > ~select(1i, -2147483647i, true)), 4294967295u);
    var var_3 = ~60871i;
    var var_4 = 1u;
    return arg_2.c.yz;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    let var_0 = func_4(Struct_1(_wgslsmith_dot_vec2_u32(~(~u_input.a), abs(~vec2<u32>(arg_0.a, u_input.a.x))), arg_0.b, arg_0.c, countOneBits(u_input.a.x)), select(select(arg_0.c.ww, vec2<bool>(select(arg_0.b.x, arg_0.c.x, false), !arg_0.c.x), arg_0.b.xx), select(!(!vec2<bool>(arg_0.c.x, arg_0.c.x)), arg_0.c.zz, true), arg_0.c.wx), Struct_1(firstLeadingBit((arg_0.d ^ arg_0.a) | arg_0.d), arg_0.b, !(!select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), vec4<bool>(arg_0.c.x, false, arg_0.b.x, false), arg_0.c.x)), func_2()), abs(1u));
    let var_1 = vec4<i32>(0i, u_input.b, firstLeadingBit(1i), u_input.b);
    global0 = u_input.a.x;
    global0 = 4294967295u;
    var var_2 = -vec3<i32>(26357i, ~u_input.b, i32(-1i) * -(~var_1.x));
    return vec4<f32>(1036f, _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(968f - -155f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(func_3())))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-652f, _wgslsmith_f_op_f32(-arg_1), false))), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 2109f, -1513f, 506f), vec4<f32>(1f, 1f, 1f, 1f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.a.x, vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), u_input.a.x), _wgslsmith_div_f32(-1221f, 461f))) * vec4<f32>(-602f, _wgslsmith_f_op_f32(abs(192f)), -767f, _wgslsmith_f_op_f32(f32(-1f) * -859f)))));
    global1 = ~(-1i);
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1113f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -2472f) * var_0.x)), _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(78694u, vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), u_input.a.x), -670f)))))));
    let var_3 = Struct_1(u_input.a.x, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, u_input.a.x < 81u, true, select(false, false, false)), vec4<bool>(all(vec2<bool>(true, false)), true, any(vec2<bool>(true, false)), func_4(Struct_1(4294967295u, vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), u_input.a.x), vec2<bool>(false, false), Struct_1(u_input.a.x, vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), 4294967295u), 0u).x), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false))), vec4<bool>(abs(16838u) != min(u_input.a.x, u_input.a.x), false, (u_input.a.x > u_input.a.x) & true, true)), select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, true, false, true)) & all(vec3<bool>(true, false, true)), true, false, _wgslsmith_div_u32(u_input.a.x, u_input.a.x) <= (u_input.a.x ^ 4294967295u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, -78551i > u_input.b, true), true)), max(~_wgslsmith_mod_u32(4294967295u, 1u), u_input.a.x));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(-1343f)), _wgslsmith_div_f32(var_0.x, -104f), _wgslsmith_f_op_f32(-var_0.x), 500f)))));
    let var_4 = _wgslsmith_f_op_f32(round(-1028f));
    let var_5 = ~4294967295u | func_2();
    var var_6 = !(!(!select(!var_3.c, vec4<bool>(true, var_3.b.x, var_3.b.x, var_3.b.x), func_4(var_3, vec2<bool>(true, var_3.b.x), var_3, 15999u).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_4 + var_0.x), _wgslsmith_f_op_f32(max(var_4, var_2.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), 1746f) + vec2<f32>(-199f, var_4))), _wgslsmith_f_op_vec3_f32(min(var_2.zwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.xwx), vec3<f32>(var_2.x, 893f, var_2.x)))))), 0u, countOneBits(reverseBits(~(vec4<u32>(32894u, var_5, 8989u, var_3.d) & vec4<u32>(15600u, 33870u, 0u, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(1u, var_3.c, !vec4<bool>(false, true, false, var_6.x), var_5), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1917f)) + -497f))).yww + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(358f, 564f, var_0.x) + var_0.zyw)))));
}

