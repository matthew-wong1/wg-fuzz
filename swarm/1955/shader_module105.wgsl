struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(17597u, 4294967295u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(82553u, 1536u, 11040u), vec3<u32>(12160u, 15982u, 35693u), vec3<u32>(45451u, 18253u, 1u), vec3<u32>(17480u, 3677u, 0u));

var<private> global1: Struct_2 = Struct_2(-942f, Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), 987f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(min(global1.a, global1.b.c)), global1.b);
    var var_0 = global1.b;
    global0 = array<vec3<u32>, 8>();
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(144f, var_0.c, 447f, global1.a) - vec4<f32>(-1064f, global1.a, 1610f, var_0.c)) + vec4<f32>(1381f, global1.a, var_0.c, global1.b.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1420f, 830f, 703f, global1.b.c))))))));
    global0 = array<vec3<u32>, 8>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.a, var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(var_0.c))), 356f)), all(select(select(vec2<bool>(var_0.a.x, true), var_0.a.xx, true), !select(global1.b.a.zy, var_0.a.zz, vec2<bool>(false, var_0.b.x)), select(arg_0.wx, select(global1.b.a.zy, vec2<bool>(false, arg_0.x), var_0.a.zy), vec2<bool>(true, arg_0.x))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.b.b.ywx, select(!vec4<bool>(global1.a > 1652f, u_input.a.x > 45947i, global1.b.a.x, false == global1.b.a.x), global1.b.b, select(select(select(global1.b.b, global1.b.b, false), vec4<bool>(false, true, global1.b.b.x, true), false), vec4<bool>(28473u != u_input.b, global1.b.b.x || false, global1.b.a.x, true), any(!global1.b.b))), _wgslsmith_f_op_f32(trunc(global1.a)));
    let var_1 = u_input.a;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!vec4<bool>(global1.b.b.x, global1.b.b.x, var_0.a.x, var_0.a.x)))), global1.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, var_2.a, global1.b.c, -1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(506f, _wgslsmith_f_op_f32(trunc(global1.b.c)), _wgslsmith_f_op_f32(abs(global1.b.c)), _wgslsmith_f_op_f32(select(-312f, 1260f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 1333f, -586f, var_0.c) * vec4<f32>(-1352f, -577f, var_2.b.c, -218f))), true)))));
    var var_4 = true;
    return Struct_1(global1.b.a, global1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.c) + 1826f));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = arg_2.b;
    global0 = array<vec3<u32>, 8>();
    let var_1 = -_wgslsmith_add_vec4_i32(~countOneBits(firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x));
    var_0 = func_2();
    let var_2 = arg_0.b;
    return -(~(-20148i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(global1.b.b);
    var var_1 = global1.b;
    let var_2 = _wgslsmith_mult_i32(abs(~_wgslsmith_sub_i32(firstLeadingBit(-7872i), func_1(Struct_1(vec3<bool>(true, global1.b.b.x, global1.b.a.x), var_1.b, 1227f), -911f, Struct_2(global1.b.c, Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, var_1.a.x, var_1.a.x, var_0), global1.b.c))))), -2147483647i);
    let var_3 = 0u ^ (~reverseBits(26692u) << (u_input.b % 32u));
    global1 = Struct_2(_wgslsmith_div_f32(global1.b.c, -734f), func_2());
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-381f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.c))))), var_4.c, _wgslsmith_f_op_f32(1386f - _wgslsmith_f_op_f32(554f + -1966f))));
}

