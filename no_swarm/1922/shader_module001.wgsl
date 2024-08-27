struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_4(Struct_1(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -851f), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), 1368f, _wgslsmith_f_op_f32(380f + arg_0.x), -1878f)), ~_wgslsmith_sub_u32(113836u, _wgslsmith_mod_u32(u_input.a & u_input.a, u_input.a)), vec3<i32>(1i, 1i, 1i), -(~vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, var_0.a.b)) + _wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(585f, -282f, 1201f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.c.x, 143f, 896f), vec3<f32>(-1304f, var_0.a.c.x, arg_0.x), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, -375f, arg_0.x))), true))), arg_0, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), vec3<bool>(true, true, false), true), select(vec3<bool>(all(vec2<bool>(true, true)), true, false), vec3<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), true), true), true)));
    var var_2 = vec2<bool>(false, true);
    var_1 = _wgslsmith_f_op_vec3_f32(var_0.a.c.xxx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_0.a.c.x), -675f, var_1.x))));
    let var_3 = countOneBits(_wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.x, var_0.c.x), vec2<i32>(24472i, var_0.d.x))), var_0.d.wz)) & countOneBits(var_0.c.zx);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-177f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(min(var_1.x, -1077f)), false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.x)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526f - _wgslsmith_f_op_f32(-536f * -942f)) * _wgslsmith_div_f32(-563f, -627f)))));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2461f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-614f, -2448f, 191f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)) * -728f)));
    let var_1 = all(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), true), vec3<bool>(true, 258f >= var_0, true), _wgslsmith_f_op_f32(step(var_0, var_0)) == _wgslsmith_f_op_f32(-var_0))));
    let var_2 = firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)) & ~vec2<u32>(u_input.a, 4294967295u)) << (vec2<u32>(min(~8217u, 53959u), countOneBits(countOneBits(4294967295u))) % vec2<u32>(32u)));
    let var_3 = !vec4<bool>(true, var_1, !(!var_1) || false, all(select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, false, true), !var_1)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(910f, var_0)));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1723f, var_0)), _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 357f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, var_0, 654f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, var_0, 766f, var_0)))))), _wgslsmith_dot_vec4_u32((~vec4<u32>(u_input.a, u_input.a, 1u, 29797u) & ~vec4<u32>(1u, var_2.x, u_input.a, var_2.x)) >> (((vec4<u32>(1u, var_2.x, var_2.x, 39873u) | vec4<u32>(55831u, 1u, var_2.x, var_2.x)) | ~vec4<u32>(0u, 2730u, var_2.x, 4294967295u)) % vec4<u32>(32u)), firstTrailingBit(~(vec4<u32>(31491u, 41486u, var_2.x, 27125u) | vec4<u32>(26630u, u_input.a, 1u, 0u)))), _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(-3616i), 1182i, max(16358i, 1i)) >> (vec3<u32>(0u, u_input.a, ~var_2.x) % vec3<u32>(32u)), vec3<i32>(34686i, 3599i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(19761i, 1i)) >> (~19273u % 32u))), max(~vec4<i32>(-35531i, 4837i, -37724i, -41832i), _wgslsmith_mult_vec4_i32(vec4<i32>(44948i, ~40623i, select(22330i, -23408i, false), ~1i), vec4<i32>(min(2147483647i, 2147483647i), i32(-1i) * -1i, -25823i, -1i))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(-798f, -283f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.a.a, 1281f)), _wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(round(arg_3.a)), _wgslsmith_f_op_f32(arg_1.x + arg_3.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a, arg_3.a, -3531f, arg_1.x)))));
    let var_1 = arg_3.c;
    var var_2 = !vec3<bool>(!all(vec2<bool>(true, false)), !(arg_0.b <= ~37699u), false);
    var_0 = arg_3;
    var_2 = !(!select(select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, var_2.x, false), vec3<bool>(true, false, true)), select(!vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, var_2.x, var_2.x), select(vec3<bool>(false, true, false), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, var_2.x, var_2.x))), true));
    return Struct_2(vec3<bool>(true, ~(~u_input.a) != ~(0u & arg_0.b), var_2.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.c.x, arg_0.c.x), select(vec2<i32>(arg_2.x, arg_2.x), arg_0.c.zy, var_2.x)), -1i) | arg_2.x, select(_wgslsmith_mult_vec2_i32(-arg_2, arg_0.d.zx ^ firstTrailingBit(vec2<i32>(arg_2.x, 2147483647i))), vec2<i32>(arg_2.x << (34939u % 32u), -52486i), select(var_2.zz, vec2<bool>(0u >= arg_0.b, var_2.x && var_2.x), var_2.zx)), _wgslsmith_f_op_vec2_f32(-var_0.c.xx), arg_3);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = func_4(func_2(), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 744f, arg_0) - vec3<f32>(arg_0, arg_0, 739f)), vec3<f32>(271f, arg_0, -329f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, arg_0, -1164f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) * vec3<f32>(-228f, arg_0, arg_0)))), vec3<bool>(all(vec3<bool>(false, false, arg_2)), _wgslsmith_f_op_f32(max(arg_0, arg_0)) <= _wgslsmith_f_op_f32(floor(2011f)), 23872u < u_input.a))), vec2<i32>(-1i, ~(-5589i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0))))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1125f, 606f, arg_0), vec4<f32>(1000f, arg_0, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 156f, 1024f, arg_0))))));
    var var_1 = 42615u;
    var_1 = u_input.a | u_input.a;
    var var_2 = var_0.e.c.yyx;
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.e.a), 347f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(795f, var_0.e.a), -395f), func_4(func_2(), _wgslsmith_f_op_vec3_f32(-var_0.e.c.wyy), var_0.c, Struct_1(var_2.x, -1245f, vec4<f32>(744f, -1326f, -753f, var_0.e.b))).d.x) - -1000f));
    return _wgslsmith_mod_u32(min(u_input.a, ~u_input.a), 19343u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec4<bool>(true, false, false, true)), !(!(func_1(308f, -1i, true) > (95265u << (1u % 32u)))));
    var var_1 = !(!vec3<bool>(var_0.x, true, true));
    let var_2 = vec3<bool>(any(!vec3<bool>(var_0.x, any(vec4<bool>(false, true, true, var_1.x)), true)), false & var_1.x, !(1i == func_4(func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(189f, 270f, -276f) - vec3<f32>(-990f, -1000f, -974f)), func_2().d.zx, func_2().a).c.x));
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(313f, -1743f)) + -1657f) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec3<f32>(514f, 710f, 939f))))), true);
    var_1 = select(var_2, !var_2, vec3<bool>(!(!var_1.x), true, !select(var_0.x, var_2.x, var_1.x) && false));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 1451f));
    let var_4 = reverseBits(~func_1(-992f, max(26653i, -3133i), true)) & ~(~1u);
    var var_5 = func_4(func_2(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_3, var_3), vec3<f32>(-493f, var_3, var_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_3, var_3) - vec3<f32>(-1094f, -878f, -167f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-734f, var_3, 1170f) + vec3<f32>(-179f, -663f, 124f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3, var_3, -1189f)))))))), -vec2<i32>(-2147483647i, abs(1i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)) - 937f), 1729f, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3, _wgslsmith_f_op_f32(var_3 + -776f), -127f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, -585f, var_3, var_3)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1407f, var_3, -216f, var_3)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(26160u), 238u, var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(func_4(Struct_4(Struct_1(226f, var_5.d.x, var_5.e.c), 2856u, vec3<i32>(0i, var_5.b, var_5.b), vec4<i32>(-3261i, var_5.c.x, -1i, -6360i)), vec3<f32>(-381f, var_3, 129f), vec2<i32>(-2147483647i, var_5.c.x), Struct_1(297f, var_3, vec4<f32>(var_3, var_3, var_5.d.x, 1245f))).e.c, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3, -397f, var_3, var_5.e.c.x), var_5.e.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_5.e.c)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, var_5.e.b, true)), _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_5.d + var_5.d)))))));
}

