struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 4294967295u, 19736u), -23553i);

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = true;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-710f, arg_0.d.x))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = ~_wgslsmith_mult_vec4_u32(~(select(vec4<u32>(4294967295u, arg_1.a.x, 28371u, arg_1.a.x), vec4<u32>(53085u, arg_1.a.x, u_input.c, 0u), false) ^ min(vec4<u32>(arg_1.a.x, global0.a.x, 1u, 88401u), vec4<u32>(1u, global0.a.x, 4294967295u, 53254u))), ~vec4<u32>(u_input.c ^ 62723u, global0.a.x, ~4294967295u, select(3538u, u_input.a, false)));
    var var_1 = Struct_2(vec3<i32>(-(~arg_1.b), -23193i, global0.b) >> (vec3<u32>(1u, ~_wgslsmith_sub_u32(0u, u_input.a), 37063u) % vec3<u32>(32u)), arg_1, select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(arg_0 <= -1230f, true, true, false), any(vec2<bool>(false, false))));
    let var_2 = 4294967295u;
    let var_3 = Struct_2(~(vec3<i32>(-1i) * -vec3<i32>(1657i, 16644i, -2147483647i)) ^ vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, -5305i), global0.b), u_input.d), var_1.b, var_1.c);
    var var_4 = 15184u;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - 654f), _wgslsmith_f_op_f32(floor(arg_0))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(trunc(arg_0))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -525f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(941f, 139f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(199f, -1027f)))))))));
}

fn func_2(arg_0: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(746f, 1147f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1691f, -1000f)))))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(-1177f, 420f, -753f), vec4<f32>(1172f, -846f, 1617f, 1536f), global0.a, vec4<f32>(-996f, -1000f, 367f, 876f), vec3<f32>(1074f, -188f, 236f)), 19063u, Struct_1(vec3<u32>(u_input.c, global0.a.x, global0.a.x), -2147483647i))))), Struct_1(~vec3<u32>(global0.a.x, 21277u, 4294967295u), i32(-1i) * -69023i))));
    let var_1 = ~4294967295u;
    let var_2 = Struct_1(select(vec3<u32>(72655u, ~global0.a.x, _wgslsmith_add_u32(0u, global0.a.x)) << (global0.a % vec3<u32>(32u)), ~(~vec3<u32>(var_1, u_input.a, 1u)), false), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(22623i, arg_0), arg_0), global0.b));
    let var_3 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1079f) - vec2<f32>(var_0.x, 1847f))))))));
    return vec3<u32>(~3145u, var_1, u_input.a);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(~countOneBits(func_2(~2147483647i)), 26115i >> (_wgslsmith_div_u32(u_input.a, 4294967295u) % 32u));
    var var_0 = (vec4<u32>(u_input.a, firstLeadingBit(firstTrailingBit(global0.a.x)), u_input.c, ~u_input.a) << (reverseBits(~(~vec4<u32>(4294967295u, 27868u, 8886u, 1u))) % vec4<u32>(32u))) << (vec4<u32>(abs(reverseBits(_wgslsmith_clamp_u32(5750u, u_input.a, global0.a.x))), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(82870u, 63002u, 116856u, u_input.a) >> (vec4<u32>(1u, u_input.a, 9608u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(25639u, global0.a.x, 0u, global0.a.x)) << (u_input.c % 32u), _wgslsmith_div_u32(~u_input.c ^ 0u, 0u)) % vec4<u32>(32u));
    var_0 = vec4<u32>(global0.a.x, global0.a.x << ((4294967295u >> ((_wgslsmith_mult_u32(var_0.x, var_0.x) | ~19068u) % 32u)) % 32u), 4294967295u, countOneBits(u_input.c));
    global1 = select(_wgslsmith_clamp_u32(~global0.a.x, 90388u, ~26010u) <= min(0u, (global0.a.x & var_0.x) >> (~4294967295u % 32u)), true, !(!(global0.b > (u_input.d >> (u_input.a % 32u)))));
    var var_1 = ~(-u_input.b);
    return Struct_1(global0.a, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(min(~select(global0.a.x, 0u, true), _wgslsmith_mod_u32(1u, ~(~1u))));
    var var_1 = Struct_3(u_input.d, func_1());
    var_1 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-25782i, -2147483647i), vec2<i32>(-1796i, ~_wgslsmith_mult_i32(23917i, -47424i))), var_1.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, -270f, 876f)))))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(473f, -497f)), _wgslsmith_f_op_f32(-502f * -595f))));
    var var_3 = select(var_1.b.b, var_1.a, true) << ((_wgslsmith_clamp_u32(~func_2(var_1.b.b).x, 1u, 1u & reverseBits(var_1.b.a.x)) & ~3925u) % 32u);
    var var_4 = var_1.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global0.a.zy), ~vec4<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global0.a.x, 0u, 0u, var_0), vec4<u32>(40636u, 4294967295u, var_0, u_input.a)), vec4<u32>(var_1.b.a.x, global0.a.x, 1u, 42407u)), ~global0.a.x | ~global0.a.x, _wgslsmith_dot_vec2_u32(var_1.b.a.yy << (global0.a.zy % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, u_input.a), vec2<u32>(var_0, global0.a.x))), var_1.b.a.x), vec4<i32>(55958i, global0.b, _wgslsmith_mod_i32(var_1.b.b, select(-u_input.d, _wgslsmith_mod_i32(u_input.b.x, 0i), true)), global0.b), var_2.x, var_1.a);
}

