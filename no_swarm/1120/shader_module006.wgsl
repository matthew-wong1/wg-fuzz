struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> bool {
    var var_0 = 1168f;
    var_0 = _wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-697f * -379f) - 1016f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2297f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1885f, 958f)) - -565f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_div_f32(201f, 193f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-395f)) * var_1.x);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1759f + var_1.x))))), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)), var_1.x));
    return (u_input.c.x < -703i) | (69023u <= (0u >> (u_input.b % 32u)));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec2<bool> {
    global0 = _wgslsmith_mod_u32(1u, u_input.a);
    let var_0 = select(u_input.b != ~u_input.a, any(vec4<bool>(true, false, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), true)), u_input.a <= 38041u);
    let var_1 = 442f;
    global0 = 4294967295u;
    var var_2 = Struct_1(select(!select(select(vec4<bool>(true, true, var_0, true), vec4<bool>(true, false, var_0, var_0), vec4<bool>(false, var_0, true, true)), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0)), !vec4<bool>(var_0, false, var_0, var_0)), vec4<bool>(var_0, var_0, any(!vec3<bool>(var_0, var_0, var_0)), !(arg_1 < 0u)), any(select(!vec3<bool>(true, true, var_0), !vec3<bool>(var_0, var_0, var_0), true))), min(vec4<i32>(_wgslsmith_clamp_i32(~u_input.c.x, 55721i, -12329i), -1i, firstLeadingBit(~u_input.c.x), abs(~0i)), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, -54731i), ~(-8542i), 2147483647i, 59209i)), u_input.a, !(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, true, var_0), !vec3<bool>(true, var_0, false))));
    return vec2<bool>(any(var_2.a), any(!vec3<bool>(any(var_2.a), var_2.c <= var_2.c, var_1 >= var_1)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = ~(~(arg_1.c & u_input.a));
    var var_0 = Struct_1(vec4<bool>(~_wgslsmith_mult_i32(-1i, arg_1.b.x) < select(-arg_1.b.x, ~arg_2, false), !(!arg_1.a.x) & all(func_3(arg_1.b.x, arg_1.c)), (arg_1.d.x & (u_input.a == 16777u)) || true, true), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, -1i, 0i)), select(u_input.c, u_input.c, true)), min(i32(-1i) * -1i, -u_input.c.x), _wgslsmith_dot_vec2_i32(arg_1.b.yx, vec2<i32>(arg_1.b.x, arg_2)) >> (1u % 32u), _wgslsmith_mult_i32(reverseBits(arg_2), _wgslsmith_mod_i32(4272i, 17742i))), reverseBits(countOneBits(arg_1.b))), firstTrailingBit(_wgslsmith_sub_u32(~firstLeadingBit(arg_1.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 69454u, arg_1.c, u_input.a), vec4<u32>(0u, arg_1.c, u_input.b, arg_1.c)))), select(select(!(!arg_1.a.yzy), arg_1.a.wzx, true), vec3<bool>(false, !(!arg_1.a.x), arg_1.d.x), true));
    var_0 = Struct_1(arg_1.a, vec4<i32>(-2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(44252i, u_input.c.x), arg_1.b.zx), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, 50314i, arg_1.b.x, -1i), arg_1.b), arg_1.b), var_0.b.x), -var_0.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.a, 112991u), ~vec3<u32>(11507u, u_input.b, 0u)), (vec3<u32>(1u, 0u, u_input.a) & vec3<u32>(arg_1.c, 1u, arg_1.c)) & vec3<u32>(var_0.c, arg_1.c, 9331u)), ~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(56226u, arg_1.c, arg_1.c)), vec3<u32>(28179u, 1u, 4294967295u) | vec3<u32>(0u, 0u, var_0.c))), arg_1.d);
    global0 = ~19931u;
    let var_1 = ~vec4<u32>(0u, 4294967295u, var_0.c, ~(~0u));
    return Struct_1(var_0.a, vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, u_input.c.x, -1i, var_0.b.x), arg_1.b), -arg_1.b.x, -16779i, u_input.c.x), var_1.x, select(select(!select(arg_1.d, arg_1.a.yyz, vec3<bool>(true, arg_1.d.x, true)), !select(var_0.a.ywx, vec3<bool>(false, false, var_0.d.x), true), var_0.d.x), arg_1.d, !(any(vec4<bool>(var_0.a.x, arg_1.d.x, arg_1.a.x, arg_1.a.x)) & true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-201f + -738f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(279f + 1433f))))), -155f, _wgslsmith_f_op_f32(select(716f, 369f, func_1())));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.yy + vec2<f32>(-721f, var_0.x)))))), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-702f - -258f) >= _wgslsmith_f_op_f32(-var_0.x)), countOneBits(vec4<i32>(26259i, 8064i, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.a, 0u, 39317u, u_input.a) % vec4<u32>(32u))) | firstTrailingBit(max(vec4<i32>(u_input.c.x, -23527i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), 0u, vec3<bool>(true, !any(vec2<bool>(false, false)), true == (u_input.a > 18683u))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, 13457i, u_input.c.x, -35711i) << (vec4<u32>(3296u, u_input.a, 54081u, 12503u) % vec4<u32>(32u))) ^ vec4<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(-1i, -5126i), _wgslsmith_div_i32(48990i, 1i), -79195i), -(~(vec4<i32>(u_input.c.x, -39452i, -63393i, -2147483647i) ^ vec4<i32>(u_input.c.x, 26379i, -2147483647i, -65766i)))));
    let var_2 = u_input.c.x;
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.x, 920f, false)))), _wgslsmith_f_op_f32(abs(-394f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-949f - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), 84922u >= _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(30391u, 4294967295u, 107680u), vec3<u32>(u_input.a, var_1.c, var_1.c)), firstTrailingBit(vec3<u32>(u_input.a, var_1.c, 48972u))))), Struct_1(!vec4<bool>(true, true, func_3(-2147483647i, var_1.c).x, 16263u < u_input.a), func_2(var_0.zx, func_2(_wgslsmith_f_op_vec2_f32(var_0.xy * var_0.zx), func_2(var_0.zy, Struct_1(vec4<bool>(true, var_1.d.x, true, var_1.a.x), vec4<i32>(-7549i, u_input.c.x, u_input.c.x, var_1.b.x), var_1.c, vec3<bool>(var_1.a.x, var_1.a.x, true)), -49991i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, 19016i), vec2<i32>(u_input.c.x, var_2))), var_1.b.x).b, var_1.c, vec3<bool>(var_1.d.x, true, var_1.a.x)), -max(select(1i, u_input.c.x, !var_1.a.x), var_1.b.x));
    let var_4 = ~(~select(vec4<u32>(var_3.c, 65647u, var_3.c, 0u), ~vec4<u32>(var_1.c, var_3.c, 4294967295u, 1u), func_2(vec2<f32>(var_0.x, 1000f), Struct_1(vec4<bool>(true, true, false, var_3.a.x), vec4<i32>(1i, var_1.b.x, 1i, 26632i), 18668u, vec3<bool>(var_3.a.x, var_3.d.x, var_3.d.x)), u_input.c.x).a) << (vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_1.c, var_3.c, 9868u), vec4<u32>(19772u, 26055u, var_1.c, 4294967295u)), abs(min(u_input.b, u_input.a)), countOneBits(u_input.a)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_add_i32(754i, u_input.c.x | 1i), 2147483647i, _wgslsmith_sub_i32(1i ^ var_1.b.x, 11062i), select(var_1.b.x, var_3.b.x, !var_3.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, var_1.c), _wgslsmith_mod_vec4_u32(var_4, var_4), firstTrailingBit(var_4)), firstLeadingBit(_wgslsmith_sub_vec4_u32(var_4, vec4<u32>(4294967295u, var_1.c, 4294967295u, 0u)))), var_4), var_0.xyx, var_4.wzz);
}

