struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = !select(!(!select(vec3<bool>(false, arg_2.c, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), select(vec3<bool>(!arg_2.c, all(vec3<bool>(arg_2.c, true, arg_2.d)), arg_2.d), vec3<bool>(true, any(vec2<bool>(false, arg_0.d)), true), true), vec3<bool>(true, true, true));
    let var_1 = arg_0;
    var_0 = vec3<bool>(true, var_1.c, any(select(!(!vec4<bool>(arg_0.c, false, var_0.x, true)), !select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, arg_2.c, arg_0.c), vec4<bool>(arg_2.c, true, false, arg_0.d)), vec4<bool>(any(vec3<bool>(true, false, true)), any(vec2<bool>(true, var_0.x)), var_0.x, arg_2.d))));
    let var_2 = Struct_2(arg_2, 1u >> (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 3120u, 4294967295u, 43571u), vec4<u32>(10891u, 25386u, 4294967295u, 1u))) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-231f, -138f, 195f), vec3<f32>(-289f, -1048f, 992f), vec3<bool>(false, true, true)))))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_f32(-893f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)))));
    return _wgslsmith_f_op_f32(-var_2.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> bool {
    return all(select(select(arg_2.xy, vec2<bool>(any(arg_2.wxw), false), 67118i < u_input.a.x), select(arg_2.wz, vec2<bool>(arg_0.a.c, !arg_0.a.c), any(arg_2.wy) || any(arg_2)), vec2<bool>(arg_2.x | any(vec2<bool>(true, arg_2.x)), !(arg_0.a.d && true))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(-u_input.a.x >> (0u % 32u), ~(vec3<i32>(-1i) * -vec3<i32>(1i, 5916i, u_input.a.x)), func_4(Struct_2(Struct_1(u_input.a.x, vec3<i32>(18558i, u_input.a.x, u_input.a.x), true, true), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, -715f, 783f))), _wgslsmith_f_op_f32(func_3(Struct_1(-33547i, vec3<i32>(u_input.a.x, u_input.a.x, -24752i), true, false), u_input.a.x, Struct_1(u_input.a.x, vec3<i32>(u_input.a.x, -1i, 1i), true, true))), vec4<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, false, true)), true, any(vec2<bool>(true, false)))), false), countOneBits(~1u ^ _wgslsmith_sub_u32(1616u, _wgslsmith_dot_vec2_u32(vec2<u32>(54451u, 29048u), vec2<u32>(5934u, 3199u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(338f, -1130f, -243f)))));
    let var_1 = Struct_2(Struct_1(-25007i, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 1i) & var_0.a.b, -select(var_0.a.b, vec3<i32>(-21961i, 0i, var_0.a.a), vec3<bool>(false, true, var_0.a.d))), all(select(!vec4<bool>(false, var_0.a.d, var_0.a.c, true), vec4<bool>(true, var_0.a.c, var_0.a.d, false), all(vec4<bool>(true, true, var_0.a.d, var_0.a.c)))), var_0.a.d), min(1u >> (_wgslsmith_mod_u32(var_0.b, 38220u) % 32u), _wgslsmith_add_u32(var_0.b << (_wgslsmith_mult_u32(4294967295u, var_0.b) % 32u), var_0.b)), vec3<f32>(-323f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-517f)) + -805f))), _wgslsmith_div_f32(1000f, var_0.c.x)));
    let var_2 = -_wgslsmith_sub_vec4_i32(abs(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.b.x, var_1.a.b.x, 12821i, 44020i), vec4<i32>(var_1.a.b.x, -1i, var_0.a.b.x, 22439i)))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, 48473i, var_1.a.b.x, var_0.a.a) | vec4<i32>(1i, var_1.a.b.x, 0i, var_0.a.b.x)), vec4<i32>(var_1.a.b.x ^ u_input.a.x, var_0.a.b.x >> (var_1.b % 32u), 2147483647i << (var_0.b % 32u), ~var_1.a.b.x)));
    let var_3 = true;
    let var_4 = var_0.b & _wgslsmith_sub_u32(1u, 4294967295u | _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 14118u, var_1.b, 1u), vec4<u32>(var_0.b, var_1.b, var_1.b, var_1.b)));
    return Struct_1(-(_wgslsmith_add_i32(-15527i, 7554i) | var_0.a.a), select(var_2.xyx, var_1.a.b, vec3<bool>(all(vec3<bool>(false, var_1.a.d, var_0.a.d)) || true, var_3, false)), false, true);
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))));
    var_1 = Struct_1(~(-39637i), -firstTrailingBit(max(var_1.b, var_1.b)) << (vec3<u32>(firstTrailingBit(~41050u), _wgslsmith_add_u32(select(4294967295u, 26273u, var_1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 29561u), vec4<u32>(4294967295u, 39358u, 23628u, 11173u))), 15056u) % vec3<u32>(32u)), !(!(arg_0 <= _wgslsmith_div_f32(arg_0, arg_0))), any(select(select(!vec2<bool>(var_1.d, var_1.c), vec2<bool>(false, false), select(vec2<bool>(var_1.d, true), vec2<bool>(true, true), var_1.d)), !select(vec2<bool>(true, var_1.d), vec2<bool>(true, var_1.d), var_1.d), select(vec2<bool>(true, true), !vec2<bool>(var_1.c, false), vec2<bool>(var_1.d, false)))));
    let var_3 = 37736i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(2147483647i, ~(~_wgslsmith_add_vec3_i32(vec3<i32>(-13866i, u_input.a.x, u_input.a.x), vec3<i32>(28055i, 5651i, -5608i))), false, all(vec4<bool>(true, true, true, true))), ~1u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-970f, _wgslsmith_f_op_f32(round(-472f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(547f, 231f, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(259f, -162f, 486f) - vec3<f32>(1459f, -1262f, -1173f))))))));
    var var_1 = var_0.a;
    let var_2 = true;
    let var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -735f)), var_1.b.x);
    var var_4 = var_3.a & u_input.a.x;
    var var_5 = 581f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, ~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.b, 29552u), vec3<u32>(var_0.b, 1u, 0u)), ~var_0.b & var_0.b, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.b, var_0.b, 4294967295u), var_0.b)), _wgslsmith_mult_vec4_u32(select(min(select(vec4<u32>(34890u, 72557u, var_0.b, 4294967295u), vec4<u32>(1u, 0u, var_0.b, var_0.b), false), ~vec4<u32>(var_0.b, 4294967295u, 17999u, var_0.b)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, var_0.b, var_0.b, 54543u), vec4<u32>(1u, 8767u, 5611u, var_0.b)), abs(vec4<u32>(var_0.b, 0u, 5638u, var_0.b)), var_2), !(!vec4<bool>(var_2, true, var_2, var_2))), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_0.b, 0u, 31666u, var_0.b) << (vec4<u32>(15948u, 47885u, 0u, 1u) % vec4<u32>(32u))), vec4<u32>(42707u, _wgslsmith_mult_u32(34206u, 56450u), 72504u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 46855u, var_0.b, 4294967295u), vec4<u32>(46310u, var_0.b, 4294967295u, 87009u))))));
}

