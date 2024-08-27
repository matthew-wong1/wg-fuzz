struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(1677f, 410f, 1728f, 1006f));

var<private> global1: vec2<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> i32 {
    global0 = arg_1;
    global0 = Struct_3(arg_1.a);
    global0 = arg_1;
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, arg_1.a.x, _wgslsmith_div_f32(-195f, arg_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.a.x, -961f)), _wgslsmith_div_f32(global0.a.x, 565f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 1464f, 993f, global0.a.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, 885f, 1417f, -662f))))));
    var var_0 = 4294967295u;
    return min(-abs(-2147483647i), -1i ^ u_input.b) ^ select(i32(-1i) * -(~(-33584i)), countOneBits(_wgslsmith_mod_i32(reverseBits(-14409i), firstTrailingBit(u_input.b))), all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))));
}

fn func_2() -> u32 {
    var var_0 = Struct_4(!(all(vec4<bool>(false, false, false, true)) || true), Struct_2(true && (true && all(vec2<bool>(true, false))), Struct_1(func_3(1u, Struct_3(global0.a)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 14056u, global1.x), vec3<u32>(global1.x, global1.x, global1.x)), firstTrailingBit(vec3<u32>(0u, 0u, 107169u)), vec3<bool>(true, true, true)), 849f)), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), u_input.a)), abs(_wgslsmith_mod_i32(u_input.a.x, u_input.b)) >> (global1.x % 32u)));
    var_0 = Struct_4(select(!(false && (var_0.a == var_0.b.a)), true, !any(select(vec4<bool>(true, false, false, var_0.b.a), vec4<bool>(true, var_0.a, var_0.a, true), var_0.b.a))), Struct_2(var_0.a, Struct_1(_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(u_input.b, var_0.b.b.a)), select(var_0.b.b.b, vec3<u32>(1u, var_0.b.b.b.x, var_0.b.b.b.x), !var_0.b.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(622f)), _wgslsmith_f_op_f32(-global0.a.x))))), _wgslsmith_mult_i32(abs(abs(var_0.c)), _wgslsmith_div_i32(23065i, -(var_0.b.b.a & u_input.a.x))));
    var var_1 = !select(select(select(!vec3<bool>(true, var_0.a, false), !vec3<bool>(true, var_0.a, true), var_0.a), vec3<bool>(true, all(vec4<bool>(var_0.b.a, var_0.a, true, var_0.a)), 1604f <= var_0.b.b.c), !all(vec3<bool>(false, true, var_0.a))), select(vec3<bool>(true, var_0.b.a, any(vec4<bool>(var_0.a, var_0.b.a, var_0.b.a, var_0.a))), vec3<bool>(false, !var_0.b.a, var_0.a), any(!vec4<bool>(var_0.a, var_0.a, true, true))), true);
    var_0 = Struct_4(-firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, var_0.c)) < func_3(~select(global1.x, var_0.b.b.b.x, false), Struct_3(global0.a)), var_0.b, var_0.b.b.a);
    let var_2 = var_1.x;
    return _wgslsmith_add_u32((global1.x << (var_0.b.b.b.x % 32u)) | 0u, global1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>) -> Struct_3 {
    global0 = Struct_3(global0.a);
    global1 = _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, arg_0.x), ~(~abs(arg_0.wx)) & vec2<u32>(global1.x, _wgslsmith_sub_u32(abs(global1.x), arg_0.x)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1871f))) * _wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)));
    var var_1 = ~(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, arg_0.x, global1.x, 34457u)), ~arg_0));
    var var_2 = !(arg_1.x >= (i32(-1i) * -21669i));
    return Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(f32(-1f) * -2270f), -1342f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x + -1000f)))) - vec4<f32>(130f, _wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(f32(-1f) * -446f), _wgslsmith_div_f32(-621f, _wgslsmith_f_op_f32(-1140f * global0.a.x)))));
}

fn func_5(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(~select(vec3<u32>(1u, global1.x, 62970u) >> (vec3<u32>(global1.x, 0u, 0u) % vec3<u32>(32u)), vec3<u32>(global1.x, 0u, global1.x), all(vec3<bool>(false, false, true)))), _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(4294967295u, global1.x, global1.x))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(global1.x, global1.x, global1.x)), vec3<u32>(~global1.x, ~global1.x, max(global1.x, 0u))), vec3<u32>(0u, global1.x, global1.x) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 0u, 1746u), vec3<u32>(4294967295u, 4294967295u, global1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, global1.x, global1.x)))));
    return firstLeadingBit(reverseBits(~select(vec2<u32>(global1.x, global1.x), vec2<u32>(7787u, global1.x), vec2<bool>(false, false)))) & vec2<u32>(~_wgslsmith_mult_u32(60585u, global1.x), global1.x);
}

fn func_1(arg_0: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1525f * 1000f)));
    let var_1 = 4294967295u;
    let var_2 = firstLeadingBit(arg_0);
    let var_3 = func_5(func_4(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, var_1, var_1, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(39078u, 28300u, global1.x, global1.x), vec4<u32>(var_1, global1.x, 4294967295u, 4553u), vec4<u32>(var_1, global1.x, 1u, var_1))), vec4<u32>(func_2(), var_1, 0u, ~var_1)), vec4<i32>(-33063i, _wgslsmith_add_i32(arg_0.x, _wgslsmith_add_i32(12494i, 1i)), arg_0.x, -44074i)));
    global1 = vec2<u32>(~global1.x << (~_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1, 29796u), ~1u) % 32u), global1.x);
    return !(!select(vec4<bool>(true, all(vec3<bool>(true, true, true)), false, select(false, true, true)), vec4<bool>(true, all(vec4<bool>(true, true, false, true)), select(true, false, true), true), vec4<bool>(all(vec2<bool>(true, false)), false, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(30533u, global1.x, global1.x, 1u) & vec4<u32>(global1.x, 0u, 1u, 19866u)), vec4<u32>(0u, 27302u, 4294967295u, 59582u) & (vec4<u32>(global1.x, 0u, 14580u, global1.x) << (vec4<u32>(global1.x, 0u, 57095u, global1.x) % vec4<u32>(32u)))), global1.x);
    var var_1 = !vec2<bool>(all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), func_1(vec4<i32>(u_input.b, 27327i, 1i, -46306i)), func_1(vec4<i32>(-49707i, 2147483647i, -17419i, u_input.b)))), false);
    var_0 = global1.x;
    var var_2 = !func_1(select(vec4<i32>(_wgslsmith_div_i32(24270i, 54030i), -1i, firstLeadingBit(-28274i), _wgslsmith_mod_i32(2147483647i, 46359i)), ~(-vec4<i32>(u_input.a.x, 1i, u_input.a.x, -2147483647i)), !select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, true, var_1.x, var_1.x)))).wzz;
    var_1 = !(!var_2.yy);
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~select(~(~vec3<u32>(global1.x, global1.x, 1u)), abs(vec3<u32>(71274u, global1.x, 1u) | vec3<u32>(global1.x, global1.x, 900u)), select(true, var_2.x, true)), u_input.a.x, _wgslsmith_f_op_vec3_f32(-global0.a.wzz), global1.x);
}

