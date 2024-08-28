struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<f32>;

var<private> global2: i32 = -1i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    let var_0 = Struct_2(u_input.b.x, global0.x);
    var var_1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(global1.x)), any(vec4<bool>(true, global0.x, false, var_0.b)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-504f * arg_3.x))))));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -976f)), global1.x) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-316f, arg_3.x, 858f), vec3<f32>(arg_3.x, var_1.x, 201f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, -321f, var_1.x)))), !(!global0.yzx))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-415f, global1.x)))), vec2<f32>(arg_3.x, global1.x))))) + _wgslsmith_f_op_vec2_f32(select(global1.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(593f, 499f), global1.yy, global0.xy)) * _wgslsmith_f_op_vec2_f32(step(arg_3, vec2<f32>(-429f, 1087f))))), false & all(!vec3<bool>(false, false, var_0.b)))));
    global2 = ~(i32(-1i) * -75152i);
    return abs(-var_0.a);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_i32(~_wgslsmith_add_i32(21032i, ~2147483647i ^ ~u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0), -u_input.b.xy ^ -u_input.b.zy));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1000f, global1.x, global0.x)))), global1.x, global1.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 265f)))))));
    let var_2 = abs(-3875i) & arg_0;
    let var_3 = abs(~(~(~vec4<u32>(4294967295u, u_input.a, u_input.a, arg_1.x))) | min(~reverseBits(vec4<u32>(u_input.a, 4294967295u, 4294967295u, arg_1.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 27174u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1011f, -851f, -795f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_div_f32(1642f, 547f)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(240f, global1.x, _wgslsmith_f_op_f32(-252f - var_1.x))))));
    return _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(max(arg_0, u_input.b.x), abs(arg_0)), -28284i, u_input.b.x, arg_0), vec4<i32>(u_input.b.x, func_3(~22435u, ~firstLeadingBit(1u), arg_1.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(681f, -310f) + var_1.xz)))), _wgslsmith_div_i32(_wgslsmith_div_i32(func_3(4294967295u, 1u, 4294967295u, vec2<f32>(var_1.x, var_1.x)), u_input.b.x << (u_input.a % 32u)), arg_0), abs(23011i >> (var_3.x % 32u))), (vec4<i32>(-1i, -u_input.b.x, 0i, _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(arg_0, var_2))) & vec4<i32>(arg_0, -36183i, ~(-1i), -1i)) | _wgslsmith_add_vec4_i32(-(vec4<i32>(var_2, u_input.b.x, arg_0, -17616i) & vec4<i32>(arg_0, arg_0, -16834i, 3411i)), ~abs(vec4<i32>(arg_0, 1i, 1i, arg_0))));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(select(vec3<bool>(all(vec2<bool>(global0.x, global0.x)) & false, true, !global0.x), select(vec3<bool>(global0.x || true, true, u_input.a <= u_input.a), vec3<bool>(any(vec4<bool>(true, global0.x, global0.x, global0.x)), true, global0.x), !(!global0.zxz)), false), func_2(-1i, ~min(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u))) >> (abs(vec4<u32>(_wgslsmith_clamp_u32(14365u, 80967u, u_input.a), max(1u, u_input.a), 4294967295u, firstTrailingBit(u_input.a))) % vec4<u32>(32u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, ~u_input.a, max(49714u, 53292u)), ~select(vec4<u32>(u_input.a, u_input.a, 4648u, 22868u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), (vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) << (firstTrailingBit(vec4<u32>(u_input.a, 11167u, 8506u, 113806u)) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(select(vec4<u32>(51295u, u_input.a, 1u, u_input.a), vec4<u32>(0u, 35559u, 0u, 30237u), true), vec4<u32>(u_input.a, u_input.a, 25539u, u_input.a), vec4<u32>(4294967295u, 1u, u_input.a, u_input.a)), global0.x), vec3<u32>(_wgslsmith_mult_u32(~u_input.a, u_input.a) | ~_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, max(u_input.a, ~reverseBits(u_input.a))));
    let var_1 = any(vec2<bool>(true, true));
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1077f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 1200f)), select(global0.ywz, !global0.zwy, !select(global0.wwy, select(global0.zxx, vec3<bool>(var_1, false, var_0.a.x), var_1), !var_1))));
    let var_2 = _wgslsmith_f_op_f32(global1.x * -346f);
    var var_3 = Struct_2(u_input.b.x, false);
    return -5606i & countOneBits(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.zzy, vec4<i32>(-func_1(), _wgslsmith_mult_i32(1i, 1i), u_input.b.x, func_2(_wgslsmith_mod_i32(min(-35288i, 12114i), -46812i), vec3<u32>(31726u, 1u, ~u_input.a)).x), vec4<u32>(49622u, _wgslsmith_mult_u32(0u, ~_wgslsmith_mod_u32(u_input.a, 1u)), ~(~firstTrailingBit(14169u)), u_input.a), vec3<u32>(u_input.a | _wgslsmith_mult_u32(u_input.a, ~u_input.a), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a, 0u, 53317u, 23201u)), reverseBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), _wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(~u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1366f * global1.x), 324f);
    let var_2 = select(var_0.a, !(!global0.xyz), true);
    global0 = vec4<bool>(true, !var_2.x, (all(vec4<bool>(true, global0.x, global0.x, var_2.x)) | any(vec3<bool>(true, true, true))) || select(var_2.x, var_2.x, all(!vec2<bool>(global0.x, true))), 801f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(-global1.x), all(select(vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(true, var_0.a.x, false, false), var_2.x)))));
    var var_3 = _wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(var_0.d.x, var_0.c.x), 23971u, ~79135u), vec3<u32>(~1u, ~(~var_0.c.x), abs(u_input.a ^ u_input.a))) ^ var_0.c.zyz;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-601f + -912f))) + _wgslsmith_f_op_f32(step(-1000f, global1.x))), _wgslsmith_f_op_f32(-global1.x), global1.x, -170f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_4.x)), global1.x))) - _wgslsmith_f_op_f32(global1.x * global1.x));
    var_3 = reverseBits(countOneBits(vec3<u32>(var_3.x, ~(~var_3.x), ~_wgslsmith_mult_u32(var_3.x, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.x)) - 453f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1075f, _wgslsmith_f_op_f32(min(var_4.x, -328f))))), ~(~vec2<u32>(_wgslsmith_add_u32(var_0.c.x, 14371u), firstLeadingBit(55635u))));
}

