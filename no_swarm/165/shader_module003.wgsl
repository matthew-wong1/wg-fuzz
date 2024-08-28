struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global0 = vec4<u32>(~u_input.a.x, 0u, global0.x, abs(reverseBits(_wgslsmith_sub_u32(firstLeadingBit(u_input.c), global0.x))));
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~abs(max(vec4<i32>(25646i, -2147483647i, -1i, 6118i), vec4<i32>(-2147483647i, 2147483647i, u_input.d.x, u_input.b))), vec4<i32>(u_input.d.x, countOneBits(u_input.d.x), i32(-1i) * -25482i, _wgslsmith_sub_i32(~(-25199i), ~(-4781i)))), false);
    let var_1 = true;
    return u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = vec3<i32>(u_input.b, ~2147483647i, _wgslsmith_clamp_i32(u_input.d.x, arg_0.a, ~func_3()));
    let var_2 = vec3<u32>(select(_wgslsmith_div_u32(~1u, global0.x), 86469u, var_0.b), global0.x, 0u);
    var var_3 = 1068f;
    var var_4 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~var_2.x, u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(global0.ww, vec2<u32>(935u, 23976u))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 62173u, 1685u, 4294967295u), vec4<u32>(4294967295u, 44151u, 8001u, var_2.x))), firstLeadingBit(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c, 4294967295u, global0.x, 52868u)), min(vec4<u32>(1u, u_input.a.x, 9014u, 19366u), vec4<u32>(1u, 12061u, global0.x, var_2.x)))));
    return _wgslsmith_clamp_vec4_u32(select(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, u_input.a.x, 4294967295u, var_2.x), vec4<u32>(20056u, 41100u, var_2.x, 1u)) | u_input.a.x, ~_wgslsmith_mult_u32(18530u, 55211u), countOneBits(14968u)), ~(vec4<u32>(u_input.c, 1u, 33703u, 49544u) >> (~vec4<u32>(1u, u_input.c, 19354u, var_2.x) % vec4<u32>(32u))), !(!(!vec4<bool>(var_0.b, arg_2, false, arg_1.b)))), vec4<u32>(1u & u_input.a.x, var_2.x, var_4.x, 0u), _wgslsmith_mult_vec4_u32(max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_4.x, var_2.x, var_4.x), vec4<u32>(1u, 25785u, 0u, 1u)), global0.x, ~var_2.x, ~19534u), vec4<u32>(var_4.x, 4294967295u, ~4294967295u, 2127u | var_2.x)), ~(~abs(vec4<u32>(u_input.a.x, 19051u, var_4.x, u_input.c)))));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, ~select(u_input.a.x, _wgslsmith_add_u32(u_input.c, global0.x), true), ~(~u_input.c)), select(vec4<u32>(1u, 4294967295u, 0u, 7550u) << (func_2(arg_0, arg_0, arg_0.b & arg_0.b) % vec4<u32>(32u)), func_2(Struct_1(arg_0.a, false), arg_0, true), select(select(select(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), vec4<bool>(false, false, arg_0.b, arg_0.b)), vec4<bool>(false, false, true, false), select(vec4<bool>(arg_0.b, true, arg_0.b, true), vec4<bool>(arg_0.b, true, true, true), false)), select(select(vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, false, true, false), arg_0.b), !vec4<bool>(arg_0.b, arg_0.b, true, true), vec4<bool>(false, true, false, false)), !(!vec4<bool>(true, false, arg_0.b, arg_0.b)))));
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)), _wgslsmith_f_op_f32(-1125f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(286f, 890f, true)))), -1588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1616f, -701f) * _wgslsmith_f_op_f32(-294f + 116f)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1627f, 988f)))), _wgslsmith_f_op_f32(ceil(-1167f)))), -391f, _wgslsmith_f_op_f32(round(1148f)), -834f));
    global0 = select(vec4<u32>(_wgslsmith_mult_u32(4294967295u, global0.x), ~0u, _wgslsmith_mult_u32(18666u, ~global0.x), 0u) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, global0.x, global0.x, 88205u), vec4<u32>(u_input.a.x, 17306u, u_input.a.x, global0.x)) >> (~vec4<u32>(u_input.a.x, 94403u, global0.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~(~global0.x), ~(~619u), reverseBits(~4294967295u), global0.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(10751u, global0.x, global0.x, 0u)), ~vec4<u32>(73369u, 15379u, 61264u, u_input.a.x)), vec4<u32>(~17771u, firstTrailingBit(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c), vec4<u32>(u_input.c, 31454u, u_input.a.x, 79444u)), ~1u))), arg_0.b);
    let var_1 = arg_0;
    return vec2<f32>(328f, var_0.x);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec2<bool> {
    return vec2<bool>(!any(vec2<bool>(false, false)) && any(vec3<bool>(true, true, true)), !(!(true & all(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<u32>(global0.x, 0u, u_input.c & global0.x, ~(~67420u));
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(53883u ^ u_input.a.x, 1u, ~global0.x, countOneBits(max(global0.x, global0.x))) & ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(67797u, 1u, 1u, global0.x), vec4<u32>(global0.x, u_input.a.x, global0.x, u_input.a.x), vec4<bool>(true, false, false, false)), ~vec4<u32>(u_input.c, 1u, 4294967295u, 22763u)), ~min(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(20581u, u_input.a.x, 34610u, 43377u), vec4<u32>(1u, 35177u, u_input.c, 30140u)), ~vec4<u32>(1u, 61886u, 40891u, 4294967295u)), (vec4<u32>(u_input.c, 0u, global0.x, 0u) << (vec4<u32>(global0.x, u_input.a.x, u_input.c, 51632u) % vec4<u32>(32u))) & ~vec4<u32>(5173u, u_input.c, global0.x, 25911u)));
    var var_0 = func_4(u_input.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(~2147483647i, true))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(174f, 671f)) + -107f), 1f)), firstTrailingBit(vec3<i32>(-abs(u_input.d.x), ~(-8697i) >> (0u % 32u), 2147483647i)));
    global0 = ~vec4<u32>(abs(u_input.a.x), ~firstLeadingBit(global0.x << (global0.x % 32u)), _wgslsmith_add_u32(12660u, ~62693u) >> (~global0.x % 32u), global0.x);
    let var_1 = -(~6176i);
    var_0 = select(select(vec2<bool>(all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x))), true), !vec2<bool>(true, !var_0.x), false), vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1492f)))) < 1f, var_0.x), !(!(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), false))));
    let var_2 = vec4<u32>(~4833u, u_input.a.x, global0.x, 63561u) << (~vec4<u32>(_wgslsmith_clamp_u32(25570u, 1u, ~4738u), _wgslsmith_mod_u32(1u, 4294967295u), global0.x ^ 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 78491u, 40477u), func_2(Struct_1(u_input.d.x, false), Struct_1(var_1, false), var_0.x))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(var_1), ~(-10454i)), -1i), var_1, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.d.x), vec2<i32>(1i, var_1)) >> (_wgslsmith_mult_u32(0u, global0.x) % 32u)), max(u_input.d.x, u_input.d.x)), var_2, global0.xyy | _wgslsmith_sub_vec3_u32(abs(var_2.wzy), var_2.xzx), _wgslsmith_f_op_vec2_f32(vec2<f32>(1005f, -887f) + vec2<f32>(_wgslsmith_f_op_f32(round(-1058f)), _wgslsmith_f_op_f32(-800f * -606f))), vec3<i32>(var_1, u_input.b, u_input.b));
}

