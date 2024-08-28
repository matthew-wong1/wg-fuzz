struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5 = Struct_5(4294967295u, Struct_2(vec2<f32>(797f, -833f)), Struct_2(vec2<f32>(694f, -1000f)), 65635u, 0i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_4) -> vec2<u32> {
    global0 = i32(-1i) * -1i;
    let var_0 = abs(arg_1);
    global1 = Struct_5(~(~0u), global1.c, global1.c, _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a, 0u, 38353u), u_input.b)) | select(vec3<u32>(global1.a, 30905u, arg_0), u_input.b, true), ~(~abs(u_input.b))), global1.e);
    let var_1 = Struct_4(arg_2.a, !arg_2.b, select(~min(vec2<u32>(arg_0, 0u), vec2<u32>(arg_2.c.x, u_input.b.x)), vec2<u32>(reverseBits(max(arg_2.c.x, 4294967295u)), arg_0), global1.e <= firstLeadingBit(_wgslsmith_add_i32(global1.e, var_0.x))), 66153u, max(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(44981u, 6682u, 4294967295u, global1.d)), abs(firstTrailingBit(vec4<u32>(global1.d, arg_0, 45730u, 0u)))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 3699u, 26310u) >> (max(u_input.a.x, 127644u) % 32u)));
    let var_2 = -863f;
    return min(~vec2<u32>(var_1.a.c.x, _wgslsmith_mult_u32(var_1.e, 4294967295u)) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(4294967295u, global1.d << (~firstTrailingBit(1u) % 32u)));
}

fn func_2(arg_0: Struct_5) -> vec2<f32> {
    global1 = Struct_5(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(74476u, 86606u), u_input.a, vec2<bool>(false, false)), func_3(1u, vec2<i32>(global1.e, -1i), Struct_4(Struct_1(global1.e, vec2<f32>(arg_0.b.a.x, 941f), vec2<u32>(10379u, 1u), vec3<f32>(arg_0.c.a.x, global1.b.a.x, global1.b.a.x)), vec3<bool>(false, true, false), u_input.c, u_input.c.x, 1u))), vec2<u32>(~6099u, 15755u)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c.a.x))), global1.c.a.x)), arg_0.c, ~select(0u, ~firstTrailingBit(global1.d), true), arg_0.e);
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.a.x, 617f, -1026f, -1568f)))))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-293f - -559f), _wgslsmith_f_op_f32(-221f - arg_0.c.a.x))), _wgslsmith_f_op_f32(-arg_0.c.a.x), -481f, -391f)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, countOneBits(-1i), reverseBits(18007i)), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-2147483647i, arg_0.e, -1i)), ~vec3<i32>(arg_0.e, 44301i, -15373i), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -20864i, arg_0.e), vec3<i32>(2147483647i, global1.e, arg_0.e))))));
    global1 = Struct_5(~firstTrailingBit(global1.d), global1.b, arg_0.b, reverseBits(4294967295u | u_input.b.x) | 27371u, ~var_0.b.x);
    let var_1 = -150f;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.a.x, var_0.a.x, true)) * -1258f))) * arg_0.c.a.x), _wgslsmith_f_op_f32(-var_1));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1621f, arg_0.c.a.x, false)), -485f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)), global1.b.a, select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false)))) + _wgslsmith_f_op_vec2_f32(var_0.a.ww * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * arg_0.c.a)))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))))));
}

fn func_1() -> i32 {
    global1 = Struct_5(~_wgslsmith_div_u32(~(~26964u), abs(global1.d & global1.a)), Struct_2(global1.b.a), Struct_2(global1.b.a), 4294967295u, -2147483647i);
    let var_0 = global1.e;
    let var_1 = global1.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_2(Struct_5(firstLeadingBit(38629u), global1.b, global1.b, 1u, -2568i)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.x + global1.b.a.x) + _wgslsmith_f_op_vec2_f32(func_2(Struct_5(u_input.a.x, global1.c, global1.b, global1.d, -7549i))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), -226f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-1001f, var_1.a.x)), _wgslsmith_f_op_f32(floor(-149f)), 856f, var_1.a.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.x, -1224f, var_2.x, var_2.x))), !any(vec4<bool>(false, false, false, true)))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)))), vec3<i32>(-6306i, global1.e, 1i >> (u_input.b.x % 32u)));
    return global1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1667f, -1000f, global1.c.a.x))) + vec3<f32>(_wgslsmith_f_op_f32(-global1.c.a.x), -1547f, global1.b.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.a.x, 958f, -554f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-308f, -316f, global1.b.a.x))) - vec3<f32>(953f, 822f, -918f))))));
    global0 = global1.e;
    var var_1 = vec3<i32>(func_1(), -37938i, -1i);
    let var_2 = Struct_4(Struct_1(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(765f, global1.b.a.x)))), u_input.b.yy >> (_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.c), vec2<u32>(47717u, 25690u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(790f, var_0.x, var_0.x)))), vec3<f32>(2094f, _wgslsmith_f_op_f32(-global1.b.a.x), 156f)))), vec3<bool>(true, true, true), u_input.c, 31995u, global1.a);
    var var_3 = Struct_5(min(~var_2.a.c.x, ~77957u), global1.b, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(global1.c.a.x * _wgslsmith_f_op_f32(round(var_2.a.b.x))), _wgslsmith_f_op_f32(var_0.x + global1.b.a.x))), 0u, ~25879i);
    var var_4 = Struct_1(_wgslsmith_sub_i32(func_1(), _wgslsmith_mult_i32(-5006i, _wgslsmith_mult_i32(global1.e, var_3.e) & (-2147483647i ^ var_2.a.a))), vec2<f32>(var_0.x, var_0.x), ~_wgslsmith_mult_vec2_u32(select(var_2.c, ~vec2<u32>(31384u, 27863u), var_2.b.zz), var_2.a.c), var_2.a.d);
    var var_5 = select(true, !(!all(!vec4<bool>(false, var_2.b.x, false, true))), false);
    let var_6 = _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(0i, var_3.e)), var_1.xy), select(vec2<i32>(countOneBits(-30149i), _wgslsmith_div_i32(global1.e, 23669i)), var_1.yy, select(vec2<bool>(var_2.b.x, false), !var_2.b.zz, var_2.b.zy))) << (vec2<u32>(~u_input.a.x, ~(~41121u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1.e, var_6.x, max(i32(-1i) * -12563i, var_3.e)));
}

