struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = vec3<bool>(arg_1.x, true, false);
    var var_1 = _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(53062i, 35559i)) << (arg_2.b % vec2<u32>(32u))), ~(~max(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 13434i)))) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, u_input.c, 0u, 18481u) | firstLeadingBit(vec4<u32>(26823u, 50763u, 15982u, arg_2.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, arg_2.b.x, u_input.c) | vec4<u32>(arg_2.b.x, arg_2.b.x, u_input.c, arg_2.b.x), vec4<u32>(4261u, 104349u, 23144u, arg_2.b.x) << (vec4<u32>(arg_2.b.x, u_input.b, u_input.c, 20214u) % vec4<u32>(32u)))), ~(~_wgslsmith_mult_u32(1909u, u_input.b))) % 32u);
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(314f, arg_0.b, _wgslsmith_f_op_f32(max(global0.x, -574f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d, arg_0.c, arg_0.d), vec3<f32>(arg_3.b, -1000f, -120f), false)) - vec3<f32>(584f, global0.x, 783f))) * vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d))), _wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = arg_2.a.x;
    var_0 = arg_1;
    return _wgslsmith_f_op_f32(-arg_0.d);
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_1(!vec3<bool>(select(false, true, true), any(vec3<bool>(true, true, true)), true), 2946f, global0.x, _wgslsmith_f_op_f32(1303f * global0.x));
    var_0 = Struct_1(!(!select(var_0.a, !var_0.a, var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, true, false), 1520f, global0.x, var_0.d), !var_0.a, Struct_2(u_input.a.zz, vec2<u32>(0u, 19863u)), Struct_1(var_0.a, 839f, -2362f, global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(any(var_0.a.yy), 13408i < u_input.a.x, !var_0.a.x), _wgslsmith_f_op_f32(sign(-2209f)), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -905f)), var_0.a, Struct_2(vec2<i32>(abs(u_input.a.x), 68087i), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 16462u), vec2<u32>(u_input.b, u_input.c)), ~vec2<u32>(10033u, 0u))), Struct_1(vec3<bool>(var_0.a.x, true, true), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -246f) * -228f), global0.x))));
    let var_1 = Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.a.x), 31340i << (~u_input.b % 32u)), vec2<i32>(~reverseBits(2147483647i), u_input.a.x)), ~(firstLeadingBit(vec2<u32>(u_input.b, u_input.b)) | vec2<u32>(0u, 4294967295u)));
    var var_2 = ~_wgslsmith_dot_vec2_u32(var_1.b, _wgslsmith_clamp_vec2_u32(firstLeadingBit(~vec2<u32>(var_1.b.x, var_1.b.x)), ~var_1.b ^ countOneBits(var_1.b), ~(vec2<u32>(var_1.b.x, 1u) ^ var_1.b)));
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(max(1597f, _wgslsmith_f_op_f32(1177f + _wgslsmith_f_op_f32(round(var_0.c))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(259f - var_0.b), global0.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, global0.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-830f, global0.x)) * _wgslsmith_f_op_f32(step(-635f, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) + _wgslsmith_f_op_f32(min(-1000f, -458f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.b, -2253f, false)), _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(step(-353f, arg_0.b)))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1315f, global0.x, arg_0.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, global0.x, global0.x) - vec3<f32>(arg_0.d, -813f, global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(792f, global0.x, global0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-630f * _wgslsmith_f_op_f32(round(-360f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1796f - -192f), 656f)), _wgslsmith_f_op_f32(sign(958f)))) * vec3<f32>(_wgslsmith_f_op_f32(1234f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(387f, arg_0.c)) - arg_0.c)), _wgslsmith_div_f32(_wgslsmith_div_f32(-630f, 1f), arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -338f)));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2())));
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_2, 61211i, arg_2), ~vec4<i32>(-2147483647i, u_input.a.x, arg_2, 1i)), abs(countOneBits(vec4<i32>(2147483647i, arg_2, u_input.a.x, 0i))), ~(~vec4<i32>(arg_2, 2147483647i, u_input.a.x, u_input.a.x)))) << (vec4<u32>(~45981u, arg_1.x, 42927u, 4294967295u) % vec4<u32>(32u));
    let var_1 = Struct_2(abs(u_input.a.yy), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_3.x, 38256u)) << ((vec2<u32>(1u, arg_3.x) << (~vec2<u32>(1u, arg_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_3.yx));
    return _wgslsmith_mult_i32(max(reverseBits(var_1.a.x), _wgslsmith_clamp_i32(abs(~var_1.a.x), _wgslsmith_dot_vec4_i32(var_0, var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-86184i, -51603i, arg_2, u_input.a.x), ~var_0))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(-298f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1822f, _wgslsmith_f_op_f32(min(734f, global0.x))))), !all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))) & true);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -469f, global0.x))))));
    let var_1 = 4294967295u;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2462f, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, global0.x, global0.x))))));
    let var_2 = global0.x;
    var var_3 = abs(func_1(Struct_1(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(false, true, var_0.x)), _wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(sign(-118f))), global0.x, global0.x), select(select(~vec3<u32>(u_input.b, u_input.c, 77966u), vec3<u32>(var_1, u_input.b, u_input.b) << (vec3<u32>(1u, var_1, u_input.b) % vec3<u32>(32u)), true), vec3<u32>(reverseBits(var_1), ~var_1, _wgslsmith_add_u32(0u, 0u)), !var_0.x | true), _wgslsmith_clamp_i32(0i, abs(-u_input.a.x), -7651i), min(~(~vec3<u32>(u_input.b, var_1, var_1)), countOneBits(min(vec3<u32>(1094u, u_input.b, var_1), vec3<u32>(u_input.c, u_input.b, 0u))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1587f) + _wgslsmith_f_op_f32(-429f * global0.x))))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-750f)) + _wgslsmith_f_op_f32(-618f + global0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -458f) * _wgslsmith_div_f32(global0.x, global0.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -244f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(-global0.x))), -420f)), -46617i, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, firstLeadingBit(u_input.a.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, u_input.c, 1u) | ~vec3<u32>(u_input.b, var_1, var_1), vec3<u32>(~var_1, _wgslsmith_mult_u32(u_input.c, 104003u), 0u)), (~vec3<u32>(39890u, u_input.b, 4294967295u) ^ select(vec3<u32>(var_1, 24486u, 59222u), vec3<u32>(0u, u_input.b, u_input.b), vec3<bool>(true, true, false))) | ~vec3<u32>(var_1, var_1, 0u)));
}

