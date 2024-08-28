struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-318f, -1382f, 1287f), vec3<f32>(-413f, -104f, -1362f), vec3<f32>(901f, -549f, 1000f), vec3<f32>(-1000f, 932f, 1494f), vec3<f32>(-1395f, 207f, -2080f), vec3<f32>(1338f, -1053f, -1324f), vec3<f32>(-1041f, 1142f, 600f), vec3<f32>(-1000f, -156f, 387f), vec3<f32>(-1000f, 318f, 1742f), vec3<f32>(1976f, -313f, -756f), vec3<f32>(654f, 1000f, -1471f), vec3<f32>(-510f, 138f, -970f), vec3<f32>(816f, 555f, -1103f), vec3<f32>(148f, -1399f, 1030f), vec3<f32>(2362f, -465f, 1894f), vec3<f32>(289f, -982f, 400f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global0 = array<Struct_1, 14>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 14u)];
    global1 = array<vec3<f32>, 16>();
    var var_1 = abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(-select(u_input.c, vec3<i32>(u_input.d.x, -1i, 10164i), true)), vec3<i32>(u_input.a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-28926i, -1i, u_input.a), u_input.b), min(firstLeadingBit(u_input.b), -45351i | u_input.c.x))));
    let var_2 = true;
    return 1i <= ~(u_input.b ^ 796i);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    var var_0 = select(vec4<bool>(!arg_3.x, func_3(), false, !((12094i & u_input.d.x) != 0i)), !(!(!(!vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x)))), !select(vec4<bool>(!arg_3.x, false || arg_3.x, false, true), !(!vec4<bool>(arg_3.x, false, true, false)), select(vec4<bool>(false, arg_3.x, arg_3.x, true), !vec4<bool>(true, true, true, arg_3.x), true)));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(~(~(~arg_1.a)), min(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(arg_2.a.x, 18915u) ^ arg_1.a), countOneBits(arg_1.a))));
    var var_2 = arg_2;
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(arg_2.a.x, firstLeadingBit(arg_2.a.x))), 14u)];
    var_2 = Struct_1(vec2<u32>(arg_2.a.x, ~max(_wgslsmith_add_u32(1u, 1u), 45575u)));
    return arg_0.x;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-757f, 368f, 820f, 413f) * vec4<f32>(-565f, 359f, 125f, 1000f)), Struct_1(vec2<u32>(82762u, 12396u)), Struct_1(vec2<u32>(7740u, 4294967295u)), arg_0.yz)))), _wgslsmith_f_op_f32(abs(-833f))))));
    var var_1 = Struct_1(~min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_1.a.x, var_1.a.x), 14u)];
    return ~(~var_2.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 14u)];
    var var_1 = arg_1.xz;
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1.yx - arg_1.yx);
    return global0[_wgslsmith_index_u32(0u, 14u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = any(vec3<bool>(true, true, true));
    global0 = array<Struct_1, 14>();
    global1 = array<vec3<f32>, 16>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a.x, ~(~0u)), 16u)];
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(27831u, 13445u), arg_1.x & 40303u, reverseBits(arg_2), arg_1.x), vec4<u32>(_wgslsmith_mod_u32(arg_2, arg_1.x), firstTrailingBit(arg_0.a.x), arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(2042u, 0u, arg_2, arg_1.x), vec4<u32>(arg_2, 1u, arg_0.a.x, arg_1.x)))) | vec4<u32>(2983u, ~58668u, ~_wgslsmith_mult_u32(0u, arg_0.a.x), _wgslsmith_add_u32(24477u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2 & _wgslsmith_mult_u32(0u, 4294967295u), 44586u, arg_1.x, ~arg_0.a.x), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(arg_2, arg_2, arg_2, 0u)), ~vec4<u32>(arg_0.a.x, 0u, arg_1.x, arg_2)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(41u, arg_2, 3762u, 0u), vec4<u32>(arg_0.a.x, 0u, 6745u, arg_1.x)) % vec4<u32>(32u))), vec4<u32>(arg_2, arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.a.x, arg_2 | arg_0.a.x), vec2<u32>(arg_1.x, arg_2) | firstTrailingBit(arg_1)), 47835u));
    return func_4(reverseBits(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(60222u, 20078u, arg_2), var_2.yyx, var_2.ywz))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1118f - -561f), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, -1171f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + 216f), 1048f)), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true)), !any(vec4<bool>(false, true, false, true))), !vec2<bool>(false, all(vec3<bool>(false, false, false))), vec2<bool>(any(vec4<bool>(any(vec4<bool>(false, true, false, false)), false, false, true)), any(vec2<bool>(false, true)) | true));
    var var_1 = func_5(func_4(vec3<u32>(1u, 1u, ~func_1(vec3<bool>(var_0.x, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-693f)), _wgslsmith_f_op_f32(1335f * -612f), 752f, -543f))), vec2<u32>(_wgslsmith_clamp_u32(abs(~4294967295u), 22152u << (0u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 0u), max(vec3<u32>(0u, 41313u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u)))), ~1u), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(25072u, ~(~4294967295u))));
    global0 = array<Struct_1, 14>();
    var var_2 = _wgslsmith_f_op_f32(func_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f), 1050f), -169f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(625f + _wgslsmith_f_op_f32(step(928f, -1317f))))), 1f), global0[_wgslsmith_index_u32(~(~9741u), 14u)], global0[_wgslsmith_index_u32(var_1.a.x, 14u)], !select(var_0, !vec2<bool>(var_0.x, false), !(!var_0.x))));
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(~var_1.a.x, 0u), ~select(~vec2<u32>(1u, 4294967295u), ~var_1.a ^ abs(vec2<u32>(7639u, 0u)), !vec2<bool>(false, var_0.x)));
    global1 = array<vec3<f32>, 16>();
    var var_4 = 233f;
    var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.d.x), vec2<i32>(-2147483647i, u_input.a)) > u_input.c.x, false, all(!vec3<bool>(var_0.x, var_0.x, false)))));
}

