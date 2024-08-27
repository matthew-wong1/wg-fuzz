struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: bool = false;

var<private> global2: vec2<u32> = vec2<u32>(1u, 85179u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    var var_0 = -(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.yz, firstTrailingBit(u_input.c.yy)), vec2<i32>(~9036i, u_input.d)) ^ u_input.c.zx);
    var var_1 = _wgslsmith_clamp_u32(31867u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(~arg_2.zwy, _wgslsmith_mult_vec3_u32(arg_2.yxw, arg_2.zww), vec3<bool>(true, true, false)), arg_2.zzz), vec3<u32>(arg_1, ~arg_1, ~(~global2.x))), ~(~(~arg_2.x & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 69963u), vec2<u32>(arg_2.x, 1u)))));
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_2.a.x) * _wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, 1123f)) * var_2.a)));
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(-firstLeadingBit(4512i), select(arg_0, u_input.d, true)), -34525i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_0, 7325i, arg_0, arg_0), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, arg_0, arg_0, 1i), vec4<i32>(-37620i, -2147483647i, var_0.x, var_0.x))), firstLeadingBit(vec4<i32>(arg_0, arg_0, -2147483647i, u_input.d))) | (~_wgslsmith_clamp_i32(var_0.x, arg_0, arg_0) >> (countOneBits(0u) % 32u)), abs(-u_input.d));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 324f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -994f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x * var_2.a.x))))) + _wgslsmith_div_f32(-1592f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.x)), var_3.x) - _wgslsmith_f_op_f32(var_3.x + -1007f))));
}

fn func_2() -> u32 {
    let var_0 = u_input.d;
    let var_1 = false && (global0.x != false);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(281f, -2588f), vec2<f32>(-1000f, 457f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(324f, 465f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-156f, 1271f) - _wgslsmith_f_op_f32(f32(-1f) * -132f))), global0.xx)));
    let var_3 = -_wgslsmith_sub_i32(u_input.c.x, u_input.c.x);
    var var_4 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_3, countOneBits(global2.x), vec4<u32>(u_input.b, 1u, 1u, u_input.e) << (vec4<u32>(global2.x, u_input.a, 4294967295u, global2.x) % vec4<u32>(32u)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + -902f)), !select(!vec3<bool>(false, global0.x, true), select(vec3<bool>(false, true, var_1), vec3<bool>(false, false, true), global0.x), true & var_1), reverseBits(firstTrailingBit(global2.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, 483f, var_2.a.x, 1043f)))))))), var_2);
    return 1u;
}

fn func_1() -> vec2<bool> {
    global1 = global0.x;
    return select(!global0.zy, vec2<bool>(global0.x, false), (22680u >> (~func_2() % 32u)) > u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1475f;
    let var_1 = (u_input.d << (global2.x % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, (u_input.c.x & 108824i) & abs(u_input.d)), u_input.c.xy);
    var var_2 = func_1();
    let var_3 = ~(u_input.d & var_1);
    let var_4 = var_2.x != any(vec3<bool>(all(!global0.xx), max(1i, var_1) == -var_1, global0.x));
    let var_5 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1756f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1962f))), vec2<f32>(var_0, _wgslsmith_f_op_f32(-191f * var_0)))) + vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-887f * var_0) + _wgslsmith_div_f32(2080f, var_0)))));
    global1 = true;
    var var_6 = select(!(!vec3<bool>(any(vec3<bool>(false, true, false)), var_4, any(vec2<bool>(false, var_4)))), vec3<bool>(true, false, select(all(!vec4<bool>(true, false, true, var_4)), false, false && var_4)), true);
    let var_7 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.x, var_5.a.x, var_5.a.x))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.a.x, var_5.a.x, -891f) * vec3<f32>(1113f, var_0, var_5.a.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_5.a.x, -562f)))))), vec3<f32>(_wgslsmith_f_op_f32(-781f * _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(-213f + var_5.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, (_wgslsmith_mult_i32(0i, u_input.d) ^ -firstLeadingBit(u_input.c.x)) << (select(1u, abs(~41550u), var_7.x < -1000f) % 32u), ~select(~firstTrailingBit(vec2<u32>(u_input.e, global2.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, global2.x), vec2<u32>(37332u, u_input.e)), var_6.yy), vec4<u32>(~(~_wgslsmith_add_u32(15813u, 43966u)), u_input.e, abs(~(~0u)), ~_wgslsmith_add_u32(~16091u, ~global2.x)));
}

