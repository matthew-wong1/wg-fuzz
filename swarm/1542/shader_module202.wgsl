struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: Struct_3,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<i32, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> bool {
    let var_0 = countOneBits(u_input.c);
    global1 = array<i32, 26>();
    var var_1 = 287f;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(arg_1.a.x, arg_1.a.x, 248f))))), arg_1.a));
    global1 = array<i32, 26>();
    return !(arg_0.b <= (_wgslsmith_mod_u32(1u, var_0.x & 1u) | 63564u));
}

fn func_2() -> Struct_3 {
    global1 = array<i32, 26>();
    var var_0 = Struct_1(!all(vec2<bool>(true, true)) & true);
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    var var_1 = select(vec4<bool>(false, var_0.a, true, var_0.a), !vec4<bool>(func_3(Struct_3(Struct_1(var_0.a), 90773u, Struct_1(var_0.a), Struct_2(Struct_1(false))), Struct_5(vec3<f32>(756f, 1354f, -524f))), true, var_0.a, true), !(!select(select(vec4<bool>(false, var_0.a, true, var_0.a), vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(var_0.a, var_0.a, false, true)), select(vec4<bool>(false, false, true, var_0.a), vec4<bool>(false, var_0.a, true, true), vec4<bool>(var_0.a, false, var_0.a, false)), !vec4<bool>(true, var_0.a, var_0.a, var_0.a))));
    return Struct_3(Struct_1(var_1.x), abs(1u), Struct_1(!var_0.a), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.c.x), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.c.x), ~vec4<u32>(u_input.b.x, u_input.c.x, 13308u, u_input.c.x))), 12u)]);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    global0 = array<Struct_2, 12>();
    let var_0 = func_2();
    var var_1 = func_2().d.a;
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return min(u_input.b.x | _wgslsmith_mod_u32(select(u_input.c.x, 93057u, arg_0.x), ~u_input.b.x), firstTrailingBit(u_input.c.x)) ^ min(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(114974u, u_input.b.x, 41471u, 13682u)), ~firstLeadingBit(vec4<u32>(u_input.b.x, u_input.c.x, 29849u, u_input.b.x))), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(u_input.b.x, 0u);
    var var_1 = ~(~(~vec4<u32>(u_input.b.x, 1u, u_input.c.x, u_input.c.x) << (vec4<u32>(~var_0, 4294967295u << (var_0 % 32u), var_0 & 56780u, 4386u) % vec4<u32>(32u))));
    var var_2 = global0[_wgslsmith_index_u32(1u, 12u)];
    var_1 = vec4<u32>(~(~_wgslsmith_add_u32(func_1(vec3<bool>(var_2.a.a, var_2.a.a, true), -815f), ~var_0)), _wgslsmith_clamp_u32(0u, u_input.c.x, countOneBits(~1u)), var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(82474u, min(u_input.c.x, min(var_0, 25230u))), vec2<u32>(abs(1u), 38875u)));
    global0 = array<Struct_2, 12>();
    let var_3 = Struct_1(any(vec2<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(var_0, 1u)) < ~u_input.c.x)));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-319f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(firstLeadingBit(58817u), var_0 | var_1.x, var_0, max(95711u, 39169u)) >> (vec4<u32>(var_0 >> (var_0 % 32u), var_0, var_1.x >> (1u % 32u), select(0u, 0u, false)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -385f), 377f)), _wgslsmith_f_op_f32(876f * _wgslsmith_f_op_f32(round(-841f)))))), vec3<f32>(_wgslsmith_f_op_f32(2595f - _wgslsmith_f_op_f32(-774f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-799f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-407f, _wgslsmith_f_op_f32(floor(699f))) * 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-600f, 1000f), vec2<f32>(-280f, 1953f))))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-1010f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(691f * 1000f), 654f))));
}

