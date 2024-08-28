struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
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

var<private> global0: array<vec3<f32>, 3>;

var<private> global1: Struct_3;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = ~(-reverseBits(firstLeadingBit(abs(arg_1.a.a))));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_mod_u32(67143u, var_1.a.b.x);
    let var_3 = 39745i;
    let var_4 = true;
    return 1764f;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_div_u32(4294967295u, ~6069u);
    var_0 = 4294967295u;
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.a, global1.a) * vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), Struct_2(Struct_1(-2147483647i, vec4<u32>(u_input.c, u_input.a, 37004u, u_input.a), global1.a.x, vec2<i32>(0i, u_input.b))))))));
}

fn func_1() -> Struct_3 {
    global0 = array<vec3<f32>, 3>();
    var var_0 = u_input.a;
    var var_1 = !vec4<bool>((4294967295u < ~u_input.a) || (global1.a.x != -306f), 8869i < u_input.b, true, select(all(vec2<bool>(true, false)), true, true));
    var var_2 = select(!any(select(vec2<bool>(var_1.x, var_1.x), var_1.yx, false)), false, false) && false;
    global1 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = func_2();
    global1 = Struct_3(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.x))) * global1.a.x), _wgslsmith_f_op_f32(ceil(global1.a.x)), global1.a.x));
    let var_0 = 1i;
    var var_1 = Struct_2(Struct_1(var_0, countOneBits(vec4<u32>(~1u, ~0u, u_input.c, u_input.c << (u_input.c % 32u))), -138f, (_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -5541i), vec2<i32>(-2147483647i, 0i)) ^ vec2<i32>(var_0, 2147483647i)) ^ vec2<i32>(~(-14270i), _wgslsmith_add_i32(0i, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.c, var_1.a.c))))));
}

