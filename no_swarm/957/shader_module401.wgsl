struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1920f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1962f, -201f)), vec2<f32>(-649f, _wgslsmith_div_f32(1897f, 2526f)))), Struct_1(u_input.d, vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), all(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true)), 1u >= _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.d.x), u_input.d)), vec3<i32>(_wgslsmith_mult_i32(~u_input.c, countOneBits(_wgslsmith_div_i32(u_input.c, u_input.c))), u_input.c, 0i));
    let var_1 = Struct_1(max(~vec4<u32>(_wgslsmith_clamp_u32(71074u, var_0.c.a.x, u_input.d.x), 0u, 0u, 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(47806u, 33311u, 14317u, 29036u), u_input.d), _wgslsmith_sub_vec4_u32(var_0.c.c, var_0.c.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.a.x, 18705u), u_input.a.zx), 0u, ~(~4294967295u))), select(select(vec4<bool>(var_0.c.b.x, var_0.c.b.x, true, !var_0.c.b.x), var_0.c.b, var_0.c.b), vec4<bool>(select(true, var_0.c.b.x, var_0.a == 585f), all(select(vec4<bool>(var_0.c.b.x, false, var_0.c.b.x, var_0.c.b.x), var_0.c.b, var_0.c.b.x)), true, u_input.e >= _wgslsmith_dot_vec2_i32(var_0.d.yx, var_0.d.xx)), vec4<bool>(true, -508f != _wgslsmith_f_op_f32(var_0.a - -825f), var_0.c.b.x, 0u >= select(4294967295u, u_input.a.x, var_0.c.b.x))), vec4<u32>(67929u, ~u_input.a.x, 4294967295u, ~var_0.c.a.x));
    let var_2 = Struct_1(vec4<u32>(select(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32522u), var_0.c.a.xz)), max(5897u, countOneBits(var_0.c.a.x)), !var_0.c.b.x), 75492u, ~0u, 0u), var_1.b, vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.c.zw, vec2<u32>(var_0.c.c.x, ~var_1.c.x)), var_1.a.x, u_input.b, ~u_input.d.x));
    let var_3 = select(vec4<bool>(true, var_0.c.b.x, var_1.c.x != (_wgslsmith_clamp_u32(var_2.a.x, var_0.c.a.x, var_2.c.x) | abs(u_input.b)), false), vec4<bool>(any(select(select(var_0.c.b.zx, var_2.b.yx, false), !vec2<bool>(var_0.c.b.x, var_2.b.x), u_input.b >= 37312u)), false, any(vec4<bool>(all(var_2.b), select(var_0.c.b.x, var_2.b.x, true), var_2.b.x, var_0.c.b.x)), true), vec4<bool>(true, all(var_0.c.b), var_1.b.x, var_1.b.x));
    let var_4 = var_0.b.x;
    return _wgslsmith_f_op_f32(1845f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -129f) - _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) - _wgslsmith_f_op_f32(-284f + 1651f))) - -152f));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(801f, -376f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1104f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1703f, -159f, 425f) + vec3<f32>(-1784f, 1240f, -334f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(485f * 997f), _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.zz, var_0.xx, vec2<bool>(false, false))) + vec2<f32>(var_0.x, -1000f)), false))), vec2<f32>(1322f, -1216f)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.x, var_0.x) + vec3<f32>(var_1.x, var_1.x, var_0.x))) * vec3<f32>(-1643f, _wgslsmith_f_op_f32(var_1.x + 1392f), -1276f)), vec3<f32>(_wgslsmith_f_op_f32(-1281f * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1245f, 709f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * var_0.x))), !all(vec4<bool>(true, true, true, false)))), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -968f) - _wgslsmith_f_op_f32(trunc(-758f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(436f - var_0.x))), (123812u >= u_input.b) && true))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2335f), _wgslsmith_f_op_f32(-921f * 1000f), all(vec4<bool>(true, false, false, true)))))), -1198f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(var_0.x, var_0.x))))));
    var var_3 = vec2<i32>(firstLeadingBit(-17473i), -((i32(-1i) * -u_input.c) << (65219u % 32u)));
    return _wgslsmith_div_f32(775f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-561f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1937f, var_2.x)))) * 287f));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = -_wgslsmith_mult_i32(-24166i, -1392i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-2005f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(332f)), _wgslsmith_f_op_f32(f32(-1f) * -1634f), true)) + _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2254f, 118f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, 1000f)) * vec2<f32>(-1026f, 379f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1209f, -395f), vec2<f32>(-1000f, 1637f))), vec2<f32>(-222f, 510f)))))), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 37868u), u_input.d) << (~abs(u_input.d) % vec4<u32>(32u)), select(vec4<bool>(arg_0 && arg_0, u_input.c != 37046i, arg_0, u_input.b <= 0u), !(!vec4<bool>(arg_0, arg_0, arg_0, false)), arg_0), vec4<u32>(u_input.a.x, 1u, 0u << (1u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4459u), vec3<u32>(32162u, u_input.d.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), -vec3<i32>(-countOneBits(u_input.c), u_input.c, u_input.c));
    var_0 = ~select(var_1.d.x, _wgslsmith_add_i32(max(1i, firstLeadingBit(-10665i)), ~(-var_1.d.x)), true);
    var var_2 = select(vec2<bool>(any(select(var_1.c.b.www, vec3<bool>(var_1.c.b.x, false, var_1.c.b.x), vec3<bool>(true, true, true))), true), var_1.c.b.wz, select(!var_1.c.b.xy, select(select(var_1.c.b.wy, var_1.c.b.zy, select(vec2<bool>(var_1.c.b.x, arg_0), vec2<bool>(var_1.c.b.x, arg_0), vec2<bool>(false, false))), vec2<bool>(true, true), all(vec3<bool>(false, arg_0, false))), vec2<bool>(true, select(var_1.c.b.x, arg_0, true))));
    var var_3 = var_1;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(~(~51097u), ~(~u_input.b)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~0u, func_1(true)), countOneBits(31143u)), 26156u, _wgslsmith_dot_vec4_u32(u_input.d, abs(u_input.d))), !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !all(vec4<bool>(true, true, true, false))), u_input.d);
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-2327f, -913f)) + -1000f) + -883f)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1553f), 961f, select(all(var_0.b.xyz), var_0.b.x, var_0.b.x))) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1403f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(f32(-1f) * -1324f)) + vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(floor(-350f)), _wgslsmith_f_op_f32(f32(-1f) * -627f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-665f, 794f), vec2<f32>(328f, 150f)))))));
    let var_3 = 46240i;
    var_1 = 1874f;
    let var_4 = _wgslsmith_f_op_f32(-1f);
    let var_5 = Struct_2(var_2.x, var_2, Struct_1((~u_input.d << (u_input.d % vec4<u32>(32u))) >> (var_0.c % vec4<u32>(32u)), select(vec4<bool>(true, u_input.c > -47786i, var_4 != var_4, all(var_0.b.wy)), !(!var_0.b), var_0.b), vec4<u32>(_wgslsmith_add_u32(~4519u, 1u), var_0.a.x, ~var_0.a.x, ~(~0u))), vec3<i32>(~(i32(-1i) * -u_input.e), 2147483647i, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

