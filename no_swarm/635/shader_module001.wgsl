struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    return _wgslsmith_div_u32(15653u, firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, 14425u << (u_input.a.x % 32u)))) >> (1u % 32u);
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    return Struct_1(-select(abs(vec3<i32>(-17060i, arg_1, arg_1) ^ vec3<i32>(arg_1, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(4061i, 2147483647i, u_input.b.x) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(2147483647i, u_input.b.x, 20201i) | vec3<i32>(4167i, u_input.b.x, arg_1)), vec3<bool>(true, global1.x, true)), select(vec2<bool>(any(!vec4<bool>(false, false, false, global1.x)), true), !select(select(vec2<bool>(false, global1.x), vec2<bool>(true, false), vec2<bool>(true, global1.x)), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), vec2<bool>(true, global1.x)), any(vec4<bool>(false, global1.x, true, true))), select(select(vec2<bool>(false, false), !vec2<bool>(global1.x, global1.x), global1.x && false), !vec2<bool>(global1.x, false), func_3(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], vec2<i32>(arg_1, u_input.b.x)) < firstTrailingBit(46825u))), select(select(vec4<bool>(!global1.x, global1.x, false, arg_0 <= 885f), !vec4<bool>(true, global1.x, global1.x, global1.x), false), vec4<bool>(all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), vec2<bool>(global1.x, global1.x))), true, _wgslsmith_f_op_f32(ceil(-106f)) >= arg_0, true), select(!(!vec4<bool>(global1.x, true, global1.x, true)), !vec4<bool>(true, global1.x, global1.x, true), any(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, false), true)))), true);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = func_2(-279f, -(arg_2.a.x ^ 24776i)).c.yz;
    global0 = array<Struct_1, 27>();
    global1 = vec2<bool>(any(arg_2.c.yy), global1.x);
    global1 = vec2<bool>(all(vec2<bool>(any(select(arg_2.c, arg_2.c, arg_2.c)), false)), !global1.x);
    var var_0 = min(min(reverseBits(~func_3(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], vec2<i32>(-21471i, arg_2.a.x))), 33925u), ~_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), ~u_input.a.x, _wgslsmith_mod_u32(1u, ~1u)));
    return global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, 4294967295u, 56141u))), u_input.a)), 27u)];
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = func_4(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_add_i32(u_input.b.x, -(~arg_2.a.x)), arg_2);
    var var_1 = arg_0;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -531f, arg_0.x) - arg_0) + arg_0))));
    return func_2(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -818f))), reverseBits(9895i)).c;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(~_wgslsmith_clamp_vec3_i32(arg_0.a, vec3<i32>(u_input.b.x >> (62636u % 32u), -10112i, 1i >> (u_input.a.x % 32u)), _wgslsmith_mult_vec3_i32(arg_0.a, ~vec3<i32>(0i, arg_0.a.x, -1i))), arg_0.b, func_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), -489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-156f)))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1551f), ~48848i, func_2(_wgslsmith_f_op_f32(1000f + -880f), 1i)), Struct_1(vec3<i32>(1i, 21928i, 4160i), vec2<bool>(all(arg_0.c.xxz), select(arg_0.b.x, false, true)), vec4<bool>(any(arg_0.c.xwx), false, !global1.x, all(arg_0.c)), !global1.x)), global1.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(147f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2265f * 206f), _wgslsmith_f_op_f32(trunc(-263f)), false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1256f), _wgslsmith_f_op_f32(f32(-1f) * -1123f))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1158f))));
    let var_3 = arg_0;
    let var_4 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-506f - _wgslsmith_f_op_f32(sign(var_1.x))) * var_1.x) * _wgslsmith_div_f32(-928f, var_1.x)), -3102i, arg_0).c.xwy;
    return i32(-1i) * -u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 10496i), u_input.b)), vec4<i32>(func_1(Struct_1(vec3<i32>(19791i, u_input.b.x, -1i), vec2<bool>(global1.x, true), vec4<bool>(false, false, global1.x, false), true)), ~16293i, -16363i, _wgslsmith_mult_i32(u_input.b.x, 2147483647i))) > _wgslsmith_clamp_i32(-u_input.b.x, 0i, 0i)) & !func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1222f, -1178f, -1579f), vec3<f32>(272f, -776f, 1089f)))), func_4(-464f, 1i, Struct_1(vec3<i32>(u_input.b.x, -45667i, 0i), vec2<bool>(true, false), vec4<bool>(global1.x, false, global1.x, global1.x), false)), Struct_1(~vec3<i32>(u_input.b.x, -16383i, 0i), vec2<bool>(global1.x, false), vec4<bool>(false, global1.x, global1.x, global1.x), !global1.x)).x;
    global0 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-683f))))));
    global0 = array<Struct_1, 27>();
    var var_2 = u_input.a.zx;
    var_2 = ~(~reverseBits(vec2<u32>(var_2.x, 6523u) ^ ~u_input.a.yz));
    var var_3 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -734f), ~u_input.b.x, Struct_1(reverseBits(select(~vec3<i32>(13596i, u_input.b.x, 29710i), vec3<i32>(1i, u_input.b.x, 14613i), vec3<bool>(global1.x, true, var_0))), !vec2<bool>(!global1.x, true), !(!vec4<bool>(true, false, false, var_0)), !all(!vec3<bool>(true, var_0, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~((-2147483647i ^ -u_input.b.x) & (u_input.b.x | u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 204f, var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1000f, var_1, var_1))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, var_1)))), reverseBits(vec3<i32>(var_3.a.x, ~(-u_input.b.x), -57850i)));
}

