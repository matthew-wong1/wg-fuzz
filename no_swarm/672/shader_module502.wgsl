struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(412f, -1000f), vec2<f32>(-2116f, 1055f), vec2<f32>(-138f, -1770f), vec2<f32>(547f, -490f), vec2<f32>(-1180f, -1000f), vec2<f32>(1329f, 1000f), vec2<f32>(-990f, -233f), vec2<f32>(-590f, -651f), vec2<f32>(-898f, -3000f), vec2<f32>(-1246f, -256f), vec2<f32>(1503f, -845f), vec2<f32>(605f, -1375f), vec2<f32>(1138f, 973f), vec2<f32>(540f, -1458f), vec2<f32>(611f, 1003f), vec2<f32>(1427f, -170f), vec2<f32>(1087f, -121f), vec2<f32>(-565f, -578f), vec2<f32>(-455f, 1000f), vec2<f32>(1687f, -1000f), vec2<f32>(-1572f, 984f), vec2<f32>(217f, 3381f), vec2<f32>(1034f, 1249f), vec2<f32>(525f, -648f), vec2<f32>(1479f, -412f), vec2<f32>(-1469f, 385f), vec2<f32>(175f, 546f), vec2<f32>(-1964f, -854f));

var<private> global1: vec4<f32> = vec4<f32>(633f, 796f, 2597f, -568f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - global1.x), global1.x)), -525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -799f) + 702f), global1.x);
    var var_0 = select(select(vec3<bool>(true, true, (-69222i >= arg_0) && true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), !all(vec3<bool>(true, false, true))), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)) || !all(vec2<bool>(false, true))), select(select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), vec3<bool>(all(vec2<bool>(true, false)) && all(vec2<bool>(true, false)), true, !select(true, false, false)), vec3<bool>(false, true, select(select(true, false, false), any(vec2<bool>(false, true)), true))), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), true));
    var_0 = !(!(!(!vec3<bool>(var_0.x, var_0.x, false))));
    var var_1 = 48318u;
    var var_2 = arg_1;
    return var_2.b;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = any(vec2<bool>(false, select(true, false & (22714u >= u_input.d.x), _wgslsmith_f_op_f32(global1.x * global1.x) < -189f)));
    let var_1 = ~(45207u >> ((~u_input.a | 84727u) % 32u));
    let var_2 = Struct_1(15073u, -select(func_3(arg_0, Struct_1(39602u, vec2<i32>(arg_0, arg_0), arg_0)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(42061i, arg_0), -vec2<i32>(arg_0, arg_0), -vec2<i32>(arg_0, arg_0)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~(-1i));
    let var_3 = 1i;
    let var_4 = -(~firstLeadingBit(_wgslsmith_sub_i32(var_3 >> (var_2.a % 32u), var_2.c)));
    return var_2;
}

fn func_1() -> bool {
    let var_0 = func_2(-17060i);
    let var_1 = var_0.c;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), ~u_input.d), var_0.b, var_0.c);
    var var_3 = var_2.b.x;
    var_3 = 2147483647i;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_1 {
    return func_2(arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, 729f, -1037f)));
    var var_1 = -min(8707i, -firstTrailingBit(-1i));
    var var_2 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec3<bool>(true, true, true)))), !(!vec2<bool>(any(vec3<bool>(true, false, false)), false)), !(!all(vec4<bool>(true, true, true, true))));
    var_2 = vec2<bool>(((global1.x == global1.x) != var_2.x) & any(!vec3<bool>(var_2.x, var_2.x, var_2.x)), var_2.x);
    let var_3 = global1.x;
    var_1 = i32(-1i) * -37723i;
    let var_4 = func_4(!(!vec3<bool>(all(vec4<bool>(true, false, var_2.x, true)), true, true)), vec2<f32>(_wgslsmith_f_op_f32(599f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_div_f32(224f, 1201f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), select(select(vec2<bool>(any(vec4<bool>(true, true, true, var_2.x)), var_2.x), !select(vec2<bool>(false, true), vec2<bool>(true, var_2.x), false), !var_2.x), !vec2<bool>(true, func_1()), select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, all(vec3<bool>(var_2.x, true, true))), !vec2<bool>(var_2.x, var_2.x))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), ~min(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(61303i, -3721i))), vec2<i32>(1i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(-14834i, -vec2<i32>(var_4.b.x, -7004i), _wgslsmith_sub_i32(-3772i, var_4.b.x), _wgslsmith_mod_vec4_u32(max(~(~vec4<u32>(u_input.d.x, 0u, 1u, var_4.a)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 52491u, 0u, var_4.a), vec4<u32>(var_4.a, 6016u, 1u, 4294967295u))), vec4<u32>(var_4.a, ~u_input.b, countOneBits(1u), abs(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1011f)), -1000f)));
}

