struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = vec2<bool>(any(vec3<bool>(true, all(!vec3<bool>(global0.x, global0.x, false)), select(all(vec3<bool>(global0.x, false, global0.x)), true, !global0.x))), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(327f, 3300f)), -1000f, global0.x)) == -846f));
    global0 = vec2<bool>(true, select(false, true, u_input.d.x == (select(2147483647i, 20111i, global0.x) >> (u_input.a.x % 32u))));
    let var_0 = Struct_2(u_input.b);
    global0 = !select(select(vec2<bool>(global0.x, global0.x | true), select(vec2<bool>(true, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), global0.x), vec2<bool>(global0.x, true)), select(select(vec2<bool>(global0.x, false), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), !vec2<bool>(false, global0.x), select(global0.x, global0.x, false))), vec2<bool>(!any(vec2<bool>(true, true)), !select(true, true, false)), !select(vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, global0.x)));
    global0 = vec2<bool>(global0.x || false, !(!any(vec2<bool>(false, global0.x)) | any(vec3<bool>(global0.x, false, false))));
    return !all(vec4<bool>(global0.x, true, !any(vec3<bool>(global0.x, global0.x, global0.x)), all(vec2<bool>(global0.x, global0.x))));
}

fn func_2(arg_0: f32) -> Struct_4 {
    global0 = !select(vec2<bool>(true, (u_input.d.x > u_input.d.x) & !global0.x), vec2<bool>(!global0.x, true), any(vec3<bool>(global0.x, false, global0.x)) & (true && global0.x));
    global0 = select(vec2<bool>(all(select(vec3<bool>(false, true, true), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(true, true, global0.x)), true)), !global0.x), vec2<bool>(false, false & !(arg_0 >= arg_0)), !select(vec2<bool>(global0.x, true), !(!vec2<bool>(global0.x, false)), global0.x));
    global0 = select(!vec2<bool>(select(global0.x & global0.x, global0.x, global0.x), select(global0.x, true, !global0.x)), vec2<bool>(func_3() & (~4294967295u < (71553u << (u_input.a.x % 32u))), (all(vec2<bool>(global0.x, true)) | (global0.x || global0.x)) || global0.x), vec2<bool>(!(!global0.x), global0.x));
    let var_0 = Struct_2(4294967295u);
    var var_1 = Struct_4(var_0, Struct_2(reverseBits(~var_0.a)));
    return Struct_4(var_1.a, Struct_2(~firstTrailingBit(_wgslsmith_mult_u32(u_input.b, 3327u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1362f))), _wgslsmith_f_op_f32(step(-649f, _wgslsmith_div_f32(-1125f, 1184f)))))));
    var var_1 = func_2(1811f);
    var var_2 = arg_0.a.wwx;
    let var_3 = arg_3.b;
    var_1 = Struct_4(Struct_2(_wgslsmith_mod_u32(arg_3.b.a, 28226u)), Struct_2(0u));
    return select(select(vec4<bool>(select(global0.x != var_2.x, true, all(arg_0.a)), true, u_input.d.x < (arg_2.x & arg_2.x), !global0.x), !arg_0.a, select(select(select(arg_0.a, arg_0.a, false), arg_0.a, vec4<bool>(var_2.x, true, arg_1.x, true)), !select(arg_0.a, vec4<bool>(false, arg_1.x, true, true), arg_0.a), arg_0.a)), arg_0.a, true);
}

