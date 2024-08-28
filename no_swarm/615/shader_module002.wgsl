struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec4<i32> = vec4<i32>(1i, 2147483647i, -18299i, 2147483647i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    return _wgslsmith_mult_u32(u_input.c, max(~(~min(4294967295u, 1u)), 23092u));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    var var_0 = vec3<u32>(func_3(_wgslsmith_div_u32(countOneBits(_wgslsmith_mod_u32(u_input.a, 0u)), u_input.a), ~_wgslsmith_mult_i32(-u_input.d, _wgslsmith_sub_i32(u_input.b.x, global1.x))), max(~19531u, _wgslsmith_mod_u32(1u, ~arg_0.x)) | arg_0.x, 4294967295u);
    let var_1 = arg_1;
    global1 = firstTrailingBit(-_wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(global1.x), -58215i, global1.x, u_input.d & u_input.d), vec4<i32>(_wgslsmith_add_i32(global1.x, -1i), max(u_input.b.x, -40165i), ~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(57754i, global1.x, global1.x, u_input.d), vec4<i32>(global1.x, u_input.b.x, -24964i, 0i))), select(~vec4<i32>(u_input.b.x, -15575i, u_input.d, 0i), vec4<i32>(-33424i, -42795i, 1i, -9170i), vec4<bool>(global0.x, false, false, global0.x))));
    let var_2 = arg_0.x;
    var var_3 = Struct_3(select(vec4<bool>(global0.x, true, any(!vec4<bool>(false, false, global0.x, global0.x)), global0.x), !select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, global0.x, false, global0.x)), vec4<bool>(global0.x, global0.x, true, true), global0.x), !global0.x), arg_0.x, Struct_2(vec4<u32>(~var_2, var_0.x, _wgslsmith_mult_u32(var_0.x, 7897u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 4294967295u, var_0.x), 1u)), 0u), vec2<bool>(true, global0.x));
    return arg_0.x;
}

