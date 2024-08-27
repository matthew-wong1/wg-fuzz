struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-117f, 591f), _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.b.wy)))))), vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = !(!select(!arg_0.a, select(select(arg_0.a, arg_0.a, true), arg_0.a, true & arg_0.a.x), arg_0.a.x));
    var var_2 = arg_0.b.yyy;
    let var_3 = arg_0;
    return ~firstTrailingBit(vec3<u32>(~(~4294967295u), ~_wgslsmith_mult_u32(0u, u_input.a), ~u_input.a));
}

fn func_4(arg_0: vec3<u32>) -> i32 {
    let var_0 = min(abs(~abs(select(vec4<u32>(arg_0.x, 59176u, 0u, 4294967295u), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 4294967295u), true))), _wgslsmith_clamp_vec4_u32(~(reverseBits(vec4<u32>(4294967295u, 1u, 1u, arg_0.x)) << ((vec4<u32>(3599u, 4294967295u, 1u, arg_0.x) ^ vec4<u32>(arg_0.x, 90292u, 0u, 0u)) % vec4<u32>(32u))), abs(vec4<u32>(~u_input.a, u_input.a, u_input.a, min(u_input.a, 4294967295u))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.x, u_input.a, 4294967295u), vec4<u32>(arg_0.x, u_input.a, 0u, 84724u)), vec4<u32>(1u, 54499u, 33757u, 100034u))));
    global0 = array<i32, 23>();
    let var_1 = any(select(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(true, true)));
    var var_2 = vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.xxz, arg_0) << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, u_input.a, arg_0.x), arg_0) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(4294967295u, 0u, 1u))), _wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec2_u32(var_0.xz, var_0.xy)), ~4294967295u);
    let var_3 = Struct_1(vec3<bool>(var_1, any(!vec3<bool>(var_1, var_1, var_1)) & !var_1, select(var_1, select(true, true, false) == true, false)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -388f))), _wgslsmith_f_op_f32(min(698f, -346f)), _wgslsmith_f_op_f32(1080f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1337f))))), -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f)))));
    return global0[_wgslsmith_index_u32(var_0.x, 23u)];
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = ~func_4(firstLeadingBit(func_3(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1095f, -901f, -287f, -761f), -295f), vec4<f32>(1438f, 1004f, -334f, -614f))) & ~func_3(Struct_1(vec3<bool>(false, false, true), vec4<f32>(368f, -574f, -491f, 1011f), 121f), vec4<f32>(1861f, 2117f, -589f, -2309f)));
    let var_1 = !vec2<bool>(!all(vec4<bool>(false, true, true, false)), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1374f), -515f), vec2<f32>(_wgslsmith_f_op_f32(sign(-464f)), _wgslsmith_f_op_f32(1104f * 434f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(114f, -1719f), vec2<f32>(1f, 1f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(484f, 1331f) + vec2<f32>(816f, 729f)), var_1)), !var_1.x)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1047f, 493f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-304f, 2289f, var_1.x)), -1014f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, 1393f))), select(var_1, !vec2<bool>(true, var_1.x), true | var_1.x))));
    var var_3 = 19866i;
    var var_4 = -169f;
    return global0[_wgslsmith_index_u32(~select(u_input.a, ~firstTrailingBit(u_input.a), all(vec3<bool>(true, true, true))), 23u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec3<i32>(global0[_wgslsmith_index_u32((50815u ^ u_input.a) & u_input.a, 23u)], 12921i, -abs(-17196i)) & vec3<i32>(_wgslsmith_mod_i32(31605i, reverseBits(global0[_wgslsmith_index_u32(u_input.a, 23u)])), abs(global0[_wgslsmith_index_u32(~u_input.a, 23u)]), _wgslsmith_mult_i32(min(global0[_wgslsmith_index_u32(u_input.a, 23u)], 2147483647i), -global0[_wgslsmith_index_u32(61265u, 23u)])));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-173f, -517f, all(vec4<bool>(true, true, true, true)))))), _wgslsmith_div_f32(1966f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -176f)))))));
    let var_2 = ~52937u;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x)));
    global0 = array<i32, 23>();
    return Struct_1(vec3<bool>(true, true, !all(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, var_1.x, var_1.x, 1128f)))))), _wgslsmith_f_op_f32(var_1.x * var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1091f, 756f) - _wgslsmith_f_op_vec2_f32(exp2(var_0.b.zy))) + vec2<f32>(-978f, _wgslsmith_f_op_f32(var_0.c + var_0.b.x))) - vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, false))))), _wgslsmith_f_op_f32(ceil(var_0.c)), select(~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 23u)], 2147483647i, -1i), vec3<i32>(-5885i, global0[_wgslsmith_index_u32(u_input.a, 23u)], 4325i))), vec3<i32>(16640i | global0[_wgslsmith_index_u32(4294967295u, 23u)], abs(2147483647i), global0[_wgslsmith_index_u32(countOneBits(u_input.a), 23u)]) << ((firstLeadingBit(vec3<u32>(28104u, 0u, 1u)) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), true));
}

