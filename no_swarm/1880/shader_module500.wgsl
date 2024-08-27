struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 81877u, 1u);

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(1u), Struct_2(16052u), Struct_2(1u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_div_u32(~u_input.c.x, global0.x), _wgslsmith_sub_i32(~arg_0.x, u_input.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, -582f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -233f)), -1593f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)))))));
    var var_2 = Struct_2(global0.x);
    var var_3 = vec4<bool>(true, true, true, true);
    var_1 = vec4<f32>(-1076f, 1000f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 823f)), arg_1.x)), -1818f);
    return select(!(!vec3<bool>(true, var_3.x, true)), select(var_3.yyy, select(select(!vec3<bool>(false, false, var_3.x), select(vec3<bool>(true, var_3.x, false), vec3<bool>(var_3.x, var_3.x, true), var_3.x), any(vec2<bool>(true, false))), var_3.yxy, !any(vec4<bool>(false, var_3.x, var_3.x, false))), true), false);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), vec3<bool>(u_input.b < u_input.b, true, false), select(func_3(vec2<i32>(arg_0.b, 1i), vec4<f32>(405f, 589f, -148f, -254f)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), true));
    var var_1 = 95770u;
    let var_2 = -1310f;
    var_1 = 54069u;
    global0 = ~_wgslsmith_clamp_vec3_u32(u_input.c, ~(min(vec3<u32>(arg_0.a, u_input.c.x, global0.x), vec3<u32>(global0.x, arg_0.a, global0.x)) | _wgslsmith_sub_vec3_u32(u_input.a, u_input.a)), u_input.c);
    return arg_0;
}

fn func_1() -> vec3<f32> {
    global1 = array<Struct_2, 3>();
    var var_0 = func_2(Struct_1(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a.x, global0.x, global0.x, global0.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(51791u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(23477u, 1u, 24812u, u_input.c.x))), 0i));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(40518u, 6761u, u_input.c.x)), u_input.a) & ~firstLeadingBit(abs(global0.x)), var_0.a, 123777u & _wgslsmith_mod_u32(78697u, ~u_input.c.x));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), global0.x, ~min(vec3<i32>(-1i) * -vec3<i32>(5516i, u_input.b, u_input.b), min(firstTrailingBit(vec3<i32>(u_input.b, 0i, 2147483647i)), -vec3<i32>(u_input.b, u_input.b, var_0.b))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.a, -566f, select(true, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))))), -123f);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * vec3<f32>(-2097f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1())))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1594f, 732f, 204f)), vec3<f32>(-334f, -667f, -472f))))));
    global1 = array<Struct_2, 3>();
    let var_1 = Struct_2(2725u);
    var var_2 = 0i;
    let var_3 = Struct_2(var_1.a);
    let var_4 = func_2(Struct_1(var_1.a, (u_input.b << (var_3.a % 32u)) & u_input.b));
    let var_5 = -((vec4<i32>(1i, abs(u_input.b), u_input.b, ~1i) ^ ~countOneBits(vec4<i32>(-2147483647i, var_4.b, 0i, 1i))) << (~firstTrailingBit(vec4<u32>(36261u, var_3.a, u_input.a.x, var_1.a)) % vec4<u32>(32u)));
    var_2 = u_input.b;
    var var_6 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(var_4.a, _wgslsmith_div_u32(var_1.a, 0u), var_4.a, ~var_1.a), _wgslsmith_mult_vec4_u32(min(vec4<u32>(var_4.a, var_4.a, var_4.a, u_input.a.x), ~vec4<u32>(0u, 11843u, 0u, 1u)), vec4<u32>(countOneBits(1u), 130344u, ~var_4.a, _wgslsmith_mod_u32(23510u, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.xx, -firstTrailingBit(~(-vec4<i32>(-1355i, var_4.b, var_4.b, 45700i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(261f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, 243f, var_0.x, 1412f)))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -559f, var_0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -858f), vec4<f32>(var_0.x, var_0.x, var_0.x, -1273f), vec4<bool>(true, true, false, true))))))), _wgslsmith_f_op_f32(step(436f, _wgslsmith_f_op_f32(-var_0.x))));
}

