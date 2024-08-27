struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: vec3<i32> = vec3<i32>(-4608i, -9536i, i32(-2147483648));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec3<i32> {
    let var_0 = min(u_input.d, 6998i);
    return vec3<i32>(~(-5194i), 2543i, global1.x);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-891f, -371f, 1152f, -1370f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-819f, -303f, -1644f, -823f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2116f, 701f, -821f, 817f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1018f, 315f, -1356f, 813f) - vec4<f32>(133f, 905f, -373f, 829f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-631f, 560f, -1617f, 384f) - vec4<f32>(2279f, -334f, -673f, 1000f))))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(u_input.d, 28282i) & _wgslsmith_div_i32(global1.x, 0i), -global1.x, u_input.d), firstLeadingBit(vec4<i32>(u_input.b, ~u_input.b, global1.x, 0i))), 1198f);
    var var_1 = Struct_2(u_input.c.x, var_0);
    let var_2 = firstLeadingBit(arg_0);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(var_1.b.a.x, var_1.b.a.x, _wgslsmith_f_op_f32(trunc(var_1.b.c)), _wgslsmith_f_op_f32(round(var_0.c))))), var_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 1356f))) - var_0.c)));
    var var_4 = ~var_2.xz;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c + -737f) - _wgslsmith_f_op_f32(-246f + var_3.c)))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1930f, -1071f, -1616f, -475f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-359f, -128f, 534f, -1460f)))))), -abs(-abs(vec4<i32>(global1.x, global1.x, global1.x, u_input.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-480f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(1u, u_input.c.x, 1u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1740f)), false)));
    return Struct_2(firstLeadingBit(4294967295u | u_input.c.x), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 746f, -189f, var_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a) * vec4<f32>(var_0.a.x, -976f, var_0.c, 467f))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, var_0.b.x, 33549i), var_0.b) >> (vec4<u32>(46640u, 67337u, 4294967295u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = ~(-42226i);
    var var_1 = -609f;
    var var_2 = func_2();
    global0 = array<bool, 28>();
    var var_3 = select(_wgslsmith_div_u32(var_2.a, _wgslsmith_dot_vec2_u32(u_input.a, ~(~u_input.c.zz))), ~(~min(1u, firstTrailingBit(var_2.a))), !global0[_wgslsmith_index_u32(4294967295u, 28u)]);
    var var_4 = global0[_wgslsmith_index_u32(16904u, 28u)];
    var_3 = u_input.a.x;
    var var_5 = vec2<i32>(-global1.x, abs(var_2.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-204f, var_2.b.b.x);
}

