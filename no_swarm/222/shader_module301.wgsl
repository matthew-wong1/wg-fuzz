struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: f32 = 506f;

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: bool;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    global1 = array<vec2<bool>, 2>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))));
    global3 = Struct_2(_wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(-1i, -1i), 1i), select(_wgslsmith_mult_vec2_i32(global3.a, vec2<i32>(arg_0.c, 29012i)), vec2<i32>(-14140i, u_input.a.x), vec2<bool>(global3.b.x, false)) << (_wgslsmith_div_vec2_u32(~vec2<u32>(1u, global3.c.b), vec2<u32>(4294967295u, global3.c.b)) % vec2<u32>(32u)), vec2<i32>(global3.a.x, ~arg_0.c)), global3.b, Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1297f, var_0, global3.c.a.x) - _wgslsmith_f_op_vec3_f32(sign(arg_0.a))))), global3.c.d, abs(-1i) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.c.d, 23015u, arg_0.b), ~vec3<u32>(1u, arg_0.d, arg_0.d)) % 32u), 74998u));
    let var_1 = 2147483647i;
    var var_2 = -701f;
    return _wgslsmith_div_i32(i32(-1i) * -34790i, u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global3 = Struct_2(select(vec2<i32>(func_3(arg_2, vec4<f32>(630f, arg_2.a.x, arg_2.a.x, arg_2.a.x)), 2147483647i) >> (select(reverseBits(vec2<u32>(arg_2.d, 1u)), ~vec2<u32>(global3.c.b, arg_2.b), vec2<bool>(true, arg_0)) % vec2<u32>(32u)), u_input.a, true && any(global3.b)), vec4<bool>(true, !any(vec2<bool>(arg_0, arg_0)) & true, arg_0, true), arg_2);
    var var_0 = Struct_2(~global3.a, global3.b, global3.c);
    let var_1 = Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a << (vec2<u32>(arg_2.d, global3.c.d) % vec2<u32>(32u)), vec2<i32>(9188i, -14271i)), var_0.a) >> (vec2<u32>(4294967295u, _wgslsmith_div_u32(~0u, arg_2.b << (global3.c.b % 32u))) % vec2<u32>(32u)), global3.b, global3.c);
    let var_2 = u_input.a.x;
    var var_3 = vec2<u32>(var_0.c.b, _wgslsmith_sub_u32(min(~arg_2.d, global3.c.d << (4294967295u % 32u)), firstLeadingBit(arg_2.b))) | ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(2716u, var_1.c.b), vec2<u32>(1u, 4294967295u) >> (vec2<u32>(var_0.c.d, 41548u) % vec2<u32>(32u)), vec2<u32>(global3.c.b, arg_2.d)) & ~(~vec2<u32>(arg_2.b, 79782u)));
    return arg_2;
}

fn func_1(arg_0: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 25352i, ~_wgslsmith_sub_i32(global3.a.x, 1i), i32(-1i) * -7248i), -vec4<i32>(~global3.a.x, abs(global3.a.x), -1i, 22850i ^ u_input.a.x)) | reverseBits(max(~(~vec4<i32>(16249i, 2147483647i, -1i, 25931i)), ~(-vec4<i32>(global3.c.c, -1906i, global3.a.x, 15880i))));
    let var_1 = global3.c.a.x;
    var var_2 = global3.c;
    let var_3 = func_2(!global3.b.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-104f * 349f) + global3.c.a.x)), arg_0, var_2.a.x), global3.c);
    global3 = Struct_2(u_input.a, global3.b, var_3);
    return -(~vec2<i32>(0i, ~global3.c.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c.a.x);
    return global3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>((global3.c.d > 12657u) | !global3.b.x, func_4(Struct_2(max(firstTrailingBit(global3.a), ~vec2<i32>(-1i, u_input.a.x)), select(!vec4<bool>(global3.b.x, true, global3.b.x, global3.b.x), !vec4<bool>(true, global3.b.x, global3.b.x, global3.b.x), vec4<bool>(global3.b.x, global3.b.x, global3.b.x, true)), global3.c), Struct_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -908f)), select(vec4<bool>(global3.b.x, global3.b.x, global3.b.x, false), !global3.b, true), global3.c), _wgslsmith_add_i32(u_input.a.x, global3.c.c), func_2(!all(vec3<bool>(false, global3.b.x, true)), _wgslsmith_f_op_vec3_f32(-global3.c.a), Struct_1(global3.c.a, 4294967295u | global3.c.b, 1i, 2678u))));
    var var_1 = global3.c;
    var var_2 = !(-770f >= global3.c.a.x);
    var var_3 = abs(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(469f + _wgslsmith_f_op_f32(max(var_1.a.x, 221f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1056f, _wgslsmith_f_op_f32(floor(413f)))) * global3.c.a.x)));
}

