struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 49024u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global0 = u_input.b;
    var var_0 = ~_wgslsmith_dot_vec3_u32(abs(~u_input.a), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x)))));
    let var_1 = Struct_1(vec2<u32>(abs(4294967295u), 10577u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1629f))), _wgslsmith_f_op_f32(abs(-1078f))));
    let var_2 = ~0u;
    let var_3 = var_1;
    return _wgslsmith_div_f32(-1876f, var_3.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec2<u32> {
    let var_0 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -935f)), 979f);
    var var_1 = u_input.d.x;
    let var_2 = ~(~reverseBits(_wgslsmith_clamp_u32(min(39730u, 22755u), 76306u, 14769u)));
    return ~(~(~vec2<u32>(1u, arg_0.x)) >> (vec2<u32>(~1u, var_2) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~u_input.a;
    global0 = abs(_wgslsmith_add_u32(var_0.x, ~(~_wgslsmith_div_u32(7179u, 4294967295u))));
    let var_1 = arg_0.a.x;
    return Struct_1(vec2<u32>(722u, 1u | max(min(var_0.x, 4138u), 64046u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(round(-1260f))), _wgslsmith_f_op_f32(min(-306f, arg_1.b)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec2<u32>(arg_1.a.x, ~firstLeadingBit(~u_input.b));
    var var_1 = func_4(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(1u, ~4294967295u), firstTrailingBit(vec2<u32>(u_input.b, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b * arg_1.b), 397f, true)) * _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_div_f32(arg_1.b, 385f)))), arg_1);
    global0 = 1u;
    var var_2 = Struct_1(~vec2<u32>(u_input.a.x, 1u), -140f);
    let var_3 = all(select(select(arg_0, select(select(arg_0, vec2<bool>(arg_0.x, true), arg_0.x), arg_0, arg_0.x || false), all(vec2<bool>(arg_0.x, arg_0.x)) || any(vec4<bool>(arg_0.x, arg_0.x, false, false))), arg_0, !arg_0));
    return !select(vec3<bool>(_wgslsmith_add_i32(-158i, u_input.c) == -u_input.c, arg_0.x, select(u_input.a.x, 4294967295u, var_3) < u_input.a.x), !vec3<bool>(false, var_1.b != arg_1.b, false), !select(select(vec3<bool>(false, var_3, arg_0.x), vec3<bool>(true, arg_0.x, true), vec3<bool>(var_3, false, false)), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, true, var_3), vec3<bool>(var_3, false, var_3)), !arg_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global0 = ~(~(arg_0.a.x << (~_wgslsmith_mod_u32(arg_0.a.x, 18983u) % 32u)));
    var var_0 = -1i;
    var var_1 = u_input.c;
    var_0 = 2147483647i;
    var var_2 = !func_5(vec2<bool>(true, true), func_4(Struct_1(func_2(u_input.a.xx, arg_0.b), _wgslsmith_f_op_f32(-arg_0.b)), Struct_1(vec2<u32>(u_input.b, 4294967295u) << (u_input.a.yy % vec2<u32>(32u)), -1014f)));
    return Struct_1(vec2<u32>(1u | ~_wgslsmith_sub_u32(arg_0.a.x, u_input.a.x), min(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.a.x, u_input.b, 4294967295u), vec4<u32>(0u, u_input.b, 122424u, u_input.b)), ~4294967295u)), 1277f);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    return ~(~arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.b;
    global0 = ~(~u_input.a.x);
    let var_0 = Struct_1(vec2<u32>(~(~0u), ~func_6(func_1(Struct_1(vec2<u32>(u_input.b, u_input.a.x), -295f), vec3<u32>(7656u, u_input.a.x, 0u)), Struct_1(u_input.a.yx, -952f), Struct_1(u_input.a.yx, 498f))), _wgslsmith_f_op_f32(f32(-1f) * -670f));
    var var_1 = ~(~vec3<u32>(56539u, select(4294967295u >> (var_0.a.x % 32u), reverseBits(0u), true), ~_wgslsmith_mult_u32(var_0.a.x, 20396u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(648f, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * func_4(Struct_1(var_0.a, var_0.b), var_0).b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * var_0.b)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-499f - 790f))), -230f, true))));
    var var_3 = Struct_1(u_input.a.xx, var_0.b);
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0, var_0).a.x, abs(vec4<u32>(27487u, ~4294967295u, var_1.x, 4294967295u)) >> (vec4<u32>(5018u, ~1u, func_2(var_4.a, var_0.b).x >> (u_input.b % 32u), ~1u) % vec4<u32>(32u)), abs(u_input.c));
}

