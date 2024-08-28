struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(51110u, 1u), Struct_1(24717u), Struct_1(53158u), vec2<f32>(-1083f, 1287f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(reverseBits(~(~(vec4<u32>(global0.a.x, u_input.a.x, 6414u, u_input.a.x) << (vec4<u32>(4294967295u, 5815u, global0.c.a, 41720u) % vec4<u32>(32u))))), 0i << (abs(global0.c.a) % 32u), select(true, !(select(true, true, true) || false), all(vec3<bool>(true, true, true))));
    let var_1 = Struct_3(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(25683u, 45610u, u_input.c.x & global0.a.x, ~u_input.c.x), _wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(17116u, 4294967295u, var_0.a.x, 4294967295u)))), Struct_1(~12307u), Struct_1(~(~(~4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, -1501f) * global0.d) - _wgslsmith_f_op_vec2_f32(-global0.d))))));
    global0 = Struct_3(var_0.a.yy << (~firstLeadingBit(vec2<u32>(var_0.a.x, 6671u)) % vec2<u32>(32u)), Struct_1(var_0.a.x), Struct_1(var_0.a.x), var_1.d);
    let var_2 = global0.b;
    return global0.a;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_3 {
    global0 = Struct_3(~u_input.a >> (global0.a % vec2<u32>(32u)), global0.c, Struct_1(4294967295u), global0.d);
    let var_0 = 29167u & (76028u | ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, global0.b.a, u_input.a.x), u_input.c)));
    let var_1 = global0.c;
    var var_2 = Struct_3(~_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(46310u >> (var_1.a % 32u), ~u_input.a.x)), global0.b, Struct_1(select(~var_1.a, global0.a.x, any(vec3<bool>(true, true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(global0.d, global0.d)))), _wgslsmith_f_op_vec2_f32(exp2(global0.d)))), global0.d));
    global0 = Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, 4294967295u), _wgslsmith_add_vec2_u32(~(~global0.a), select(var_2.a, func_3(), arg_1.x != u_input.b)), ~global0.a), global0.c, Struct_1(min(reverseBits(1u), firstLeadingBit(47794u))), global0.d);
    return Struct_3(u_input.c.yz & _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~4294967295u), var_2.a), global0.c, global0.b, var_2.d);
}

fn func_1() -> bool {
    var var_0 = Struct_3(u_input.a, global0.b, global0.c, global0.d);
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, global0.d.x)))), ~(~vec4<i32>(abs(u_input.b), _wgslsmith_add_i32(u_input.b, 19543i), _wgslsmith_clamp_i32(1i, u_input.b, u_input.b), firstLeadingBit(-15631i))));
    let var_1 = global0.d;
    let var_2 = _wgslsmith_f_op_f32(-1238f + _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(505f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(444f)), _wgslsmith_f_op_f32(-var_0.d.x))))));
    var_0 = Struct_3(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 44602u, 0u), vec3<u32>(0u, global0.c.a, var_0.c.a)) & 6224u, global0.c.a), global0.c, global0.c, func_2(_wgslsmith_div_f32(-1234f, -709f), _wgslsmith_clamp_vec4_i32(vec4<i32>(-98460i, -2147483647i, u_input.b, 0i), vec4<i32>(-8382i, -9759i, -18872i, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b) | vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)) >> (~vec4<u32>(var_0.a.x, var_0.c.a, global0.a.x, 36692u) % vec4<u32>(32u))).d);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 + var_0.d.x), _wgslsmith_f_op_f32(853f * -2012f)))) - 1f) == _wgslsmith_f_op_f32(var_1.x - -387f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1())), false, true);
    var var_1 = Struct_1(26363u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-global0.d);
    var var_3 = global0.b;
    var var_4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(-276f)), -876f, _wgslsmith_f_op_f32(-var_2.x), -1209f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, global0.d.x, var_2.x))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.d.x), var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(616f + var_2.x)))))));
    var var_5 = ~vec2<u32>(var_3.a, select(select(func_2(-519f, vec4<i32>(-17398i, -1i, u_input.b, u_input.b)).c.a, ~75360u, true), countOneBits(var_3.a), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, var_5.x, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 1u, var_5.x, 0u)) & abs(vec4<u32>(0u, var_3.a, 45570u, 24713u)), vec4<u32>(global0.c.a, firstTrailingBit(0u), var_1.a << (var_3.a % 32u), firstLeadingBit(1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~37231u, _wgslsmith_div_u32(4294967295u, 1u), 44309u, _wgslsmith_add_u32(var_5.x, 4294967295u)), firstTrailingBit(~vec4<u32>(var_3.a, 4294967295u, var_5.x, 1u)))));
}

