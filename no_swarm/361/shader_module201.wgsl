struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global1: array<vec4<i32>, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = true;
    let var_1 = (15433u != ~_wgslsmith_add_u32(arg_1.a.a.x | arg_1.a.a.x, 4294967295u << (0u % 32u))) && all(vec4<bool>(any(vec2<bool>(arg_1.b.x, false)), !arg_1.b.x, true, arg_1.b.x));
    let var_2 = Struct_4(arg_1.a, ~vec4<u32>(max(firstTrailingBit(u_input.a), firstTrailingBit(arg_1.c.a.x)), 31586u, ~4294967295u, 0u), Struct_1(vec2<u32>(~4294967295u, 4294967295u)), 1u, vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.a.x, 4294967295u), arg_1.a.a), u_input.d), global0.x, reverseBits(~4294967295u), ~u_input.a));
    return 695f;
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    global0 = vec2<u32>(4294967295u, 12594u);
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1188f) - _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(min(u_input.b, 68474u), 26u)], Struct_2(Struct_1(arg_0.yz), vec2<bool>(true, false), Struct_1(vec2<u32>(0u, 1u)), global0.x), arg_0.x | 1u))), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1093f, 137f)), _wgslsmith_f_op_f32(-1001f - 191f), any(vec3<bool>(true, false, true)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(531f, -1059f, 362f, -403f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1277f, _wgslsmith_f_op_f32(-414f - 106f), -1000f, -233f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-338f, -191f, -334f, -312f) - vec4<f32>(-744f, -737f, 559f, -216f))))), vec4<bool>(all(vec2<bool>(false, false)), true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), true))));
    let var_1 = Struct_1(select(vec2<u32>(u_input.b, global0.x), ~arg_0.wx, false));
    global0 = vec2<u32>(4294967295u, select(u_input.a, firstTrailingBit(1196u), false));
    let var_2 = u_input.c.x;
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 25766u), var_1.a) >> (u_input.d % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_1.a.x), vec2<u32>(0u, 66149u)))), _wgslsmith_div_u32(~(~1u), 16528u)), vec2<u32>(_wgslsmith_add_u32(1u, select(min(33429u, 0u), _wgslsmith_mult_u32(1u, 0u), any(vec4<bool>(true, false, false, true)))), 45584u));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_4(Struct_1(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(global0.x, u_input.b)), ~vec2<u32>(3806u, u_input.a)) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, global0.x) << (vec2<u32>(33209u, 34061u) % vec2<u32>(32u)), func_2(vec4<u32>(0u, 1u, 0u, u_input.d)))), vec4<u32>(~global0.x, abs(global0.x), _wgslsmith_sub_u32(50686u, ~u_input.d) >> (1u % 32u), select(_wgslsmith_div_u32(1u, ~u_input.d), global0.x, true)), Struct_1(select(select(vec2<u32>(4294967295u, u_input.d), ~vec2<u32>(58884u, u_input.b), false), vec2<u32>(~1u, ~global0.x), all(vec2<bool>(false, true)))), func_2(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, u_input.a, 9977u, u_input.a), vec4<u32>(u_input.a, u_input.b, global0.x, 1u)), firstLeadingBit(vec4<u32>(global0.x, u_input.b, 38853u, 4294967295u)))).x, vec4<u32>(4294967295u, 12304u, u_input.d, 62500u) | vec4<u32>(_wgslsmith_div_u32(~89106u, max(137186u, 1u)), abs(min(u_input.b, 0u)), global0.x, u_input.a));
    let var_1 = !(!select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(false, true, true)));
    let var_2 = 34000i;
    var var_3 = 1i;
    let var_4 = var_0;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 26>();
    var var_0 = ~(~_wgslsmith_sub_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, u_input.d, u_input.d, u_input.a), vec4<u32>(global0.x, 23483u, u_input.b, global0.x)), countOneBits(vec4<u32>(45564u, global0.x, global0.x, u_input.d)), func_1(vec3<i32>(u_input.e.x, -11629i, u_input.c.x))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 5421u, 1u, 1u), vec4<u32>(global0.x, 10442u, 0u, 4294967295u)), ~vec4<u32>(9134u, 0u, global0.x, 0u))));
    global1 = array<vec4<i32>, 26>();
    let var_1 = vec4<u32>(u_input.d, _wgslsmith_mod_u32(5441u, _wgslsmith_mod_u32(global0.x, 1u)) | _wgslsmith_sub_u32(min(~u_input.a, 4294967295u), 56934u), 54424u, var_0.x);
    let var_2 = Struct_4(Struct_1(vec2<u32>(firstLeadingBit(var_0.x) ^ 4294967295u, var_0.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, 21794u, 4294967295u, 25683u), ~min(vec4<u32>(7871u, 4294967295u, 3747u, u_input.b), var_1))), Struct_1(~(~vec2<u32>(global0.x, 83867u))), 0u, countOneBits(~(~var_1)));
    var var_3 = u_input.c.x;
    var_3 = -25842i;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x, var_1.yw & firstTrailingBit(~var_1.xy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec4<i32>(u_input.c.x, -1600i, u_input.c.x, u_input.e.x), Struct_2(Struct_1(vec2<u32>(22314u, var_2.a.a.x)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), Struct_1(vec2<u32>(17135u, 88995u)), ~4294967295u), u_input.d ^ ~var_1.x))));
}

