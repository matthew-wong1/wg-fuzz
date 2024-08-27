struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 673f;

var<private> global1: Struct_4 = Struct_4(2355u, Struct_1(1268f), -1799f);

var<private> global2: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> vec2<i32> {
    var var_0 = Struct_2(global1.b);
    let var_1 = _wgslsmith_div_u32(1u, u_input.b);
    global2 = false;
    var_0 = Struct_2(var_0.a);
    var var_2 = !vec4<bool>(false, !(any(vec3<bool>(false, false, false)) | any(vec3<bool>(false, true, true))), true, any(vec2<bool>(true, true)));
    return vec2<i32>(1i, 1i) & ((firstLeadingBit(vec2<i32>(0i, 1i) >> (vec2<u32>(global1.a, 4294967295u) % vec2<u32>(32u))) ^ -firstLeadingBit(vec2<i32>(-1i, 1i))) ^ vec2<i32>(abs(reverseBits(-11794i)), 1i));
}

fn func_2() -> u32 {
    global0 = 1286f;
    var var_0 = abs(-(~func_3(_wgslsmith_div_vec4_f32(vec4<f32>(921f, global1.b.a, global1.c, -1127f), vec4<f32>(global1.c, global1.c, 511f, 287f)))));
    global2 = false;
    global0 = _wgslsmith_f_op_f32(-global1.b.a);
    var var_1 = Struct_4(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 21785u, u_input.a)) & (vec3<u32>(5992u, 31493u, u_input.a) >> (vec3<u32>(u_input.b, 10579u, 1u) % vec3<u32>(32u))), ~vec3<u32>(15843u, u_input.b, 4294967295u)) >> (~(~(~u_input.b)) % 32u), Struct_1(_wgslsmith_f_op_f32(-global1.b.a)), global1.c);
    return firstLeadingBit(global1.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = !vec2<bool>(any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))) || any(vec4<bool>(true, true, true, true)));
    var_0 = !select(select(!vec2<bool>(var_0.x, var_0.x), !(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, !var_0.x)), !select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), false), true), true);
    var_0 = !(!select(vec2<bool>(var_0.x, var_0.x), select(select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(true, true)), vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x)));
    return Struct_4(44003u ^ ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(2169u, 75204u, 0u, arg_1.x), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), vec4<u32>(4294967295u, 33080u, u_input.b, 18072u)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2055f)) + arg_2.a.a), global1.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global1.b.a + global1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a)))));
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    global1 = func_4(-vec4<i32>(_wgslsmith_mod_i32(-1i, arg_0.x | -1i), i32(-1i) * -39527i, -19959i, abs(arg_0.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, global1.a), vec4<u32>(u_input.a, 37499u, 4294967295u, u_input.a)), abs(vec4<u32>(12190u, 85521u, 24514u, 19906u))) << (~func_2() % 32u), u_input.a, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.a, 0u, 29815u), vec4<u32>(global1.a, global1.a, global1.a, 39290u)), u_input.b & global1.a), func_2()), 52889u), Struct_2(global1.b));
    let var_0 = ~vec4<u32>(u_input.b, 0u, _wgslsmith_sub_u32(23045u, 1u << ((global1.a >> (38595u % 32u)) % 32u)), ~(~4294967295u));
    global0 = 593f;
    let var_1 = func_4(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, 49242i, 55389i, 0i), reverseBits(vec4<i32>(1i, 904i, arg_0.x, 1i))), ~select(-vec4<i32>(1i, 0i, arg_0.x, arg_0.x), ~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1i), vec4<bool>(false, true, false, false)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, false)))), ~(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, global1.a, 0u, 49965u)), var_0)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f - 214f)))));
    let var_2 = var_1;
    return var_0.wz & vec2<u32>(7833u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global1.b.a - global1.b.a);
    let var_1 = global1.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + -1238f) * global1.c);
    let var_2 = !vec2<bool>(~(~u_input.a) >= 4294967295u, true);
    let var_3 = var_2.x && true;
    let var_4 = ~(reverseBits(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), 16023u)) & select(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(34593u, 37888u), vec2<u32>(4294967295u, 4294967295u))), func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 24811i), vec2<i32>(2147483647i, -17882i))), vec2<bool>(!var_3, true)));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(global1.c * _wgslsmith_div_f32(1577f, var_0)));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-636f, var_0, global1.b.a, -778f)))).x ^ ~(-func_3(vec4<f32>(1744f, var_6, var_6, global1.c)).x), _wgslsmith_dot_vec2_i32(select(vec2<i32>(min(-52617i, -3069i), _wgslsmith_clamp_i32(-1i, -24962i, 2147483647i)), vec2<i32>(max(0i, -12474i), i32(-1i) * -2147483647i), var_3), ~func_3(vec4<f32>(var_5, var_5, 1808f, 1496f))), vec4<f32>(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(max(global1.c, -351f))), -290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2154f - 269f)), var_5), 1000f, min(abs(firstLeadingBit(~vec3<u32>(var_4.x, var_4.x, 20034u))), ~(min(vec3<u32>(global1.a, 43247u, 0u), vec3<u32>(u_input.a, global1.a, 0u)) | (vec3<u32>(var_4.x, global1.a, 1u) >> (vec3<u32>(global1.a, global1.a, 1u) % vec3<u32>(32u))))));
}

