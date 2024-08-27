struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 1u);

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(1316f, -995f), vec2<f32>(886f, -177f), vec2<f32>(-2314f, -189f), vec2<f32>(214f, -244f), vec2<f32>(-698f, -616f), vec2<f32>(186f, 786f));

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false, 1543u), Struct_1(true, 26991u), Struct_1(true, 58929u), Struct_1(true, 47901u), Struct_1(false, 0u), Struct_1(false, 54178u), Struct_1(true, 83581u), Struct_1(false, 19738u), Struct_1(true, 80877u), Struct_1(true, 1u), Struct_1(true, 4294967295u), Struct_1(false, 0u), Struct_1(true, 13389u), Struct_1(false, 4294967295u), Struct_1(false, 0u), Struct_1(true, 0u), Struct_1(false, 60355u), Struct_1(true, 55660u), Struct_1(false, 32840u), Struct_1(true, 69625u), Struct_1(false, 1u), Struct_1(false, 13653u), Struct_1(false, 38818u), Struct_1(false, 0u), Struct_1(false, 19776u), Struct_1(false, 4294967295u), Struct_1(false, 1u), Struct_1(true, 1u), Struct_1(false, 1u), Struct_1(false, 30085u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    global2 = array<vec2<f32>, 6>();
    let var_0 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(select(vec2<u32>(0u, u_input.d), select(vec2<u32>(1u, 24872u), vec2<u32>(0u, 51771u), vec2<bool>(global0.a, global0.a)), any(vec3<bool>(true, true, false))), ~(~vec2<u32>(51062u, 4294967295u))), vec2<u32>(u_input.b, global0.b) << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(12706u, 4294967295u) ^ vec2<u32>(global0.b, 707u), ~vec2<u32>(65059u, u_input.d)), ~31787u) % vec2<u32>(32u)), ~(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.d, 68952u), vec2<u32>(global0.b, global0.b), global0.a), firstTrailingBit(vec2<u32>(global0.b, u_input.d)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(886f, 360f, _wgslsmith_f_op_f32(trunc(247f)), _wgslsmith_f_op_f32(abs(587f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f))))) - vec3<f32>(-923f, 154f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-468f + _wgslsmith_div_f32(var_1.x, -682f))))));
    let var_3 = Struct_1(global0.a, ~(~var_0.x) | ~global0.b);
    return select(select(select(select(select(vec3<bool>(var_3.a, global0.a, var_3.a), vec3<bool>(global0.a, false, false), vec3<bool>(true, global0.a, false)), vec3<bool>(true, false, global0.a), vec3<bool>(false, true, false)), vec3<bool>(var_3.a, all(vec3<bool>(false, false, true)), var_3.a), select(select(vec3<bool>(global0.a, false, true), vec3<bool>(global0.a, false, global0.a), global0.a), vec3<bool>(global0.a, global0.a, true), !vec3<bool>(false, var_3.a, global0.a))), vec3<bool>(false, any(!vec3<bool>(true, var_3.a, global0.a)), true), var_3.a), vec3<bool>(u_input.b != max(var_0.x, var_3.b), all(vec2<bool>(false, var_3.a)), global0.a), false);
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = vec3<u32>(abs(global0.b) & _wgslsmith_div_u32(45319u, 1u), global0.b, u_input.b);
    global1 = array<vec3<i32>, 21>();
    global3 = array<Struct_1, 30>();
    let var_1 = Struct_2(func_3());
    let var_2 = ~u_input.e.x;
    return Struct_3(~reverseBits(~max(vec3<u32>(1u, global0.b, 4294967295u), vec3<u32>(53930u, global0.b, u_input.b))), abs(vec3<i32>(abs(_wgslsmith_clamp_i32(0i, 1i, var_2)), select(u_input.e.x, u_input.e.x | -6113i, !global0.a), min(var_2, ~var_2))), 0u);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = -28559i;
    let var_1 = func_2(-754f);
    global2 = array<vec2<f32>, 6>();
    global2 = array<vec2<f32>, 6>();
    let var_2 = Struct_2(vec3<bool>(false || (_wgslsmith_f_op_f32(1134f + arg_0.x) != -509f), all(vec4<bool>(true, select(true, false, true), all(vec4<bool>(true, true, false, true)), global0.a)), 0u < (var_1.a.x ^ ~var_1.c)));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 21>();
    global0 = global3[_wgslsmith_index_u32(~func_1(vec2<f32>(_wgslsmith_f_op_f32(1814f - -548f), _wgslsmith_f_op_f32(f32(-1f) * -1404f))) & abs(20644u >> (1u % 32u)), 30u)];
    global0 = global3[_wgslsmith_index_u32(global0.b, 30u)];
    var var_0 = !vec4<bool>(!all(!vec4<bool>(global0.a, false, global0.a, global0.a)), global0.a, true, all(!(!vec3<bool>(false, false, global0.a))));
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(~u_input.b), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~func_2(-1158f).a), vec3<u32>(u_input.c, abs(8932u), 1u), !var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -288f), vec4<f32>(215f, -222f, 324f, 988f), (u_input.e.x & _wgslsmith_sub_i32(select(28573i, u_input.e.x, var_0.x), u_input.e.x >> (1u % 32u))) ^ _wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(u_input.e.x, -2147483647i), vec2<i32>(0i, u_input.e.x))), u_input.e), -_wgslsmith_add_i32(-(~u_input.e.x), 1i));
}

