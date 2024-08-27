struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = ~(_wgslsmith_add_u32(u_input.b, u_input.b) >> (~4294967295u % 32u));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, -713f, _wgslsmith_f_op_f32(sign(909f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-135f, -1417f, 321f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-326f, -286f, -1522f) - vec3<f32>(481f, 906f, 388f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, -325f, 1040f))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a)))));
    let var_2 = _wgslsmith_mult_vec2_i32(countOneBits(~reverseBits(~vec2<i32>(arg_1, -10279i))), ~vec2<i32>(~u_input.a.x, ~abs(48568i)));
    let var_3 = true;
    return !(!(!vec4<bool>(false, false, var_2.x > 0i, true)));
}

fn func_2(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = true;
    let var_1 = any(global0.www);
    global0 = select(!vec4<bool>(true, var_1, true, false), !(!(!(!vec4<bool>(true, global0.x, var_1, true)))), func_3(!(!(!global0.xyy)), -28248i));
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(154f, -703f, -521f) - vec3<f32>(-1088f, 495f, -773f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(572f, -704f, -1901f), vec3<f32>(-325f, 1280f, -1131f))) + vec3<f32>(-113f, 801f, 206f))))));
    var var_3 = ~4294967295u;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, firstTrailingBit(u_input.b)), vec2<u32>(abs(5138u << (u_input.b % 32u)), arg_1 & countOneBits(1u))), vec2<u32>(0u, arg_1));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, arg_0, u_input.b, u_input.b), select(vec4<u32>(~arg_0, 0u, arg_0, 1u), vec4<u32>(u_input.b, u_input.b, ~(~arg_0), firstTrailingBit(arg_0) << (1u % 32u)), select(!(!vec4<bool>(global0.x, false, global0.x, global0.x)), select(vec4<bool>(false, global0.x, true, true), !vec4<bool>(global0.x, global0.x, true, true), !vec4<bool>(global0.x, true, false, global0.x)), !(!vec4<bool>(global0.x, global0.x, true, false)))));
    let var_1 = (~vec2<u32>(arg_0, 29433u) & ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(86638u, var_0.x, 0u, 76170u), var_0), 0u & var_0.x)) | ~abs(var_0.ww);
    let var_2 = ~var_0.x;
    let var_3 = 1i;
    global0 = select(func_3(func_3(global0.zxw, _wgslsmith_mult_i32(10651i, 1i) | countOneBits(u_input.c.x)).xzy, _wgslsmith_mod_i32(-10724i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_3), u_input.a)))), !(!select(vec4<bool>(true, false, global0.x, true), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x), !vec4<bool>(false, global0.x, true, global0.x))), global0.x);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> vec4<bool> {
    return func_3(vec3<bool>(true, func_3(!(!global0.xww), ~_wgslsmith_mult_i32(-2147483647i, u_input.a.x)).x, false), min(u_input.c.x | 39527i, countOneBits(~(u_input.a.x ^ u_input.a.x))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, -1i), u_input.a.x, u_input.a.x);
    var var_1 = firstTrailingBit(~(~vec4<i32>(var_0, u_input.a.x, u_input.a.x, -40127i))) >> (vec4<u32>(~u_input.b, _wgslsmith_mod_u32(~u_input.b, min(u_input.b, 4294967295u)) & min(u_input.b, 39437u), u_input.b, u_input.b) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-556f * 1191f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -659f)))))));
    global0 = vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(select(11298i, -36559i, global0.x), var_1.x, ~23686i, 1i), ~vec4<i32>(var_0, -1i, u_input.c.x, var_0) << (~vec4<u32>(u_input.b, u_input.b, 5299u, 4294967295u) % vec4<u32>(32u))) < -var_0, !(u_input.b < firstTrailingBit(u_input.b)), var_0 != -43016i, all(func_5(func_4(func_2(-20387i, 67876u), Struct_1(vec3<f32>(-1311f, var_2, 1861f))), func_4(~37469u, func_4(u_input.b, Struct_1(vec3<f32>(var_2, -2312f, -710f)))), vec3<bool>(2147483647i == var_1.x, global0.x, true), var_2)));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(825f + _wgslsmith_f_op_f32(-156f - _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(f32(-1f) * -1239f), 1f));
    return all(!select(!vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, true), func_5(Struct_1(vec3<f32>(var_2, var_3.a.x, 636f)), Struct_1(var_3.a), global0.wyy, var_3.a.x))) && (var_1.x >= _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, 2147483647i, var_0), vec4<i32>(-500i, u_input.a.x, -1i, 2147483647i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c.x, var_1.x, -1i, u_input.c.x), min(vec4<i32>(u_input.a.x, 2455i, -1i, var_1.x), vec4<i32>(var_0, 1i, -5381i, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec4<bool>(global0.x, any(vec4<bool>(global0.x & global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, false)), false, true)), ((0u >> (u_input.b % 32u)) & u_input.b) > 1u, true && (global0.x & func_1()));
    var var_0 = vec3<bool>(firstTrailingBit(abs(63096u)) < _wgslsmith_mod_u32(9401u, ~0u), false, func_1());
    var_0 = global0.xxx;
    let var_1 = abs(_wgslsmith_add_u32(u_input.b, 62708u));
    let var_2 = global0.x;
    var_0 = !(!vec3<bool>(false, u_input.c.x > abs(13667i), false));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~vec4<u32>(var_1, var_1, 4294967295u, 0u))), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(_wgslsmith_mult_u32(var_1, u_input.b), 63402u)), reverseBits(~vec2<u32>(var_1, var_1)) & (~vec2<u32>(var_1, 1u) >> (vec2<u32>(var_1, 29848u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(659f, 1513f, -659f, -575f)))))), 1000f);
}

