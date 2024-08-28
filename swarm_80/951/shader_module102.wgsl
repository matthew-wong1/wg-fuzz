struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(4294967295u, 1u, 36032u, 1824u), 0u, Struct_1(vec4<bool>(true, true, false, true), -1000f, vec2<f32>(-652f, 768f), 0u));

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 53098u), 0u, Struct_1(vec4<bool>(true, false, false, false), -640f, vec2<f32>(-673f, 643f), 32711u)), Struct_2(vec4<u32>(57486u, 0u, 1u, 1u), 4294967295u, Struct_1(vec4<bool>(false, false, false, true), -1000f, vec2<f32>(-361f, 421f), 1u)), Struct_2(vec4<u32>(2754u, 69534u, 60227u, 25718u), 11198u, Struct_1(vec4<bool>(false, false, false, true), -982f, vec2<f32>(-864f, -496f), 4294967295u)), Struct_2(vec4<u32>(62808u, 74082u, 83877u, 4108u), 55628u, Struct_1(vec4<bool>(true, false, true, true), -1223f, vec2<f32>(-809f, 1000f), 25110u)), Struct_2(vec4<u32>(77710u, 0u, 45126u, 7678u), 1u, Struct_1(vec4<bool>(false, true, false, true), -440f, vec2<f32>(185f, -523f), 20956u)), Struct_2(vec4<u32>(8230u, 4294967295u, 16036u, 0u), 5796u, Struct_1(vec4<bool>(false, true, false, false), 139f, vec2<f32>(-230f, 305f), 63734u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 6u)];
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(~(u_input.a.x & (global0.a.x ^ 58751u))), _wgslsmith_clamp_u32(~var_0.a.x & (~u_input.c ^ firstTrailingBit(24562u)), countOneBits(1u), ~(u_input.a.x | u_input.a.x) >> (0u % 32u))), 6u)];
    global0 = global1[_wgslsmith_index_u32(~(~var_0.b), 6u)];
    var var_1 = ~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(4294967295u), var_0.c.d | 36454u, global0.a.x), vec3<u32>(u_input.a.x, 1u, global0.c.d) | ~global0.a.xzx));
    var_1 = abs(~u_input.a.x);
    return select(1u, firstTrailingBit(firstLeadingBit(global0.a.x)), any(vec2<bool>(global0.c.a.x, global0.c.a.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = arg_1;
    global0 = Struct_2(firstTrailingBit(var_0.a) ^ arg_0, 1u, arg_1.c);
    let var_1 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, ~global0.b, 0u, func_3()), _wgslsmith_add_vec4_u32(~arg_0, vec4<u32>(97902u, arg_0.x, u_input.c, 1u) << (vec4<u32>(58826u, arg_2, 34726u, 77990u) % vec4<u32>(32u)))), var_0.a), arg_1.a.x, arg_1.c);
    var var_2 = (u_input.b >> (~countOneBits(firstTrailingBit(9509u)) % 32u)) | 2503i;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c.x - -169f));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global0 = global1[_wgslsmith_index_u32(~4294967295u, 6u)];
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b, 497f, _wgslsmith_div_f32(global0.c.b, global0.c.b), _wgslsmith_f_op_f32(func_2(vec4<u32>(global0.c.d, 48989u, u_input.c, u_input.c), global1[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a.x, global0.c.a.x))))), vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1479f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-467f, -1172f) - 1339f))));
    return Struct_2(~global0.a, ~325u >> (min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 25085u, u_input.c), vec3<u32>(98966u, 1u, 0u)), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a) | 52164u) % 32u), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.c) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1847f, global0.c.c.x), global0.c.c)) + _wgslsmith_f_op_vec2_f32(-global0.c.c)))));
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    let var_0 = global0.c.a.x;
    global1 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

