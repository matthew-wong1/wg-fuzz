struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(46004u, 187063u);

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 0u, 22901u);

var<private> global2: bool = false;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global2 = true;
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-174f, -460f), vec2<f32>(600f, -529f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-351f, -324f)))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1195f)), -1000f, select(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f - 895f)))), vec2<f32>(718f, -622f)));
    let var_1 = vec3<i32>(-min(-_wgslsmith_sub_i32(-49553i, -2147483647i), -u_input.a), u_input.a, u_input.a);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(390f, var_0.x), vec2<f32>(-483f, var_0.x), vec2<bool>(false, true))))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1326f + var_0.x) * _wgslsmith_div_f32(var_0.x, 682f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), var_0.x))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(675f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, 1151f, 1622f, var_0.x), true))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(847f, -772f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, 459f, var_0.x, var_0.x) - vec4<f32>(var_0.x, 543f, 1298f, -1000f))))), global0.x, vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 863f) - _wgslsmith_f_op_f32(-233f - var_0.x)) >= -1472f, true, true));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(724f, var_2.a.x)) * _wgslsmith_f_op_f32(step(var_0.x, -337f)))))));
}

fn func_2() -> i32 {
    global0 = vec2<u32>(countOneBits(_wgslsmith_mod_u32(~4294967295u, 29423u)), global0.x);
    var var_0 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(-1i, u_input.a), -31229i, u_input.a, _wgslsmith_mod_i32(-12943i, u_input.a)), vec4<i32>(firstLeadingBit(max(u_input.a, 17098i)), min(2147483647i, min(1i, 9887i)), -1i, 1i)), vec4<i32>(-1i) * -min(~vec4<i32>(1i, u_input.a, 0i, -1i), vec4<i32>(0i, u_input.a, 39380i, 11331i)), !(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true))));
    var var_1 = true;
    var var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - -199f)))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.xzx, vec3<i32>(46395i, 55409i, 12210i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), var_0.wzx), vec3<i32>(12658i, -1i, var_0.x))), _wgslsmith_sub_vec3_i32(var_0.wzx, abs(~vec3<i32>(-33473i, var_0.x, -2147483647i))), 1i));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.a), var_2.a.a, var_2.a.b.a, var_2.a.b.a))))));
    return -u_input.a;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<bool>) -> vec4<bool> {
    global0 = ~(~vec2<u32>(~4294967295u, 1u)) | ((reverseBits(abs(global1.wx)) << (global1.zw % vec2<u32>(32u))) ^ (global1.zz >> (vec2<u32>(1u, 26882u) % vec2<u32>(32u))));
    var var_0 = Struct_4(vec4<f32>(arg_0.b.a, arg_0.b.a, _wgslsmith_f_op_f32(arg_0.b.a - _wgslsmith_f_op_f32(-arg_0.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-178f * arg_0.b.a) - arg_0.a) + 952f)), ~global0.x, select(select(vec3<bool>(arg_0.b.a < arg_0.b.a, true, true), select(arg_2, !arg_2, vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), arg_2), vec3<bool>(all(!arg_2), !arg_2.x, true), any(!arg_2)));
    let var_1 = firstLeadingBit(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(18070u, var_0.b, 4294967295u, 0u)), vec4<u32>(global0.x, var_0.b, 0u, 4294967295u)), ~reverseBits(vec4<u32>(1u, 24082u, 1868u, global1.x))), 63258u >> (var_0.b % 32u)));
    var var_2 = vec4<bool>(764f < _wgslsmith_f_op_f32(-451f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - -693f))), !var_0.c.x, arg_2.x && false, false);
    let var_3 = Struct_1(arg_0.a, reverseBits(_wgslsmith_div_vec3_i32(max(~arg_0.c, ~arg_0.c), abs(arg_0.c & vec3<i32>(2147483647i, arg_1, arg_0.b.b.x)))));
    return !(!select(select(select(vec4<bool>(true, var_2.x, false, var_0.c.x), vec4<bool>(true, arg_2.x, var_2.x, var_2.x), vec4<bool>(true, var_0.c.x, var_0.c.x, arg_2.x)), vec4<bool>(true, false, arg_2.x, arg_2.x), var_0.c.x), !(!vec4<bool>(var_2.x, true, true, false)), any(var_2.zyx)));
}

fn func_1(arg_0: f32, arg_1: bool) -> i32 {
    var var_0 = func_4(Struct_3(arg_0, Struct_1(_wgslsmith_div_f32(507f, arg_0), vec3<i32>(u_input.a, 80721i, u_input.a)), -vec3<i32>(40428i, u_input.a, -28838i), ~(-6060i << (global1.x % 32u))), func_2(), vec3<bool>(all(!(!vec4<bool>(arg_1, true, arg_1, arg_1))), true, true));
    var var_1 = abs(select(abs(firstTrailingBit(vec4<i32>(-2147483647i, -29224i, 2147483647i, u_input.a) | vec4<i32>(u_input.a, u_input.a, -6701i, u_input.a))), vec4<i32>(-(u_input.a >> (0u % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 0i)), -(~2147483647i), u_input.a ^ 1i), func_4(Struct_3(_wgslsmith_f_op_f32(arg_0 - arg_0), Struct_1(1695f, vec3<i32>(1i, 0i, -8092i)), vec3<i32>(56952i, u_input.a, 13913i) ^ vec3<i32>(u_input.a, -19481i, u_input.a), select(2147483647i, 2147483647i, arg_1)), -u_input.a, !(!var_0.wxy))));
    global2 = !all(!func_4(Struct_3(arg_0, Struct_1(arg_0, var_1.ywx), var_1.xzz, 0i), u_input.a, select(var_0.yxy, vec3<bool>(false, arg_1, true), true)));
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global0.x | _wgslsmith_add_u32(global0.x, global0.x), ~global0.x & ~global1.x), ~_wgslsmith_div_u32(1u, abs(global0.x))), vec2<u32>(global0.x, 4294967295u));
    var var_2 = -1i >> (global0.x % 32u);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(28394i), -21846i), 1i), ~(var_1.x << (~global0.x % 32u))), var_1.xw);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global1.zx), 48926u, global1.wx, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1840f), true));
}

