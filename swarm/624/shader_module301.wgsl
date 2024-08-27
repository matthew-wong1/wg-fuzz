struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 480f, global0.x, -258f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -1867f, 508f, global0.x)))))))));
    let var_0 = global0.x;
    var var_1 = u_input.b.x;
    return false;
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(583f, global0.x, global0.x, 1275f) - vec4<f32>(-366f, -919f, 1008f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, 1819f, global0.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -271f, global0.x, 1918f))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -772f, global0.x, -964f)))) - vec4<f32>(_wgslsmith_f_op_f32(1376f - global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-288f + global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1676f, 115f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, 369f), vec4<bool>(true, true, false, false)))))), true)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -1005f, global0.x, global0.x), vec4<f32>(1569f, global0.x, global0.x, global0.x)))))) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)) - vec4<f32>(_wgslsmith_f_op_f32(-137f * global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f), -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-957f, _wgslsmith_f_op_f32(min(global0.x, global0.x))) * _wgslsmith_f_op_f32(global0.x - 845f)), global0.x));
    var var_0 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(global0.yxy + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1000f, -165f), global0.wzx, true))), ~u_input.b, vec4<bool>(true, all(vec3<bool>(true, true, false)), false, any(vec3<bool>(true, true, true))), vec4<i32>(i32(-1i) * -1i, firstTrailingBit(34957i), u_input.a, i32(-1i) * -1i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(805f, 246f, -443f)))), Struct_2(global0.zwx, vec4<u32>(~u_input.b.x, ~19742u, ~u_input.c, ~u_input.b.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, false)), vec4<i32>(~(-2147483647i), ~u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d.yy, vec2<i32>(2147483647i, 0i)), u_input.a)), vec4<i32>(u_input.d.x, -reverseBits(40467i), 38721i, 1i), abs(u_input.d.zx)), -(~u_input.d.zz));
    var var_1 = Struct_2(global0.zyw, abs(u_input.b), var_0.a.c.c, firstLeadingBit(vec4<i32>(1i, u_input.d.x, 2147483647i, -(var_0.a.a.d.x & -9288i))));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.ywz))), var_1.b, var_0.a.a.c, vec4<i32>(abs(0i), abs(var_0.b.x), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-3715i, -1i, var_1.d.x), _wgslsmith_mult_vec3_i32(u_input.d, var_1.d.ywx))), 2147483647i));
    return _wgslsmith_f_op_f32(exp2(var_1.a.x));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1087f + -883f))) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x - 1032f)));
    let var_0 = Struct_3(Struct_2(vec3<f32>(534f, 503f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(global0.x, 1363f)))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(25311u, u_input.b.x, u_input.c, u_input.b.x)), firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, 4650u, u_input.b.x)), ~u_input.b) << (max(u_input.b, firstTrailingBit(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), vec4<bool>(true, true, true, true), vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(30481i, 2147483647i, u_input.a, -1532i)), select(vec4<i32>(u_input.d.x, arg_0.x, -20817i, 1i), vec4<i32>(u_input.d.x, u_input.a, 2147483647i, -49793i), true)), arg_0.x << (u_input.b.x % 32u), u_input.a, i32(-1i) * -u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.zww))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.yzw * _wgslsmith_f_op_vec3_f32(global0.yxw * vec3<f32>(global0.x, global0.x, -351f)))), select(abs(u_input.b << (vec4<u32>(43237u, u_input.c, u_input.b.x, u_input.c) % vec4<u32>(32u))), u_input.b, !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -u_input.d.x, -u_input.a, u_input.d.x), vec4<i32>(u_input.a << (42401u % 32u), 40253i | arg_0.x, i32(-1i) * -22173i, u_input.d.x))), ~firstTrailingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, arg_0.x, 21750i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, 0i, -1i))), reverseBits(arg_0));
    var var_1 = u_input.b.x;
    var var_2 = u_input.b.xyx;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-var_0.c.a.x)), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x) - -856f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1026f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(var_0.a.a.x - 1112f))), global0.x);
    return var_0.c.c.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(global0.wxw, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~0u, 15630u, ~0u) | u_input.b, abs(select(~vec4<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, u_input.c), arg_2.b, arg_2.c))), arg_2.c, arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-594f * global0.x))), 1366f, -1086f, -1023f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, -415f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -568f, -336f, -1814f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2039f, 306f, -1000f, global0.x) + vec4<f32>(258f, 870f, 1094f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1760f, global0.x) * vec4<f32>(882f, 989f, -105f, 561f)))), vec4<bool>(u_input.a >= -1i, true, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1217f, 1000f, 525f) + vec4<f32>(global0.x, -670f, 234f, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(621f, global0.x, global0.x, -403f) * vec4<f32>(global0.x, -539f, global0.x, 2112f)))))), select(all(vec3<bool>(true, true, true)), true, !func_1(true))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), -726f, -107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(abs(global0.x))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(767f - -783f), _wgslsmith_f_op_f32(select(global0.x, 441f, any(vec2<bool>(u_input.a <= u_input.d.x, true)))), global0.x, global0.x);
    let var_0 = func_4(u_input.a, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)) & (!func_2(vec2<i32>(u_input.d.x, u_input.d.x)) || (_wgslsmith_mult_u32(1u, u_input.c) > (u_input.b.x | 9724u))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, global0.x), func_2(u_input.d.zy))), -630f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -856f))), u_input.b, vec4<bool>(!all(vec2<bool>(false, true)), true & func_1(false), true, true), countOneBits(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 2147483647i, -23025i, -4657i))));
    let var_1 = func_4(2147483647i, any(var_0.c), var_0);
    let var_2 = Struct_4(Struct_3(func_4(-22374i, true, var_0), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a))), var_0, ~(~abs(vec4<i32>(45884i, 13444i, 2147483647i, var_1.d.x))), vec2<i32>(35433i, 1i)), u_input.d.zy);
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(583f, 562f, 712f, var_1.a.x)))), vec4<f32>(global0.x, var_2.a.b.a.x, _wgslsmith_f_op_f32(-473f * _wgslsmith_f_op_f32(-var_0.a.x)), -353f))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x))), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-1814f * global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(-var_0.a.x))))))));
    var var_3 = var_2.a.b;
    var var_4 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_clamp_i32(_wgslsmith_add_i32((i32(-1i) * -2262i) >> (countOneBits(var_0.b.x) % 32u), 17821i), max(min(-47161i, var_0.d.x), var_1.d.x) << (_wgslsmith_div_u32(u_input.b.x, min(var_2.a.a.b.x, var_2.a.c.b.x)) % 32u), ~func_4(countOneBits(var_0.d.x), any(var_1.c), var_2.a.a).d.x), var_2.a.c.b.x);
}

