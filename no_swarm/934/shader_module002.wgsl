struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, true, false), Struct_1(false), Struct_1(false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec3<u32> {
    global0 = Struct_2(vec3<bool>(global0.c.a, !select(all(vec4<bool>(false, global0.c.a, global0.b.a, true)), true, true), true), global0.b, global0.c);
    global0 = Struct_2(vec3<bool>(global0.b.a, false, false), global0.c, Struct_1(true));
    global0 = Struct_2(global0.a, Struct_1(!global0.b.a), global0.c);
    global0 = Struct_2(select(!select(vec3<bool>(global0.c.a, global0.c.a, global0.a.x), global0.a, vec3<bool>(global0.a.x, global0.b.a, global0.a.x)), !select(vec3<bool>(false, false, true), select(vec3<bool>(global0.c.a, true, global0.b.a), global0.a, global0.a.x), global0.a), vec3<bool>(all(!global0.a), 0i == firstTrailingBit(0i), global0.b.a)), global0.c, global0.b);
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.b.a;
    let var_1 = !(!global0.b.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1188f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -139f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -277f)))), 1f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f - 274f)) * -963f))));
    var var_3 = 20912u;
    global0 = Struct_2(vec3<bool>(arg_1.b.a, true, !(!all(vec2<bool>(var_0, var_0)))), Struct_1(global0.a.x), arg_1.b);
    return 1i;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> i32 {
    var var_0 = -633f;
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-447f, 613f)) * -681f))))));
    let var_3 = _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_div_f32(1295f, arg_1.x), arg_0.b.a & arg_0.c.a));
    var_0 = arg_1.x;
    return func_4(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(func_3(vec4<u32>(67758u, 0u, 78268u, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a), u_input.a), arg_0);
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(global0.c.a);
    return Struct_1(!(!(true || var_0.a) & true));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-181f))))), 1f, -2038f, -2544f), true, select(-_wgslsmith_add_vec4_i32(min(vec4<i32>(0i, 5332i, 1i, 1i), vec4<i32>(-1i, 21664i, 1i, -2147483647i)), reverseBits(vec4<i32>(7141i, -20699i, 2147483647i, -1i))), vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(-1i), 1i), abs(1i) >> (1u % 32u), 2147483647i, func_2(Struct_2(vec3<bool>(global0.a.x, false, true), global0.c, global0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, 1690f, -1944f)))), !all(vec2<bool>(true, global0.c.a))), ~(~u_input.a.yz));
    global0 = Struct_2(vec3<bool>(func_5(vec4<f32>(1f, 1f, 1f, 1f), global0.a.x, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -2147483647i, 65763i, -1i), vec4<i32>(2147483647i, -1800i, 17052i, -8278i), vec4<i32>(1587i, 1i, -2147483647i, -1i)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zz, u_input.a.xx), ~u_input.a.yx)).a, true, !any(select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, global0.c.a, true), vec4<bool>(var_0.a, false, global0.a.x, true)))), Struct_1(true), Struct_1(global0.b.a));
    var var_1 = vec2<bool>(!any(!global0.a), any(!(!global0.a)));
    var var_2 = 2147483647i;
    let var_3 = Struct_2(global0.a, global0.b, func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1421f, 309f, -727f, -1505f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-860f, -2607f, 1000f, 625f))), all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, global0.b.a, true), true), select(vec4<bool>(false, global0.c.a, var_0.a, global0.b.a), vec4<bool>(true, true, true, false), global0.b.a), vec4<bool>(true, global0.b.a, false, global0.b.a))), min(-vec4<i32>(2147483647i, -1i, 43725i, -63603i), ~firstTrailingBit(vec4<i32>(-1i, 55304i, 6012i, 49068i))), u_input.a.zx));
    return abs(_wgslsmith_clamp_vec4_u32(~(abs(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 56655u)) | reverseBits(vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x))), vec4<u32>(_wgslsmith_sub_u32(reverseBits(u_input.a.x), ~36129u), _wgslsmith_dot_vec2_u32(u_input.a.zx & u_input.a.xx, _wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(0u, u_input.a.x))), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(16740u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a.x, u_input.a.x)))), firstLeadingBit(select(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), select(vec4<u32>(4294967295u, 0u, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.a.x, 1u, 4294967295u), var_0.a), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1();
    var_0 = ~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, select(var_0.x, 18454u, true), _wgslsmith_add_u32(1u, var_0.x), func_3(vec4<u32>(126219u, var_0.x, 1u, 4294967295u), u_input.a.yy).x), ~func_1()));
    global0 = Struct_2(!select(vec3<bool>(!global0.a.x, true, false), select(vec3<bool>(global0.a.x, global0.c.a, true), global0.a, global0.a), global0.c.a), global0.c, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, 955f, _wgslsmith_div_f32(-570f, -1141f), _wgslsmith_f_op_f32(min(1606f, 751f))) * vec4<f32>(1159f, 118f, 729f, _wgslsmith_f_op_f32(f32(-1f) * -607f))), ~_wgslsmith_clamp_i32(59574i, -1i, -2147483647i) > _wgslsmith_add_i32(~1i, _wgslsmith_mod_i32(403i, 63157i)), vec4<i32>(-1i) * -countOneBits(vec4<i32>(67052i, 0i, -2147483647i, 11570i)), ~vec2<u32>(~var_0.x, u_input.a.x)));
    let var_1 = Struct_2(!select(select(select(global0.a, vec3<bool>(global0.c.a, global0.c.a, true), global0.c.a), select(global0.a, global0.a, global0.a), vec3<bool>(false, false, false)), !global0.a, !vec3<bool>(global0.a.x, false, true)), func_5(vec4<f32>(_wgslsmith_f_op_f32(round(1109f)), 258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(518f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-528f, 495f))), all(vec3<bool>(select(global0.b.a, global0.b.a, true), any(global0.a), true)), ~select(_wgslsmith_div_vec4_i32(vec4<i32>(5798i, -28579i, 15237i, -1i), vec4<i32>(2443i, -50798i, 36352i, -5252i)), vec4<i32>(-74671i, 1i, 11272i, -2550i), vec4<bool>(global0.c.a, global0.c.a, false, false)), var_0.yz), global0.b);
    let var_2 = 1000f;
    global0 = var_1;
    let var_3 = !vec4<bool>(4294967295u < ~min(u_input.a.x, u_input.a.x), false, all(select(!vec2<bool>(var_1.c.a, true), var_1.a.xy, global0.a.zz)), global0.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.a.x), firstTrailingBit(~var_0.xy)), vec2<u32>(~(~30164u >> (func_3(vec4<u32>(u_input.a.x, var_0.x, 0u, 0u), vec2<u32>(var_0.x, u_input.a.x)).x % 32u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 12266u), 1u)), abs(_wgslsmith_clamp_vec2_u32(u_input.a.zy, select(reverseBits(u_input.a.xy), countOneBits(var_0.xw), var_3.x), vec2<u32>(61528u, ~0u))), _wgslsmith_f_op_f32(664f - _wgslsmith_div_f32(var_2, -650f)));
}

