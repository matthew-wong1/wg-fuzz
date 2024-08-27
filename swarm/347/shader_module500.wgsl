struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    return -35632i;
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = arg_0.c.x;
    var_0 = arg_0.a.c.x;
    var var_1 = i32(-1i) * -min(_wgslsmith_sub_i32(arg_0.a.b.x, arg_0.b.x), -2147483647i);
    var var_2 = select(!all(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), !vec3<bool>(false, true, arg_0.a.a.x))), firstTrailingBit(arg_0.a.b.x) == ~_wgslsmith_div_i32(~arg_0.a.b.x, 9188i >> (arg_0.a.d % 32u)), !all(!arg_0.a.a.yx));
    var var_3 = !all(select(!(!arg_0.a.a.xzx), !(!vec3<bool>(true, arg_0.a.a.x, false)), !arg_0.a.a.xwy));
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2821f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-423f)))));
}

fn func_2() -> StorageBuffer {
    let var_0 = Struct_3(-vec2<i32>(func_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(2147483647i, 2147483647i, 7249i, 1i), vec2<f32>(-388f, -2107f), u_input.a.x), vec2<i32>(-2147483647i, 14564i), vec4<f32>(-1188f, 1394f, 1000f, 1814f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))))), 1i));
    var var_1 = vec4<bool>(false, true, false, false);
    var_1 = select(vec4<bool>(true, !var_1.x, !any(select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true), var_1.wxx)), any(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false))), !(!(!vec4<bool>(var_1.x, true, false, var_1.x))), var_1.x);
    var var_2 = firstLeadingBit(-_wgslsmith_add_vec3_i32(max(firstTrailingBit(vec3<i32>(42578i, 0i, -44142i)), vec3<i32>(10705i, 2147483647i, var_0.a.x)), ~select(vec3<i32>(0i, var_0.a.x, var_0.a.x), vec3<i32>(7492i, var_0.a.x, 11048i), var_1.wzz)));
    var_2 = -vec3<i32>(i32(-1i) * -var_2.x, var_0.a.x, var_0.a.x);
    return StorageBuffer(~abs(vec3<u32>(u_input.a.x, 0u, ~89734u)), ~(~min(_wgslsmith_mult_u32(u_input.a.x, 58706u), _wgslsmith_add_u32(0u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = -1i == reverseBits(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(481f, -278f, -1934f, -1233f) * vec4<f32>(-269f, -1534f, -1070f, 1268f)))));
    var_1 = true;
    let var_2 = -81111i;
    let x = u_input.a;
    s_output = func_2();
}

