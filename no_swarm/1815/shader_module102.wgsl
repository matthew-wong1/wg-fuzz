struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    var var_0 = select(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, 4878i, 34595i, 16097i), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, 21756i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, 4294967295u, arg_1.a, 0u), max(vec4<u32>(arg_0.x, arg_2.x, arg_0.x, 4294967295u), vec4<u32>(1u, 0u, 38729u, 24451u)), ~vec4<u32>(0u, arg_2.x, u_input.d, 1u)) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c.x, u_input.e, u_input.c.x, -11807i), vec4<i32>(u_input.e, -2147483647i, u_input.e, u_input.c.x)), select(select(select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, global1.x, global1.x, true)), vec4<bool>(true, global1.x, true, true), true), !select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, true), global1.x), select(any(vec2<bool>(true, global1.x)), !global1.x, true))), select(~_wgslsmith_mult_vec4_i32(vec4<i32>(3227i, -2147483647i, 15138i, 19638i), vec4<i32>(u_input.e, 2147483647i, u_input.c.x, u_input.c.x)) >> (vec4<u32>(u_input.a.x, arg_1.a, 1u, firstTrailingBit(u_input.b.x)) % vec4<u32>(32u)), -vec4<i32>(34053i << (arg_0.x % 32u), 1i, u_input.e, 1i), false), global1.x);
    let var_1 = arg_1;
    return -387f;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = 1i;
    var_0 = u_input.e;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b, Struct_2(arg_0.x), vec2<u32>(72898u, arg_0.x)))))), 1f, any(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), true)))), vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.e, 1i, 2147483647i), vec4<i32>(21960i, -1i, u_input.c.x, u_input.e))), vec4<i32>(u_input.c.x, 0i, -26642i, max(u_input.c.x, u_input.c.x))), firstTrailingBit(u_input.c.x), ~u_input.e, -2097i), 1u ^ u_input.d);
    var_0 = abs(u_input.e);
    var var_2 = !vec4<bool>(false, global1.x, any(select(select(vec2<bool>(true, true), vec2<bool>(global1.x, false), vec2<bool>(false, global1.x)), vec2<bool>(false, true), select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), vec2<bool>(false, true)))), global1.x);
    return 1i;
}

fn func_1() -> Struct_3 {
    let var_0 = any(vec2<bool>(true, true));
    global0 = 60122u;
    global0 = firstLeadingBit(u_input.d);
    var var_1 = vec4<i32>(u_input.c.x, (func_2(~vec3<u32>(u_input.a.x, 16623u, 0u)) >> (max(16570u, 37184u) % 32u)) << (max(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), vec3<u32>(u_input.b.x, 4294967295u, u_input.d))) % 32u), _wgslsmith_mult_i32(u_input.e, min(u_input.e << (0u % 32u), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, 20600i, -20515i)), -vec3<i32>(u_input.e, 0i, u_input.c.x)))), firstLeadingBit(abs(-10578i ^ u_input.c.x) | -35379i));
    var var_2 = var_1.x;
    return Struct_3(!(!vec3<bool>(!var_0, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~max(countOneBits(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(839u, u_input.d, 0u))), u_input.b) << (~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(137000u, u_input.a.x, 4294967295u), u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 1u, 22880u), vec3<u32>(18874u, 57865u, u_input.d))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 22961u, u_input.d), u_input.b))) % vec3<u32>(32u));
    global0 = ~countOneBits(4294967295u);
    let var_2 = Struct_3(vec3<bool>(any(vec4<bool>(true, true, !global1.x, all(var_0.a))), var_0.a.x, global1.x || var_0.a.x));
    var_0 = Struct_3(!var_0.a);
    let var_3 = global1.x;
    let var_4 = var_2.a.x;
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)), firstTrailingBit(~vec4<i32>(-u_input.e, -13727i, u_input.c.x, 2147483647i)), ~4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 48854u, var_1.x & 0u), u_input.b));
    var var_6 = countOneBits(var_5.b) & vec4<i32>(~var_5.b.x, ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_5.b.x, u_input.e, var_5.b.x), var_5.b.xwx), _wgslsmith_clamp_i32(var_5.b.x, u_input.e, -15932i)), _wgslsmith_mult_i32(func_2(vec3<u32>(var_1.x, var_5.c, 40316u)), -1i), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

