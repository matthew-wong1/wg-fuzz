struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(false == any(vec4<bool>(false, false, true, all(vec4<bool>(false, true, false, true)))));
    var var_1 = select(vec2<bool>(true, false), !vec2<bool>(false, all(vec3<bool>(true, var_0.a, var_0.a)) || var_0.a), !vec2<bool>(true, var_0.a));
    var_1 = select(!select(select(vec2<bool>(false, var_1.x), select(vec2<bool>(false, true), vec2<bool>(true, true), var_0.a), vec2<bool>(true, var_0.a)), vec2<bool>(all(vec2<bool>(var_1.x, true)), true | var_0.a), select(!vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, var_1.x), true)), vec2<bool>(true, all(vec2<bool>(var_0.a, var_1.x)) || true), var_1.x);
    var var_2 = ~4294967295u;
    let var_3 = var_0;
    return Struct_1(var_0.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = -1i;
    let var_1 = arg_0;
    var var_2 = arg_2;
    var_2 = Struct_1(false | arg_1.a);
    let var_3 = vec3<bool>(true || !var_2.a, !any(select(vec4<bool>(arg_2.a, false, arg_2.a, true), select(vec4<bool>(arg_0.a, false, false, arg_0.a), vec4<bool>(var_1.a, arg_0.a, arg_0.a, false), arg_3.x), true)), true);
    return !(!select(select(select(var_3.yy, var_3.xz, arg_1.a), !arg_3.yz, false), select(!vec2<bool>(arg_3.x, var_1.a), arg_3.zx, !vec2<bool>(var_3.x, false)), vec2<bool>(true, true)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = !select(select(vec2<bool>(arg_0.a, arg_2), func_3(Struct_1(arg_0.a), Struct_1(true), func_2(), vec3<bool>(false, false, true)), !vec2<bool>(false, arg_2)), vec2<bool>(arg_2, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) >= u_input.a.x), all(!vec4<bool>(arg_2, arg_0.a, arg_1.a, false)));
    let var_1 = 327f;
    var var_2 = func_2();
    var_2 = arg_1;
    var var_3 = ~_wgslsmith_sub_u32(15338u, 4730u) ^ ~max(~min(1u, 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 2994u, 2855u), vec4<u32>(4294967295u, 12412u, 1u, 4294967295u)));
    return vec3<bool>(true, -u_input.a.x >= (u_input.a.x << (~(~0u) % 32u)), var_0.x);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(select(~58131u, 0u, arg_1.x), 0u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1625f * 634f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-506f))) * _wgslsmith_f_op_f32(938f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -305f))))));
    let var_2 = min(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(19599u, 46280u), vec2<u32>(0u, 19488u)), firstLeadingBit(39729u)), abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 47048u), vec2<u32>(1u, 70797u), vec2<u32>(25040u, 0u)))) ^ ~(~(~vec2<u32>(1u, 1u)));
    let var_3 = select(!vec3<bool>(false | (arg_1.x & false), func_2().a, true), func_1(Struct_1(func_1(func_2(), Struct_1(true), true).x), Struct_1(!arg_1.x), !(true != arg_1.x)), !arg_1);
    var var_4 = !any(!(!func_1(Struct_1(var_3.x), Struct_1(var_3.x), false)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(2147483647i, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), true), func_1(Struct_1(false), Struct_1(false), u_input.a.x > u_input.a.x)), any(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true))));
    var_0 = func_2();
    var_0 = Struct_1((_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -647f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) | func_4(u_input.a.x, func_1(Struct_1(false), Struct_1(true), true)).a);
    let var_1 = Struct_1(!var_0.a);
    var_0 = var_1;
    var var_2 = Struct_1(!(!all(!vec3<bool>(true, var_1.a, var_0.a))));
    var_2 = func_4(select(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(max(vec3<i32>(4486i, -33344i, 0i), vec3<i32>(-1i, 0i, u_input.a.x)), -vec3<i32>(u_input.a.x, -12622i, u_input.a.x)), -reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x, true), select(!(!(!vec3<bool>(var_0.a, false, var_1.a))), !func_1(func_4(u_input.a.x, vec3<bool>(false, false, true)), Struct_1(false), true), var_0.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-689f)), 1000f)));
    var_2 = Struct_1(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-11017i, -55330i), -u_input.a.x, u_input.a.x | u_input.a.x, 2147483647i), ~vec4<i32>(u_input.a.x, u_input.a.x, 22544i, 1i)), vec3<bool>(var_1.a, _wgslsmith_f_op_f32(ceil(-132f)) != -474f, any(!vec3<bool>(var_2.a, false, true)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 1u, 1u), 1497f, ~1u);
}

