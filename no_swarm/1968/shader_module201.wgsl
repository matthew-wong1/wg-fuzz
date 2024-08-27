struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = true;
    global0 = max(vec4<i32>(max(global0.x, _wgslsmith_sub_i32(global0.x, global0.x ^ 0i)), -global0.x, 0i, ~global0.x), _wgslsmith_mod_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global0.x, -1i, global0.x), vec4<i32>(global0.x, 22314i, global0.x, -1i)) | countOneBits(vec4<i32>(-22326i, global0.x, global0.x, -1i))) >> (vec4<u32>(28250u | arg_1.x, 17786u, 65550u, _wgslsmith_clamp_u32(4294967295u, 46798u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(global0.x, -global0.x ^ -global0.x, 2147483647i, _wgslsmith_add_i32(firstLeadingBit(-11961i), ~(-21270i)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-523f, -760f, -497f)))))));
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 109f, -1391f))))));
    return _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(countOneBits(~u_input.a.x) == _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, u_input.c), vec3<u32>(23872u, u_input.b.x, u_input.b.x)), u_input.c), ~firstLeadingBit(u_input.b.zy), Struct_1(!vec4<bool>(false, false, arg_0.a.x, false), _wgslsmith_f_op_f32(ceil(1000f)) < -244f))));
    var var_1 = !vec3<bool>(arg_0.b | (reverseBits(u_input.c) <= ~u_input.a.x), true, true & !arg_1.b);
    var var_2 = Struct_1(select(select(vec4<bool>(false, var_1.x, any(arg_0.a.wx), select(arg_1.b, arg_1.b, arg_1.a.x)), !select(arg_1.a, vec4<bool>(false, arg_0.a.x, false, arg_0.b), false), vec4<bool>(arg_1.b, arg_1.a.x, true, arg_1.a.x)), !select(select(arg_1.a, arg_1.a, vec4<bool>(true, false, var_1.x, false)), !vec4<bool>(arg_0.a.x, false, true, false), select(vec4<bool>(false, false, false, var_1.x), arg_1.a, arg_1.a.x)), !any(arg_1.a)), select(any(vec2<bool>(false, false)), !any(vec3<bool>(true, false, true)), false & (select(arg_0.a.x, true, false) && true)));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-646f)), 1f, !arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1897f + 1015f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1789f + -363f))))));
    var var_4 = arg_0;
    return ~vec4<i32>(global0.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.x, -33940i), 1i), -2147483647i), _wgslsmith_clamp_i32(min(global0.x >> (u_input.c % 32u), ~global0.x), 1i, -1i), countOneBits(global0.x));
}

fn func_1() -> f32 {
    global0 = -_wgslsmith_div_vec4_i32(~max(_wgslsmith_mult_vec4_i32(vec4<i32>(38876i, -2147483647i, global0.x, 0i), vec4<i32>(global0.x, global0.x, 31964i, global0.x)), vec4<i32>(global0.x, 0i, global0.x, global0.x)), select(func_2(Struct_1(vec4<bool>(true, true, true, true), false), Struct_1(vec4<bool>(true, true, true, true), true)) | abs(vec4<i32>(global0.x, global0.x, global0.x, global0.x)), vec4<i32>(-7347i, global0.x | -7747i, global0.x, ~(-1i)), select(u_input.a.x, 4294967295u, true) != 15755u));
    global0 = _wgslsmith_mult_vec4_i32(-reverseBits(vec4<i32>(abs(-2147483647i), _wgslsmith_add_i32(global0.x, global0.x), max(-15566i, global0.x), -global0.x)), vec4<i32>(global0.x, _wgslsmith_div_i32(6638i, _wgslsmith_mod_i32(~global0.x, -global0.x)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(28309i, global0.x, 2147483647i, 5628i), vec4<i32>(global0.x, -2147483647i, global0.x, 3505i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x), false), max(vec3<i32>(1i, global0.x, 1i), global0.xxz)), (i32(-1i) * -9772i) | min(global0.x, global0.x))));
    let var_0 = _wgslsmith_f_op_f32(func_3(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.a), vec3<u32>(u_input.a.x, u_input.c, u_input.a.x)) < firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), u_input.b.yx, Struct_1(vec4<bool>(true, (u_input.b.x != 16471u) || true, true, any(vec2<bool>(true, true))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(1u, u_input.c)), u_input.a.x) < _wgslsmith_sub_u32(u_input.c, ~u_input.c))));
    var var_1 = Struct_1(select(vec4<bool>((u_input.a.x & 16600u) > u_input.c, select(true, true, any(vec3<bool>(true, false, false))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), !any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, select(false, true, true), true, all(vec3<bool>(true, false, false))), vec4<bool>(true, all(vec2<bool>(true, false)), true, true)), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), select(true, true, !(!(global0.x == global0.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0)), var_0, 1f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(101f, var_0), -521f), !vec3<bool>(true, true, var_1.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -208f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0, 396f) + vec3<f32>(-1000f, -1797f, 2056f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - -182f)) * -1580f) - _wgslsmith_div_f32(-1000f, -1029f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -405f), -445f, _wgslsmith_div_f32(820f, -290f), _wgslsmith_f_op_f32(func_1())))));
}

