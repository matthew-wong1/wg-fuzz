struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> i32 {
    return 2147483647i;
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> bool {
    let var_0 = vec2<bool>(select(!arg_0, all(vec2<bool>(all(vec3<bool>(true, arg_1.b, true)), !arg_0)), arg_0), all(!select(!vec2<bool>(arg_0, false), vec2<bool>(arg_1.c, true), arg_1.c)));
    var var_1 = vec3<i32>(abs(-2147483647i), u_input.d.x, -(_wgslsmith_sub_i32(-arg_2, ~arg_2) | -arg_2));
    var_1 = select(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(u_input.a.yyx | vec3<i32>(-2147483647i, 7434i, -1i)), u_input.a.xzw), vec3<i32>(u_input.a.x, 21633i, ~(-1i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-44299i, _wgslsmith_dot_vec4_i32(vec4<i32>(-15665i, var_1.x, arg_2, u_input.d.x), u_input.a), var_1.x), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -59512i, 0i)), -1i, -2147483647i), select(vec3<bool>(any(vec4<bool>(arg_0, true, arg_0, arg_0)), ~u_input.b >= max(arg_1.a, arg_1.a), arg_1.c), vec3<bool>(true, !arg_0, any(!vec2<bool>(var_0.x, true))), arg_1.b));
    var_1 = ~(~(~vec3<i32>(func_2(u_input.a.x), ~var_1.x, 1i)));
    let var_2 = Struct_2(vec3<bool>(!any(vec3<bool>(false, false, var_0.x)), false, !all(vec2<bool>(true, true))), max(max(u_input.b, select(arg_1.a, 19339u, false) & ~u_input.c), abs(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(10122u, arg_1.a, 0u, arg_1.a)), ~vec4<u32>(1u, 0u, arg_1.a, arg_1.a)))), all(vec2<bool>(true, true)));
    return arg_0;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = func_2(reverseBits(_wgslsmith_sub_i32(1i, i32(-1i) * -36555i)));
    var var_1 = Struct_2(vec3<bool>(all(vec3<bool>(true, false, !arg_0.x)), arg_0.x, !arg_0.x), ~_wgslsmith_sub_u32(u_input.b, u_input.c), arg_0.x || all(select(arg_0, !arg_0, true)));
    var_1 = Struct_2(vec3<bool>(func_3(arg_0.x, Struct_4(u_input.c, var_1.c, var_1.a.x), -1i), true, !(!arg_0.x || !var_1.c)), ~_wgslsmith_div_u32(var_1.b, ~_wgslsmith_mod_u32(1u, 4294967295u)), any(arg_0.xx));
    var var_2 = !(!func_3(true, Struct_4(~var_1.b, any(vec2<bool>(var_1.c, true)), any(arg_0.yx)), ~(-2147483647i)));
    let var_3 = var_0;
    return Struct_2(!(!vec3<bool>(select(arg_0.x, false, false), var_1.c, var_1.a.x)), 37834u, arg_0.x & func_3(false, Struct_4(countOneBits(1u), !var_1.a.x, arg_0.x), abs(2147483647i)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = func_1(vec3<bool>(true, true, true));
    let var_1 = -351f;
    var var_2 = select(-u_input.a, u_input.a, !arg_1.c);
    let var_3 = var_0;
    var var_4 = arg_1.c;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, u_input.a.x), u_input.d.x, 1i), func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(244f, 1000f))), func_1(vec3<bool>(true, false, true)))), vec2<i32>(-abs(-11087i), u_input.d.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2708f, -1758f, -497f, 1603f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(208f, 854f, 244f, 664f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-931f, 1072f, -1000f, -622f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-966f, -1522f, 257f, 138f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f + 2174f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(144f)) * _wgslsmith_f_op_f32(-1337f * 1233f)), -935f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(855f + -593f) * -788f))), 239f);
    var var_1 = vec2<i32>(u_input.a.x ^ 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(~u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 14498i), vec2<i32>(var_0.a.x, u_input.a.x) & u_input.a.xw), abs(min(2147483647i, -10547i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i), vec3<i32>(5842i, -25063i, u_input.d.x))), u_input.a));
    let var_2 = _wgslsmith_mult_vec4_i32(u_input.a, u_input.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.c.xxw);
    var_0 = Struct_5(vec2<i32>(0i, 1i), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.b))) + var_0.c), -610f);
    let var_4 = Struct_4(u_input.c, !(_wgslsmith_f_op_f32(f32(-1f) * -1345f) != var_0.d), false);
    var_0 = Struct_5(abs(abs((var_2.yz ^ var_2.zw) | -vec2<i32>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_3.x - -319f), var_3.x, var_0.b.x, _wgslsmith_f_op_f32(round(var_3.x))))), var_0.c, -501f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_4.a, 1u, u_input.c), ~vec4<u32>(0u, u_input.b, 0u, u_input.b)) << (vec4<u32>(var_4.a, 4294967295u, u_input.c, u_input.b ^ u_input.b) % vec4<u32>(32u))), var_0.c, _wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 88485u), vec2<u32>(0u, 7021u))) & ~vec2<u32>(~7885u, _wgslsmith_mult_u32(46501u, var_4.a)), ~70206u);
}

