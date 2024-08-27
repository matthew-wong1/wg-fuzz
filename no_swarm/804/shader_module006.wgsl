struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(abs(2147483647i), _wgslsmith_dot_vec2_u32(select(u_input.b.xx, u_input.b.yw, vec2<bool>(false, false)), ~vec2<u32>(32189u, u_input.b.x)) & ~_wgslsmith_mod_u32(u_input.b.x, 0u), vec2<f32>(_wgslsmith_f_op_f32(floor(-1190f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-314f, 403f)) - _wgslsmith_f_op_f32(158f - -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -232f), 415f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-848f, 449f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1492f, -420f, -215f), vec3<f32>(149f, 800f, -547f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-181f, -551f, 2253f))))))));
    var_0 = Struct_2(Struct_1(~_wgslsmith_div_i32(abs(9832i), countOneBits(arg_0.x)), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(var_0.a.c)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-715f, var_0.a.e.x), var_0.a.d)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a.e.x, var_0.a.d.x, false)), _wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(-var_0.a.c.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.x, var_0.a.c.x, 1911f)) * var_0.a.e))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(0u, var_0.a.b), _wgslsmith_add_u32(firstLeadingBit(var_0.a.b), abs(u_input.b.x)));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(610f + -234f), _wgslsmith_f_op_f32(-var_0.a.c.x)))), var_0.a.c.x));
    let var_3 = var_0.a.b;
    return -103f;
}

fn func_2() -> Struct_1 {
    let var_0 = -42811i;
    var var_1 = Struct_3(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), 4294967295u < u_input.b.x)));
    var_1 = Struct_3(vec2<bool>(true, all(vec3<bool>(var_1.a.x & false, true, var_1.a.x && var_1.a.x))));
    return Struct_1(firstLeadingBit(_wgslsmith_div_i32(~(-1i) << (_wgslsmith_div_u32(u_input.b.x, 4294967295u) % 32u), u_input.a)), ~min(~0u, min(4294967295u, ~u_input.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -762f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -755f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(679f, 434f) - vec2<f32>(478f, 1462f)))), vec2<f32>(-985f, 1587f), true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a, 1i, u_input.c))), _wgslsmith_f_op_f32(max(-850f, 519f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, 1f, _wgslsmith_f_op_f32(ceil(257f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1385f), _wgslsmith_f_op_f32(func_3(vec3<i32>(-2147483647i, 1i, 18672i) | vec3<i32>(u_input.d.x, var_0, -1i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2362f + -283f), _wgslsmith_f_op_f32(func_3(vec3<i32>(var_0, 2147483647i, u_input.d.x))), 39560i < u_input.a)))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = true;
    let var_1 = var_0;
    let var_2 = Struct_3(!(!(!vec2<bool>(var_1, true))));
    var var_3 = countOneBits(countOneBits(u_input.b.xx));
    let var_4 = var_2;
    return var_4;
}

fn func_1() -> bool {
    let var_0 = countOneBits(_wgslsmith_mod_u32(u_input.b.x, 4294967295u));
    let var_1 = 2416u;
    var var_2 = func_4(Struct_2(func_2()));
    var_2 = func_4(Struct_2(func_2()));
    let var_3 = ~u_input.b.wx << (vec2<u32>(0u, ~0u) % vec2<u32>(32u));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(select(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4930u, 4294967295u), u_input.b)), u_input.b, vec4<bool>(true, true, !func_1(), select(true, true, true))), vec4<u32>(abs(0u), 75417u, u_input.b.x, u_input.b.x));
    let var_1 = select(select(!vec4<bool>(true, true, any(vec3<bool>(true, false, true)), true), select(vec4<bool>(false, any(vec3<bool>(true, true, false)), false, any(vec2<bool>(true, false))), vec4<bool>(true, select(true, false, true), true, true), (0u ^ var_0.x) > (u_input.b.x << (var_0.x % 32u))), _wgslsmith_div_u32(u_input.b.x, abs(var_0.x)) >= ~_wgslsmith_div_u32(0u, var_0.x)), !(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)))), 38563u < countOneBits(u_input.b.x));
    var var_2 = ~_wgslsmith_sub_u32(29470u, func_2().b);
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(19476u, 1u), 4294967295u) | vec2<u32>(u_input.b.x | _wgslsmith_clamp_u32(min(var_0.x, u_input.b.x), var_0.x & 8384u, abs(u_input.b.x)), var_0.x);
    var var_4 = select(var_1.yww, !vec3<bool>(all(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x, true), -216f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1811f, _wgslsmith_f_op_f32(step(747f, -849f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2042f * 1000f))))));
    let var_5 = vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, _wgslsmith_mod_u32(~u_input.b.x, abs(abs(countOneBits(25357u)))));
    var var_6 = _wgslsmith_dot_vec2_u32(u_input.b.yx, ~max(vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.x), var_0.yw)) << (u_input.b.yx % vec2<u32>(32u)));
    let var_7 = all(vec3<bool>(true, var_1.x, true | !any(var_1.wx)));
    let var_8 = Struct_1(_wgslsmith_add_i32(u_input.d.x, ~(-firstTrailingBit(-17791i))), ~(~19755u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-971f, 1623f) - vec2<f32>(-272f, -1125f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * -1501f)) * func_2().e.yz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1173f, 703f, 419f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_8.e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1763f * 1159f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_8.c.x + var_8.d.x), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_8.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_8.d.x) + func_2().e.x))));
}

