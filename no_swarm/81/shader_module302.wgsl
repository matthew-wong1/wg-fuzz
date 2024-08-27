struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> u32 {
    let var_0 = Struct_2(arg_0.a, arg_0.c == (_wgslsmith_div_i32(u_input.c.x, reverseBits(-39160i)) >> (4294967295u % 32u)), -2147483647i, !select(select(arg_0.d, select(vec4<bool>(arg_0.b, true, arg_0.d.x, false), vec4<bool>(false, arg_0.b, arg_0.a.a, arg_0.e), false), any(vec4<bool>(false, arg_0.d.x, true, false))), arg_0.d, !arg_0.a.d), arg_0.a.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_1 * arg_0.a.b)));
    let var_2 = arg_0.a;
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-865f, _wgslsmith_f_op_f32(var_2.b.x + arg_1.x))) * 642f), 1314f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -511f)))) * _wgslsmith_f_op_vec2_f32(var_2.b * var_0.a.b)));
    let var_3 = -abs(vec3<i32>(34921i, 0i, abs(arg_0.a.c.x))) | max(u_input.a ^ countOneBits(vec3<i32>(u_input.c.x, 23993i, u_input.a.x)), _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), -(vec3<i32>(1i, var_2.c.x, u_input.c.x) & vec3<i32>(u_input.c.x, 2147483647i, -61668i))));
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<u32>(~_wgslsmith_add_u32(func_3(Struct_2(Struct_1(false, vec2<f32>(683f, 1694f), u_input.c, false, 1374f), true, 3338i, vec4<bool>(false, true, false, false), true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 921f)))), u_input.b), 87482u, u_input.b);
    var var_1 = Struct_1(!(true && all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))), vec2<f32>(_wgslsmith_f_op_f32(round(138f)), _wgslsmith_f_op_f32(sign(1f))), select(vec2<i32>(-1i, 48008i >> (_wgslsmith_dot_vec3_u32(var_0, var_0) % 32u)), -vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(u_input.c.x, u_input.a.x)), ~(-2147483647i)), all(vec2<bool>(true, true))), firstTrailingBit(u_input.b) >= ~34489u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2299f) - _wgslsmith_f_op_f32(681f * 1323f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-403f, 1000f))))));
    let var_2 = !(!(!any(vec2<bool>(false, true)))) || all(vec4<bool>(var_1.a, var_1.a, var_1.a, all(select(vec2<bool>(false, true), vec2<bool>(var_1.a, false), vec2<bool>(var_1.d, var_1.d)))));
    let var_3 = min(~countOneBits(var_0), vec3<u32>(~(~(u_input.b << (var_0.x % 32u))), ~12924u & _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(39930u, 1u, var_0.x, var_0.x), vec4<u32>(u_input.b, var_0.x, u_input.b, var_0.x)), 26842u), 40318u));
    var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.b - var_1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.e))))))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(var_1.c.x, var_1.c.x), vec2<i32>(u_input.c.x, u_input.a.x)), var_1.c), -firstLeadingBit(vec2<i32>(var_1.c.x, -54491i))), ~(vec2<i32>(-1i) * -var_1.c)), !any(select(vec2<bool>(var_1.a, var_2), vec2<bool>(var_1.a, var_1.a), var_1.d)) | var_1.a, 620f);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-617f, _wgslsmith_f_op_f32(var_1.b.x + 1232f))) >= -231f, var_1.b, -_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c.x, 2542i), vec2<i32>(u_input.c.x, u_input.c.x)) >> (var_3.yy % vec2<u32>(32u)), true, _wgslsmith_f_op_f32(ceil(1801f))), select(all(vec2<bool>(true, true)), !all(!vec4<bool>(var_2, var_2, true, var_2)), var_2), 0i, vec4<bool>(var_1.d, !(_wgslsmith_f_op_f32(min(var_1.e, 526f)) <= var_1.b.x), var_1.d, true), abs(~(24910u ^ u_input.b)) < var_3.x);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.wz + vec2<f32>(1353f, arg_1.x));
    var var_1 = ~(~firstLeadingBit(~(18368u >> (u_input.b % 32u))));
    var var_2 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, u_input.b ^ 55027u, u_input.b, ~u_input.b), ~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(-1000f))), 1543f)), arg_1.x);
    var var_3 = func_2();
    return vec3<u32>(_wgslsmith_mod_u32(8496u, 1u), 4294967295u, ~(~29714u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(~func_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, 972f, 1000f, -1000f))) | ~select(abs(vec3<u32>(4294967295u, 4294967295u, 11526u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 36779u), vec3<u32>(u_input.b, 1550u, u_input.b)), true), ~(~vec3<u32>(min(u_input.b, u_input.b), u_input.b, ~u_input.b)));
    var_0 = ~select(abs(vec3<u32>(~37671u, ~4294967295u, firstTrailingBit(u_input.b))), ~firstTrailingBit(~vec3<u32>(u_input.b, 1u, 1u)), !(!func_2().d.wxy));
    let var_1 = ~countOneBits(func_2().c);
    var_0 = _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.b), abs(var_0.x), var_0.x), ~vec3<u32>(var_0.x, 4294967295u, 83330u) >> (vec3<u32>(53602u, u_input.b, u_input.b) % vec3<u32>(32u))), firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.b), vec3<u32>(u_input.b, var_0.x, var_0.x))) | min(vec3<u32>(u_input.b, u_input.b, var_0.x) & vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(1u, 63074u, 32658u))));
    var_0 = ~(vec3<u32>(u_input.b, 0u << (var_0.x % 32u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, 4294967295u, 0u)), vec3<u32>(2772u, 41457u, var_0.x))) >> (~((vec3<u32>(u_input.b, 90207u, var_0.x) & vec3<u32>(var_0.x, 0u, u_input.b)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 14504u, u_input.b), vec3<u32>(36310u, 0u, var_0.x), vec3<u32>(26978u, var_0.x, 1u))) % vec3<u32>(32u)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1590f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1787f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2403f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(833f * -260f)), all(func_2().d.wz))))));
    var_0 = reverseBits(_wgslsmith_div_vec3_u32((_wgslsmith_mult_vec3_u32(vec3<u32>(70012u, var_0.x, 4294967295u), vec3<u32>(19403u, 36865u, u_input.b)) << (_wgslsmith_div_vec3_u32(vec3<u32>(4243u, u_input.b, var_0.x), vec3<u32>(37948u, 4294967295u, 0u)) % vec3<u32>(32u))) << (countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 47192u))) % vec3<u32>(32u)), vec3<u32>(var_0.x, var_0.x, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))).x);
}

