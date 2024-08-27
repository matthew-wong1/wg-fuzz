struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> i32 {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, -38048i), -vec2<i32>(-1i, -2147483647i))) >> (max(~(~vec2<u32>(u_input.b, 32187u)), u_input.a) % vec2<u32>(32u)), ~u_input.a & _wgslsmith_div_vec2_u32(u_input.a, ~vec2<u32>(u_input.b, 4294967295u)));
    let var_1 = var_0.a;
    let var_2 = vec3<f32>(-135f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1188f), 584f)), _wgslsmith_f_op_f32(round(470f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -357f))));
    var var_3 = !vec2<bool>(true, any(vec4<bool>(true, true, true, true)));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1173f, var_2.x, -1311f, _wgslsmith_f_op_f32(floor(822f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), var_2.x, -1592f, 1231f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1372f, -1018f) + vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))));
    return countOneBits(abs(19847i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = all(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(true, 1349i >= func_1())));
    var_0 = all(select(vec4<bool>(true, false, all(vec2<bool>(false, false)), select(true, true, true)), vec4<bool>(true, true, true, true), true)) || true;
    var_0 = any(vec3<bool>(true, true, true));
    let var_1 = arg_1;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, -1i) >> (vec2<u32>(37854u, 10359u) % vec2<u32>(32u)), vec2<i32>(~(-24776i), 59756i >> (var_1.b.x % 32u))), arg_1.a.x), vec2<u32>(~max(0u, ~arg_1.b.x), min(abs(0u), u_input.b)));
    return vec3<bool>(true, ~var_2.a.x > ~_wgslsmith_clamp_i32(var_1.a.x, -var_1.a.x, _wgslsmith_div_i32(-17503i, arg_1.a.x)), true);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_sub_i32(44484i, 1i) >= _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-71533i, 1i, -1i), -44089i), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 9555i, 1i), min(vec3<i32>(-2147483647i, 7127i, 1i), vec3<i32>(1i, 0i, -71571i)))), true, false);
    let var_1 = true;
    var var_2 = Struct_1(~vec2<i32>(i32(-1i) * -8413i, -(i32(-1i) * -1i)), vec2<u32>(~u_input.a.x << (_wgslsmith_clamp_u32(u_input.b, 1u, _wgslsmith_sub_u32(4294967295u, u_input.b)) % 32u), 0u));
    var_0 = !(!select(select(!vec3<bool>(true, true, var_0.x), !vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_1, var_0.x)), select(vec3<bool>(true, true, false), !vec3<bool>(true, var_0.x, var_0.x), func_3(vec4<u32>(67030u, var_2.b.x, u_input.b, 0u), Struct_1(vec2<i32>(var_2.a.x, var_2.a.x), vec2<u32>(var_2.b.x, var_2.b.x)))), !vec3<bool>(var_1, true, var_1)));
    var_2 = Struct_1(-abs(var_2.a), firstTrailingBit(~(u_input.a & ~vec2<u32>(var_2.b.x, 1910u))));
    return Struct_1(~(~vec2<i32>(~46349i, 1445i)), ~u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(1i, 1i), u_input.a);
    let var_1 = var_0.a.x ^ func_1();
    var var_2 = false;
    let var_3 = func_4(var_0, func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2121f, 1161f) - vec2<f32>(-1181f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1334f)), select(vec2<bool>(true, true), vec2<bool>(true, false), true))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, -562f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-602f, -420f)), vec2<bool>(false, true))) - vec2<f32>(541f, _wgslsmith_f_op_f32(sign(665f))))), true);
    var var_4 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b.x, 4294967295u, 28879u), ~vec3<u32>(25829u, 0u, var_3.b.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(15641u, 1u, 1u), vec3<u32>(0u, var_0.b.x, u_input.b))), _wgslsmith_div_vec3_u32((vec3<u32>(19561u, var_0.b.x, 0u) << (vec3<u32>(var_0.b.x, 0u, 13664u) % vec3<u32>(32u))) ^ countOneBits(vec3<u32>(var_3.b.x, u_input.a.x, u_input.b)), vec3<u32>(1u, 40760u >> (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1566u, var_3.b.x), vec2<u32>(var_0.b.x, 1u))))), var_3.b.x);
    var var_5 = min(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, var_0.b.x, var_3.b.x), vec4<u32>(9210u, var_3.b.x, var_3.b.x, 27357u)) >> (abs(vec4<u32>(0u, var_4.x, 1u, var_0.b.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~min(vec4<u32>(1u, var_4.x, var_4.x, 19332u), countOneBits(vec4<u32>(var_4.x, 0u, 4294967295u, 4294967295u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.b.x, 40384u, 4294967295u, var_0.b.x), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.b.x, u_input.a.x, u_input.b, 4294967295u), vec4<u32>(7909u, var_0.b.x, u_input.a.x, var_4.x)), ~vec4<u32>(1u, 1u, var_4.x, u_input.a.x)), vec4<u32>(_wgslsmith_clamp_u32(42926u, 4294967295u, 58930u), 4294967295u << (u_input.a.x % 32u), u_input.a.x, max(1u, 32885u)))));
    var var_6 = func_4(var_0, var_3, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1767f, 1f)), true);
    var_6 = Struct_1(~(vec2<i32>(var_3.a.x, -1i) & ~abs(var_3.a)), ~(~vec2<u32>(2742u, 4294967295u) << ((func_4(var_0, Struct_1(vec2<i32>(0i, 2147483647i), var_5.wx), vec2<f32>(276f, 607f), false).b & _wgslsmith_sub_vec2_u32(var_5.wx, vec2<u32>(1u, 90006u))) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(var_1)), -2147483647i, -21555i);
}

