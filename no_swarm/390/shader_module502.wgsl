struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1622f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_div_f32(-879f, 356f), true))))), _wgslsmith_f_op_f32(f32(-1f) * -779f));
    var var_1 = !any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true)));
    var_1 = true;
    var var_2 = !select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(false, false | (var_0 != var_0)), var_0 == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(524f, -878f)), _wgslsmith_f_op_f32(520f - -1046f))));
    var_2 = !vec2<bool>(!any(!vec4<bool>(var_2.x, false, false, var_2.x)), all(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, var_2.x))));
    return 515f;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(663f, -288f, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -503f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1096f, -1248f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(742f, -442f))))))));
    var var_1 = _wgslsmith_sub_u32(59788u, _wgslsmith_div_u32(~(~_wgslsmith_clamp_u32(0u, 1u, 4294967295u)), ~25961u));
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(i32(-1i) * -u_input.b.x, -21400i))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-157f, 1110f)), var_0.x))));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -905f);
    return Struct_1(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), any(vec3<bool>(true, true, true)))), vec4<bool>(true, !any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), all(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)))), select(vec4<bool>(true, !all(vec2<bool>(false, false)), true, true), vec4<bool>(!all(vec4<bool>(true, false, false, false)), select(all(vec4<bool>(false, false, false, false)), true, true), true, true), vec4<bool>(all(vec2<bool>(true, true)), true, select(arg_1.x != arg_1.x, true, true), any(vec2<bool>(false, false)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(all(!vec3<bool>(false, arg_0, arg_0)), arg_1.a.x, any(func_2(29085i, vec3<i32>(6977i, u_input.c.x, 14166i)).c)), vec4<bool>(!(arg_3 == arg_3), arg_0, !arg_0, select(true, select(arg_1.c.x, arg_0, false), arg_0)), func_2(u_input.d.x, -u_input.c.ywy).c));
    var var_1 = func_2(5614i, countOneBits(vec3<i32>(reverseBits(u_input.a.x) | u_input.d.x, ~max(1i, u_input.d.x), 0i)));
    var_1 = arg_1;
    var_0 = Struct_2(Struct_1(vec3<bool>(true, !arg_0, !(!var_1.b.x)), arg_1.b, !arg_1.b));
    var var_2 = -1i;
    return arg_1;
}

fn func_1() -> bool {
    var var_0 = func_4(true, func_2(_wgslsmith_add_i32(-6216i, i32(-1i) * -u_input.b.x), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, u_input.b.x), vec3<i32>(2147483647i, 15563i, u_input.b.x)), ~vec3<i32>(1i, u_input.d.x, u_input.b.x)), vec3<i32>(-u_input.a.x, ~u_input.d.x, u_input.b.x))), vec3<u32>(~select(21166u, 34664u, true), _wgslsmith_clamp_u32(0u, 143421u, ~(~11468u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(37889u, 4117u, 34690u, 0u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u))), vec2<u32>(7854u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-312f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f), -959f))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-488f, 215f) + vec2<f32>(-600f, 206f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, 164f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1314f, 2287f), vec2<f32>(-243f, 2078f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -456f), _wgslsmith_f_op_f32(f32(-1f) * -121f))))));
    var var_2 = vec3<bool>(!((var_1.x <= _wgslsmith_div_f32(913f, var_1.x)) || (select(58228u, 4294967295u, false) < 1u)), !all(func_4(var_0.b.x || false, func_4(true, Struct_1(var_0.c.yxy, var_0.b, var_0.c), vec3<u32>(8966u, 50718u, 1u), 1289f), select(vec3<u32>(1u, 38724u, 41372u), vec3<u32>(7814u, 27918u, 0u), var_0.a.x), 592f).a), all(var_0.a));
    var var_3 = true;
    var var_4 = !(!var_0.c);
    return (true | var_0.b.x) | all(vec4<bool>(true, var_2.x, true != (var_0.a.x && true), any(var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, !all(vec2<bool>(true, false)), true), !vec4<bool>(false, true, func_1(), true), select(vec4<bool>(all(vec3<bool>(true, true, false)), true, any(vec4<bool>(true, false, false, false)), true), func_2(_wgslsmith_mod_i32(46204i, 62200i), -u_input.c.zxz).b, vec4<bool>(all(vec3<bool>(false, false, true)), true, true, func_4(true, Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec3<u32>(0u, 64402u, 16531u), 3357f).a.x))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(vec3<bool>(true && select(false, var_0.a.b.x, var_0.a.c.x), all(func_2(u_input.d.x, u_input.c.wyx).b.xy), (u_input.c.x == u_input.c.x) & false), vec4<bool>(true, !(var_0.a.a.x | false), func_2(u_input.d.x ^ -19485i, vec3<i32>(u_input.c.x, u_input.d.x, u_input.b.x) | vec3<i32>(u_input.d.x, -39154i, u_input.d.x)).b.x, !any(var_0.a.b.xx)), !select(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.c.x, var_0.a.a.x), var_0.a.b, var_0.a.b)));
    var var_1 = !var_0.a.c;
    let var_2 = var_0.a.b;
    var_0 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(4294967295u), firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 26455u, 5434u), vec4<u32>(33754u, 63137u, 4294967295u, 0u))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(21759u, 0u), ~vec2<u32>(4693u, 4294967295u)) % 32u)), ~(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, u_input.b.x | u_input.c.x, 2147483647i, u_input.b.x), abs(u_input.c)));
}

