struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: array<f32, 25> = array<f32, 25>(-181f, 1000f, 766f, 457f, -396f, -2313f, -217f, 504f, 1046f, -1192f, -383f, -1000f, 740f, 617f, -841f, 400f, -862f, -369f, -1060f, 1201f, 207f, -399f, 441f, -557f, -1480f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = select(~(-select(i32(-1i) * -2147483647i, ~12397i, false)), firstLeadingBit(~76342i), !(!(!all(vec3<bool>(arg_0, arg_0, false)))));
    let var_1 = arg_0;
    let var_2 = -(~(~(vec3<i32>(2147483647i, var_0, var_0) & vec3<i32>(var_0, var_0, 2147483647i)))) << (vec3<u32>(4294967295u, ~0u, abs(_wgslsmith_sub_u32(~48912u, ~u_input.a))) % vec3<u32>(32u));
    let var_3 = !(!vec4<bool>(var_1, true, arg_0, false));
    let var_4 = all(var_3.yww);
    return firstTrailingBit(-_wgslsmith_sub_i32(~(~(-57927i)), var_2.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    global1 = array<f32, 25>();
    let var_0 = select(arg_0.a, select(arg_0.a, select(!arg_0.a, !select(arg_0.a, arg_0.a, arg_0.a.x), all(arg_0.a.xwy) != !arg_0.a.x), vec4<bool>(~u_input.a <= ~4294967295u, false, true, true)), true);
    global1 = array<f32, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(235f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 25u)]))))));
    var var_2 = -1i;
    return reverseBits(func_2(true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a), 25u)]))));
    global1 = array<f32, 25>();
    var var_1 = min(_wgslsmith_sub_i32(1i, 1i), 0i);
    var var_2 = -(~(-countOneBits(~vec2<i32>(-1i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(51918i, ~(-vec3<i32>(abs(var_2.x), var_2.x, 802i)), vec2<i32>(2147483647i, (func_1(Struct_1(vec4<bool>(false, true, true, true)), vec3<u32>(1u, u_input.a, 4294967295u)) << (1u % 32u)) & ~(-34082i)));
}

