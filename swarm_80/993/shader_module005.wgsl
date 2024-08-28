struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-51925i, 2147483647i);

var<private> global1: Struct_1 = Struct_1(0i);

var<private> global2: array<i32, 26> = array<i32, 26>(i32(-2147483648), -23606i, 8691i, -68817i, 13688i, -1i, 0i, 0i, 1i, -13924i, 1i, 11681i, -28553i, -7171i, 64266i, -1303i, 2147483647i, 19310i, -34009i, 2147483647i, i32(-2147483648), 2147483647i, 1107i, -255i, -932i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0.zx;
    global2 = array<i32, 26>();
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(arg_0.ww))));
    var var_3 = ~0i;
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global0 = _wgslsmith_div_vec2_i32(min(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, abs(0i)), reverseBits(u_input.c.xx)), -(~_wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1u, 26u)], -2147483647i), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], -65039i)))), _wgslsmith_div_vec2_i32(~(-u_input.c.wz), u_input.c.wz));
    let var_0 = Struct_1(abs(-42784i));
    let var_1 = -890f;
    var var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f) * var_1) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_1)))));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1104f, _wgslsmith_f_op_f32(f32(-1f) * -1819f), _wgslsmith_f_op_f32(trunc(-715f)), _wgslsmith_f_op_f32(min(arg_1, 759f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, 187f, 842f, var_1))))))), arg_0, var_0, vec2<f32>(1209f, _wgslsmith_f_op_f32(round(arg_1))));
    return false;
}

fn func_1() -> StorageBuffer {
    global0 = u_input.c.ww;
    var var_0 = select(vec4<bool>(!(!any(vec3<bool>(true, true, true))), false, !((-2543i > global1.a) || true), true), vec4<bool>(!(56840u != u_input.a), (31365u < u_input.b.x) || func_3(func_2(vec4<f32>(280f, -1541f, -1721f, -2268f), Struct_1(8895i), Struct_1(0i), vec2<f32>(1065f, -959f)), 1012f), true, true), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-351f, -1000f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) * _wgslsmith_f_op_f32(f32(-1f) * -495f)));
    global2 = array<i32, 26>();
    let var_1 = !var_0.zyy;
    var var_2 = Struct_1(~(~(i32(-1i) * -global0.x)));
    return StorageBuffer(abs(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x > u_input.c.x;
    let x = u_input.a;
    s_output = func_1();
}

