struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, false));

var<private> global1: Struct_4;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec3<bool>) -> bool {
    global0 = array<vec2<bool>, 1>();
    var var_0 = Struct_1(!(!(!arg_1)));
    global0 = array<vec2<bool>, 1>();
    global1 = Struct_4(9316u, countOneBits(_wgslsmith_div_u32(~81505u ^ u_input.b, u_input.b)));
    let var_1 = Struct_1(true);
    return arg_3.x;
}

fn func_3() -> u32 {
    global0 = array<vec2<bool>, 1>();
    var var_0 = ~(~firstLeadingBit(vec3<u32>(u_input.b ^ 15469u, ~global1.b, ~global1.a)));
    global1 = Struct_4(0u | ~_wgslsmith_mod_u32(global1.b >> (55026u % 32u), reverseBits(16618u)), max(0u, 0u));
    let var_1 = Struct_2(28432i, !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), Struct_1(any(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -269f);
    return global1.b;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(all(vec4<bool>(!func_2(Struct_1(true), false, Struct_3(Struct_1(false), Struct_1(false), Struct_1(true), true), vec3<bool>(false, false, true)), select(true, true, false), true, true)));
    let var_1 = vec3<u32>(~arg_1.x, reverseBits(69888u), ~(1u >> (func_3() % 32u)));
    global1 = Struct_4(_wgslsmith_add_u32(arg_1.x, u_input.b) | 18655u, u_input.b);
    let var_2 = vec4<bool>(true, any(!(!vec3<bool>(var_0.a, false, var_0.a))), var_0.a, var_0.a);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(-1686f, 153f), _wgslsmith_div_f32(870f, _wgslsmith_f_op_f32(f32(-1f) * -210f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))))));
    return Struct_1(!var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, -1i), reverseBits(15823i)), true, func_1(u_input.a << (1u % 32u), vec4<u32>(u_input.b, select(global1.b, ~0u, true), reverseBits(0u), ~global1.b)));
    global0 = array<vec2<bool>, 1>();
    var var_1 = vec3<bool>(!var_0.b, firstTrailingBit(u_input.a >> (u_input.b % 32u)) == u_input.a, true);
    var var_2 = func_1(-((0i >> (u_input.b % 32u)) | max(u_input.a, reverseBits(-2147483647i))), ~max(vec4<u32>(u_input.b, 1u, global1.b, ~55951u), ~(vec4<u32>(global1.a, 0u, 0u, global1.a) & vec4<u32>(39906u, 8157u, global1.a, 66857u))));
    global1 = Struct_4(u_input.b, ~_wgslsmith_add_u32(global1.b, 63960u));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, -422f)), -1699f)), _wgslsmith_f_op_f32(trunc(1f))))));
    let var_4 = Struct_3(var_0.c, Struct_1(true), Struct_1(-u_input.a <= var_0.a), _wgslsmith_dot_vec3_i32(firstTrailingBit(abs(vec3<i32>(-15711i, -1i, -9333i))), select(vec3<i32>(1i, u_input.a, -1i) | vec3<i32>(1i, u_input.a, -52518i), abs(vec3<i32>(var_0.a, var_0.a, u_input.a)), all(vec4<bool>(true, var_1.x, true, true)))) >= -47494i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.a, min(-13389i, ~(u_input.a ^ -68845i)), _wgslsmith_div_i32(9914i, -1i)), vec3<f32>(var_3, -318f, -895f), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(~var_0.a), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -30351i), _wgslsmith_add_vec2_i32(vec2<i32>(4316i, u_input.a), vec2<i32>(var_0.a, 2147483647i))), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, -2147483647i), 0i)), reverseBits(vec3<i32>(_wgslsmith_sub_i32(var_0.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-7247i, 18730i), vec2<i32>(-1i, 0i)), ~1i))), _wgslsmith_mult_vec3_i32(-(~(~vec3<i32>(u_input.a, 0i, u_input.a))), -vec3<i32>(min(u_input.a, -65079i), 1i, u_input.a)));
}

