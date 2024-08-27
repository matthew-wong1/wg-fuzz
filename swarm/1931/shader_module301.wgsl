struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global2: array<vec3<i32>, 22>;

var<private> global3: array<vec2<bool>, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>) -> f32 {
    global1 = array<vec3<bool>, 26>();
    var var_0 = reverseBits(firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c.x, 0u), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(34110u, 1u), vec2<u32>(1u, u_input.a.x))))));
    global0 = arg_0;
    var var_1 = arg_0;
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) - arg_2.x) - -508f)) * arg_2.x);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(global0.b.zz, global0.b);
    global1 = array<vec3<bool>, 26>();
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(~firstLeadingBit(vec2<i32>(var_0.b.x, 34948i)), -_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -274i), var_0.b.wx)) ^ var_0.b.xz, vec4<i32>(~var_0.b.x, var_0.b.x, ~1i, -(~(-21705i))));
    var var_2 = vec2<i32>(~19102i, -21798i);
    global0 = var_1;
    return -1494f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: u32) -> i32 {
    global3 = array<vec2<bool>, 11>();
    global2 = array<vec3<i32>, 22>();
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(arg_0, arg_0.b.xw, vec3<f32>(-616f, -1000f, 1972f))), arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-879f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(arg_1.x))) * _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(func_3()));
    let var_1 = arg_0;
    global1 = array<vec3<bool>, 26>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!all(vec4<bool>(true, true, false, false)))) | false;
    global3 = array<vec2<bool>, 11>();
    global1 = array<vec3<bool>, 26>();
    global2 = array<vec3<i32>, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(max(-577f, 149f)), -111f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(462f, -773f, 1000f), vec3<f32>(-1401f, -368f, 135f), true)), vec3<f32>(1209f, 454f, 699f), vec3<bool>(true, true, var_0))))))));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(global0.a.x, -func_1(Struct_1(vec2<i32>(0i, -9158i), vec4<i32>(2147483647i, u_input.d, 1957i, global0.a.x)), vec4<f32>(-1306f, 457f, var_1.x, var_1.x), min(4294967295u, 4294967295u), 0u)), i32(-1i) * -28141i, max(25104i, ~(~u_input.d)));
    let var_3 = vec3<i32>(-2147483647i, global0.a.x << (1u % 32u), ~(~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yx);
}

