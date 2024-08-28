struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: vec4<u32>;

var<private> global2: f32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec2<bool>, 2>();
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x)))))));
    global0 = array<vec2<bool>, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_0.e);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(616f))));
    return all(!select(vec4<bool>(true, arg_0.a.x, true, any(vec4<bool>(arg_0.a.x, arg_0.a.x, true, false))), !select(vec4<bool>(false, true, arg_0.a.x, true), vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x)), all(select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(true, true, false), arg_0.a.x))));
}

fn func_2(arg_0: u32, arg_1: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(-1i, u_input.a), u_input.b.zy), abs(vec2<i32>(-2147483647i, u_input.b.x))) >> (global1.yx % vec2<u32>(32u)), -u_input.c), -abs(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.c.x), u_input.c, vec2<i32>(u_input.b.x, u_input.b.x)), reverseBits(u_input.c))));
    var var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, false))), !(arg_1 <= arg_1)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), true), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_f_op_f32(arg_1 - 179f) > 283f, all(vec4<bool>(true, false, true, true)), true, false)), vec4<bool>(false, false, true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)));
    var_1 = !vec4<bool>(true, any(var_1.zyy), func_3(Struct_1(var_1.xxz, firstLeadingBit(vec3<u32>(4294967295u, 0u, 6927u)), u_input.b >> (global1.yzy % vec3<u32>(32u)), global1.wzw, vec4<f32>(-1095f, arg_1, -411f, arg_1))), true);
    let var_2 = all(!(!global0[_wgslsmith_index_u32(abs(arg_0 >> (arg_0 % 32u)), 2u)]));
    return vec4<u32>(10304u, ~select(arg_0, max(global1.x, arg_0), true), global1.x << (firstLeadingBit(_wgslsmith_mult_u32(1u, 1u ^ arg_0)) % 32u), global1.x);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f * arg_0) * _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(trunc(arg_1.x))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2451f * _wgslsmith_f_op_f32(var_0 - 1867f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) * _wgslsmith_f_op_f32(1278f + _wgslsmith_f_op_f32(-arg_1.x)))));
    global1 = vec4<u32>(_wgslsmith_clamp_u32(~global1.x, firstTrailingBit(~354u), min(global1.x | global1.x, global1.x)), ~_wgslsmith_dot_vec2_u32(global1.zx ^ global1.wx, ~global1.zw), global1.x, (global1.x >> (global1.x % 32u)) | _wgslsmith_div_u32(global1.x, 7357u)) ^ ~(~(~func_2(global1.x, 763f)));
    global1 = vec4<u32>(~reverseBits(0u), global1.x, firstTrailingBit(global1.x), firstTrailingBit(~(~(~6577u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-536f + arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -967f))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -236f) * var_0))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f) - 252f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1826f + -815f), arg_1.x, true)))), _wgslsmith_f_op_f32(min(var_0, -722f))));
    return Struct_1(vec3<bool>(global1.x <= global1.x, ~(~(-1i)) < min(-u_input.a, ~3669i), true), _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(global1.zwz, global1.wyz), ~_wgslsmith_mult_vec3_u32(global1.yww, vec3<u32>(1u, global1.x, 16141u))) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), global1.xwx)) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, _wgslsmith_add_i32(-2147483647i, (u_input.a >> (0u % 32u)) << ((0u & global1.x) % 32u)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, u_input.a) & -u_input.b.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b.x), _wgslsmith_add_i32(u_input.a, u_input.a)))), vec3<u32>(~_wgslsmith_dot_vec2_u32(global1.yz ^ global1.yx, global1.zy), global1.x, global1.x), _wgslsmith_f_op_vec4_f32(-var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-1631f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(239f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-349f, -555f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1349f, -611f, 468f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1144f - -990f), _wgslsmith_div_f32(-209f, -1000f), -1267f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1928f, -1360f, 1040f), vec3<f32>(-1372f, -387f, -1557f))))))));
    var var_1 = Struct_1(!(!select(func_1(1000f, var_0.e.zwz).a, select(vec3<bool>(var_0.a.x, true, false), vec3<bool>(true, var_0.a.x, true), false), vec3<bool>(false, true, false))), ~(vec3<u32>(13979u, 0u, ~4294967295u) & var_0.d), ~u_input.b, var_0.d, _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(ceil(-558f)), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.e.x, var_0.e.x, var_0.a.x)), 252f, var_0.e.x)).e * _wgslsmith_div_vec4_f32(var_0.e, var_0.e)));
    var var_2 = Struct_1(vec3<bool>(all(select(!vec4<bool>(var_0.a.x, var_1.a.x, var_1.a.x, var_1.a.x), select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(var_1.a.x, var_0.a.x, var_1.a.x, true), true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, false, var_0.a.x, var_1.a.x), var_0.a.x))), var_0.a.x, var_0.a.x), var_0.d, vec3<i32>(912i, var_1.c.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(2147483647i, -8594i)), 1i)) & vec3<i32>(u_input.d, ~(-u_input.c.x), 1i), ~var_1.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, -179f, var_1.e.x, var_0.e.x) - var_1.e)))))));
    var var_3 = var_0.a.x && var_1.a.x;
    var_1 = Struct_1(vec3<bool>(!func_1(-984f, vec3<f32>(var_2.e.x, var_2.e.x, var_1.e.x)).a.x && true, false, false), vec3<u32>(global1.x, _wgslsmith_dot_vec3_u32(~var_1.d, var_2.b), _wgslsmith_mult_u32(~(var_1.b.x << (0u % 32u)), global1.x)), -_wgslsmith_div_vec3_i32(var_0.c, var_0.c), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_1.b, global1.zyw), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, var_2.b.x), vec3<u32>(var_2.b.x, var_0.b.x, var_1.d.x)))), ~vec3<u32>(0u, var_2.b.x, var_2.d.x) << (abs(select(global1.yzw, vec3<u32>(var_2.b.x, var_1.d.x, 0u), vec3<bool>(false, true, true))) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e))));
    var var_4 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1493f), vec3<f32>(_wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.e.x)))), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)), 1334f))));
    var var_5 = ~countOneBits(u_input.b.x);
    var var_6 = countOneBits(16998i >> (_wgslsmith_add_u32(abs(global1.x << (4294967295u % 32u)), var_2.d.x) % 32u));
    var var_7 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * 1f), _wgslsmith_f_op_vec3_f32(var_1.e.zxx * _wgslsmith_f_op_vec3_f32(exp2(var_2.e.zwz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.e.x)), var_0.e.x)) + _wgslsmith_f_op_f32(sign(var_0.e.x))), var_4.c.x);
}

