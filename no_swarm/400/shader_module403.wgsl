struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(2147483647i, 2147483647i, 1i, 0i, i32(-2147483648), 16103i);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(26393u);

var<private> global3: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> u32 {
    global3 = array<vec3<bool>, 14>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f));
    let var_1 = u_input.a.x;
    var var_2 = arg_0;
    var var_3 = Struct_1(~33731u);
    return 1u;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    global2 = Struct_1(global2.a);
    var var_0 = arg_2;
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    let var_1 = Struct_1(abs(~abs(func_3(arg_2, vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), Struct_1(1297u), 1861f))));
    return ~abs(global2.a);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    global3 = array<vec3<bool>, 14>();
    var var_0 = Struct_1(_wgslsmith_mod_u32(4949u, func_2(1i, vec2<f32>(-352f, 755f), arg_0, vec3<bool>(true, true, true))) | _wgslsmith_mod_u32(1u, firstTrailingBit(~36202u)));
    var var_1 = false;
    return Struct_1(select(global1.a, _wgslsmith_mult_u32(15673u, 48693u), global1.a > 4294967295u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_1(~(~(arg_1.a | ~arg_1.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 172f, 674f, -1755f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1010f, arg_0.x, arg_0.x)))))));
    var var_2 = func_1(func_1(arg_2));
    global2 = var_0;
    let var_3 = func_1(func_1(Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.a, 1u), firstTrailingBit(1u)))));
    return vec3<u32>(func_2(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-412f * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -428f))), arg_2, vec3<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(true, true)))), var_2.a, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_3.a, arg_2.a), 1u), 107880u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    var var_0 = true;
    let var_1 = vec4<f32>(121f, 1850f, 493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) * -2110f));
    global1 = Struct_1(33195u);
    var var_2 = _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(18623u, 4294967295u, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(global1.a, global2.a)))), abs(select(~vec3<u32>(84736u, global1.a, global2.a) << (vec3<u32>(0u, global1.a, 33209u) % vec3<u32>(32u)), func_4(vec3<f32>(var_1.x, -431f, var_1.x), func_1(Struct_1(5813u)), Struct_1(48065u), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -22018i, global0[_wgslsmith_index_u32(50280u, 6u)], u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 6u)], 10023i, 27883i, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(global1.a, 6u)], global0[_wgslsmith_index_u32(global2.a, 6u)], 1i, 18628i))), vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true))));
    global0 = array<i32, 6>();
    var var_3 = Struct_1(global2.a);
    global1 = Struct_1(~select(~1u, 0u, true & any(vec4<bool>(false, true, false, true))));
    var_2 = reverseBits(~vec3<u32>(reverseBits(global2.a << (8481u % 32u)), _wgslsmith_add_u32(39034u, 0u ^ global1.a), ~(~global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)) - _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1564f, -1138f) + var_1.xw), var_1.zw, vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(232f, 725f) * var_1.wy))));
}

