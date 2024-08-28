struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5961u;

var<private> global1: f32 = -142f;

var<private> global2: array<u32, 5>;

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec3<bool>(true, false, false), vec3<f32>(-863f, 1076f, 1310f), vec4<u32>(33563u, 4294967295u, 4294967295u, 103297u), 9383u));

var<private> global4: array<vec4<f32>, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = true;
    let var_1 = -971f;
    let var_2 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = 96140u;
    global1 = _wgslsmith_f_op_f32(round(var_1));
    return vec2<u32>(~49368u, abs(35965u));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> bool {
    let var_0 = arg_1;
    global4 = array<vec4<f32>, 3>();
    var var_1 = arg_1.a.x;
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~reverseBits(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global2[_wgslsmith_index_u32(20654u, 5u)])), ~global2[_wgslsmith_index_u32(9544u, 5u)]), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)])), func_3()), vec2<u32>(global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(2744u)), 5u)], reverseBits(48502u) >> (~4294967295u % 32u))));
    let var_3 = 0u;
    return -144f < var_0.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> bool {
    let var_0 = select(!(!vec4<bool>(true, any(vec3<bool>(true, false, true)), true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34320u, 5u)], 5u)], 5u)], 5u)], 5u)] < 18522u)), select(!vec4<bool>(func_2(-64618i, Struct_3(vec2<f32>(-617f, 453f), -1136f), -1i), true, true, false), vec4<bool>(max(u_input.a.x, -1i) != (i32(-1i) * -11497i), true, true, false), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), true)), true);
    global4 = array<vec4<f32>, 3>();
    global4 = array<vec4<f32>, 3>();
    let var_1 = 2479f;
    var var_2 = true;
    return true;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_3 {
    return Struct_3(arg_1.c.yx, _wgslsmith_f_op_f32(ceil(1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(vec4<bool>(any(vec2<bool>(true, true)), func_1(~vec2<i32>(-23360i, u_input.b), -20722i), all(vec2<bool>(false, true)), false), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~23719u, 5u)] ^ ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24156u, 5u)], 5u)]), 5u)], 5u)], 5u)], 5u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(103f, -1352f, -722f)), _wgslsmith_div_vec3_f32(vec3<f32>(-981f, -1451f, -462f), vec3<f32>(-1000f, 379f, 622f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-385f, 1044f, 877f), vec3<f32>(-1961f, -300f, -1837f)))))), Struct_4(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 64302u & ~global2[_wgslsmith_index_u32(10252u, 5u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-489f, 960f, 1000f), vec3<f32>(1564f, 479f, 1000f))), vec3<f32>(331f, 675f, 435f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2141f, 559f, -1000f))) - vec3<f32>(-603f, -1100f, 275f)), true))));
    let var_1 = var_0;
    global1 = 279f;
    let var_2 = Struct_1(~(~6016u), select(countOneBits(vec2<u32>(7324u, ~global2[_wgslsmith_index_u32(4294967295u, 5u)])), vec2<u32>(~(~34985u), abs(global2[_wgslsmith_index_u32(4294967295u, 5u)])), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false)) | true)), ~(vec2<i32>(-1i) * -u_input.a.xz), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25226u, 5u)], 5u)], 5u)], 5u)], 5u)] & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 5u)]) ^ global2[_wgslsmith_index_u32(~48343u, 5u)], 5u)] & 19865u), 5u)], 5u)], 5u)], 5u)], vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(abs(914f))));
    let var_3 = Struct_4(vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), true, all(vec3<bool>(true, true, true)), !(_wgslsmith_f_op_f32(793f * var_1.a.x) < _wgslsmith_f_op_f32(f32(-1f) * -758f))), var_2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1641f, var_0.a.x, 520f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1731f, var_1.a.x, var_2.e.x) * vec3<f32>(var_0.b, -2080f, var_1.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.c.x), ~(~(~(~vec3<u32>(1u, 4294967295u, 59670u)))), abs(u_input.a.x), vec4<i32>(-1i) * -vec4<i32>(var_2.c.x, i32(-1i) * -3980i, -2147483647i, abs(var_2.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1680f));
}

