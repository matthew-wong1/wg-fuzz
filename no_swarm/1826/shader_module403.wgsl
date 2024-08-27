struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 4> = array<i32, 4>(i32(-2147483648), -22287i, 241i, i32(-2147483648));

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec4<bool> {
    global0 = all(global2.yx);
    global1 = array<i32, 4>();
    let var_0 = u_input.c;
    let var_1 = Struct_1(_wgslsmith_sub_u32(23339u, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-938f, _wgslsmith_f_op_f32(select(-972f, 143f, false))) - vec2<f32>(_wgslsmith_div_f32(1622f, -610f), _wgslsmith_f_op_f32(abs(-955f))))));
    let var_2 = var_1;
    return !select(select(vec4<bool>(global2.x, true, true | global2.x, false), select(vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(global2.x, false, global2.x, global2.x), global2.x), !select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), true)), vec4<bool>(select(global2.x, global2.x, global2.x && true), !all(vec4<bool>(true, true, global2.x, global2.x)), global1[_wgslsmith_index_u32(~u_input.c, 4u)] == 2147483647i, false), vec4<bool>(!global2.x, false, all(select(vec3<bool>(false, false, false), vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global2.x, global2.x))), false));
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_1(4294967295u, vec2<f32>(-670f, 1254f));
    let var_1 = true;
    let var_2 = Struct_1(~countOneBits(26462u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b), vec2<f32>(-1070f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1850f, var_0.b.x)), var_0.b.x))));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x)), (false != (var_0.a != select(u_input.b.x, u_input.c, var_1))) || var_1));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1699f, _wgslsmith_f_op_f32(220f + 1912f), _wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3, -1000f, 1000f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.b.x, var_0.b.x, var_3)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(695f, var_2.b.x, var_0.b.x))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.x, 1507f, var_2.b.x), vec3<f32>(var_3, var_3, var_2.b.x), arg_0.ywy)))))))));
    return arg_0.xzw;
}

fn func_1() -> StorageBuffer {
    let var_0 = select(true, true, true);
    let var_1 = vec4<bool>(var_0, var_0, all(select(!vec4<bool>(var_0, false, false, global2.x), func_2(vec4<f32>(583f, 1989f, 373f, -133f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-347f, -1197f, -1208f), vec3<f32>(-795f, -748f, -453f)))), false)), any(!(!func_3(vec4<bool>(false, true, false, var_0)))));
    global2 = var_1.zzy;
    return StorageBuffer(894f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(840f, -892f, -387f, -1450f)), vec4<f32>(-257f, 588f, -1000f, -248f)) - vec4<f32>(_wgslsmith_f_op_f32(sign(109f)), _wgslsmith_div_f32(-1000f, 597f), _wgslsmith_f_op_f32(trunc(-257f)), _wgslsmith_f_op_f32(1022f - -1000f))))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec3<bool>(false, global2.x, false), !(!vec3<bool>(global1[_wgslsmith_index_u32(5326u, 4u)] > 27873i, true, global2.x)), global2.x);
    let var_0 = -reverseBits(~abs(vec4<i32>(global1[_wgslsmith_index_u32(1u, 4u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.c, 4u)], 29949i) & vec4<i32>(u_input.d.x, 13226i, u_input.a.x, 1i)));
    global0 = false;
    let x = u_input.a;
    s_output = func_1();
}

