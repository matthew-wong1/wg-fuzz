struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(97085u), Struct_1(0u), Struct_1(23538u), Struct_1(35446u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(22916u), Struct_1(62409u), Struct_1(306u), Struct_1(90896u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = true == !global0.c.a;
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -u_input.a, u_input.a, u_input.a), vec4<i32>(165i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 1i, -19838i, 3092i), _wgslsmith_sub_vec4_i32(vec4<i32>(55362i, -1041i, u_input.a, 33472i), vec4<i32>(-5142i, -28567i, u_input.a, 32606i))), -firstLeadingBit(u_input.a), u_input.a | max(0i, u_input.a)) & ~vec4<i32>(countOneBits(u_input.a), _wgslsmith_sub_i32(u_input.a, 0i), u_input.a, firstLeadingBit(u_input.a)));
    return countOneBits(~4294967295u);
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_4) -> u32 {
    var var_0 = vec2<bool>(true, false);
    var_0 = select(arg_2.a.yz, vec2<bool>(any(vec2<bool>(false, true)), any(!(!vec4<bool>(true, false, false, var_0.x)))), !vec2<bool>(global0.a.x, !(arg_1.x > 1680f)));
    var var_1 = _wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-14497i, 0i, -2147483647i)), (vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)) & (vec3<i32>(1i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 2147483647i, u_input.a))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 52159i), vec2<i32>(2147483647i, u_input.a)), 7944i), -reverseBits(vec3<i32>(28868i, u_input.a, 17807i))), _wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_clamp_i32(0i, u_input.a, u_input.a), -36937i), vec3<i32>(30844i, 1i, 0i))));
    var_0 = !(!arg_2.a.yz);
    global1 = array<Struct_1, 10>();
    return ~arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(~_wgslsmith_div_u32(func_2(global0.c.a, global0.c.a), max(1u, 67576u)) > func_3(~(~global0.b.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-949f, -1335f, 542f, -1000f)), vec4<f32>(377f, -107f, 1145f, -1443f))), Struct_4(select(global0.a, global0.a, vec3<bool>(global0.c.a, true, global0.a.x)), Struct_1(global0.b.a), global0.c, Struct_1(1u))), true);
    var var_1 = global0.c;
    let var_2 = u_input.a;
    global0 = Struct_4(vec3<bool>(false, all(vec4<bool>(all(vec4<bool>(var_1.a, false, false, var_0.x)), any(vec2<bool>(var_0.x, false)), select(var_1.a, global0.a.x, true), true)), var_1.a), global0.b, global0.c, Struct_1(~4294967295u));
    return Struct_1(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global0.a, func_1(), Struct_3(select(select(all(vec4<bool>(true, global0.a.x, global0.c.a, false)), any(vec4<bool>(global0.c.a, global0.c.a, true, false)), global0.a.x | false), select(global0.a.x, global0.c.a, false), any(select(vec3<bool>(global0.a.x, global0.a.x, false), global0.a, global0.a.x)))), global0.d);
    var var_1 = 43148u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1251f, -1148f)), _wgslsmith_f_op_f32(-510f * _wgslsmith_f_op_f32(step(-289f, 376f))))), vec2<i32>(-1i) * -vec2<i32>(u_input.a, -2147483647i));
}

