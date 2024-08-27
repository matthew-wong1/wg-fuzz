struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 122967u;

var<private> global2: vec3<i32> = vec3<i32>(1i, 1i, -65421i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    global1 = 4294967295u;
    let var_0 = arg_1;
    let var_1 = (all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), arg_0.x > global2.x)) | true) & true;
    global0 = u_input.b.x;
    let var_2 = select(vec2<bool>(true, true), select(!(!vec2<bool>(true, var_1)), select(select(vec2<bool>(var_1, true), !vec2<bool>(var_1, false), any(vec4<bool>(false, var_1, var_1, var_1))), select(select(vec2<bool>(var_1, true), vec2<bool>(var_1, false), vec2<bool>(var_1, var_1)), vec2<bool>(true, var_1), var_1), vec2<bool>(true, false)), any(select(!vec3<bool>(false, false, var_1), vec3<bool>(var_1, false, true), any(vec3<bool>(var_1, false, var_1))))), select(select(vec2<bool>(var_1, true), vec2<bool>(var_1, select(var_1, true, false)), true), vec2<bool>(any(select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), vec2<bool>(false, var_1))), var_1), select(vec2<bool>(true, true), vec2<bool>(false, false), any(!vec3<bool>(var_1, true, var_1)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1117f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) - _wgslsmith_f_op_f32(arg_1.a.x - var_0.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1985f, -1188f) + _wgslsmith_f_op_f32(ceil(-160f)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = abs(abs(_wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(arg_2.b, arg_2.b, 6630i, -2147483647i)), vec4<i32>(global2.x, -43689i, _wgslsmith_add_i32(arg_0.x, 13631i), arg_2.b))));
    global1 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(arg_2.b, -10542i, arg_2.b), arg_2, abs(10584u))) * arg_1.x)));
    let var_2 = arg_2;
    let var_3 = -var_0.zw;
    return _wgslsmith_add_u32(u_input.a, min(u_input.c.x, u_input.b.x)) >= u_input.c.x;
}

fn func_1() -> u32 {
    let var_0 = !vec4<bool>(!(func_2(vec4<i32>(-12730i, global2.x, global2.x, global2.x), vec3<f32>(1891f, -127f, 694f), Struct_1(vec3<f32>(956f, 177f, 783f), -45243i), true) && true), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), true, any(vec4<bool>(u_input.c.x > 43670u, false, true, true)));
    global1 = _wgslsmith_mod_u32(abs(u_input.c.x), 84864u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(224f, -778f, -939f), vec3<f32>(-923f, -757f, -193f)))))), 1i);
    let var_2 = vec3<u32>(4294967295u, 1u, ~_wgslsmith_clamp_u32(u_input.c.x, ~0u, select(u_input.a, u_input.b.x, var_0.x)) & u_input.c.x);
    global2 = -min(-vec3<i32>(_wgslsmith_mod_i32(global2.x, global2.x), var_1.b, -2147483647i), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(22597i, 2147483647i, global2.x), vec3<i32>(var_1.b, 0i, global2.x), ~vec3<i32>(var_1.b, global2.x, 32009i))));
    return 1u & ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(_wgslsmith_add_i32(-global2.x, i32(-1i) * -1i) & min(i32(-1i) * -2147483647i, -global2.x));
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(select(u_input.a, 4294967295u, true), ~u_input.a, func_1()), vec3<u32>(64007u, u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(4294967295u, 4294967295u, u_input.c.x), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)), ~vec3<u32>(u_input.a, u_input.c.x, u_input.b.x)))), vec3<u32>(~4294967295u, _wgslsmith_mod_u32(~37228u, max(12993u, 1u)), ~(~u_input.a)) >> (select(max(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.a), vec3<u32>(u_input.a, u_input.a, 9850u)), countOneBits(vec3<u32>(0u, u_input.c.x, u_input.c.x))), vec3<u32>(0u, 4294967295u, 62599u) << (~vec3<u32>(u_input.b.x, 1u, 0u) % vec3<u32>(32u)), !all(vec2<bool>(false, true))) % vec3<u32>(32u)));
    let var_2 = ~vec4<i32>(select(-36596i << (select(55177u, 14047u, false) % 32u), _wgslsmith_sub_i32(~(-46189i), 0i), 1u >= _wgslsmith_add_u32(u_input.a, var_1.x)), 0i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(firstTrailingBit(9547i), 41627i, 43915i), abs(i32(-1i) * -2147483647i)), max(-70849i, select(-2147483647i, 46408i, true)) | -6558i);
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(425f - 1121f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(205f)))), _wgslsmith_f_op_f32(f32(-1f) * -764f)), -1i);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * _wgslsmith_f_op_f32(sign(var_3.a.x))), -1238f, 855f) + vec3<f32>(_wgslsmith_f_op_f32(min(-457f, -545f)), 2265f, var_3.a.x)), var_0);
    global2 = vec3<i32>(-var_3.b, -2147483647i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(441f, 1864f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(313f, var_4.a.x)))))));
}

