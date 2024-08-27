struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: i32 = -10577i;

var<private> global2: array<i32, 17> = array<i32, 17>(-15292i, 66641i, 0i, 30628i, -19795i, -29300i, 42030i, -43129i, -1i, 70416i, 0i, 29332i, i32(-2147483648), 28347i, 0i, 2147483647i, 1i);

var<private> global3: array<vec3<i32>, 12>;

var<private> global4: Struct_1 = Struct_1(2067i, vec4<i32>(-36070i, -29301i, -1i, -9419i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    global1 = u_input.a;
    var var_0 = arg_0;
    global4 = Struct_1(2147483647i, vec4<i32>(global4.a, 45171i, global4.a, global4.b.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1672f, -391f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-934f, -410f) + vec2<f32>(-697f, -1208f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(875f, 517f), vec2<f32>(1542f, 803f))))))));
    var var_2 = -1000f;
    return 2147483647i;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<u32>) -> u32 {
    global1 = func_3(arg_1);
    let var_0 = !(false || arg_1);
    global1 = 4898i;
    return arg_3.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = global3[_wgslsmith_index_u32(43368u, 12u)];
    global3 = array<vec3<i32>, 12>();
    var var_1 = Struct_1(firstTrailingBit(i32(-1i) * -1i), -abs(global4.b));
    let var_2 = 1u | min(select(global0[_wgslsmith_index_u32(func_2(60036u, true, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), ~u_input.b), 31u)], 64529u, false), ~firstTrailingBit(u_input.b.x | u_input.b.x));
    global2 = array<i32, 17>();
    return StorageBuffer(vec4<i32>(-2147483647i, i32(-1i) * -12395i, _wgslsmith_sub_i32(-(~37240i), u_input.a), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

