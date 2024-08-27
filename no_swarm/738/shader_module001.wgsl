struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(224f, vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_2(-536f, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_2(-1149f, vec2<bool>(true, true), vec3<bool>(false, true, true)), Struct_2(1423f, vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_2(1175f, vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_2(-176f, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_2(-570f, vec2<bool>(false, true), vec3<bool>(true, true, true)), Struct_2(-355f, vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_2(-1085f, vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_2(216f, vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_2(-1930f, vec2<bool>(false, true), vec3<bool>(false, true, false)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32, arg_3: i32) -> f32 {
    return -1498f;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = Struct_2(-1108f, var_0.zz, vec3<bool>(all(!var_0), !(!var_0.x), true));
    return _wgslsmith_f_op_f32(913f - _wgslsmith_f_op_f32(abs(660f)));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-128f - 206f))) < _wgslsmith_f_op_f32(func_3(vec3<i32>(27414i, 1i, u_input.c.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-815f, -1649f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1180f, 241f) + vec2<f32>(192f, 880f)))), u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-818f)) - -1523f) + 261f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-988f * -985f), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec2<f32>(743f, -618f))), vec4<i32>(-3642i, -2588i, 33187i, 0i), u_input.a.x, 2147483647i)))), 739f))), _wgslsmith_f_op_f32(max(-771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-106f, -109f)) * -2191f)))));
    global0 = array<Struct_2, 11>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1281f), 946f, false)) - -1105f)), vec2<bool>(true, true), select(select(vec3<bool>(all(vec3<bool>(false, var_0, true)), var_0 || false, all(vec2<bool>(false, var_0))), vec3<bool>(false & var_0, all(vec2<bool>(false, true)), var_0), true), select(select(!vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, false)), !vec3<bool>(var_0, var_0, var_0)), !select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), var_0), vec3<bool>(all(vec2<bool>(var_0, false)), true, true)), vec3<bool>(var_0, any(vec2<bool>(true, var_0)), true)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a - var_2.a), var_2.a)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(679f, 430f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(func_3(-vec3<i32>(u_input.b.x, u_input.b.x, -1i), Struct_1(vec2<f32>(-550f, 1025f)), u_input.c.x << (u_input.d.x % 32u)))))));
    return vec2<bool>(!(_wgslsmith_clamp_i32(u_input.c.x, u_input.b.x, u_input.c.x >> (u_input.d.x % 32u)) <= _wgslsmith_dot_vec4_i32(select(vec4<i32>(16986i, u_input.c.x, u_input.c.x, -1i), vec4<i32>(u_input.b.x, u_input.c.x, 2147483647i, -17154i), false), vec4<i32>(u_input.b.x, u_input.a.x, 1i, 2147483647i) >> (vec4<u32>(u_input.d.x, 52441u, 75527u, u_input.d.x) % vec4<u32>(32u)))), !(true && (u_input.d.x > u_input.d.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2, _wgslsmith_f_op_vec2_f32(exp2(arg_2)), arg_3.b))) + vec2<f32>(-1237f, _wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(select(arg_2.x, -1118f, true))))));
    global0 = array<Struct_2, 11>();
    var var_1 = 609f;
    var var_2 = vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.c.x, max(u_input.b.x, _wgslsmith_div_i32(5743i, u_input.b.x)) | max(~u_input.c.x, 32541i)), -abs(1i) >> (~_wgslsmith_mult_u32(firstLeadingBit(arg_0.x), 0u) % 32u));
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(17972u), 11u)];
    return global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_0.x, u_input.d.x), 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec2<f32>(-1000f, 606f))), -vec4<i32>(17932i, u_input.c.x, 1i, u_input.a.x), u_input.b.x, u_input.c.x)), 213f))));
    let var_1 = Struct_1(vec2<f32>(-542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1796f * -858f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1168f, 212f)))));
    var var_2 = var_1;
    global0 = array<Struct_2, 11>();
    var var_3 = var_1.a;
    var var_4 = func_4(vec4<u32>(~_wgslsmith_clamp_u32(~0u, ~4294967295u, 4294967295u), 1u, ~u_input.d.x, u_input.d.x), func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_0.a.x)))) * _wgslsmith_f_op_vec2_f32(var_1.a - var_2.a)), Struct_2(var_3.x, vec2<bool>(true, true), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(false, true, false), any(vec3<bool>(false, false, true)))));
    let var_5 = u_input.d;
    var var_6 = vec2<bool>(var_4.c.x, var_4.c.x);
    var var_7 = !select(vec3<bool>(false, any(vec4<bool>(var_6.x, var_4.b.x, var_6.x, true)), true && var_6.x), var_4.c, vec3<bool>(var_4.c.x, true, var_4.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), -18490i)), (_wgslsmith_add_i32(-u_input.a.x, ~0i) >> (abs(max(var_5.x, 0u)) % 32u)) << (4294967295u % 32u), min(~vec3<u32>(var_5.x, var_5.x, u_input.d.x) | vec3<u32>(~var_5.x, 1u, u_input.d.x), u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(321f, 239f, 306f, var_1.a.x), vec4<f32>(214f, -605f, 822f, var_1.a.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_3.x, var_4.a, var_4.a), vec4<f32>(var_0.a.x, var_2.a.x, 571f, var_2.a.x), false))))))), ~(-1i));
}

