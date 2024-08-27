struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(ceil(global0.a.x));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(floor(arg_0.a.x)), arg_0.c);
    let var_1 = vec4<u32>(~3568u, ~arg_0.c.x, 1u, ~u_input.b);
    return var_0.c.xz;
}

fn func_1() -> f32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.d, u_input.c.x, -14269i)), ~vec3<i32>(-48127i, u_input.d, u_input.d)), vec2<bool>(true, true))), 442f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + 1005f))))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(ceil(global0.a.x)))), true)), global0.c);
    let var_1 = _wgslsmith_mult_vec4_u32(~max(firstLeadingBit(select(vec4<u32>(global0.c.x, var_0.c.x, u_input.b, 24904u), vec4<u32>(32081u, var_0.c.x, 9402u, u_input.b), false)), ~vec4<u32>(1u, global0.c.x, 0u, 5978u)), vec4<u32>(firstTrailingBit(abs(u_input.b)), 1u, ~(~(15671u | var_0.c.x)), global0.c.x));
    global1 = array<Struct_2, 15>();
    var var_2 = -10695i;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(reverseBits(var_0.c.x), 68317u << (u_input.b % 32u))), _wgslsmith_div_vec2_u32(select(vec2<u32>(_wgslsmith_mult_u32(var_0.c.x, 46752u), 19441u), func_3(global1[_wgslsmith_index_u32(var_1.x >> (u_input.b % 32u), 15u)], vec3<bool>(false, false, true), Struct_1(true)), select(vec2<bool>(true, true), vec2<bool>(false, false), u_input.c.x != 16749i)), var_0.c.yx)), 15u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + -506f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 1019f, -362f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(global0.a.x * 1000f)), vec3<u32>(_wgslsmith_clamp_u32(func_3(global1[_wgslsmith_index_u32(0u, 15u)], vec3<bool>(false, false, true), Struct_1(false)).x, ~u_input.b, _wgslsmith_mod_u32(0u, 16010u)), ~abs(0u), u_input.b) | vec3<u32>(~(~global0.c.x), u_input.b, countOneBits(u_input.b)));
    global0 = var_0;
    global0 = var_0;
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    let var_1 = Struct_2(vec3<f32>(1382f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(392f)))), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), vec3<u32>(func_3(var_0, select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), Struct_1(true)).x, 107530u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.c.x, u_input.b, var_0.c.x), ~vec4<u32>(var_0.c.x, u_input.b, var_0.c.x, global0.c.x))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.x, 509f, 323f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 872f, var_0.a.x) - var_0.a)), vec3<bool>(all(vec2<bool>(true, false)), true, select(false, false, true))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(u_input.b & 1u), 0u, _wgslsmith_clamp_u32(u_input.b, ~69041u, 28975u)), global0.c, ((vec3<u32>(var_0.c.x, 5527u, u_input.b) ^ vec3<u32>(var_1.c.x, 1u, 48227u)) & var_1.c) ^ max(firstLeadingBit(vec3<u32>(var_1.c.x, 1u, global0.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(7817u, 1u, var_1.c.x), vec3<u32>(55028u, 0u, var_0.c.x)))));
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(floor(-2142f));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c.x, 47421u), global0.c.zz) << (min(~vec2<u32>(10738u, 29409u), vec2<u32>(35151u, var_0.c.x)) % vec2<u32>(32u)), vec2<u32>(reverseBits(_wgslsmith_sub_u32(var_1.c.x, u_input.b)), func_3(Struct_2(vec3<f32>(-1000f, var_0.a.x, global0.a.x), var_1.b, var_0.c), vec3<bool>(true, false, true), Struct_1(false)).x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
}

