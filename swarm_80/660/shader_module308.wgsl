struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(65071i, ~min(vec3<i32>(u_input.b, 41516i, u_input.b), reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.b))), vec2<i32>(~(i32(-1i) * -27734i), u_input.b)), !select(vec3<bool>(all(vec3<bool>(false, false, true)), true, true), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true), vec3<bool>(true, true, true)), true | !(!all(vec4<bool>(true, true, true, false))));
    var var_1 = abs(~var_0.a.b.yz);
    var_1 = vec2<i32>(_wgslsmith_clamp_i32(~(~(~(-24080i))), -1737i, _wgslsmith_add_i32(_wgslsmith_mult_i32(min(var_0.a.b.x, u_input.b), -62390i), u_input.b)), min(-(~(-1i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, -5177i), firstLeadingBit(u_input.b))) >> (~_wgslsmith_mult_u32(firstLeadingBit(u_input.d.x), u_input.c.x) % 32u));
    let var_2 = var_0.a;
    var var_3 = Struct_1(select(_wgslsmith_clamp_i32(var_1.x, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, -2147483647i, u_input.b), var_0.a.b)) & -min(var_2.c.x, -54649i), ~(~2147483647i), true), vec3<i32>(-12954i, u_input.b, ~2147483647i), min(max(~reverseBits(var_0.a.c), abs(var_2.b.xx)), vec2<i32>(~countOneBits(u_input.b), reverseBits(_wgslsmith_add_i32(var_0.a.a, 1i)))));
    return -1i;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(u_input.b, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(32131i, 47208i, u_input.b) ^ vec3<i32>(u_input.b, 1i, u_input.b), ~vec3<i32>(u_input.b, -2147483647i, 1i))), abs(vec2<i32>(-32701i, u_input.b))), vec3<bool>(~u_input.b > _wgslsmith_mult_i32(func_3(), u_input.b), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), true), true);
    return Struct_2(var_0.a, select(var_0.b, select(vec3<bool>(all(vec3<bool>(true, var_0.c, var_0.b.x)), true, any(vec3<bool>(true, false, var_0.b.x))), !vec3<bool>(var_0.c, true, false), !var_0.b), vec3<bool>(true, u_input.c.x < max(u_input.a.x, 56546u), false && (var_0.a.b.x >= var_0.a.a))), true);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(u_input.c.x);
    let var_1 = 977f;
    var_0 = func_2(0u);
    let var_2 = var_0.a;
    var_0 = func_2(reverseBits(u_input.d.x));
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_i32(u_input.b, arg_2.a.b.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-229f + _wgslsmith_f_op_f32(floor(-877f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(1000f, -407f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1206f, -610f) - vec2<f32>(-738f, -1000f)))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, -844f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-762f, 173f) * vec2<f32>(-318f, -546f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, 812f, 1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 124f, 1414f) + vec3<f32>(440f, var_0.x, -780f)), vec3<f32>(var_0.x, -829f, 1063f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 850f, -1890f), vec3<f32>(var_0.x, var_0.x, 1514f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(155f, var_0.x, var_0.x))), true)))), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(func_4(func_1(), true, Struct_2(Struct_1(u_input.b, vec3<i32>(-1i, -67969i, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec3<bool>(true, true, false), false))))), -1302f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(729f)))))));
    let var_2 = u_input.b;
    var var_3 = func_2(u_input.a.x);
    var var_4 = var_3.a.b;
    let var_5 = Struct_2(var_3.a, var_3.b, _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1513f + -420f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, var_0.x)) - var_1.yx)));
    let var_6 = vec4<bool>(all(select(vec4<bool>(any(var_3.b), false && var_3.c, var_5.b.x, any(vec2<bool>(var_5.b.x, false))), vec4<bool>(2147483647i > var_4.x, var_3.b.x, all(var_3.b), true), firstLeadingBit(16176u) >= u_input.d.x)), !(!(~var_4.x > _wgslsmith_mod_i32(2147483647i, 1i))), (!any(vec4<bool>(false, false, true, var_5.c)) || true) && !(!all(vec4<bool>(false, var_3.b.x, false, false))), true);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-891f, _wgslsmith_f_op_f32(abs(463f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 370f) - vec2<f32>(-940f, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_3.a.c, _wgslsmith_sub_vec4_u32(abs(u_input.c), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, 4294967295u, u_input.c.x), ~vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.a.x)), _wgslsmith_add_vec4_u32(u_input.c | vec4<u32>(u_input.c.x, u_input.a.x, u_input.d.x, 32147u), select(vec4<u32>(1u, 0u, 17721u, 87602u), u_input.c, vec4<bool>(true, var_3.c, true, false))))));
}

