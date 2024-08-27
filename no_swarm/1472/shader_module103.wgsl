struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: bool = true;

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = !(!(!(!vec4<bool>(arg_1.a.x, false, true, true))));
    return -9633i;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = ~max(vec3<u32>(~select(0u, 128112u, arg_1.a.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, arg_0), u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(26166u, u_input.a), abs(vec2<u32>(arg_0, 1u)))), select(vec3<u32>(51258u, ~7009u, _wgslsmith_sub_u32(arg_0, arg_0)), ~vec3<u32>(u_input.a, arg_0, arg_0) ^ abs(vec3<u32>(arg_0, u_input.a, 6617u)), !arg_1.a.x));
    global0 = true;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-451f)) * _wgslsmith_f_op_f32(max(396f, 628f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(650f + _wgslsmith_div_f32(1000f, 632f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f * _wgslsmith_div_f32(-326f, -1256f)))));
    var var_3 = 1f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x)), _wgslsmith_f_op_f32(floor(-2482f)), true));
    return vec4<u32>(arg_0, u_input.a, 4294967295u, 4294967295u);
}

fn func_4(arg_0: vec4<u32>) -> vec2<bool> {
    global0 = true;
    global1 = _wgslsmith_clamp_i32(func_1(0u, Struct_1(vec3<bool>(true, true, true), ~select(vec2<i32>(-52535i, 1i), vec2<i32>(0i, 0i), true))), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(2147483647i, i32(-1i) * -43380i, ~2147483647i)) >> (~(~reverseBits(arg_0.x)) % 32u), ~_wgslsmith_sub_i32(-select(-2147483647i, -2147483647i, false), -_wgslsmith_div_i32(35080i, 2147483647i)));
    global1 = -2147483647i;
    let var_0 = countOneBits(~vec4<u32>(_wgslsmith_mult_u32(1u, 139154u), arg_0.x, u_input.a, ~(~arg_0.x)));
    global0 = false;
    return vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(4294967295u, var_0.x, u_input.a) % vec3<u32>(32u)), abs(-vec3<i32>(-22777i, 2147483647i, 2147483647i))) == func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, 7917u, 30214u), vec4<u32>(var_0.x, 21881u, 43480u, 0u) | var_0), Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec2<i32>(1i, -2147483647i))), false);
}

fn func_2() -> i32 {
    global1 = -firstTrailingBit(0i << (select(_wgslsmith_clamp_u32(0u, 20894u, u_input.a), abs(u_input.a), true) % 32u));
    var var_0 = 8679u;
    var_0 = ~_wgslsmith_sub_u32(u_input.a, u_input.a);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(886f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1118f));
    var var_2 = func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.a), ~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 25822u), vec3<u32>(0u, u_input.a, u_input.a)), u_input.a << ((0u ^ u_input.a) % 32u), ~(~18315u)), func_3(4767u, Struct_1(vec3<bool>(true, true, true), vec2<i32>(18237i, -6157i))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 12361u), vec4<u32>(17853u, u_input.a, 24455u, 1u)), abs(~vec4<u32>(0u, u_input.a, u_input.a, 1u)), countOneBits(vec4<u32>(0u, 29417u, 3651u, 4294967295u)))));
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1244f;
    global0 = -_wgslsmith_sub_i32(~(i32(-1i) * -968i), func_1(u_input.a, Struct_1(vec3<bool>(true, true, true), vec2<i32>(-11262i, -2147483647i)))) >= 1i;
    let var_1 = _wgslsmith_div_vec4_i32(~(~firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))), vec4<i32>(-42104i, 1i, countOneBits(func_2()) >> (_wgslsmith_sub_u32(~17209u, u_input.a) % 32u), ~_wgslsmith_mod_i32(func_1(29441u, Struct_1(vec3<bool>(true, false, false), vec2<i32>(1i, 2147483647i))), -1i)));
    global1 = reverseBits(~(-(~2147483647i))) & var_1.x;
    var var_2 = vec4<bool>(false, false, all(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), true);
    var_2 = select(select(!(!vec4<bool>(false, var_2.x, false, var_2.x)), !vec4<bool>(!var_2.x, true, false, var_1.x == var_1.x), vec4<bool>(any(vec4<bool>(var_2.x, false, false, false)) | any(vec4<bool>(true, true, var_2.x, true)), !any(vec2<bool>(true, var_2.x)), any(!vec3<bool>(true, true, var_2.x)), all(var_2.wwy) | (var_2.x | false))), vec4<bool>(true, (60412i >> (~u_input.a % 32u)) != _wgslsmith_mult_i32(var_1.x << (u_input.a % 32u), _wgslsmith_clamp_i32(-2147483647i, var_1.x, var_1.x)), !(-291f < _wgslsmith_f_op_f32(-2850f - var_0)), all(!vec4<bool>(false, true, var_2.x, var_2.x))), select(select(vec4<bool>(all(var_2.yz), any(vec3<bool>(true, false, var_2.x)), all(vec2<bool>(var_2.x, var_2.x)), var_2.x), vec4<bool>(any(var_2.yxw), true, true, var_2.x), any(!var_2.yzw)), !select(!vec4<bool>(false, true, var_2.x, var_2.x), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), false), true || !all(vec3<bool>(false, var_2.x, false))));
    let var_3 = var_1.x;
    let var_4 = min(_wgslsmith_mult_vec4_u32(func_3(~u_input.a, Struct_1(!vec3<bool>(var_2.x, var_2.x, false), var_1.xz)), vec4<u32>(u_input.a, 0u, abs(~1u), func_3(max(u_input.a, 60941u), Struct_1(vec3<bool>(true, var_2.x, var_2.x), var_1.xy)).x)), ~vec4<u32>(~18782u, u_input.a, u_input.a, 72353u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -1726f), var_0, var_2.x)), _wgslsmith_f_op_f32(1051f * var_0), 491f, var_0));
}

