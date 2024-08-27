struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-1656f, -2236f, 1394f, -618f, -2219f);

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1;
    var var_1 = var_0.a;
    var var_2 = ~abs(~var_0.a.a);
    global0 = array<f32, 5>();
    var_1 = var_0.a;
    return -1152f;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = array<f32, 5>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 804f) + _wgslsmith_f_op_f32(-320f * -739f)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(select(any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true)), true), Struct_2(Struct_1(_wgslsmith_clamp_u32(u_input.a, 93354u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), 1i, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 45257i, u_input.b.x, 11904i), vec4<i32>(11250i, u_input.b.x, u_input.b.x, u_input.b.x))), global1[_wgslsmith_index_u32(~abs(0u), 15u)], all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))))), _wgslsmith_f_op_f32(439f - _wgslsmith_f_op_f32(-arg_0)));
    var var_1 = 31935i;
    var var_2 = Struct_1(1u, ~(~countOneBits(~vec4<u32>(u_input.a, 0u, 4294967295u, 31083u))), u_input.b.x, _wgslsmith_mod_vec4_i32(~(-countOneBits(vec4<i32>(u_input.b.x, 31246i, -1i, u_input.b.x))), abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -21607i), vec2<i32>(-3960i, -1i)), u_input.b.x, -1i & u_input.b.x, u_input.b.x ^ -13958i))));
    return StorageBuffer(var_2.b.zzy, _wgslsmith_add_u32(103131u, 77500u), var_2.b.zz, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b.x, 1u) >> (var_2.b.zz % vec2<u32>(32u)), var_2.b.ww, max(var_2.b.wx, select(var_2.b.yz, vec2<u32>(52627u, u_input.a), vec2<bool>(true, false)))), _wgslsmith_clamp_vec2_u32(var_2.b.wy >> (_wgslsmith_sub_vec2_u32(var_2.b.zy, vec2<u32>(u_input.a, 32266u)) % vec2<u32>(32u)), var_2.b.yz, ~firstTrailingBit(vec2<u32>(1u, 10413u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 136f;
    global1 = array<vec3<i32>, 15>();
    var var_1 = ~(~abs(~vec2<u32>(u_input.a, u_input.a))) & vec2<u32>(u_input.a, 4294967295u);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(123f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.x, 5u)], -1000f)))) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~62475u, 5u)])));
}

