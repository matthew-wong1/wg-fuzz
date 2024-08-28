struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
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

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(4294967295u, 1u, 106746u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 61136u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(19138u, 14880u, 2696u), vec3<u32>(74550u, 40520u, 11448u), vec3<u32>(4294967295u, 55443u, 36819u), vec3<u32>(0u, 40026u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 31172u, 0u), vec3<u32>(0u, 47913u, 4294967295u), vec3<u32>(57993u, 82409u, 4294967295u), vec3<u32>(0u, 36264u, 1u), vec3<u32>(60095u, 0u, 50810u), vec3<u32>(39802u, 31066u, 0u), vec3<u32>(46305u, 26384u, 88070u), vec3<u32>(4294967295u, 1u, 31392u), vec3<u32>(52759u, 1u, 7871u), vec3<u32>(21327u, 10858u, 11827u), vec3<u32>(69936u, 71424u, 21404u), vec3<u32>(1u, 35806u, 44211u), vec3<u32>(4294967295u, 28381u, 21845u));

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(-1023f, vec4<f32>(262f, -201f, 1004f, -856f)), Struct_1(-847f, vec4<f32>(478f, -984f, 104f, 116f))), true, Struct_1(-655f, vec4<f32>(-510f, 805f, 239f, 639f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_mod_u32(u_input.b, u_input.b);
    let var_1 = vec4<u32>(u_input.a.x, min(u_input.d.x, _wgslsmith_sub_u32(1u, ~u_input.b)), u_input.a.x, u_input.b);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global2.a.b.a + _wgslsmith_f_op_f32(select(global2.a.b.b.x, _wgslsmith_f_op_f32(-global2.c.a), true))), global2.a.a.b);
    global0 = array<Struct_3, 9>();
    global1 = array<vec3<u32>, 23>();
    return u_input.a.x;
}

fn func_2() -> bool {
    var var_0 = vec4<u32>(26305u, ~u_input.a.x & ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(27333u, u_input.d.x), vec2<u32>(4294967295u, u_input.a.x))), _wgslsmith_div_u32(u_input.c.x, _wgslsmith_mod_u32(abs(u_input.a.x) & (u_input.c.x | u_input.a.x), countOneBits(~u_input.a.x))), u_input.a.x);
    global0 = array<Struct_3, 9>();
    var var_1 = vec4<bool>(!global2.b, global2.b, true, false);
    var_1 = !(!vec4<bool>(true, !var_1.x, all(!vec4<bool>(false, var_1.x, var_1.x, true)), true));
    var var_2 = Struct_1(_wgslsmith_div_f32(global2.a.a.a, global2.a.a.b.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.b.x) + global2.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a.b.x - global2.a.a.a))), 703f, 261f));
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<bool>) -> StorageBuffer {
    var var_0 = -71717i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-global2.c.b.zyx);
    global2 = Struct_3(global2.a, true, Struct_1(_wgslsmith_f_op_f32(-1228f - _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(507f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.a.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a.a.a, -699f)) - -171f))));
    global0 = array<Struct_3, 9>();
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    return StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1, ~u_input.c, abs(arg_1)), vec4<u32>(_wgslsmith_add_u32(1u, arg_1.x), 1u, ~31661u, ~72169u)), ~arg_0.x, ~57940u | (~0u & ~arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 9>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.c.b + global2.c.b) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a + global2.c.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.a.b.x))), _wgslsmith_f_op_f32(-global2.c.a), _wgslsmith_f_op_f32(round(-1197f))));
    let var_1 = global2.a.a;
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-685f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a + 1046f), -933f)), var_0.x, 1869f))));
    let var_2 = vec3<u32>(1u, ~_wgslsmith_clamp_u32(firstLeadingBit(u_input.c.x), ~(~u_input.c.x), ~(~90906u)), ~56628u);
    var_0 = global2.c.b;
    let x = u_input.a;
    s_output = func_3(var_2.zx, vec4<u32>(func_1(), var_2.x, ~u_input.c.x, _wgslsmith_sub_u32(~u_input.c.x >> (var_2.x % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(var_2.xy, u_input.a)))), ~func_1(), vec3<bool>(global2.b, !(!func_2()), true));
}

