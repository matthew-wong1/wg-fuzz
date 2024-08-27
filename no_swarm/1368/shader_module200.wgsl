struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(866f - -1291f) + 1014f), _wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -264f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f) - -1000f)))));
    global0 = array<bool, 2>();
    var var_2 = countOneBits(-arg_0 ^ ~vec2<i32>(-28312i, arg_2));
    let var_3 = false;
    return Struct_1(true);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    let var_0 = func_2(arg_2.zy, min(~(select(u_input.a.x, arg_1, arg_0) >> ((arg_1 ^ arg_1) % 32u)), u_input.a.x), _wgslsmith_div_i32(u_input.b, arg_2.x));
    var var_1 = max(1u, 1u);
    var_1 = countOneBits(1u);
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    return reverseBits(arg_1);
}

fn func_1() -> Struct_3 {
    return Struct_3(func_2(vec2<i32>(u_input.b, u_input.b), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(0u, u_input.a.x)), u_input.a.x), 12316i), Struct_1((select(24342u, 11679u, true) >= func_3(global0[_wgslsmith_index_u32(104806u, 2u)], 1u, vec3<i32>(u_input.b, -12740i, u_input.b))) & any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], false), vec4<bool>(global0[_wgslsmith_index_u32(13883u, 2u)], true, global0[_wgslsmith_index_u32(66026u, 2u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(6353u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], false)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2051f, _wgslsmith_f_op_f32(ceil(-186f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, 112f)))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -751f) > _wgslsmith_f_op_f32(round(-1000f))), -1185f, u_input.b, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-495f, _wgslsmith_f_op_f32(max(1288f, 584f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), 0u), Struct_1(min(u_input.b ^ u_input.b, countOneBits(u_input.b)) != -(~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~abs(u_input.a), u_input.a)), vec2<u32>(func_1().d.e, _wgslsmith_dot_vec2_u32(vec2<u32>(38535u, var_0.d.e), select(u_input.a.xx, vec2<u32>(var_0.d.e, u_input.a.x), false)) ^ 8668u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.d.b, var_0.c.x)), -319f) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.d.d, var_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.d.d.x) * vec2<f32>(-1002f, var_0.c.x)))))));
}

