struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    global0 = array<Struct_2, 2>();
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~(~20275u)), 2u)];
    global0 = array<Struct_2, 2>();
    return select(vec3<bool>(select(!(!var_0.b.b.x), !(!var_0.b.b.x), true), var_0.b.b.x, !var_0.b.b.x), select(select(var_0.b.b, select(var_0.b.b, vec3<bool>(var_0.b.b.x, var_0.b.b.x, true), var_0.b.c <= var_0.b.c), false), vec3<bool>(var_0.b.b.x != true, false, var_0.b.b.x), var_0.b.b.x), var_0.b.b);
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = Struct_2(vec2<f32>(arg_0.a.x, arg_0.a.x), Struct_1(arg_0.b.a ^ ~(~arg_0.b.a), !vec3<bool>(!arg_0.b.b.x, arg_0.b.b.x & arg_0.b.b.x, arg_0.b.b.x), firstTrailingBit(firstLeadingBit(~arg_0.b.c))));
    let var_1 = !(!select(select(select(vec4<bool>(false, false, arg_0.b.b.x, false), vec4<bool>(arg_0.b.b.x, false, var_0.b.b.x, arg_0.b.b.x), true), vec4<bool>(var_0.b.b.x, false, var_0.b.b.x, false), vec4<bool>(false, false, var_0.b.b.x, true)), vec4<bool>(arg_0.a.x == 321f, true, arg_0.b.b.x, false), !var_0.b.b.x));
    let var_2 = select(var_1.wzx, !arg_0.b.b, select(!arg_0.b.b, select(func_3(), vec3<bool>(any(vec2<bool>(var_0.b.b.x, var_1.x)), !var_0.b.b.x, true), !arg_0.b.b), var_0.b.b.x));
    var var_3 = Struct_1(abs(countOneBits(vec3<u32>(abs(4294967295u), _wgslsmith_add_u32(4294967295u, var_0.b.a.x), 1u))), !arg_0.b.b, ~var_0.b.c);
    let var_4 = ~(~var_3.a.x);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(599f, _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2330f, 254f)))) - vec2<f32>(-528f, _wgslsmith_div_f32(399f, arg_0.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -1355f) + arg_0.a)), var_1.x));
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    global0 = array<Struct_2, 2>();
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.yw, u_input.a.zw), countOneBits(vec2<i32>(-1i, ~(~22047i))));
    global0 = array<Struct_2, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1070f, 645f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, -468f)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1316f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1688f + -189f) - _wgslsmith_f_op_f32(1030f - -253f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec2<f32>(-779f, -1413f), Struct_1(vec3<u32>(1u, 5159u, 4294967295u), vec3<bool>(false, false, arg_0.x), 16385i))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(524f, 710f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, 434f)), !vec2<bool>(arg_0.x, true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1409f, -613f))))));
    global0 = array<Struct_2, 2>();
    return StorageBuffer(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 2>();
    let var_0 = ~(-u_input.a.zxz);
    let x = u_input.a;
    s_output = func_1(!vec4<bool>(any(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(false, true, true, false)) & true, true));
}

