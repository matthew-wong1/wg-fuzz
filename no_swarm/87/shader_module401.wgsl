struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(916f, 882f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1254f, -1057f)) * vec2<f32>(1348f, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1647f, 593f)))))));
    let var_0 = ~u_input.b;
    var var_1 = vec3<bool>(true, !(!all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), true);
    var_1 = vec3<bool>(~max(1u, abs(var_0.x)) < 1u, all(!(!(!vec4<bool>(var_1.x, false, var_1.x, true)))), var_1.x);
    return Struct_2(~max(0u, ~u_input.a), Struct_1(u_input.b.x | u_input.b.x));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -305f), global0.x)), global0.x))));
    let var_1 = Struct_3(~vec2<u32>(~arg_1.b.a, ~58011u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, arg_0.a), vec3<u32>(arg_0.b.a, u_input.a, arg_1.a))), ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, -38462i), vec2<i32>(u_input.d, 2147483647i) >> (u_input.b % vec2<u32>(32u))), ~vec2<i32>(u_input.c, 17470i)));
    var_0 = global0.x;
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2073f, -2325f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1483f, global0.x), vec2<f32>(-946f, global0.x)))))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(min(934f, -136f)), _wgslsmith_f_op_f32(sign(global0.x)));
    return u_input.d;
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 639f)))))))));
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_0.a, u_input.c), 36408i, i32(-1i) * -1i) ^ _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(arg_0.b.b.x, arg_0.a, 31036i)), ~vec3<i32>(arg_0.b.b.x, u_input.c, -10272i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.d, arg_0.b.b.x), vec3<i32>(arg_0.a, -2147483647i, -45660i)) | -max(vec3<i32>(20094i, arg_0.b.b.x, 22409i), vec3<i32>(2147483647i, u_input.c, u_input.c))) | -vec3<i32>(-1i, func_3(func_2(60281u, 2147483647i), Struct_2(arg_0.b.a.x, Struct_1(u_input.b.x))), abs(arg_0.b.b.x ^ 18364i));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -1840f), vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -1000f), vec2<f32>(-1537f, global0.x))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(548f, global0.x), vec2<f32>(-1383f, global0.x), arg_1))))), vec2<f32>(global0.x, 278f))));
    let var_1 = 4294967295u;
    var var_2 = 260f;
    return arg_0.b;
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_1(max(_wgslsmith_dot_vec3_u32(vec3<u32>(3434u, min(arg_0.a.x, 97679u), 51717u), vec3<u32>(39919u, 1u, ~u_input.a)), _wgslsmith_dot_vec2_u32(arg_0.a, _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x, 21164u), ~u_input.b))));
    var var_1 = ~arg_0.b.x;
    let var_2 = Struct_3(max(~arg_0.a, ~_wgslsmith_mod_vec2_u32(max(vec2<u32>(4294967295u, var_0.a), arg_0.a), vec2<u32>(arg_0.a.x, u_input.a))), firstTrailingBit(arg_0.b));
    var var_3 = Struct_1(_wgslsmith_div_u32(arg_0.a.x, 7379u));
    let var_4 = func_2(~_wgslsmith_mod_u32(~(~30388u), var_3.a), _wgslsmith_add_i32(func_1(Struct_4(2147483647i, Struct_3(vec2<u32>(var_0.a, 0u), vec2<i32>(arg_0.b.x, var_2.b.x))), select(false, true, false)).b.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-39439i, var_2.b.x, arg_0.b.x, u_input.d), vec4<i32>(arg_0.b.x, var_2.b.x, arg_0.b.x, -1i)), max(vec4<i32>(var_2.b.x, u_input.d, 0i, 1i), vec4<i32>(var_2.b.x, -1i, -1i, arg_0.b.x)), ~vec4<i32>(var_2.b.x, -8377i, -26335i, var_2.b.x)), vec4<i32>(18452i >> (arg_0.a.x % 32u), _wgslsmith_sub_i32(-35089i, -16297i), 1i, var_2.b.x)))).b;
    return -_wgslsmith_div_i32(u_input.c, 601i);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    let var_0 = arg_0;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(47956u, Struct_1(~u_input.b.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), 165f))) * vec2<f32>(_wgslsmith_f_op_f32(459f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))));
    let var_1 = func_5(Struct_4(_wgslsmith_mult_i32(-29910i, func_4(func_1(Struct_4(-51889i, Struct_3(vec2<u32>(48794u, 10770u), vec2<i32>(-22724i, 2147483647i))), true))), func_1(Struct_4(u_input.c, Struct_3(u_input.b, vec2<i32>(u_input.d, u_input.d))), all(vec2<bool>(true, true)))), func_1(Struct_4(-117649i, func_1(Struct_4(26295i, Struct_3(vec2<u32>(var_0.b.a, var_0.a), vec2<i32>(0i, -21926i))), true)), all(vec4<bool>(false, true, true, false)) | true));
    var var_2 = 1i;
    var var_3 = func_5(Struct_4(0i, Struct_3(vec2<u32>(u_input.b.x, 13555u) >> (vec2<u32>(u_input.a, 93600u) % vec2<u32>(32u)), vec2<i32>(u_input.d, 1i))), Struct_3(~select(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b.x, 542u), true), max(var_1.b, vec2<i32>(-16511i, 2147483647i)))).a.x > (20885u & min(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.a, 0u), 1u), countOneBits(var_0.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-1i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-13418i, 53914i, u_input.d, -2147483647i), vec4<i32>(u_input.c, var_1.b.x, 0i, 0i)), vec4<i32>(0i, 2147483647i, -32003i, 34530i) & vec4<i32>(0i, u_input.d, var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -306f, global0.x) + vec3<f32>(-1000f, global0.x, -1000f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1978f, global0.x)), reverseBits(_wgslsmith_sub_u32(0u, var_0.b.a)));
}

