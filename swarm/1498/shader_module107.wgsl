struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2341f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1384f)) * -420f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f - -101f))))))));
    let var_1 = Struct_1(all(vec2<bool>(true, true)), var_0, ~(~1u), _wgslsmith_mult_i32(-1i, -(~1i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-346f, var_0, var_1.b), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -322f), 367f, var_1.b)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_1.b))), _wgslsmith_f_op_f32(round(136f)), _wgslsmith_f_op_f32(-var_0)));
    let var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(~var_1.d, -var_1.d), _wgslsmith_clamp_i32(select(var_1.d, 0i, false), var_1.d, select(var_1.d, u_input.a, true) | -2147483647i)), vec2<i32>(_wgslsmith_mod_i32(~var_1.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, var_1.d, 6215i), reverseBits(vec3<i32>(-7149i, 0i, var_1.d)))), u_input.a));
    return 33780u;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = Struct_4(_wgslsmith_sub_u32(1u ^ arg_1.c, arg_1.c & arg_0), max(vec4<i32>(u_input.a, ~(-21085i), u_input.a, arg_2) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c, 28541u, arg_1.c, 4294967295u), vec4<u32>(41593u, 0u, 29044u, arg_1.c))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(select(vec4<i32>(arg_1.d, 1i, 2147483647i, arg_1.d), firstTrailingBit(vec4<i32>(-52953i, arg_1.d, 0i, 67316i)), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)), abs(-vec4<i32>(u_input.a, 8288i, -14334i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1063f + _wgslsmith_f_op_f32(floor(arg_1.b))) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_1.b))) + -556f));
    var var_1 = var_0.b.wx;
    var var_2 = ~(~(4294967295u | (var_0.a ^ arg_0))) != 4294967295u;
    var var_3 = func_3();
    var_3 = abs(~(~(~var_0.a)));
    return -arg_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<bool>) -> bool {
    var var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.yx, arg_1.zy), reverseBits(arg_1.yy));
    let var_1 = !arg_0.a.x;
    var var_2 = vec3<i32>(2147483647i, u_input.a, _wgslsmith_sub_i32(func_2(arg_2, Struct_1(arg_2 < 4294967295u, _wgslsmith_f_op_f32(round(arg_0.b.b)), arg_2, max(4848i, u_input.a)), u_input.a), select(u_input.a, 19894i, !select(arg_3.x, arg_0.a.x, true))));
    let var_3 = vec4<i32>(~(~_wgslsmith_mult_i32(~var_2.x, -arg_0.b.d)), 0i, _wgslsmith_dot_vec2_i32(~firstLeadingBit(var_2.zy), ~(~select(var_2.zy, var_2.xz, vec2<bool>(true, var_1)))), -2147483647i);
    let var_4 = vec4<i32>(-1i, ~(~var_2.x), max(~var_2.x, -var_3.x), (var_3.x ^ 2147483647i) << (arg_2 % 32u));
    return !(!(!all(vec2<bool>(arg_0.b.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(~_wgslsmith_sub_i32(firstTrailingBit(~u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(7816i, u_input.a, 15635i))));
    let var_0 = Struct_3(false);
    var var_1 = select(select(vec2<bool>(true, func_1(Struct_2(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), Struct_1(var_0.a, -926f, 63512u, 0i)), vec3<u32>(14131u, 0u, 27356u), 59037u, select(vec2<bool>(true, true), vec2<bool>(false, var_0.a), false))), vec2<bool>(false, any(select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true)))), vec2<bool>(var_0.a, true)), select(vec2<bool>(all(select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(false, true, var_0.a, false), true)), false), !(!(!vec2<bool>(var_0.a, var_0.a))), true && var_0.a), vec2<bool>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(54035u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(30365u, 111486u), vec2<u32>(4294967295u, 42361u))) != 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2211f)) - 693f) >= _wgslsmith_f_op_f32(round(-2362f))));
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1109f + 347f) - _wgslsmith_f_op_f32(256f * -619f)))), max(_wgslsmith_sub_u32(abs(71297u), firstTrailingBit(firstTrailingBit(22952u))), 1u), u_input.a);
    global0 = ~(~_wgslsmith_div_i32(1i, -_wgslsmith_clamp_i32(u_input.a, var_2.d, 17552i)));
    var_1 = vec2<bool>(~abs(u_input.a) <= (min(1i, _wgslsmith_mult_i32(-13074i, 8274i)) >> (~var_2.c % 32u)), !any(!vec4<bool>(var_0.a, false, false, var_2.a)));
    var var_3 = Struct_4(1u, _wgslsmith_mod_vec4_i32(vec4<i32>(866i, u_input.a, -var_2.d, ~(-2147483647i)) & ~vec4<i32>(-34364i, 16950i, 1i, 0i), _wgslsmith_div_vec4_i32(~abs(vec4<i32>(-67090i, 47947i, 2147483647i, -1i)), vec4<i32>(-u_input.a, var_2.d, var_2.d, _wgslsmith_clamp_i32(u_input.a, var_2.d, 34492i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), var_2.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(183f, 932f)) + _wgslsmith_div_f32(var_2.b, var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.a), vec2<u32>(0u, 41991u)), select(var_3.a, 72428u, true)), var_3.a, var_3.a), var_3.b.wxw ^ -vec3<i32>(abs(var_2.d), _wgslsmith_mult_i32(-2147483647i, var_3.b.x), countOneBits(u_input.a)), ~(~(~vec4<u32>(40391u, var_3.a, var_3.a, var_3.a))) << (~vec4<u32>(1u, ~3526u, 551u, 0u) % vec4<u32>(32u)));
}

