struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1071f, vec2<i32>(1i, -6292i), vec3<bool>(true, false, true), vec4<bool>(false, false, false, false), vec2<bool>(false, true));

var<private> global1: vec3<u32>;

var<private> global2: bool;

var<private> global3: f32;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 519f, 1118f))))));
    var var_1 = any(!select(global0.d.xw, select(vec2<bool>(true, true), !arg_2.c.yy, vec2<bool>(false, true)), !arg_2.d.x || arg_1.x));
    global0 = arg_2;
    let var_2 = Struct_2(Struct_1(var_0.x, vec2<i32>(firstLeadingBit(4714i), _wgslsmith_mod_i32(0i, arg_2.b.x)) & select(-arg_2.b, ~arg_2.b, arg_1.x != global0.c.x), select(vec3<bool>(false, global0.c.x, true), select(global0.d.yzw, vec3<bool>(false, true, arg_1.x), false), true), select(!(!vec4<bool>(false, arg_2.d.x, true, false)), !select(arg_2.d, global0.d, global0.c.x), arg_2.d), arg_2.d.zz));
    return all(!vec3<bool>(!(!var_2.a.d.x), u_input.d.x < _wgslsmith_mult_u32(global1.x, 86703u), true && all(vec3<bool>(true, arg_2.e.x, false))));
}

fn func_2(arg_0: f32) -> f32 {
    global1 = u_input.d.zyy;
    var var_0 = _wgslsmith_add_vec3_i32(~(~u_input.a.ywz), abs(firstTrailingBit(vec3<i32>(-u_input.a.x, -1i, -global0.b.x))));
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_0));
    var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-66168i, 3498i, -1i), u_input.e) & vec3<i32>(-2147483647i, select(1i, global0.b.x, false), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.e.x), u_input.a)), -vec3<i32>(global0.b.x, 2147483647i, -1i)), -(u_input.a.zyx ^ vec3<i32>(-1i, var_0.x, 472i)));
    let var_2 = vec3<bool>(true, all(!vec3<bool>(global0.d.x, func_3(global0.a, vec2<bool>(global0.c.x, true), Struct_1(global0.a, global0.b, global0.c, global0.d, global0.e)), func_3(arg_0, vec2<bool>(true, global0.c.x), Struct_1(345f, global0.b, vec3<bool>(global0.c.x, global0.e.x, false), vec4<bool>(global0.e.x, global0.e.x, true, global0.d.x), global0.c.xz)))), false);
    return global0.a;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, -1009f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(global0.a * arg_2))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(546f + 793f)))))), u_input.e.xz, arg_1.d.zww, vec4<bool>(arg_1.e.x, arg_0, arg_0, -1090f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-792f * -1171f) + arg_2)), arg_1.c.zz);
    global0 = arg_1;
    global3 = _wgslsmith_f_op_f32(arg_2 + var_0.a);
    var var_1 = 1i;
    global4 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(max(u_input.a.yxw, _wgslsmith_div_vec3_i32(u_input.e, u_input.a.yzy)), u_input.e), -vec3<i32>(-4943i, ~(-3658i), ~(-11153i))), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global0.b.x, _wgslsmith_div_i32(arg_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, var_0.b.x, global0.b.x), vec3<i32>(var_0.b.x, global0.b.x, -19408i)))), -u_input.e));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -2156f, 1562f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))) + _wgslsmith_f_op_f32(min(230f, _wgslsmith_f_op_f32(step(1589f, 1401f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_0, vec4<f32>(_wgslsmith_f_op_f32(536f + 540f), global0.a, _wgslsmith_f_op_f32(func_1(global0.e.x, Struct_1(global0.a, u_input.a.xx, global0.d.zxw, global0.d, global0.e), global0.a)), global0.a)))));
    let var_2 = u_input.a.xyz;
    let var_3 = -var_2.x ^ _wgslsmith_sub_i32(var_2.x, _wgslsmith_sub_i32(-668i >> (_wgslsmith_dot_vec3_u32(u_input.d.yxz, vec3<u32>(u_input.c, 39421u, u_input.d.x)) % 32u), ~min(0i, 0i)));
    var var_4 = ~vec4<u32>(~(~(~14306u)), max(min(global1.x, 1u), _wgslsmith_dot_vec3_u32(u_input.d.wzw, u_input.d.wwx)), 0u, 55769u);
    var var_5 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, firstLeadingBit(u_input.c), 40363u), _wgslsmith_mult_vec3_u32(abs(u_input.d.xzx), reverseBits(u_input.d.wwy))), ~(_wgslsmith_mult_u32(global1.x, u_input.b) >> (u_input.d.x % 32u)), firstLeadingBit(global1.x), global1.x);
    let var_6 = var_0.xwx;
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_5.x, 1u), ~vec2<u32>(u_input.c, 1u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.d.xy)), u_input.a, ~(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_5.x, 21511u, 4294967295u, var_4.x), vec4<u32>(26638u, u_input.b, 0u, 4294967295u)))), _wgslsmith_sub_i32(abs(global0.b.x), abs(~var_3)) & _wgslsmith_dot_vec2_i32(abs(var_2.zz), global0.b), _wgslsmith_f_op_f32(-3044f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
}