fn func_1() -> bool {
    let var_0 = 1u;
    var var_1 = func_2(abs(~(~vec3<u32>(0u, 886u, var_0) | countOneBits(vec3<u32>(u_input.c, 53833u, u_input.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))));
    var var_2 = _wgslsmith_clamp_u32(49549u & (func_2(min(vec3<u32>(0u, u_input.c, var_0), vec3<u32>(u_input.a, u_input.c, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) << (3896u % 32u)), u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 27699u), ~vec2<u32>(25441u, u_input.a)), reverseBits(vec2<u32>(1u, 0u))), _wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(var_0, 1u)), vec2<u32>(u_input.c, 4294967295u) ^ ~vec2<u32>(1u, 1858u))));
    let var_3 = vec4<bool>(global0.x, global0.x, true | global0.x, any(!select(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, false, true), vec3<bool>(false, false, false)), vec3<bool>(global0.x, true, true), 0u < u_input.a)));
    let var_4 = Struct_2((vec4<u32>(4294967295u, firstTrailingBit(142729u), ~0u, 0u) & abs(select(vec4<u32>(0u, 8905u, 0u, 71628u), vec4<u32>(var_0, var_0, u_input.a, 4294967295u), false))) ^ ~(~vec4<u32>(0u, var_0, var_0, 2223u)), 39288u);
    return false;
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_2 {
    let var_0 = ~(vec4<u32>(~(u_input.c ^ u_input.c), abs(func_2(vec3<u32>(128465u, 0u, 4294967295u), -250f)), _wgslsmith_div_u32(u_input.a, 9025u) << (_wgslsmith_mod_u32(32720u, 4294967295u) % 32u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), vec3<u32>(u_input.a, u_input.c, 6567u)))) & vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(92421u, 4294967295u) & vec2<u32>(39241u, u_input.c)), u_input.c, _wgslsmith_mod_u32(u_input.c, 1u), ~(~4294967295u)));
    let var_1 = Struct_1(arg_0, 48909i, true, !(!vec3<bool>(true, !arg_1, true)), ~(vec4<i32>(abs(1504i), u_input.d >> (var_0.x % 32u), u_input.b.x, -u_input.b.x) | -(vec4<i32>(global1.x, global1.x, -31842i, u_input.d) >> (vec4<u32>(u_input.a, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)))));
    global0 = var_1.d;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -1000f, var_1.a)));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(966f, var_1.a, arg_0) * _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, arg_0), vec3<f32>(var_1.a, var_1.a, -409f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-542f, -2413f, 1051f), vec3<f32>(var_2.x, 628f, var_1.a), !arg_1)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, 305f, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-285f, 923f, 201f))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(124f * -1000f), _wgslsmith_f_op_f32(round(104f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(109f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-251f, 597f)) * var_1.a))), _wgslsmith_f_op_f32(-2581f + 297f)));
    return Struct_2(var_0, max(~(~(~var_0.x)), select(28302u, ~18295u ^ reverseBits(u_input.c), true)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = arg_0.a.ywz;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-242f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f - 342f))), 187f)));
    global0 = arg_1.a.xwz;
    var var_2 = _wgslsmith_mod_vec2_i32(~vec2<i32>(0i, u_input.b.x), _wgslsmith_div_vec2_i32(abs(global1.yx), vec2<i32>(_wgslsmith_dot_vec2_i32(global1.yz, vec2<i32>(u_input.d, 16267i)) & 1i, 52137i)));
    var var_3 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1519f)), _wgslsmith_f_op_f32(trunc(-800f))), false);
    return vec4<i32>(77588i, global1.x, 6755i, -global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(false, global0.x, true);
    let var_0 = _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, global1.x), abs(u_input.d), -2147483647i, u_input.d)), abs(func_5(func_4(-1000f, func_1()), Struct_3(!vec4<bool>(global0.x, false, global0.x, true), 29421u, func_4(1157f, true), select(global0.yy, vec2<bool>(global0.x, true), false)), ~func_4(-202f, true).a.xy)));
    let var_1 = Struct_3(select(!select(vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, true, true, global0.x), global0.x), !vec4<bool>(global0.x, true, global0.x, global0.x)), select(vec4<bool>(-2147483647i <= global1.x, true, !global0.x, u_input.c <= 1u), vec4<bool>(false, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true, global0.x), true || all(vec3<bool>(false, global0.x, false))), true), ~u_input.a, func_4(115f, false), !vec2<bool>(true, !global0.x || false));
    global0 = var_1.a.xyw;
    let var_2 = true && all(select(select(vec4<bool>(false, false, var_1.d.x, global0.x), var_1.a, var_1.a.x), vec4<bool>(true, true, any(vec2<bool>(false, var_1.d.x)), select(global0.x, var_1.a.x, var_1.a.x)), var_1.d.x));
    global0 = select(!var_1.a.wwx, !var_1.a.zzw, var_1.a.yyw);
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(-25476i, var_0.x)), ~(~var_0.ww)), ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(6428i, global1.x)), firstLeadingBit(vec2<i32>(-26771i, u_input.b.x))), u_input.b.x, func_5(var_1.c, var_1, vec2<u32>(~var_1.b, 837u & var_1.c.a.x)).x), max(vec4<i32>(-firstLeadingBit(var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.d) & vec2<i32>(u_input.b.x, 1i), abs(vec2<i32>(0i, u_input.d))), var_0.x | ~global1.x, reverseBits(u_input.b.x) | _wgslsmith_mod_i32(global1.x, u_input.d)), min(var_0, _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global1.x, global1.x, var_0.x), vec4<i32>(global1.x, 1i, global1.x, 27891i))) & ~firstTrailingBit(var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(-804f, 19395u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-329f - -1074f) - 2315f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-197f + _wgslsmith_f_op_f32(floor(349f))))));
}

