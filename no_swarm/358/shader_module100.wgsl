struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(false)), false, vec4<u32>(4294967295u, 724u, 18005u, 1u), vec2<bool>(false, false));

var<private> global1: Struct_2 = Struct_2(Struct_1(false));

var<private> global2: Struct_4 = Struct_4(Struct_2(Struct_1(false)), false, vec4<u32>(16457u, 0u, 58204u, 0u), vec2<bool>(false, false));

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: f32) -> vec2<i32> {
    var var_0 = firstTrailingBit(-_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a) & vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i) | vec3<i32>(u_input.a, 1i, u_input.a)), _wgslsmith_mult_vec3_i32(~vec3<i32>(1i, 38539i, u_input.a), vec3<i32>(u_input.a, -15624i, u_input.a) | vec3<i32>(2147483647i, -1256i, 51759i))));
    let var_1 = 1u;
    global1 = global2.a;
    var var_2 = _wgslsmith_div_f32(arg_0, 260f);
    var_0 = vec3<i32>(-_wgslsmith_add_i32(var_0.x, u_input.a), var_0.x, -23543i);
    return var_0.zy;
}

fn func_3(arg_0: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) + -1000f)));
    var var_1 = Struct_2(Struct_1(false));
    let var_2 = false;
    var_0 = 2271f;
    global0 = Struct_4(global2.a, any(!global2.d), ~(~global0.c), vec2<bool>(!any(!global0.d), true));
    return Struct_4(global3[_wgslsmith_index_u32(~min(global0.c.x, 44584u | select(global0.c.x, global2.c.x, global1.a.a)), 22u)], false, global2.c, vec2<bool>(true, global0.b));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<f32>) -> i32 {
    global3 = array<Struct_2, 22>();
    var var_0 = func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-(~(-3235i)), ~arg_0 ^ (i32(-1i) * -2147483647i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a), -vec2<i32>(36184i, -2147483647i)), ~vec2<i32>(arg_0, 1i), select(func_2(arg_3.x), -vec2<i32>(46918i, -3376i), global2.a.a.a))));
    global1 = global2.a;
    let var_1 = var_0.a.a;
    var var_2 = any(!(!arg_2.zxy));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.a;
    let var_1 = _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(func_1(u_input.a, global1.a, vec4<bool>(global0.d.x, global2.d.x, global1.a.a, global2.d.x), vec3<f32>(3130f, 530f, -1705f)), -u_input.a), _wgslsmith_div_vec2_i32(~vec2<i32>(1i, -50761i), abs(vec2<i32>(-67683i, 1i))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1075f))), reverseBits(vec2<i32>(-59063i, u_input.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f * -1481f) + -1213f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-200f, -1060f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(555f)))), 1545f)));
    var var_3 = global2.a;
    var var_4 = any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(var_3.a.a, global0.b, global0.b, false), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -10563i, var_1.x, var_1.x), vec4<i32>(u_input.a, 0i, 2147483647i, var_1.x)) < -15398i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))))));
}

