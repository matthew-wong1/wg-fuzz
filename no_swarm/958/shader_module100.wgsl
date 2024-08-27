struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(1130f, 553f, -1469f, -479f, 981f, 1000f, 406f, -1219f, 2115f, 1398f, 1017f, -485f, -1005f, -1104f, -1061f, -296f, 755f, -1000f, 759f, 509f, 560f, -598f, 2174f, 1598f, 299f, -1358f, -424f, -1000f, -191f, -1528f, -635f, -700f);

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global1 = Struct_2(global0[_wgslsmith_index_u32(~1u, 32u)], ~4294967295u);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - -679f));
    global1 = Struct_2(-505f, global1.b);
    var var_1 = true;
    var_0 = 951f;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, _wgslsmith_sub_i32(-50714i, 1i), -(~22607i), -(~(-50639i))), -vec4<i32>(1i, 1i, 1i, 1i) | _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, 0i, -3147i) >> (vec4<u32>(4294967295u, global1.b, 13328u, 5580u) % vec4<u32>(32u)), vec4<i32>(2147483647i, -953i, 20396i, 44099i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 986f, global0[_wgslsmith_index_u32(global1.b, 32u)], 1401f) + vec4<f32>(-662f, -567f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 669f)))))), vec2<u32>(func_1(Struct_1(all(vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))), 0u), var_0.xyw << (select(u_input.a, max(vec3<u32>(global1.b, global1.b, 25258u), u_input.a & vec3<u32>(4294967295u, 4294967295u, u_input.b)), any(vec4<bool>(false, false, false, false))) % vec3<u32>(32u)));
}

