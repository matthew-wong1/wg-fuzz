struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_1(!arg_1.a.b, true);
    let var_1 = var_0.b;
    var var_2 = ~_wgslsmith_clamp_i32(1i, 1i, -(~u_input.c.x));
    return select(vec4<bool>(-373f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, arg_0.x, false))), true, arg_1.a.a, true), !vec4<bool>(false, !var_0.b && true, select(true, var_1, var_1), arg_1.a.a), all(vec4<bool>(false, _wgslsmith_f_op_f32(-arg_0.x) != 1479f, !select(false, var_0.a, arg_1.a.b), !arg_1.a.b | (true && var_1))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = any(select(select(vec4<bool>(arg_1.b, true, arg_0, true), !vec4<bool>(true, arg_1.a, true, false), arg_1.a), select(select(vec4<bool>(false, true, arg_0, true), func_3(vec2<f32>(-1057f, 1019f), Struct_2(Struct_1(false, true)), vec2<i32>(u_input.a.x, 10383i)), vec4<bool>(true, false, true, arg_1.b)), select(!vec4<bool>(true, true, true, arg_0), vec4<bool>(false, arg_1.a, false, true), !arg_1.b), select(!vec4<bool>(arg_0, false, arg_1.a, true), vec4<bool>(true, true, true, true), u_input.a.x != -1i)), any(vec3<bool>(!arg_1.b, false, !arg_1.a))));
    var_0 = arg_1.a;
    var_0 = arg_0;
    var_0 = !all(!select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), vec2<bool>(false, arg_0)));
    var var_1 = abs(~1u);
    return !select(arg_1.b, all(vec4<bool>(arg_0, true, true, false)), arg_0) | select(arg_0, false, true);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(u_input.c.x, abs(max(-u_input.a.x, (i32(-1i) * -36073i) ^ abs(u_input.a.x))));
    let var_1 = Struct_2(Struct_1(false, !arg_2));
    let var_2 = Struct_1(var_1.a.a, var_1.a.a);
    var var_3 = Struct_3(Struct_1(!(any(vec3<bool>(var_1.a.a, false, arg_2)) || true), var_1.a.b), -1988f);
    var_3 = Struct_3(var_3.a, _wgslsmith_f_op_f32(max(var_3.b, _wgslsmith_f_op_f32(-arg_0.x))));
    return Struct_3(var_3.a, arg_1.x);
}

fn func_1() -> i32 {
    let var_0 = countOneBits(u_input.d.xx);
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f) * -395f), 1078f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(774f + -185f), _wgslsmith_div_f32(-872f, 442f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(-770f * 899f), -1919f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1743f, 502f, 743f)) + vec3<f32>(1594f, -1000f, 109f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, _wgslsmith_f_op_f32(418f * 573f), -691f) + vec3<f32>(965f, _wgslsmith_f_op_f32(123f * -1952f), _wgslsmith_f_op_f32(abs(-1059f))))), !all(vec4<bool>(true, func_2(true, Struct_1(true, true)), true, 95792u >= u_input.d.x)));
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, 391f, -1803f, var_1.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b, -715f, var_1.b), vec3<f32>(-1226f, var_1.b, var_1.b))), var_1.a.a).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(213f - 396f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b * -194f))), var_1.b)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-380f, var_1.b), var_1.b, _wgslsmith_f_op_f32(abs(1645f))))))), any(vec3<bool>(any(vec2<bool>(var_1.a.a, false)), _wgslsmith_mod_u32(var_0.x, var_0.x) > var_0.x, any(select(vec3<bool>(var_1.a.a, var_1.a.a, true), vec3<bool>(var_1.a.a, var_1.a.b, true), vec3<bool>(true, false, false))))));
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(915f, var_1.b, var_1.b, var_1.b))), vec4<f32>(-1171f, var_1.b, var_1.b, 568f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, var_1.b, 1063f, 1617f) - vec4<f32>(-691f, var_1.b, 1345f, 256f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1797f, var_1.b, 1105f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, 781f, var_1.b)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 744f, 272f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(497f, -141f, var_1.b))))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b))), -458f, -1209f)), false);
    let var_2 = Struct_2(func_4(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(747f - -1101f))), 1871f, var_1.b, var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(142f, var_1.b, var_1.b)))), _wgslsmith_mult_u32(firstTrailingBit(0u), _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 69292u)) < var_0.x).a);
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.zz, vec2<i32>(-1i, -36157i)), _wgslsmith_mult_vec2_i32(u_input.a.zz, vec2<i32>(4085i, u_input.c.x)))), ~(~select(2147483647i, ~(-8703i), var_2.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -14290i;
    let var_1 = vec2<i32>(abs(u_input.c.x), _wgslsmith_mult_i32(~(-25197i), u_input.c.x));
    var_0 = _wgslsmith_sub_i32(0i, -reverseBits(var_1.x));
    var_0 = func_1();
    let var_2 = 1626f;
    var_0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

