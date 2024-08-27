struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 9>;

var<private> global4: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> u32 {
    let var_0 = -1000f;
    let var_1 = u_input.c;
    global3 = array<Struct_1, 9>();
    let var_2 = var_0;
    var var_3 = ~_wgslsmith_add_u32(0u, 1u);
    return u_input.b;
}

fn func_3() -> f32 {
    global0 = array<i32, 25>();
    global3 = array<Struct_1, 9>();
    global2 = vec3<u32>(~(~_wgslsmith_sub_u32(u_input.c, select(u_input.b, 15616u, false))), ~(~(~global2.x)), global2.x);
    return global4.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(ceil(1f));
    global3 = array<Struct_1, 9>();
    global4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, _wgslsmith_f_op_f32(func_3()), -1000f, var_0.a.x)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.x)), 1000f);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1282f, 903f, var_2.x, 1990f) - vec4<f32>(1211f, var_0.a.x, -1162f, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, 1896f, var_0.a.x, var_1)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.x, 694f, 1123f, var_1)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_2.x, var_2.x, var_2.x)), vec4<f32>(-241f, arg_1.a.x, var_1, -150f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 9>();
    var var_0 = vec2<u32>(func_1(), 1u);
    global0 = array<i32, 25>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(600f, -1475f, 1921f, global4.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, -3138f, 787f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-679f, -196f, 163f, -279f))), _wgslsmith_f_op_vec4_f32(func_2(-27192i, Struct_2(global4.zz))), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false))), vec4<bool>(true, true, true, true))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, 1933f, global4.x, 273f) - vec4<f32>(global4.x, 600f, global4.x, global4.x)) - vec4<f32>(global4.x, -502f, 1029f, -169f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, -2226f, global4.x, 960f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, -324f, -1106f, global4.x)))))))));
    var var_2 = Struct_1(vec4<u32>(firstTrailingBit(u_input.c), _wgslsmith_div_u32(countOneBits(var_0.x), select(countOneBits(global2.x), func_1(), true)), 4294967295u >> (~select(u_input.b, 1u, false) % 32u), _wgslsmith_sub_u32(48184u ^ _wgslsmith_add_u32(0u, global2.x), firstTrailingBit(global2.x))), var_1.xzx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(trunc(1144f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(994f + var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1747f)), _wgslsmith_div_f32(global4.x, var_1.x))));
    var_2 = Struct_1((~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) | firstLeadingBit(abs(vec4<u32>(1u, 0u, u_input.b, u_input.b)))) & reverseBits(vec4<u32>(var_0.x & var_0.x, _wgslsmith_sub_u32(0u, 0u), u_input.b, firstTrailingBit(1u))), global4.wxx, var_2.c);
    global0 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(2895u, _wgslsmith_mod_u32(4294967295u, u_input.c ^ global2.x)), 4294967295u, _wgslsmith_div_u32(var_2.a.x, var_2.a.x << (func_1() % 32u))), u_input.a.x, abs(~abs(-vec3<i32>(57019i, global0[_wgslsmith_index_u32(45395u, 25u)], 10998i))), var_2.a);
}

