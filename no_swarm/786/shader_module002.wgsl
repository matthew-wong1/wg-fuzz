struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<f32> = vec4<f32>(1839f, 1000f, -160f, 168f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec4<bool>(false, false, true, false)), true), true), select(vec3<bool>(true || all(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), global1.x <= -1426f), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, false), false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), vec3<bool>(true, true, true));
    let var_1 = ~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(~4294967295u, abs(1u), 45014u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21857u, 1778u, 4294967295u), vec3<u32>(1u, 30340u, 41571u)), _wgslsmith_dot_vec4_u32(vec4<u32>(10125u, 21357u, 81418u, 2771u), vec4<u32>(1u, 1237u, 72186u, 4294967295u)), 1u)));
    let var_2 = ~_wgslsmith_clamp_vec3_u32(select(abs(~vec3<u32>(4294967295u, 13699u, 25633u)), abs(max(var_1, var_1)), !all(vec4<bool>(false, var_0.x, var_0.x, true))), _wgslsmith_mult_vec3_u32(var_1, ~reverseBits(var_1)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(170u, 9692u, 10956u)), _wgslsmith_add_vec3_u32(min(var_1, var_1), _wgslsmith_mult_vec3_u32(var_1, var_1))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1217f, global0.x, false)), _wgslsmith_f_op_f32(global0.x * global1.x))))), _wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(ceil(global0.x))), 605f, _wgslsmith_f_op_f32(-1121f + -206f));
    let var_3 = var_0.x;
    return -1144f;
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(trunc(1413f)), _wgslsmith_f_op_f32(func_3()), arg_0.a.a);
    let var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 16275u), max(abs(37527u), ~(~(~1u))));
    var var_2 = !select(vec3<bool>(!var_0.d, any(vec2<bool>(arg_0.c, var_0.a)), !(true & arg_0.c)), vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(var_0.a, true, var_0.a));
    let var_3 = Struct_1(false, _wgslsmith_f_op_f32(floor(3014f)), global0.x, var_0.d);
    let var_4 = _wgslsmith_div_u32(47255u, var_1) ^ _wgslsmith_clamp_u32(32535u, _wgslsmith_mult_u32(firstLeadingBit(var_1), var_1) | ~20661u, var_1);
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-181f, arg_0.a.b), _wgslsmith_f_op_f32(-409f + _wgslsmith_f_op_f32(func_3())), -903f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.c, global1.x, arg_1.a.c, global0.x))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-307f, global0.x, arg_1.a.b, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, arg_0.a.c, arg_0.a.b, 1015f)), arg_1.a.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(-global1.x), -188f, _wgslsmith_f_op_f32(global1.x - global0.x))))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(step(-639f, global1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(842f - arg_1.a.c) * _wgslsmith_f_op_f32(-arg_0.a.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c - 1378f) + arg_0.a.c), -1210f), _wgslsmith_f_op_f32(-326f - 1121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, arg_0.a.c) * _wgslsmith_f_op_f32(abs(150f)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_1)) * global0.wyw);
    let var_1 = ~(-57666i);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -628f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 338f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -202f, -1029f, -1019f), vec4<f32>(1966f, arg_0.a.c, arg_0.a.b, global1.x))))))), vec4<f32>(var_0.x, _wgslsmith_div_f32(arg_1.a.b, -496f), 224f, _wgslsmith_div_f32(arg_0.a.c, global0.x)), true));
    return Struct_1(all(select(!select(vec2<bool>(false, false), vec2<bool>(arg_1.a.d, arg_1.a.a), vec2<bool>(arg_0.c, false)), vec2<bool>(true, true), select(select(vec2<bool>(true, arg_1.c), vec2<bool>(false, arg_1.c), false), vec2<bool>(true, true), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a.c)), _wgslsmith_f_op_f32(global0.x * arg_0.a.b)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.a.c, -197f)))), _wgslsmith_f_op_f32(f32(-1f) * -232f)), _wgslsmith_f_op_f32(arg_1.a.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(639f, -603f))))), arg_1.d);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c, arg_1.b, -112f, 476f) + vec4<f32>(arg_3.b, global1.x, global0.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, arg_1.b, 1931f)))))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f), _wgslsmith_f_op_f32(-global0.x)))), arg_1.b, _wgslsmith_f_op_f32(arg_3.b + global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), 2006f, arg_3.b, _wgslsmith_f_op_f32(arg_3.c - -1000f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(false, global0.x, arg_1.b, false), vec2<i32>(-9897i, u_input.a), arg_3.a, false))).x, -861f, 1201f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(245f)), _wgslsmith_f_op_f32(round(-669f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -385f, 110f, arg_1.b), vec4<f32>(229f, -1288f, -348f, global0.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(581f, 797f, global1.x, -1414f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -400f, 308f, global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(799f, global0.x, global0.x, 1125f), vec4<f32>(global1.x, global1.x, -1509f, global1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 539f, global1.x, global1.x) * vec4<f32>(global0.x, -886f, 1685f, global0.x))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global0.x) * global0.x), 417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global1.x, 374f, global1.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1600f, global1.x, _wgslsmith_f_op_f32(exp2(global1.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 675f, 329f))) * _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 12638i), vec2<i32>(52633i, -4133i)), func_1(Struct_2(Struct_1(false, 1000f, global0.x, var_0), vec2<i32>(-28866i, u_input.a), false, var_0), Struct_2(Struct_1(var_0, global0.x, global0.x, var_0), vec2<i32>(-2147483647i, u_input.a), var_0, var_0), 0i), 1u, func_1(Struct_2(Struct_1(true, -1338f, global0.x, true), vec2<i32>(36954i, 49934i), true, var_0), Struct_2(Struct_1(var_0, global1.x, -275f, var_0), vec2<i32>(u_input.a, -2147483647i), var_0, true), u_input.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1222f, 1142f, 504f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -478f, global0.x, 1000f) + vec4<f32>(-1271f, 134f, -452f, global0.x)), select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(true, false, var_0, true), vec4<bool>(true, true, var_0, true)))))));
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + global0.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -266f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-730f))), -1339f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-638f, global0.x)), global1.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, -290f, global0.x)))), vec4<f32>(-2521f, 594f, global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(908f + global1.x)))))));
    let var_2 = var_1.zy;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-440f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + 600f))), global0.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 0u, 4294967295u)), ~vec3<u32>(38688u, 26938u, 4294967295u)), ~vec3<u32>(0u, 4294967295u, 4294967295u))));
}

