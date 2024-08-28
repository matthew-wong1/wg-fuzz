struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<f32>;

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(vec2<bool>(true, global0.a), 1u, global2.x, arg_1);
    global2 = vec2<i32>(-1i) * -vec2<i32>(max(-1i, i32(-1i) * -2147483647i), _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0, var_0.c), -507i));
    let var_1 = Struct_3(vec3<u32>(var_0.b, var_0.b, 0u), var_0.d, var_0.d);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(2378f - global1.x))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(253f, global1.x) * vec2<f32>(2123f, global1.x))))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(533f, global1.x, true))), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1340f, _wgslsmith_f_op_f32(select(-1000f, global1.x, var_0.d.a)))))));
    let var_2 = Struct_3(~u_input.a, arg_1, arg_1);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), global1.x, 284f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, global1.x, global1.x))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-671f, 100f, _wgslsmith_f_op_f32(-global1.x)))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-562f + _wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) * _wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_vec3_f32(func_3((arg_1.x & arg_1.x) | -1i, arg_0.d))));
    global1 = vec2<f32>(-693f, -206f);
    var var_1 = countOneBits(~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(0i, global2.x, arg_0.c, 2147483647i)), ~vec4<i32>(1i, global2.x, arg_0.c, arg_1.x))) ^ select(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1.x, arg_0.c, -1i, 1i) << (vec4<u32>(34104u, 4294967295u, 1414u, 0u) % vec4<u32>(32u)), select(firstTrailingBit(vec4<i32>(global2.x, global2.x, arg_1.x, 2147483647i)), -vec4<i32>(global2.x, global2.x, 1i, -60065i), all(vec4<bool>(false, global0.a, global0.a, false)))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(18509i, global2.x, arg_1.x, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(7944i, global2.x, arg_0.c, -5468i), vec4<i32>(global2.x, 1i, 0i, -2147483647i)) >> (~vec4<u32>(u_input.a.x, 1u, 138915u, u_input.a.x) % vec4<u32>(32u))), vec4<bool>(false, any(!vec4<bool>(global0.a, true, global0.a, global0.a)), true, !(global0.a | global0.a)));
    var_1 = vec4<i32>(reverseBits(-_wgslsmith_div_i32(arg_1.x, 0i)), -_wgslsmith_div_i32(arg_1.x, 59047i), var_1.x, _wgslsmith_dot_vec3_i32(~var_1.zxz, -vec3<i32>(arg_0.c, 13704i, 41317i) << (vec3<u32>(arg_0.b, firstLeadingBit(u_input.a.x), ~u_input.a.x) % vec3<u32>(32u))));
    global0 = Struct_1(all(vec3<bool>(true, any(vec2<bool>(global0.a, global0.a)), global0.a)));
    return all(!select(select(vec4<bool>(global0.a, true, false, true), !vec4<bool>(true, global0.a, true, arg_0.d.a), select(vec4<bool>(arg_0.a.x, global0.a, false, false), vec4<bool>(arg_0.a.x, global0.a, arg_0.a.x, false), vec4<bool>(false, global0.a, false, global0.a))), select(vec4<bool>(global0.a, arg_0.d.a, global0.a, true), select(vec4<bool>(global0.a, true, false, true), vec4<bool>(global0.a, global0.a, false, true), vec4<bool>(global0.a, arg_0.d.a, arg_0.d.a, true)), vec4<bool>(arg_0.d.a, false, global0.a, global0.a)), vec4<bool>(false, true, true, arg_0.c < 2147483647i)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = all(select(vec3<bool>((global1.x == arg_0) & (u_input.a.x == 73630u), !global0.a, false), !select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, false, true), vec3<bool>(global0.a, true, true)), false));
    var var_1 = Struct_2(vec2<bool>(any(vec2<bool>(false, func_2(Struct_2(vec2<bool>(false, true), 102596u, 0i, Struct_1(global0.a)), vec3<i32>(-2147483647i, 18590i, 41633i)))), func_2(Struct_2(!vec2<bool>(global0.a, global0.a), u_input.a.x, firstTrailingBit(-1626i), Struct_1(true)), ~max(vec3<i32>(global2.x, -70427i, 55698i), vec3<i32>(global2.x, global2.x, global2.x)))), 1u << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(18933u, u_input.a.x, 36449u, u_input.a.x), vec4<u32>(59913u, 78620u, u_input.a.x, u_input.a.x)), u_input.a.x) % 32u), 2147483647i, Struct_1(any(select(vec3<bool>(false, global0.a, false), select(vec3<bool>(true, global0.a, true), vec3<bool>(true, false, global0.a), vec3<bool>(true, true, global0.a)), select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(true, global0.a, global0.a), vec3<bool>(false, false, false))))));
    var var_2 = Struct_2(var_1.a, reverseBits(~(~firstTrailingBit(var_1.b))), var_1.c, Struct_1(!all(select(vec4<bool>(true, false, false, var_1.a.x), vec4<bool>(false, false, true, var_1.d.a), vec4<bool>(var_1.a.x, global0.a, global0.a, global0.a)))));
    let var_3 = 4294967295u;
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) + _wgslsmith_f_op_f32(step(arg_0, -754f)))), global1.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global1.x)))))))));
    return Struct_3(u_input.a, var_2.d, Struct_1(!func_2(Struct_2(vec2<bool>(false, global0.a), 49281u, var_2.c, var_1.d), firstTrailingBit(vec3<i32>(21847i, -54729i, 4267i)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    global2 = max(_wgslsmith_add_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, global2.x, 2147483647i, arg_2.x), vec4<i32>(-1i, arg_2.x, -1i, -1i)), ~_wgslsmith_clamp_i32(arg_2.x, arg_2.x, arg_2.x)), arg_2), _wgslsmith_div_vec2_i32(-(firstTrailingBit(vec2<i32>(24214i, -3851i)) | vec2<i32>(arg_2.x, 2147483647i)), arg_2 & arg_2));
    var var_0 = arg_0.b;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_1.c, Struct_1(true))).x), _wgslsmith_f_op_f32(-427f + _wgslsmith_f_op_f32(round(-1000f))));
    var var_1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(min(~2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_2.x, global2.x, arg_1.c), _wgslsmith_div_vec3_i32(vec3<i32>(-38380i, 43880i, arg_1.c), vec3<i32>(arg_1.c, 2147483647i, -34332i)), ~vec3<i32>(2147483647i, 11792i, 0i)), -vec3<i32>(arg_1.c, global2.x, -35030i))), Struct_1(true)));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(907f, global1.x);
    let var_0 = any(vec4<bool>(!(_wgslsmith_f_op_f32(max(global1.x, -145f)) != global1.x), global0.a, true, !global0.a));
    global2 = abs(vec2<i32>(_wgslsmith_mod_i32(global2.x, ~(-4464i)), ~(-1i)));
    var var_1 = abs(vec2<i32>(_wgslsmith_sub_i32(global2.x, _wgslsmith_div_i32(-11600i, -10067i)) ^ global2.x, func_4(func_1(_wgslsmith_f_op_f32(1408f - 1000f)), Struct_2(select(vec2<bool>(var_0, true), vec2<bool>(var_0, false), vec2<bool>(global0.a, true)), abs(u_input.a.x), -15623i, Struct_1(true)), (vec2<i32>(global2.x, global2.x) | vec2<i32>(-2147483647i, 38328i)) | _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global2.x), vec2<i32>(1i, global2.x)))));
    var var_2 = -(vec3<i32>(var_1.x, _wgslsmith_sub_i32(global2.x, var_1.x), _wgslsmith_clamp_i32(-13862i, 55180i, global2.x)) & -reverseBits(vec3<i32>(-45596i, var_1.x, global2.x))) ^ _wgslsmith_mod_vec3_i32(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.x, -2618i, 2147483647i), vec3<i32>(-2795i, 38613i, 1i), vec3<i32>(0i, var_1.x, 20463i))), vec3<i32>(-1i, var_1.x, -global2.x));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(round(-1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(global1.x, global1.x)), -126f)));
    var_1 = var_2.yy;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(var_2.x << (u_input.a.x % 32u), ~1i, var_2.x) & vec3<i32>(var_2.x, i32(-1i) * -7221i, 2147483647i)), u_input.a.x, -2147483647i, global2.x);
}

