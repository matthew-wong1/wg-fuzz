struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-31958i, -9856i), vec2<i32>(-1525i, 1i), vec2<i32>(i32(-2147483648), 36720i), vec2<i32>(41383i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(7331i, 47578i), vec2<i32>(-1i, -7662i), vec2<i32>(1i, 0i), vec2<i32>(0i, -1i), vec2<i32>(28606i, 23636i), vec2<i32>(-1i, -16251i), vec2<i32>(68626i, -8112i), vec2<i32>(2147483647i, -63753i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 16663i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -27218i), vec2<i32>(-20541i, 2147483647i), vec2<i32>(27551i, -46541i), vec2<i32>(33020i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32) -> vec3<bool> {
    var var_0 = select(select(vec2<bool>(true, select(!arg_0.a.x, arg_0.a.x, u_input.a.x < 4294967295u)), arg_0.a.zz, u_input.a.x >= u_input.a.x), arg_0.a.zy, select(select(!select(arg_0.a.xx, arg_1.b.zw, arg_1.b.zx), arg_1.b.yx, arg_1.b.yz), select(!vec2<bool>(arg_1.b.x, false), arg_0.a.zz, vec2<bool>(any(arg_0.a.yx), !arg_1.b.x)), !select(arg_1.b.xx, arg_1.b.zx, false)));
    let var_1 = Struct_4(1i, vec4<bool>(true, arg_0.a.x, arg_0.a.x, var_0.x));
    var var_2 = -(~_wgslsmith_mult_i32(u_input.b.x, 25019i));
    var var_3 = u_input.b.yz;
    let var_4 = vec3<u32>(~select(4294967295u, ~102793u, !(arg_1.a >= u_input.b.x)), u_input.a.x << (u_input.a.x % 32u), u_input.a.x);
    return vec3<bool>(any(select(select(arg_0.a.yz, vec2<bool>(var_0.x, false), arg_0.a.zz), vec2<bool>(var_1.b.x, arg_0.a.x), var_1.b.xx)) & false, true, !var_0.x);
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<i32>, 22>();
    let var_0 = abs(u_input.a.yz);
    let var_1 = vec3<u32>(var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(var_0.x, u_input.a.x, 1u), 25274u, 51082u, _wgslsmith_div_u32(0u, 4294967295u)), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, ~22069u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 0u), u_input.a.xwx), ~vec3<u32>(var_0.x, u_input.a.x, 118436u)), var_0.x & 1u, abs(var_0.x) ^ u_input.a.x)), var_0.x);
    let var_2 = any(!(!vec4<bool>(u_input.a.x >= 9360u, true, true, false)));
    let var_3 = Struct_2(!select(!(!vec3<bool>(var_2, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), func_3(Struct_2(vec3<bool>(false, true, var_2)), Struct_4(0i, vec4<bool>(var_2, var_2, true, true)), _wgslsmith_sub_i32(32417i, 31541i))));
    return var_3;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_4(u_input.b.x, vec4<bool>(!(!var_0.a.x), all(!var_0.a), (var_0.a.x & all(var_0.a)) && !all(vec2<bool>(var_0.a.x, var_0.a.x)), var_0.a.x));
    let var_2 = -1i;
    let var_3 = var_1.b.zz;
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(797f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-322f, 1398f), -830f)))));
    return Struct_1(_wgslsmith_f_op_f32(-1266f + 1269f), var_0.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_4.x, -364f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_4 {
    var var_0 = ~_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 56456u) << (4294967295u % 32u);
    global0 = array<vec2<i32>, 22>();
    var_0 = max(11531u, select(u_input.a.x ^ max(_wgslsmith_mult_u32(u_input.a.x, 102187u), 26639u), 20356u, false));
    global0 = array<vec2<i32>, 22>();
    let var_1 = vec4<u32>(firstTrailingBit(10382u), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, countOneBits(u_input.a.x), u_input.a.x), u_input.a.xzw)), min(4294967295u, 1u), 1u);
    return Struct_4(abs(u_input.b.x), !(!vec4<bool>(false, arg_0.c, select(arg_1.c, arg_1.b.x, false), u_input.a.x <= u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), !vec3<bool>(func_2().a.x, true, false), func_2().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1106f + _wgslsmith_f_op_f32(-895f * 655f)))));
    let var_1 = ~(~select(~u_input.a.x, abs(u_input.a.x), false)) >> (55255u % 32u);
    var var_2 = func_2();
    let var_3 = func_1();
    var_2 = func_2();
    let var_4 = Struct_3(Struct_2(func_1().b), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 1u, 1u, 1u), vec4<u32>(~u_input.a.x, 4294967295u, 990u, ~u_input.a.x)));
    let var_5 = func_1().b.yy;
    global0 = array<vec2<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, -370f, var_3.a) - vec3<f32>(var_3.d, -1000f, var_3.d)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, 596f, var_3.a))), vec3<f32>(-590f, 563f, _wgslsmith_f_op_f32(sign(var_3.d))))), countOneBits(var_4.b.x));
}

