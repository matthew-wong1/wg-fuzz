struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1308f, 634f, -560f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: u32) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, global0.x, arg_2)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(166f, global0.x, arg_2) * _wgslsmith_f_op_vec3_f32(vec3<f32>(727f, global0.x, global0.x) * vec3<f32>(arg_2, -1106f, 188f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2 * -1292f), _wgslsmith_f_op_f32(select(823f, global0.x, true)), _wgslsmith_div_f32(-1611f, 280f)))));
    var var_0 = true;
    let var_1 = Struct_1(1u, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(13761i), ~u_input.b.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.a.x, u_input.b.x))), u_input.a.xz), vec2<bool>(true, true));
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_u32(countOneBits(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 1u, u_input.c.x) | vec3<u32>(arg_0.x, u_input.c.x, 1u), vec3<u32>(4294967295u, arg_1, arg_3))), u_input.d.x, vec2<bool>(any(vec3<bool>(var_1.c.x, false, false)) | !var_1.c.x, var_1.c.x)), select(_wgslsmith_sub_u32(u_input.c.x, countOneBits(25612u)), ~arg_1, select(false, var_1.c.x | (true == var_1.c.x), all(!vec3<bool>(false, var_1.c.x, false)))), Struct_1(~4294967295u, reverseBits(_wgslsmith_mult_i32(11608i, 0i)) ^ _wgslsmith_clamp_i32(u_input.a.x, min(var_1.b, -29160i), -1i >> (arg_0.x % 32u)), vec2<bool>(var_1.c.x, var_1.c.x && var_1.c.x)), abs(-16413i << (min(arg_0.x, u_input.c.x) % 32u)) >= u_input.d.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(201f, 1184f, -952f) - vec3<f32>(arg_2, -686f, global0.x)))) - vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(851f)), arg_2)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -835f), -381f, arg_2));
    return select(!vec4<bool>(all(vec4<bool>(false, var_2.a.c.x, true, true)), any(vec4<bool>(true, true, false, var_1.c.x)), true, var_2.c.c.x), vec4<bool>(!var_1.c.x, !(false && var_2.d), !(!(!var_2.d)), 1f <= arg_2), vec4<bool>(true || any(select(vec3<bool>(var_2.c.c.x, false, var_2.c.c.x), vec3<bool>(var_1.c.x, true, true), vec3<bool>(var_2.c.c.x, false, var_1.c.x))), !var_2.c.c.x, !var_2.c.c.x, -26749i >= var_2.a.b));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    let var_0 = Struct_1(1u, abs(_wgslsmith_add_i32(0i, ~(arg_2.b << (arg_1.b % 32u)))), vec2<bool>(true, arg_1.c.c.x));
    var var_1 = _wgslsmith_mult_i32(arg_1.c.b, ~(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, arg_1.c.b, 33815i, 2147483647i), vec4<i32>(-40285i, var_0.b, arg_1.a.b, arg_1.c.b)))));
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(548f, -294f, 1858f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1887f), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -284f, global0.x))), vec3<bool>(false, true || var_0.c.x, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(trunc(698f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), arg_2.a != ~_wgslsmith_sub_u32(u_input.c.x, 39083u)))));
    let var_2 = !select(func_3(u_input.c, arg_3.x, 254f, 51670u), !(!vec4<bool>(arg_1.a.c.x, false, arg_0.x, true)), vec4<bool>(arg_0.x, any(func_3(arg_3.yxw, 4294967295u, -1733f, var_0.a)), ~29070u < arg_3.x, !func_3(arg_3.zzw, 0u, global0.x, u_input.c.x).x));
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1132f, global0.x, 1499f)))), vec3<f32>(-253f, _wgslsmith_f_op_f32(-1256f * 1646f), 1767f), func_3(~u_input.c, _wgslsmith_add_u32(29840u, 0u), _wgslsmith_f_op_f32(-455f + 351f), ~u_input.c.x).wyy)) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(375f, global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + -1675f)))))));
    return false;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = 45416u;
    let var_1 = Struct_1(min(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, arg_2, u_input.c.x, u_input.c.x), vec4<u32>(arg_2, u_input.c.x, u_input.c.x, 69357u)), ~vec4<u32>(arg_2, arg_2, 67306u, u_input.c.x))), 1u), -u_input.b.x, !arg_1.xz);
    var var_2 = any(vec3<bool>(false, u_input.b.x > _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, -1i), vec2<i32>(u_input.b.x, 3710i)), !(!arg_1.x || !var_1.c.x)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(ceil(631f)), !arg_1.x))), global0.x, 957f);
    var_2 = arg_1.x;
    return Struct_1(_wgslsmith_mod_u32(~var_1.a, ~u_input.c.x), (~_wgslsmith_mult_i32(var_1.b, var_1.b) << (u_input.c.x % 32u)) ^ 2137i, vec2<bool>(any(!vec2<bool>(false, arg_1.x)), func_3(vec3<u32>(arg_2 ^ u_input.c.x, _wgslsmith_mult_u32(98505u, 2908u), 39930u), ~firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.x)), arg_0)), u_input.c.x).x));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = ~firstTrailingBit(min(u_input.c, vec3<u32>(arg_0.a, arg_0.a, 4294967295u))) << (u_input.c % vec3<u32>(32u));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-559f * -1622f), 1190f)), select(!vec3<bool>(arg_0.c.x, arg_0.c.x, !arg_0.c.x), !vec3<bool>(true, true, any(vec3<bool>(false, arg_0.c.x, true))), select(vec3<bool>(!arg_0.c.x, true, func_2(vec2<bool>(arg_0.c.x, arg_0.c.x), Struct_2(Struct_1(41690u, u_input.d.x, vec2<bool>(arg_0.c.x, false)), 48250u, Struct_1(73438u, 2147483647i, vec2<bool>(false, false)), false), arg_0, vec4<u32>(u_input.c.x, 0u, 4279u, var_0.x))), vec3<bool>(true, true, true), false)), min(u_input.c.x, var_0.x));
    var var_2 = select(!select(!func_3(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), 17818u, global0.x, var_0.x), vec4<bool>(true, true, 1u > u_input.c.x, !var_1.c.x), _wgslsmith_f_op_f32(154f + 1107f) >= _wgslsmith_f_op_f32(global0.x * global0.x)), !(!vec4<bool>(true, true, all(vec3<bool>(false, arg_0.c.x, false)), any(vec3<bool>(true, false, arg_0.c.x)))), all(vec4<bool>(!arg_0.c.x, false, var_1.c.x, arg_0.c.x)));
    var_2 = select(vec4<bool>(!(var_2.x && (var_1.a <= 10972u)), var_1.c.x, any(!(!vec4<bool>(var_1.c.x, true, var_2.x, true))), !var_2.x), select(vec4<bool>(_wgslsmith_f_op_f32(select(global0.x, global0.x, var_2.x)) > global0.x, true, false, func_3(vec3<u32>(1u, arg_0.a, var_0.x), abs(arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 20407u, var_1.a), vec4<u32>(98581u, var_1.a, var_0.x, arg_0.a))).x), !func_3(select(var_0, u_input.c, var_2.xwy), var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -715f), arg_0.a), arg_0.c.x), var_2.x);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(674f)), _wgslsmith_f_op_f32(623f + -264f)))));
    return func_4(global0.x, vec3<bool>(true, !(!(!arg_0.c.x)), arg_0.c.x), ~(~u_input.c.x));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -746f) + _wgslsmith_f_op_f32(-arg_2.x)), 664f, _wgslsmith_f_op_f32(max(-882f, _wgslsmith_f_op_f32(f32(-1f) * -1702f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, -1000f, -110f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2341f, arg_2.x, global0.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_2.x, global0.x)))));
    let var_0 = min(firstTrailingBit(~(~vec4<u32>(4294967295u, 67304u, u_input.c.x, 78335u))), _wgslsmith_sub_vec4_u32(~min(abs(vec4<u32>(u_input.c.x, 4294967295u, 56697u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.a, 146233u, 102881u, 25025u), vec4<u32>(u_input.c.x, 0u, arg_0.c.a, 57067u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(65813u, 63680u, arg_0.a.a, 0u) >> (vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(4294967295u, 4294967295u, arg_0.b, 0u)))));
    let var_1 = _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, 29392i, arg_0.c.b, abs(firstLeadingBit(-2147483647i))), vec4<i32>(-27810i, min(26904i, -_wgslsmith_div_i32(-2147483647i, -2147483647i)), 1i, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a.zxx) & u_input.a.xzz, reverseBits(select(vec3<i32>(u_input.d.x, 0i, arg_0.a.b), vec3<i32>(u_input.b.x, 61784i, -1i), vec3<bool>(false, true, arg_0.c.c.x))))));
    let var_2 = _wgslsmith_sub_vec4_u32(var_0, select(~vec4<u32>(var_0.x, 34608u, 4294967295u, u_input.c.x), vec4<u32>(14752u, 71231u, max(var_0.x, 2731u), 0u), !arg_0.c.c.x)) << (countOneBits(_wgslsmith_mult_vec4_u32(max(firstLeadingBit(var_0), ~var_0), _wgslsmith_div_vec4_u32(reverseBits(var_0), var_0))) % vec4<u32>(32u));
    let var_3 = Struct_1(max(~((40796u >> (var_0.x % 32u)) | 4294967295u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0, ~vec4<u32>(4294967295u, u_input.c.x, 48622u, var_0.x)), _wgslsmith_dot_vec2_u32(var_0.ww, vec2<u32>(1u, var_2.x) | vec2<u32>(4294967295u, 1u)))), arg_0.c.b, arg_0.a.c);
    return Struct_2(Struct_1(~1u ^ var_3.a, arg_0.a.b >> ((_wgslsmith_mod_u32(var_0.x, 8776u) | ~4294967295u) % 32u), vec2<bool>(abs(var_0.x) > 72186u, var_3.c.x)), firstTrailingBit(12352u), func_4(203f, func_3(abs(~u_input.c), var_2.x, global0.x, var_2.x).xww, countOneBits(_wgslsmith_mult_u32(0u, u_input.c.x))), -(~u_input.e.x) != 0i);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1318f, 1000f, -628f), vec3<f32>(-203f, global0.x, -1691f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, 2133f, global0.x) - vec3<f32>(-2120f, global0.x, 698f)))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * global0.x))), -1500f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, 2131f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = u_input.c.xz;
    let var_2 = false;
    global0 = var_0.xxw;
    return Struct_1(max(~30190u, firstLeadingBit(firstTrailingBit(40203u))), -firstTrailingBit(abs(~u_input.a.x)), select(vec2<bool>(true, true), vec2<bool>(func_2(arg_2.c.c, Struct_2(Struct_1(var_1.x, 0i, vec2<bool>(true, false)), u_input.c.x, Struct_1(arg_1.a.a, arg_1.a.b, vec2<bool>(true, true)), true), Struct_1(arg_3.c.a, 1i, vec2<bool>(false, true)), vec4<u32>(u_input.c.x, 50605u, 50180u, 4449u)), true), select(!func_4(var_0.x, vec3<bool>(arg_2.c.c.x, true, arg_1.d), 4294967295u).c, !func_3(vec3<u32>(arg_3.a.a, 13901u, u_input.c.x), arg_2.c.a, 608f, var_1.x).xy, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -18415i;
    var_0 = u_input.b.x;
    var var_1 = ~u_input.c.x | ~u_input.c.x;
    var_0 = -2147483647i ^ _wgslsmith_div_i32(-1i, u_input.e.x << (abs(~1u) % 32u));
    var var_2 = ~countOneBits(_wgslsmith_mod_vec2_u32(u_input.c.yx | _wgslsmith_div_vec2_u32(vec2<u32>(54430u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x)), max(u_input.c.yx, firstLeadingBit(u_input.c.zy))));
    var_1 = 4294967295u | var_2.x;
    var var_3 = Struct_2(func_6(u_input.d.zz, func_5(Struct_2(func_1(Struct_1(12721u, 0i, vec2<bool>(true, false)), u_input.d, u_input.e.wxy), var_2.x, func_1(Struct_1(u_input.c.x, -1i, vec2<bool>(true, true)), vec4<i32>(u_input.b.x, u_input.a.x, -26144i, u_input.b.x), u_input.a.yzy), false), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2302f, -482f), vec2<f32>(1283f, global0.x)))), Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.c.x, 34316u), u_input.b.x & u_input.b.x, func_4(322f, vec3<bool>(true, true, true), 1u).c), reverseBits(var_2.x ^ 3778u), Struct_1(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 56233u), reverseBits(9182i), vec2<bool>(true, true)), true), Struct_2(Struct_1(~var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.d.x), u_input.d.xx), func_5(Struct_2(Struct_1(var_2.x, 0i, vec2<bool>(false, true)), 1u, Struct_1(97453u, u_input.e.x, vec2<bool>(true, true)), true), 1i, global0.zz).c.c), _wgslsmith_mult_u32(var_2.x << (u_input.c.x % 32u), 51167u), Struct_1(~13469u, _wgslsmith_clamp_i32(44378i, 2147483647i, 14011i), vec2<bool>(true, true)), true)), var_2.x << (var_2.x % 32u), Struct_1(reverseBits(~(~var_2.x)), u_input.b.x, !(!func_6(u_input.e.ww, Struct_2(Struct_1(u_input.c.x, u_input.e.x, vec2<bool>(true, true)), var_2.x, Struct_1(85503u, -57964i, vec2<bool>(true, false)), true), Struct_2(Struct_1(u_input.c.x, u_input.e.x, vec2<bool>(true, false)), 47308u, Struct_1(1u, u_input.a.x, vec2<bool>(true, false)), true), Struct_2(Struct_1(1u, u_input.d.x, vec2<bool>(false, false)), 1u, Struct_1(u_input.c.x, u_input.a.x, vec2<bool>(true, false)), true)).c)), true);
    let var_4 = -var_3.a.b;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 951f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.xx))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(-2147i, 1i, i32(-1i) * -12310i)), select((0i & -u_input.a.x) << (~reverseBits(1u) % 32u), -var_3.a.b, (false && var_3.c.c.x) && !all(vec4<bool>(true, false, var_3.a.c.x, var_3.a.c.x))), vec2<f32>(var_5.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) * var_5.x), _wgslsmith_f_op_f32(abs(global0.x)))));
}

