struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-411f, 1000f, 1000f), vec3<f32>(-2795f, -319f, -836f))))));
    return true;
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<u32> {
    var var_0 = true;
    global0 = u_input.b != 4294967295u;
    var_0 = !any(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, false), false), vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true)));
    return u_input.a.zy;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = false;
    let var_0 = ~(_wgslsmith_mod_vec2_u32(func_3(u_input.b, 11994u), vec2<u32>(0u, 17283u)) & (_wgslsmith_sub_vec2_u32(~u_input.a.zz, max(u_input.a.yx, u_input.a.yy)) << (~vec2<u32>(u_input.a.x, u_input.c) % vec2<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(616f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(863f, -520f)))), -1565f))));
    global0 = !(true && any(!vec3<bool>(true, true, arg_0)));
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -937f, 893f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1293f, 905f, 1120f) - vec3<f32>(-1847f, -2046f, -165f)))))));
    var var_1 = vec3<bool>(true, true, func_1());
    let var_2 = false;
    let var_3 = func_2(true);
    var var_4 = i32(-1i) * -1i;
    let var_5 = vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)));
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-620f, _wgslsmith_f_op_f32(min(var_3.a.x, _wgslsmith_f_op_f32(var_5.x * _wgslsmith_f_op_f32(sign(var_3.a.x))))), var_5.x, _wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_3.a.x) - var_3.a.x))), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.c), _wgslsmith_add_u32(reverseBits(62237u), 0u)), min(-vec3<i32>(1i, -u_input.d, 2147483647i), _wgslsmith_sub_vec3_i32(reverseBits(abs(vec3<i32>(2147483647i, u_input.e.x, u_input.e.x))), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 28789i, 1i), vec3<i32>(-2147483647i, -45732i, 23317i), vec3<i32>(u_input.e.x, u_input.e.x, u_input.d))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.e.x, 2147483647i), u_input.e.x));
}

