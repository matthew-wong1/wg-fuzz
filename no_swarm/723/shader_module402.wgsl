struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: Struct_2 = Struct_2(vec3<i32>(-23080i, 4172i, -2335i));

var<private> global2: array<vec2<u32>, 30>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) * -247f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f))), _wgslsmith_f_op_f32(f32(-1f) * -1432f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1319f - 244f))), 1246f), true));
    global1 = Struct_2(_wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(max(vec3<i32>(global1.a.x, -29152i, 29536i), vec3<i32>(2147483647i, u_input.a.x, 2147483647i)), ~u_input.a), select(u_input.a << ((vec3<u32>(u_input.b.x, u_input.b.x, u_input.d) ^ vec3<u32>(u_input.b.x, 4294967295u, u_input.d)) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-10727i, 2147483647i, 14968i), select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(false, global0.a, global0.a), any(vec3<bool>(true, true, global0.a))))));
    return Struct_2(vec3<i32>(1i, global1.a.x, -1i));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = func_2();
    global0 = Struct_1(global0.a);
    var_0 = func_2();
    let var_1 = ~vec4<u32>(u_input.b.x, 0u >> (u_input.d % 32u), ~firstTrailingBit(41013u), 45000u);
    let var_2 = -2147483647i;
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(_wgslsmith_add_i32(_wgslsmith_div_i32(global1.a.x, 2147483647i) ^ func_1(vec2<bool>(global0.a, global0.a), u_input.d, -213f, Struct_2(global1.a)), func_1(!vec2<bool>(global0.a, global0.a), 1u, 1f, func_2())) < global1.a.x, true);
    global2 = array<vec2<u32>, 30>();
    global2 = array<vec2<u32>, 30>();
    var_0 = !select(vec2<bool>(all(vec2<bool>(true, global0.a)) | global0.a, true), vec2<bool>(var_0.x, true), true);
    let var_1 = Struct_2(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x ^ u_input.a.x, 56951i, -21125i), -firstLeadingBit(vec3<i32>(18842i, 0i, -1i))));
    var var_2 = ~(i32(-1i) * -(0i ^ firstTrailingBit(2147483647i)));
    var var_3 = -289f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1542f) + -1178f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(select(countOneBits(global1.a.x | u_input.c), _wgslsmith_sub_i32(-2147483647i, var_1.a.x), false), _wgslsmith_mult_i32(u_input.a.x, global1.a.x)));
}

