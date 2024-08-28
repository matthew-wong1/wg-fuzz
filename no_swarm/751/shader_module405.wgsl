struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7>;

var<private> global1: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_4(-max(u_input.a.x, arg_3.x ^ -3140i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(211f - 676f), _wgslsmith_f_op_f32(1242f + -133f)))), !select(select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, false), true), !vec2<bool>(false, arg_2), !vec2<bool>(arg_2, true))), !(!select(!vec4<bool>(false, true, arg_2, arg_2), select(vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(true, true, arg_2, true), false), vec4<bool>(true, true, true, true))));
    global1 = all(var_0.c.xwx);
    var var_1 = var_0.b;
    return all(!(!var_0.c));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    var var_0 = arg_1;
    let var_1 = 0i;
    let var_2 = 1u;
    let var_3 = global0[_wgslsmith_index_u32(var_2 & ~(~0u), 7u)];
    var var_4 = Struct_2(var_0.b, arg_1.b, min(min(vec2<i32>(var_0.a, -1i) & _wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_0.a), u_input.a), vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a), -(u_input.a ^ u_input.a)));
    return !(var_4.b.b.x & false);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_4(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-357f + -1037f)))), select(vec2<bool>(all(vec3<bool>(false, true, false)), func_3(Struct_1(-820f, vec2<bool>(false, false)), Struct_4(-30038i, Struct_1(-672f, vec2<bool>(false, true)), vec4<bool>(false, true, false, false)))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true))), vec4<bool>(true, false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(159f, var_0.b.a));
    global0 = array<Struct_5, 7>();
    var var_2 = Struct_5(select(!select(var_0.c.wzx, select(vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<bool>(var_0.c.x, var_0.c.x, true), var_0.c.zyy), !var_0.c.zwx), vec3<bool>(true | any(vec3<bool>(var_0.c.x, var_0.c.x, true)), u_input.a.x > _wgslsmith_div_i32(var_0.a, var_0.a), !var_0.b.b.x), !var_0.c.zwz));
    global1 = var_2.a.x;
    return var_0.c.wz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_5(vec3<bool>(func_1(~(~34458u), 1u, false, vec3<i32>(var_0.x << (23582u % 32u), ~7865i, -2147483647i)), true, true));
    var_0 = u_input.a;
    var var_2 = firstLeadingBit(1u);
    let var_3 = all(func_2());
    var_0 = vec2<i32>(var_0.x, firstLeadingBit(select(_wgslsmith_mult_i32(var_0.x << (21766u % 32u), u_input.a.x), var_0.x, true)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(934f)), _wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(trunc(-698f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 1174f, -316f), vec3<f32>(785f, -389f, -759f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(856f, -708f, 525f), vec3<f32>(250f, -218f, 1288f)) - vec3<f32>(142f, 100f, 887f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-402f)) + _wgslsmith_f_op_f32(f32(-1f) * -901f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1723f - _wgslsmith_div_f32(-614f, -508f)))), _wgslsmith_f_op_f32(f32(-1f) * -705f)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, min(4294967295u, ~1u), -518f, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 13347u, 4294967295u, 58383u), vec4<u32>(3402u, 17789u, 1u, 23951u), vec4<u32>(1u, 19320u, 1u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))), ~vec2<u32>(select(87255u, 4294967295u, false), _wgslsmith_mult_u32(0u, 54151u))));
}

