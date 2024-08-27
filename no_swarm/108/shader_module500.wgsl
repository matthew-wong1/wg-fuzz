struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, true), 1u, true, true));

var<private> global1: array<vec3<u32>, 19>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec4<u32> {
    var var_0 = global0.a;
    let var_1 = global0.a.c;
    let var_2 = global0.a;
    return vec4<u32>(~0u, min(6253u, 0u >> (select(u_input.c.x, 1u, true) % 32u)), ~_wgslsmith_mult_u32(global0.a.b, 20479u), global0.a.b);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1843f * _wgslsmith_f_op_f32(step(473f, 221f)))))), 253f));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2766f, _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(select(190f, var_0, false))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(877f, var_0, var_0, -190f) * vec4<f32>(-130f, var_0, 763f, 444f)), vec4<f32>(var_0, var_0, -395f, -159f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1051f)), _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(trunc(var_0))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -737f, var_0) + vec4<f32>(var_1.x, var_0, 195f, 1000f))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1778f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-719f, -1000f, 193f, var_0), vec4<f32>(var_1.x, var_0, var_0, var_0)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-185f, var_0, -183f, var_1.x), vec4<f32>(852f, 1557f, var_0, 627f)))))) + vec4<f32>(339f, _wgslsmith_f_op_f32(-1285f * _wgslsmith_f_op_f32(-var_1.x)), var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0, -271f)), _wgslsmith_f_op_f32(ceil(var_1.x)), global0.a.d != true)))));
    let var_2 = Struct_1(select(vec3<bool>(true, any(vec2<bool>(true, false)), false), !(!vec3<bool>(true, global0.a.a.x, false)), global0.a.a), global0.a.b, (_wgslsmith_f_op_f32(floor(var_0)) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(-981f, var_1.x) - 1053f)) & false, !(!all(global0.a.a)));
    let var_3 = global0.a.b;
    return global0.a.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: bool) -> vec3<bool> {
    var var_0 = Struct_2(global0.a);
    var var_1 = global1[_wgslsmith_index_u32(select(var_0.a.b, countOneBits(_wgslsmith_mod_u32(~4294967295u, firstTrailingBit(0u))) & 4294967295u, (_wgslsmith_mult_u32(1u, ~31803u) >> (firstTrailingBit(abs(1u)) % 32u)) > max((0u >> (global0.a.b % 32u)) | global0.a.b, abs(_wgslsmith_add_u32(u_input.c.x, u_input.c.x)))), 19u)];
    var var_2 = 22840i;
    var var_3 = arg_3;
    var var_4 = _wgslsmith_dot_vec4_u32(abs(func_2() & func_2()), vec4<u32>(7782u, _wgslsmith_mult_u32(56002u, 0u), ~u_input.c.x, 1u));
    return vec3<bool>(!all(select(vec4<bool>(arg_3, true, global0.a.d, global0.a.c), vec4<bool>(true, arg_3, true, var_0.a.a.x), arg_3)), !(-1i >= min(u_input.a.x, 5690i)) || (!(!global0.a.d) | true), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(func_1(vec3<u32>(~2627u, ~global0.a.b, global0.a.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1356f, 239f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-295f, -231f), vec2<f32>(1452f, 454f)))), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(41530u, 9645u)), select(vec2<u32>(u_input.c.x, 12771u), u_input.c.zy, global0.a.a.x)), false), ~0u, !(global0.a.a.x & !global0.a.a.x), true));
    var var_0 = Struct_2(global0.a);
    let var_1 = -((u_input.a.x | -reverseBits(2147483647i)) >> (global0.a.b % 32u));
    global1 = array<vec3<u32>, 19>();
    global0 = Struct_2(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1000f)));
}

