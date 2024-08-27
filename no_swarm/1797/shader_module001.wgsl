struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), 1i, vec3<i32>(-34789i, 63120i, -15672i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = -1540f;
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2147483647i, global1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.b, 2147483647i, 34879i), vec4<i32>(global1.c.x, global1.c.x, global1.c.x, 2147483647i)), firstTrailingBit(global1.b))), vec4<i32>(-43495i, ~(~global1.c.x), countOneBits(global1.c.x), reverseBits(11943i))), -(~_wgslsmith_add_vec4_i32(~vec4<i32>(global1.c.x, global1.b, 2147483647i, 2147483647i), vec4<i32>(global1.c.x, global1.c.x, global1.b, -2147483647i))));
    return !select(global1.a, !(!global1.a), global1.a.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec4<u32> {
    global1 = Struct_1(!select(arg_0, vec4<bool>(true, true, global1.a.x, true), func_3(!arg_0.x, ~u_input.b, u_input.a)), global1.b, _wgslsmith_sub_vec3_i32(max(abs(vec3<i32>(6073i, global1.c.x, global1.b)), vec3<i32>(-1i, global1.c.x, global1.b)) >> (vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)), global1.c));
    global0 = any(vec3<bool>(!arg_0.x, all(vec4<bool>(!arg_0.x, true, true, true)), global1.a.x));
    let var_0 = u_input.b;
    var var_1 = Struct_1(!arg_0, ~firstTrailingBit(-global1.b), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(global1.c ^ global1.c, abs(global1.c)), _wgslsmith_add_vec3_i32(countOneBits(global1.c), global1.c & global1.c), select(min(vec3<i32>(global1.c.x, -2147483647i, -2147483647i), vec3<i32>(7615i, global1.b, global1.c.x)), _wgslsmith_add_vec3_i32(vec3<i32>(global1.b, global1.b, -2147483647i), vec3<i32>(-2147483647i, 2147483647i, 17282i)), false || arg_0.x)), countOneBits(vec3<i32>(firstLeadingBit(global1.c.x), global1.b, global1.b)), ~abs(global1.c)));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1065f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1414f, arg_1.x, false)) * _wgslsmith_f_op_f32(322f - 1720f))))));
    return vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(select(u_input.a, vec3<u32>(var_0.x, var_0.x, 68590u), var_1.a.xzw), vec3<u32>(u_input.b.x, 1u, var_0.x))), ~u_input.a.x), 2517u, u_input.a.x, 4294967295u ^ ~_wgslsmith_clamp_u32(u_input.a.x, 0u, var_0.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = ~func_2(global1.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(996f, 158f, -1553f, -1014f)))));
    global0 = true;
    let var_1 = ~arg_1.c.yx;
    var var_2 = Struct_1(vec4<bool>(any(vec4<bool>(true, !global1.a.x, func_3(true, var_0.yy, var_0.yzy).x, any(vec3<bool>(arg_1.a.x, arg_1.a.x, false)))), arg_1.a.x, all(global1.a), arg_1.a.x), _wgslsmith_div_i32(-13321i, _wgslsmith_mod_i32(-arg_2, 13198i & arg_1.c.x)), reverseBits(max(vec3<i32>(arg_0.x, -22694i, _wgslsmith_dot_vec2_i32(var_1, arg_1.c.zx)), arg_1.c)));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-525f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(floor(-1691f))) + _wgslsmith_f_op_f32(round(-260f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(209f, -598f, -1000f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(680f, 281f, -182f))))))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(select(select(select(vec4<bool>(false, true, true, true), global1.a, global1.a.x), global1.a, true), !global1.a, !select(global1.a, global1.a, vec4<bool>(true, global1.a.x, true, true))), global1.a, !(!global1.a.x)), reverseBits(_wgslsmith_div_i32(firstTrailingBit(-global1.b), ~func_1(global1.c, Struct_1(global1.a, global1.b, global1.c), global1.b))), ~global1.c);
    var var_0 = _wgslsmith_mod_u32(u_input.b.x, firstLeadingBit(u_input.a.x)) <= u_input.b.x;
    global1 = Struct_1(vec4<bool>(global1.a.x, !global1.a.x, !(!global1.a.x), !(_wgslsmith_clamp_u32(20503u, 79924u, u_input.a.x) >= 4294967295u)), abs(-21814i), global1.c & global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, global1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1410f, 237f, -931f, -617f), vec4<f32>(-1809f, 687f, -919f, 223f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1433f, _wgslsmith_f_op_f32(step(-512f, _wgslsmith_f_op_f32(round(1393f)))), _wgslsmith_f_op_f32(f32(-1f) * -1940f)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-289f)) * _wgslsmith_f_op_f32(round(-2555f))), 1659f, -1912f)), 5663i);
}

