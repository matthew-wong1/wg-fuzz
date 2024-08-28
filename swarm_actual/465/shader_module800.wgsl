struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(15371u, 1u), vec2<u32>(5617u, 4294967295u), vec2<u32>(19380u, 4294967295u), vec2<u32>(55703u, 37704u), vec2<u32>(4897u, 43121u), vec2<u32>(1u, 3712u), vec2<u32>(1u, 5632u), vec2<u32>(24551u, 1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global0 = array<vec2<u32>, 8>();
    var var_0 = !(!vec3<bool>(false, u_input.b.x > max(12236i, u_input.a), true));
    let var_1 = vec3<i32>(u_input.a, -37147i, -(i32(-1i) * -1i));
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    return select(70041u, u_input.c.x, all(!vec4<bool>(true && var_0.x, var_0.x, true, var_0.x & false)));
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<u32>, 8>();
    return Struct_2(Struct_1(2147483647i, ~abs(u_input.c.x)), Struct_1(~u_input.b.x, max(_wgslsmith_div_u32(~u_input.c.x, func_3()), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x) >> (u_input.c.x % 32u))), Struct_1(7675i, func_3()), vec3<i32>(u_input.a, _wgslsmith_div_i32(-2147483647i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 2147483647i, -27131i), vec4<i32>(-1i, -53559i, -42790i, 29109i)))), u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0.b;
    let var_1 = arg_0.c;
    let var_2 = ~u_input.b.xw;
    var var_3 = func_2();
    global0 = array<vec2<u32>, 8>();
    return var_1;
}

fn func_1() -> bool {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(select(firstTrailingBit(vec2<i32>(36467i, -2147483647i)), -vec2<i32>(-1i, 0i) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, true, true)))), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-25189i, u_input.b.x)), -2147483647i), min(vec2<i32>(-1i, -2147483647i), ~firstLeadingBit(vec2<i32>(-38947i, 19857i)))));
    var var_1 = func_4(func_2(), true);
    var var_2 = Struct_2(func_4(Struct_2(Struct_1(_wgslsmith_add_i32(-2147483647i, var_1.a), 1u), func_2().b, func_2().a, vec3<i32>(u_input.b.x, -2147483647i | u_input.a, i32(-1i) * -76141i)), true), func_4(Struct_2(func_4(func_2(), any(vec2<bool>(false, true))), Struct_1(~(-2147483647i), 47663u), func_4(func_2(), var_1.b < 0u), vec3<i32>(~u_input.b.x, -1i, var_0.x)), !(!all(vec3<bool>(false, true, false)))), func_4(func_2(), any(vec4<bool>(true, any(vec4<bool>(true, true, false, true)), true, false))), vec3<i32>(func_4(func_2(), false).a, firstTrailingBit(u_input.a), firstLeadingBit(6843i)));
    var var_3 = var_2.d.x << (4294967295u % 32u);
    let var_4 = u_input.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    let var_0 = ~36894u ^ u_input.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(675f * 508f) - _wgslsmith_f_op_f32(round(-1619f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(537f)))), _wgslsmith_f_op_f32(-891f * _wgslsmith_f_op_f32(f32(-1f) * -812f))))));
    global0 = array<vec2<u32>, 8>();
    let var_2 = all(!(!vec3<bool>(func_1(), false, true)));
    let var_3 = Struct_2(func_4(func_2(), !((-1038f != var_1.x) | select(true, false, var_2))), Struct_1(u_input.a, 6289u), Struct_1(~27709i & -(~u_input.a), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), abs(u_input.c.x)) ^ _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(42119u, 27547u, 42047u)), ~vec3<u32>(u_input.c.x, u_input.c.x, 1u))), _wgslsmith_clamp_vec3_i32(-max(u_input.b.zxy, func_2().d), ~firstTrailingBit(u_input.b.zww) >> (~(~vec3<u32>(49253u, 1u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, u_input.a)) & u_input.b.yzw));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(789f, var_1.x, 731f, var_1.x), vec4<f32>(-683f, var_1.x, -1815f, -518f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(762f, -112f, -1144f, var_1.x)), true))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(314f, var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-337f, var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 391f, -944f, -1203f) - vec4<f32>(2002f, 1043f, 864f, var_1.x))) * vec4<f32>(_wgslsmith_div_f32(2619f, -709f), var_1.x, var_1.x, _wgslsmith_f_op_f32(min(var_1.x, -1470f))))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a);
}

