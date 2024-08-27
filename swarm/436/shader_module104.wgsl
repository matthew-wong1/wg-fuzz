struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-301f, 208f), vec2<f32>(175f, 703f), vec2<f32>(105f, 576f), vec2<f32>(-415f, 586f), vec2<f32>(157f, -301f), vec2<f32>(787f, 134f), vec2<f32>(-758f, 1000f), vec2<f32>(1632f, 136f), vec2<f32>(131f, 1000f), vec2<f32>(1213f, 149f), vec2<f32>(-154f, 2059f), vec2<f32>(353f, 1000f), vec2<f32>(317f, 314f), vec2<f32>(690f, -952f));

var<private> global1: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: f32) -> i32 {
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2.b;
    var var_1 = arg_2;
    var var_2 = 2147483647i;
    let var_3 = arg_2.a;
    var var_4 = Struct_2(Struct_1(arg_2.a, _wgslsmith_f_op_f32(var_1.b - 438f)), true);
    return countOneBits(arg_1);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(arg_0.b - -1000f));
    let var_1 = Struct_2(arg_0, (arg_2 | (~arg_2 ^ 1u)) <= (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(16457u, 50819u, arg_2, 4294967295u)), vec4<u32>(arg_2, 1u, 0u, arg_2)) ^ _wgslsmith_sub_u32(~1u, 40755u)));
    global0 = array<vec2<f32>, 14>();
    let var_2 = -select(u_input.a.x, _wgslsmith_dot_vec2_i32(max(u_input.a.wx, u_input.a.wy), u_input.a.yz), !arg_0.a) == 11811i;
    var var_3 = Struct_1(!arg_0.a, 507f);
    return Struct_2(Struct_1(false, var_1.a.b), !(-arg_1 >= reverseBits(~2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~1u, 38445u, ~23379u);
    global1 = true;
    let var_1 = func_3(Struct_1((~(-2147483647i) <= func_1(true, 1448f)) || true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(863f * 1264f), _wgslsmith_f_op_f32(f32(-1f) * -741f))))), func_2(u_input.a.x, u_input.a.x, Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), ~(~(var_0.x & 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = true;
    var var_2 = func_3(Struct_1(var_1.b || true, -1000f), ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(583i, 22254i, u_input.a.x) >> (vec3<u32>(1u, var_0.x, 4294967295u) % vec3<u32>(32u)), select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zzx, vec3<bool>(true, false, false)), select(vec3<bool>(var_1.a.a, true, true), vec3<bool>(var_1.a.a, var_1.a.a, var_1.b), vec3<bool>(false, var_1.a.a, var_1.b))), _wgslsmith_add_vec3_i32(u_input.a.yxz, vec3<i32>(-2147483647i, 2147483647i, u_input.a.x)) >> (~vec3<u32>(var_0.x, 8684u, var_0.x) % vec3<u32>(32u))), _wgslsmith_sub_u32(var_0.x << (~989u % 32u), var_0.x), var_1.a.b);
    let var_3 = Struct_2(var_1.a, all(select(vec2<bool>(any(vec3<bool>(true, true, false)), var_1.a.a), select(!vec2<bool>(var_1.b, var_1.a.a), vec2<bool>(true, true), select(true, true, true)), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_1.a.b) + _wgslsmith_f_op_f32(-var_1.a.b)), var_1.a.b) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(34646u, 14u)]) * global0[_wgslsmith_index_u32(1u, 14u)])))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2045f, _wgslsmith_f_op_f32(func_3(Struct_1(false, var_2.a.b), u_input.a.x, var_0.x, var_1.a.b).a.b - _wgslsmith_f_op_f32(sign(var_2.a.b)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.a.b - var_1.a.b), _wgslsmith_f_op_f32(abs(var_3.a.b)))));
}

