struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> bool {
    var var_0 = select(!arg_1, !select(vec4<bool>(true, !arg_2.x, 43258u < u_input.a.x, true), vec4<bool>(any(vec4<bool>(false, global0.x, true, arg_2.x)), false, global0.x != true, any(vec2<bool>(arg_2.x, arg_1.x))), true), arg_2.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(341f * -501f) + 1211f) - 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(682f, 315f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(423f, 1532f)))))), Struct_1(_wgslsmith_f_op_f32(-1076f + -854f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-856f, -1797f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-109f, 1750f)))))), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e) << (reverseBits(1u) % 32u), Struct_1(_wgslsmith_f_op_f32(max(1085f, _wgslsmith_f_op_f32(round(1413f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1471f, 294f)) + -134f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-557f * 241f), _wgslsmith_f_op_f32(1885f * -366f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-909f * 852f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1710f) - _wgslsmith_f_op_f32(1191f - -401f)))));
    var var_2 = select(vec3<bool>(!global0.x, true, arg_0.x), arg_1.xwz, all(select(vec4<bool>(!arg_0.x, arg_0.x, u_input.c >= u_input.a.x, global0.x | true), select(!vec4<bool>(global0.x, var_0.x, arg_2.x, false), !arg_1, true), any(select(arg_1.yzx, vec3<bool>(false, false, arg_1.x), true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(819f, 1177f, -191f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-297f, var_1.b.b.x, var_1.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b.x, -503f, var_1.a.b.x) - vec3<f32>(var_1.e, var_1.d.a, var_1.e))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, var_1.a.b.x, -198f) * vec3<f32>(var_1.b.b.x, var_1.e, -2104f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1216f, var_1.b.b.x, var_1.e))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.a, 1184f, var_1.d.b.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, -465f, -1328f))) - vec3<f32>(var_1.d.a, var_1.a.b.x, _wgslsmith_f_op_f32(step(var_1.d.b.x, var_1.a.b.x))))));
    let var_4 = var_1.d;
    return any(vec2<bool>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(var_4.a, -975f)) >= -734f, false));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = !vec3<bool>(arg_0 < -1190f, func_3(select(vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, true), global0.x), vec4<bool>(true, global0.x, global0.x, false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, false), false)) || !any(vec4<bool>(true, global0.x, global0.x, global0.x)), false);
    global0 = vec3<bool>(!global0.x, !all(select(vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x)), true)), ~(i32(-1i) * -35710i) < ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), u_input.e.xxx), abs(u_input.b)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(-427f, 1454f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * -2866f))))), _wgslsmith_f_op_f32(f32(-1f) * -769f)));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * _wgslsmith_f_op_f32(-var_0.x))), -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1153f, 982f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_div_vec2_f32(vec2<f32>(1461f, 1000f), vec2<f32>(-1000f, var_0.x)))) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(217f - var_0.x)))));
    return vec3<bool>(global0.x, any(global0.xx), 0u <= u_input.c);
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    global0 = vec3<bool>(!any(!vec2<bool>(global0.x, global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.a, -286f)))) <= _wgslsmith_f_op_f32(min(-121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(417f))))), true);
    global0 = select(select(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), vec3<bool>(true, global0.x, all(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x)))), vec3<bool>(all(!vec3<bool>(global0.x, global0.x, false)), !any(vec3<bool>(global0.x, global0.x, true)), true)), !vec3<bool>((arg_0.b.x == arg_0.b.x) || any(global0.zx), global0.x, !any(global0.yz)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.b.x)))).x & global0.x);
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a - -1628f), arg_0.a) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2861f), _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(arg_0.b, vec2<f32>(_wgslsmith_div_f32(-1000f, arg_0.a), _wgslsmith_f_op_f32(select(var_0.b.x, -548f, global0.x))))))));
    global0 = select(vec3<bool>(false, true, select(all(func_2(-367f)), func_2(-1371f).x, !all(vec3<bool>(global0.x, false, global0.x)))), select(select(!(!vec3<bool>(false, true, global0.x)), !vec3<bool>(global0.x, false, true), !vec3<bool>(true, global0.x, true)), vec3<bool>(true, global0.x, !select(global0.x, global0.x, false)), global0.x), select(func_2(var_1.x), !vec3<bool>(true, false, global0.x), !(!func_2(var_0.b.x))));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(~u_input.d, u_input.d) | func_1(Struct_1(_wgslsmith_f_op_f32(-1303f * _wgslsmith_f_op_f32(ceil(-1660f))), vec2<f32>(_wgslsmith_f_op_f32(select(-1125f, -108f, global0.x)), -1350f)));
    let var_1 = u_input.a.x;
    global0 = !(!vec3<bool>(!global0.x, true, _wgslsmith_f_op_f32(ceil(-1000f)) < _wgslsmith_div_f32(-1051f, 1155f)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2071f - 830f), _wgslsmith_f_op_f32(sign(-1518f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(-1713f, -923f), _wgslsmith_f_op_f32(step(-683f, 1470f))))))));
    let var_3 = vec2<bool>(global0.x, false);
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.x, -246f))), var_2.a)), var_2.b), Struct_1(_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1841f), _wgslsmith_div_f32(1009f, var_2.a)), var_2.b)), u_input.e.x, Struct_1(_wgslsmith_f_op_f32(sign(682f)), _wgslsmith_f_op_vec2_f32(min(var_2.b, vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_f32(1000f * var_2.a))))), _wgslsmith_div_f32(-639f, _wgslsmith_f_op_f32(abs(var_2.b.x))));
    var var_5 = vec2<bool>(false, true);
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.c, var_6.c), vec2<i32>(var_6.c, 20451i)), -30109i), ~(-vec2<i32>(-1i, -45585i))) | vec2<i32>(var_0.x, -9766i), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(min(var_2.b.x, -1000f))), _wgslsmith_f_op_f32(exp2(var_6.a.a))))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), 12465u >> (var_1 % 32u), abs(_wgslsmith_mod_u32(firstTrailingBit(0u), var_1))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, max(8156i, -9350i), i32(-1i) * -2147483647i, 19064i), vec4<i32>(var_6.c << (10428u % 32u), var_6.c, var_4.c, 1i), any(select(var_3, vec2<bool>(false, false), false))), u_input.e));
}