fn func_1() -> vec2<bool> {
    global0 = !vec2<bool>(any(func_4(Struct_1(vec4<bool>(global0.x, global0.x, false, global0.x), u_input.a), !vec3<bool>(true, global0.x, global0.x), u_input.c & vec2<i32>(u_input.c.x, -1i), func_2(289f))), _wgslsmith_dot_vec4_i32(u_input.d, abs(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x))) >= ~(i32(-1i) * -4388i));
    var var_0 = u_input.e.x;
    var var_1 = Struct_1(vec4<bool>(global0.x, all(select(vec4<bool>(global0.x, global0.x, true, false), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(false, true, global0.x, global0.x)), !vec4<bool>(false, false, false, global0.x))), all(!select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), vec2<bool>(true, global0.x))), global0.x), _wgslsmith_mult_vec3_u32(~max(vec3<u32>(1u, 15801u, 3426u), u_input.a | u_input.a), ~u_input.a));
    let var_2 = func_2(129f);
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_div_u32(46697u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_2.b.a, u_input.a.x), ~4294967295u)), 21517u);
    return !var_1.a.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(func_1(), func_4(Struct_1(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, true, global0.x, true))), ~reverseBits(u_input.a)), vec3<bool>(false, global0.x, !(global0.x || true)), u_input.d.zz, func_2(-477f)).ww, func_4(Struct_1(vec4<bool>(true, global0.x, false, true), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), abs(vec3<u32>(28373u, u_input.a.x, u_input.a.x)))), !(!(!vec3<bool>(false, global0.x, global0.x))), ~(-firstLeadingBit(u_input.d.zx)), func_2(_wgslsmith_f_op_f32(-1f))).xy);
    global0 = !vec2<bool>(false, global0.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2286f * -3285f), _wgslsmith_f_op_f32(-379f * -587f), _wgslsmith_f_op_f32(1000f * -251f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(512f, -1194f, 1594f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, -819f, 282f) * vec3<f32>(1000f, -1000f, 908f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 617f, 529f) * vec3<f32>(-509f, 1712f, -586f))), vec3<f32>(1f, _wgslsmith_f_op_f32(-1050f - -259f), _wgslsmith_f_op_f32(473f * -382f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-673f, _wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -759f)))) * vec3<f32>(-1940f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-486f)) + _wgslsmith_f_op_f32(floor(1333f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2147f - 137f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x || false)))), !select(vec3<bool>(true, global0.x || true, global0.x), !(!vec3<bool>(false, global0.x, global0.x)), true)));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.d.x, _wgslsmith_mult_i32(u_input.c.x, u_input.d.x), firstTrailingBit(2147483647i), -21161i), vec4<i32>(-2147483647i, ~(-10259i), 2147483647i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x))), vec4<i32>(5319i, -2147483647i, 28649i, u_input.d.x)), u_input.d.x, select(countOneBits(0i), _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_sub_i32(u_input.c.x, u_input.d.x), min(u_input.c.x, u_input.c.x)) << (func_2(_wgslsmith_f_op_f32(f32(-1f) * -689f)).a.a % 32u), true));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-302f, -1358f, 2113f))))))));
    var var_3 = firstTrailingBit(_wgslsmith_sub_i32(-reverseBits(-1i), ~(-1i) & (43269i ^ ~u_input.c.x)));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_2.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_2.x, var_0.x))) - vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(522f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(839f)))), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(firstLeadingBit(firstTrailingBit(u_input.d.xyz) | vec3<i32>(u_input.d.x, -3289i, u_input.c.x)), u_input.d.xzx ^ vec3<i32>(u_input.d.x & u_input.c.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.c.x), vec3<i32>(4613i, -33176i, 28123i)))), _wgslsmith_sub_i32(u_input.c.x, u_input.d.x), _wgslsmith_clamp_vec4_u32(~max(vec4<u32>(u_input.a.x, 837u, u_input.a.x, 58673u), vec4<u32>(u_input.e.x, u_input.a.x, u_input.e.x, 1u)), countOneBits(vec4<u32>(u_input.e.x, 0u, u_input.b, u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.b, u_input.e.x, u_input.a.x), vec4<u32>(u_input.e.x, 64217u, u_input.b, 0u))) | vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xz, u_input.e), _wgslsmith_sub_vec2_u32(u_input.e, u_input.a.yy)), u_input.b, 24746u, u_input.a.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -672f)), u_input.d.x);
}

