struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = 121702u;
    var var_1 = any(vec4<bool>(true, all(!(!vec4<bool>(false, true, true, arg_0.a))), arg_0.a, ~1u != var_0));
    let var_2 = !vec4<bool>(abs(u_input.b) <= ~(-u_input.b), true, _wgslsmith_clamp_i32(u_input.a & 1i, abs(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 5003i))) > (u_input.b & _wgslsmith_sub_i32(u_input.b, u_input.b)), arg_0.a);
    let var_3 = !var_2.yw;
    var var_4 = Struct_2(arg_0, var_0, Struct_1(any(vec3<bool>(!var_2.x, var_2.x, true))), vec3<u32>(var_0, 12466u, ~4294967295u));
    return any(var_2);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = reverseBits(~_wgslsmith_sub_u32(arg_0, 18985u));
    var_0 = abs(arg_2.b);
    let var_1 = firstTrailingBit(-abs(-_wgslsmith_div_i32(u_input.a, u_input.a)));
    var_0 = reverseBits(26359u) & (firstLeadingBit(68881u) >> (arg_2.b % 32u));
    var_0 = 45569u;
    return -513f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_add_u32(~4294967295u, 4294967295u), 1u);
    return Struct_3(12379i, func_2(Struct_1(all(select(vec3<bool>(arg_3.c.a, arg_0.a, true), vec3<bool>(false, false, arg_3.b), arg_1.a)))), Struct_1(true));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = func_4(Struct_1(arg_1.a), Struct_1(func_2(arg_1)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_3(1u, Struct_2(arg_1, 0u, arg_1, vec3<u32>(4245u, 0u, 0u)), Struct_2(arg_1, 0u, Struct_1(arg_1.a), vec3<u32>(4294967295u, 1u, 35147u)))), 1190f))), Struct_3(_wgslsmith_add_i32(u_input.b, -u_input.a), arg_1.a, Struct_1(arg_1.a)));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(110f + _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))), Struct_1(true))));
    var var_1 = func_4(func_4(Struct_1(true), func_4(Struct_1(true), func_4(Struct_1(false), Struct_1(false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), func_4(Struct_1(false), Struct_1(true), vec2<f32>(var_0, var_0), Struct_3(20873i, false, Struct_1(true)))).c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(372f, var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1711f, 762f)), false)), Struct_3(firstTrailingBit(-2147483647i), true, func_4(Struct_1(true), Struct_1(true), vec2<f32>(-195f, var_0), Struct_3(u_input.a, false, Struct_1(false))).c)).c, vec2<f32>(-332f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1831f + -1696f)))), func_4(Struct_1(true), Struct_1(true), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, var_0))), func_4(Struct_1(false), Struct_1(true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-207f, 580f))), func_4(Struct_1(false), Struct_1(false), vec2<f32>(var_0, var_0), Struct_3(u_input.b, true, Struct_1(true)))))).c, func_4(func_4(func_4(Struct_1(false), Struct_1(false), vec2<f32>(1f, 1f), Struct_3(u_input.a, false, Struct_1(false))).c, Struct_1(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1394f, -621f)))), func_4(func_4(Struct_1(true), Struct_1(true), vec2<f32>(-157f, var_0), Struct_3(u_input.a, true, Struct_1(false))).c, func_4(Struct_1(true), Struct_1(false), vec2<f32>(-950f, var_0), Struct_3(-1i, false, Struct_1(true))).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1295f) - vec2<f32>(var_0, -256f)), Struct_3(-13227i, false, Struct_1(true)))).c, Struct_1(!any(vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))), Struct_3(u_input.b, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false)), Struct_1(select(false, true, false)))).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -1627f))))))), Struct_3(~(~(-u_input.a)), true, func_4(func_4(Struct_1(true), Struct_1(false), vec2<f32>(var_0, var_0), Struct_3(-49313i, false, Struct_1(false))).c, func_4(Struct_1(false), func_4(Struct_1(false), Struct_1(true), vec2<f32>(var_0, var_0), Struct_3(u_input.a, true, Struct_1(true))).c, vec2<f32>(-472f, var_0), func_4(Struct_1(true), Struct_1(true), vec2<f32>(-772f, 783f), Struct_3(2267i, true, Struct_1(true)))).c, vec2<f32>(_wgslsmith_f_op_f32(-var_0), 937f), func_4(func_4(Struct_1(false), Struct_1(false), vec2<f32>(var_0, var_0), Struct_3(u_input.a, true, Struct_1(true))).c, Struct_1(false), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(1372f, -482f)), func_4(Struct_1(true), Struct_1(false), vec2<f32>(-618f, -290f), Struct_3(u_input.b, false, Struct_1(false))))).c)).c;
    let var_2 = func_4(func_4(func_4(func_4(Struct_1(var_1.a), Struct_1(true), _wgslsmith_div_vec2_f32(vec2<f32>(117f, 109f), vec2<f32>(var_0, 300f)), Struct_3(u_input.a, true, Struct_1(false))).c, func_4(Struct_1(true), func_4(Struct_1(true), Struct_1(true), vec2<f32>(-869f, var_0), Struct_3(33081i, var_1.a, Struct_1(true))).c, vec2<f32>(var_0, 1491f), func_4(Struct_1(var_1.a), Struct_1(true), vec2<f32>(-1359f, var_0), Struct_3(u_input.a, true, Struct_1(var_1.a)))).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-387f, 751f), vec2<f32>(-574f, var_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), func_4(Struct_1(false), Struct_1(var_1.a), vec2<f32>(1f, 1f), Struct_3(6166i, var_1.a, Struct_1(var_1.a)))).c, Struct_1(!(false || var_1.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(769f, var_0), vec2<f32>(var_0, -880f), var_1.a)), vec2<f32>(var_0, 1504f), select(vec2<bool>(false, false), vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, true)))))), Struct_3(-5398i, false, func_4(func_4(Struct_1(var_1.a), Struct_1(var_1.a), vec2<f32>(-1476f, -315f), Struct_3(u_input.a, false, Struct_1(var_1.a))).c, func_4(Struct_1(var_1.a), Struct_1(var_1.a), vec2<f32>(659f, var_0), Struct_3(1i, var_1.a, Struct_1(false))).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 867f)), func_4(Struct_1(true), Struct_1(false), vec2<f32>(var_0, 242f), Struct_3(-2147483647i, var_1.a, Struct_1(var_1.a)))).c)).c, Struct_1(45556u < reverseBits(_wgslsmith_clamp_u32(28564u, 0u, 56250u))), vec2<f32>(var_0, _wgslsmith_f_op_f32(sign(424f))), func_4(Struct_1(true), func_4(Struct_1(var_1.a == var_1.a), Struct_1(var_1.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-707f, -1238f) + vec2<f32>(var_0, -1000f)))), func_4(Struct_1(true), func_4(Struct_1(false), Struct_1(var_1.a), vec2<f32>(var_0, var_0), Struct_3(-327i, true, Struct_1(var_1.a))).c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(636f, 569f), vec2<f32>(479f, var_0))), Struct_3(u_input.a, var_1.a, Struct_1(true)))).c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-660f, -1000f))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(max(var_0, var_0)))), func_4(func_4(Struct_1(var_1.a), Struct_1(var_1.a), vec2<f32>(var_0, -1000f), Struct_3(u_input.b, true, Struct_1(var_1.a))).c, Struct_1(true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(1000f, var_0))), func_4(Struct_1(var_1.a), func_4(Struct_1(false), Struct_1(var_1.a), vec2<f32>(var_0, -1526f), Struct_3(u_input.b, var_1.a, Struct_1(var_1.a))).c, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 1033f), vec2<f32>(-177f, var_0))), func_4(Struct_1(var_1.a), Struct_1(var_1.a), vec2<f32>(-1743f, -2011f), Struct_3(-1i, true, Struct_1(true))))))).c;
    var var_3 = vec4<bool>(func_2(var_2), true, var_2.a, var_2.a);
    var var_4 = abs(_wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(1u, 0u))), vec2<u32>(1u, 1u)));
    var var_5 = 1i;
    let var_6 = u_input.b;
    var var_7 = func_4(Struct_1(!(!(!var_2.a))), Struct_1(any(select(!vec4<bool>(false, true, var_2.a, var_2.a), vec4<bool>(var_1.a, var_3.x, false, var_2.a), any(var_3.zzz)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(543f + -1000f))))), func_4(func_4(var_2, func_4(func_4(var_2, Struct_1(var_2.a), vec2<f32>(-604f, 2026f), Struct_3(0i, var_3.x, var_2)).c, func_4(Struct_1(var_3.x), var_2, vec2<f32>(var_0, var_0), Struct_3(0i, true, Struct_1(var_2.a))).c, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, var_0), vec2<f32>(var_0, 1000f))), Struct_3(u_input.b, true, Struct_1(var_3.x))).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, -684f), vec2<f32>(-1251f, -812f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -353f) + vec2<f32>(var_0, var_0))), Struct_3(u_input.b, var_0 == var_0, var_2)).c, var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-679f, var_0)))), Struct_3(i32(-1i) * -11398i, true, var_2))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(countOneBits(min(_wgslsmith_add_u32(1u, 29707u), ~4294967295u)), 1u), _wgslsmith_f_op_f32(step(var_0, -1000f)));
}

