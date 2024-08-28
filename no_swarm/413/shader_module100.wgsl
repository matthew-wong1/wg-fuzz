struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, vec2<i32>(39920i, i32(-2147483648))), Struct_1(true, vec2<i32>(i32(-2147483648), -17730i)), Struct_1(false, vec2<i32>(-8327i, 57383i)), Struct_1(false, vec2<i32>(0i, -1i)), Struct_1(false, vec2<i32>(-1i, i32(-2147483648))), Struct_1(true, vec2<i32>(29361i, 1i)), Struct_1(false, vec2<i32>(i32(-2147483648), -34359i)), Struct_1(true, vec2<i32>(0i, -1i)), Struct_1(false, vec2<i32>(-19169i, 11762i)));

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, vec2<i32>(-76100i, 29313i)), Struct_1(true, vec2<i32>(2147483647i, -1i)), Struct_1(false, vec2<i32>(-49292i, 31133i)), Struct_1(false, vec2<i32>(0i, -11040i)), Struct_1(false, vec2<i32>(2147483647i, 7390i)), Struct_1(true, vec2<i32>(4700i, 40227i)), Struct_1(false, vec2<i32>(0i, -15196i)), Struct_1(false, vec2<i32>(1i, -1i)), Struct_1(true, vec2<i32>(-1i, 1i)), Struct_1(false, vec2<i32>(0i, 15247i)), Struct_1(false, vec2<i32>(-1i, 0i)), Struct_1(true, vec2<i32>(35725i, 1i)), Struct_1(false, vec2<i32>(20419i, 1i)), Struct_1(false, vec2<i32>(0i, 0i)), Struct_1(true, vec2<i32>(1i, i32(-2147483648))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!select(true, false, true)) | false, reverseBits(~min(u_input.b.xz, u_input.b.zz)));
    let var_1 = Struct_1(u_input.b.x >= var_0.b.x, -vec2<i32>(_wgslsmith_div_i32(var_0.b.x, var_0.b.x) >> (~u_input.c.x % 32u), u_input.b.x));
    var var_2 = -473f;
    let var_3 = global1[_wgslsmith_index_u32(0u, 15u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1248f, -390f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1065f, 374f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(433f, -1131f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(499f, 1250f) * vec2<f32>(301f, -306f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(647f, -1335f) * vec2<f32>(-1000f, -1244f))))), select(!vec2<bool>(var_3.a, true), vec2<bool>(false, !var_3.a), true))), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

