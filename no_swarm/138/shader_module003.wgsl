struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_1(263f < _wgslsmith_f_op_f32(abs(arg_1.e)), all(select(arg_2.c, select(vec2<bool>(true, arg_2.c.x), arg_2.c, false), all(vec4<bool>(arg_2.c.x, arg_0.c.x, arg_2.c.x, arg_0.c.x)))), vec3<i32>(-22003i, firstTrailingBit(-1i >> (~arg_3.x % 32u)), -24484i), !select(vec2<bool>(arg_0.c.x, any(vec4<bool>(arg_1.b, arg_0.c.x, arg_2.c.x, false))), select(select(arg_1.d, arg_1.d, arg_2.c.x), arg_1.d, arg_1.d), arg_2.c.x), _wgslsmith_f_op_f32(arg_1.e + _wgslsmith_div_f32(arg_1.e, 892f)));
    var var_1 = -542f;
    let var_2 = vec3<i32>(21019i, 24286i, var_0.c.x);
    var_1 = -616f;
    var var_3 = var_2.x;
    return -34472i;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = Struct_1(!(~1i <= _wgslsmith_sub_i32(func_3(Struct_2(48821u, vec3<i32>(u_input.d.x, -8568i, arg_2.b.x), vec2<bool>(arg_2.c.x, true)), Struct_1(arg_2.c.x, arg_2.c.x, u_input.d.wxz, vec2<bool>(arg_2.c.x, arg_2.c.x), 1656f), arg_2, vec2<u32>(39319u, arg_2.a)), 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000f))))) <= -1011f, arg_2.b, vec2<bool>(all(select(select(vec4<bool>(false, false, true, arg_2.c.x), vec4<bool>(true, false, true, arg_2.c.x), vec4<bool>(true, arg_2.c.x, true, arg_2.c.x)), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, arg_2.c.x))), (_wgslsmith_clamp_u32(arg_2.a, arg_2.a, u_input.a) >= ~19692u) && !all(vec4<bool>(false, true, arg_2.c.x, arg_2.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-971f)))))));
    var var_1 = Struct_1(true, true, vec3<i32>(_wgslsmith_mult_i32(arg_2.b.x ^ -3801i, abs(arg_0)), _wgslsmith_div_i32(var_0.c.x, 53903i), arg_0), vec2<bool>(true, 12883u <= (~u_input.a << (arg_2.a % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(848f, var_0.e)))) - -486f));
    var_1 = var_0;
    var_1 = Struct_1(false, true, -select(_wgslsmith_mult_vec3_i32(vec3<i32>(-30720i, 1i, 29174i) << (vec3<u32>(arg_2.a, 0u, 1u) % vec3<u32>(32u)), vec3<i32>(76746i, arg_2.b.x, u_input.b.x)), ~select(var_1.c, var_1.c, var_0.b), true && !var_1.d.x), vec2<bool>(any(!vec3<bool>(arg_2.c.x, var_1.b, arg_2.c.x)), any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(f32(-1f) * -491f));
    let var_2 = Struct_2(0u, var_0.c, vec2<bool>(true, all(select(!vec3<bool>(false, var_0.a, var_0.a), !vec3<bool>(arg_2.c.x, arg_2.c.x, true), !var_1.b))));
    return vec2<u32>(4294967295u, ~u_input.a) | ~(~(~select(vec2<u32>(79643u, arg_2.a), vec2<u32>(var_2.a, 0u), true)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = select(~(~vec2<u32>(34693u, 4294967295u)) & (_wgslsmith_sub_vec2_u32(arg_0, vec2<u32>(0u, 1u)) | func_2(0i, arg_2.b.x, arg_2)), ~_wgslsmith_add_vec2_u32(arg_0, vec2<u32>(4294967295u, arg_2.a)) << (~(vec2<u32>(4294967295u, arg_0.x) | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), arg_1.a) | ~arg_0;
    return !arg_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = vec4<bool>((all(!arg_2.d) || all(!arg_2.d)) && true, (any(!vec3<bool>(arg_0.a, arg_2.a, arg_2.a)) && (u_input.c.x <= arg_0.c.x)) & all(!select(vec4<bool>(arg_2.b, true, true, arg_0.a), vec4<bool>(false, false, true, false), arg_2.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1838f)))) == 924f, true);
    var var_1 = reverseBits(u_input.a);
    let var_2 = ~(~(~(~arg_1.wy)));
    var_1 = ~0u;
    return !vec2<bool>(!(all(vec4<bool>(true, true, arg_2.b, arg_0.a)) | arg_2.d.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(4294967295u, vec3<i32>(-1i) * -u_input.d.yxy, !func_4(Struct_1(true, func_1(vec2<u32>(u_input.a, u_input.a), Struct_1(false, true, u_input.d.wyz, vec2<bool>(false, false), 1000f), Struct_2(0u, u_input.c.xzx, vec2<bool>(false, false))), vec3<i32>(u_input.c.x, u_input.b.x, 9219i), select(vec2<bool>(true, false), vec2<bool>(true, false), false), _wgslsmith_f_op_f32(f32(-1f) * -1421f)), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 19781u, u_input.a)), Struct_1(any(vec3<bool>(false, true, false)), any(vec2<bool>(true, false)), vec3<i32>(u_input.d.x, u_input.c.x, u_input.b.x), vec2<bool>(true, true), _wgslsmith_f_op_f32(1824f * 1000f))));
    var var_1 = _wgslsmith_clamp_i32(countOneBits(firstLeadingBit(-1899i)), func_3(Struct_2(54752u, ~var_0.b, var_0.c), Struct_1(!all(vec4<bool>(false, var_0.c.x, false, true)), true && var_0.c.x, u_input.d.xxy, func_4(Struct_1(true, true, vec3<i32>(var_0.b.x, -37706i, 2147483647i), var_0.c, -663f), ~vec4<u32>(var_0.a, 50162u, u_input.a, u_input.a), Struct_1(true, var_0.c.x, u_input.c.wzx, var_0.c, -677f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1175f, -447f))), Struct_2(reverseBits(1u), var_0.b, var_0.c), vec2<u32>(1u, _wgslsmith_div_u32(10966u, _wgslsmith_clamp_u32(var_0.a, 73327u, 31446u)))), -_wgslsmith_mod_i32(max(var_0.b.x, ~(-40434i)), _wgslsmith_div_i32(firstLeadingBit(29359i), _wgslsmith_sub_i32(0i, -5485i))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-298f * -2040f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(243f + -1592f), _wgslsmith_f_op_f32(304f + -2065f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-439f * -550f), -733f)))));
    var var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(700f, _wgslsmith_f_op_f32(126f + var_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 + var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 503f)))));
}

