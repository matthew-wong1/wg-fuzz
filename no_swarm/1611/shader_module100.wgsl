struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = select(select(select(vec4<bool>(true, select(false, false, false), arg_3.x == u_input.a.x, true), vec4<bool>(true, all(vec3<bool>(true, true, false)), true, arg_0.x > arg_1.x), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), arg_0.x > _wgslsmith_sub_i32(arg_1.x, -39687i), true, !any(vec3<bool>(false, false, false))), true | (600f != _wgslsmith_f_op_f32(arg_2.x * 700f))), vec4<bool>(false, true, true, !select(true, true, true)), !(-u_input.d < 9688i) | !all(vec2<bool>(true, false)));
    let var_1 = !(!var_0.wwx);
    global0 = vec2<i32>(2147483647i, 19200i);
    var var_2 = firstTrailingBit(min(u_input.b.wx, u_input.a.yx)) & u_input.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -1447f, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-472f, arg_2.x, arg_2.x) * vec3<f32>(arg_2.x, 1288f, arg_2.x))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(365f, 167f, arg_2.x)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, -572f, arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-431f, arg_2.x, arg_2.x))))))));
    return -1000f;
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~0u, arg_0.a.b), ~(u_input.b.x ^ 4294967295u)), _wgslsmith_f_op_f32(func_3(countOneBits(~vec2<i32>(-26563i, u_input.d)), _wgslsmith_div_vec3_i32(-vec3<i32>(-40301i, u_input.e, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-39117i, u_input.e, u_input.e), vec3<i32>(1i, u_input.d, u_input.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-613f, 384f))), vec2<u32>(~u_input.c.x, 0u))), ~abs(~u_input.b.yyx)), vec3<u32>(arg_0.a.b, ~(~(21233u ^ arg_0.a.b)), ~51712u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(684f, 641f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -926f) + 1807f)))), select(!select(!vec4<bool>(false, arg_0.a.a.x, false, arg_0.a.a.x), !vec4<bool>(arg_0.a.a.x, true, arg_1, true), true), select(!(!vec4<bool>(false, arg_0.a.a.x, false, arg_1)), !select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, false), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_1, arg_0.a.a.x), arg_0.a.a.x), false), vec4<bool>(!(true == arg_0.a.a.x), !(true && arg_0.a.a.x), any(vec4<bool>(true, arg_1, true, false)), any(select(vec4<bool>(true, arg_0.a.a.x, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_0.a.a.x, true), arg_0.a.a.x)))));
    var_0 = Struct_3(var_0.a, vec3<u32>(firstLeadingBit(4545u), max(var_0.a.a >> (0u % 32u), ~u_input.a.x) << (~32754u % 32u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_0.a.c.x), vec2<u32>(var_0.a.c.x, 4294967295u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.c, var_0.c)))) - _wgslsmith_f_op_vec3_f32(exp2(var_0.c))), !var_0.d);
    var var_1 = Struct_2(arg_0.a.a, firstLeadingBit(36628u));
    var var_2 = vec4<bool>(!var_0.d.x, true, arg_1, arg_0.a.a.x);
    var_1 = Struct_2(!(!(!select(arg_0.a.a, vec2<bool>(false, false), var_0.d.yz))), ~arg_0.a.b >> ((var_1.b << (arg_0.a.b % 32u)) % 32u));
    return !select(var_1.a, !vec2<bool>(var_1.a.x, true), vec2<bool>(false, var_1.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_2(select(func_2(arg_1, arg_0.a.x), arg_0.a, false), ~18288u);
    var var_1 = ~_wgslsmith_clamp_u32(1u, reverseBits(~1u) & countOneBits(_wgslsmith_mod_u32(arg_2.b.x, 159219u)), _wgslsmith_mod_u32(4294967295u, reverseBits(1u)));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_sub_i32(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -countOneBits(vec2<i32>(u_input.e, global0.x)), firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, global0.x))));
    var var_4 = arg_2.a;
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!any(select(vec4<bool>(true, true, true, true), func_1(Struct_2(vec2<bool>(true, true), 1u), Struct_4(Struct_2(vec2<bool>(true, false), u_input.a.x)), Struct_3(Struct_1(u_input.b.x, -879f, u_input.a.wyw), vec3<u32>(4294967295u, u_input.c.x, 9231u), vec3<f32>(1113f, -712f, -316f), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true))), true | all(vec2<bool>(true, true)), select(any(func_1(Struct_2(vec2<bool>(false, false), 12345u), Struct_4(Struct_2(vec2<bool>(false, true), u_input.b.x)), Struct_3(Struct_1(u_input.c.x, -1299f, vec3<u32>(0u, 4294967295u, 4294967295u)), vec3<u32>(u_input.a.x, u_input.b.x, 1141u), vec3<f32>(-921f, 629f, -1349f), vec4<bool>(false, false, true, false))).wyz), false, any(vec4<bool>(true, false, true, all(vec4<bool>(false, true, true, false))))));
    global0 = ~vec2<i32>(firstTrailingBit(global0.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(global0.x, global0.x)), -vec2<i32>(u_input.d, global0.x)));
    var var_1 = Struct_2(!(!vec2<bool>(u_input.a.x <= 18471u, var_0)), ~11185u);
    let var_2 = !vec3<bool>(!any(select(vec4<bool>(true, var_0, var_1.a.x, false), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(var_0, false, false, var_0))), var_1.a.x || true, true);
    let var_3 = Struct_1(var_1.b, -2479f, vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 67973u), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.b), vec3<u32>(87604u, var_1.b, u_input.a.x)), var_1.b)), 33228u));
    let var_4 = reverseBits(-1i);
    var var_5 = Struct_4(Struct_2(var_1.a, ~1u));
    var var_6 = Struct_2(!(!var_5.a.a), firstLeadingBit(_wgslsmith_mult_u32(22012u, var_5.a.b)));
    var_5 = Struct_4(var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-561f, -879f, _wgslsmith_f_op_f32(f32(-1f) * -291f)))) * vec3<f32>(1f, 1f, 1f)));
}

