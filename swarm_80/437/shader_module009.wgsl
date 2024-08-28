struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> u32 {
    let var_0 = ~45238u;
    var var_1 = ~(~(~abs(54876u)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-626f, -1288f))));
    let var_3 = any(vec4<bool>(arg_1, !(!arg_1), u_input.a < 0u, true));
    var var_4 = Struct_2(vec2<bool>(false | !(!arg_1), !((arg_0.x >> (u_input.c.x % 32u)) > select(17487i, u_input.b, var_3))), arg_0.x, ~0u, Struct_1(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -45973i), vec2<i32>(22908i, arg_0.x)), -firstLeadingBit(-1i), min(~arg_0.x, arg_0.x ^ 30021i), u_input.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(850f, var_2, var_2))))), 1i, 89796u));
    return var_0;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    var var_0 = u_input.b;
    var var_1 = any(vec2<bool>(!select(false, true, arg_0), func_3(vec3<i32>(0i, u_input.b, u_input.b), arg_0) <= _wgslsmith_clamp_u32(1u, arg_1.x, arg_1.x))) & (~func_3(abs(vec3<i32>(u_input.b, -33662i, u_input.b)), u_input.b != -2147483647i) > 0u);
    let var_2 = Struct_2(vec2<bool>(true, true), 25762i, 107918u, Struct_1(-((vec4<i32>(u_input.b, -18567i, u_input.b, 2528i) << (vec4<u32>(58433u, 94770u, u_input.c.x, 46421u) % vec4<u32>(32u))) | select(vec4<i32>(45927i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 32404i, 31221i, u_input.b), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, -220f, 255f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1437f, 863f, 464f)), vec3<f32>(1702f, 491f, 1472f)), select(select(vec3<bool>(true, false, arg_0), vec3<bool>(false, false, true), vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false), false))), -18138i, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, select(arg_1.x, 1u, arg_0), abs(4294967295u)), arg_1)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_2.d.b)));
    var_0 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(var_2.d.a.xxx << (u_input.c % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(firstTrailingBit(var_2.d.a.yxx), var_2.d.a.yww)), u_input.b);
    return u_input.b;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b;
    var_0 = -max(~_wgslsmith_div_i32(_wgslsmith_add_i32(0i, u_input.b), _wgslsmith_mod_i32(28424i, 5745i)), _wgslsmith_mult_i32(-func_2(false, u_input.c), -u_input.b));
    let var_1 = u_input.a;
    var var_2 = countOneBits(u_input.a);
    let var_3 = Struct_2(vec2<bool>(false, false), min(2147483647i, firstTrailingBit(~(-u_input.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, ~(~81532u)), ~vec2<u32>(_wgslsmith_mult_u32(u_input.a, 1u), 1u)), Struct_1(vec4<i32>(-22457i & u_input.b, -2147483647i, 52305i, select(i32(-1i) * -25734i, abs(u_input.b), all(vec2<bool>(true, true)))), vec3<f32>(1f, 1f, 1f), 1i, ~var_1));
    return Struct_1(var_3.d.a, vec3<f32>(var_3.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.d.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f * -1047f) * _wgslsmith_div_f32(-691f, 484f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.d.b.x * var_3.d.b.x))))), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(27837u, 13551u, ~u_input.c.x), ~select(vec3<u32>(79291u, var_1, 31889u), vec3<u32>(4294967295u, 1u, 84213u), !vec3<bool>(false, true, var_3.a.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_1.b;
    var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.x))), var_0.x, true)), arg_2.b.x), arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(280f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b.x))), -365f, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1.b - arg_2.b)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-156f, 1528f, _wgslsmith_f_op_f32(min(-418f, -1201f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1.b, arg_2.b)))));
    let var_1 = func_1();
    return Struct_2(select(!vec2<bool>(-26133i >= arg_0, arg_1.d != 6208u), vec2<bool>(true, true), abs(_wgslsmith_clamp_u32(u_input.c.x, 95250u, arg_1.d)) == _wgslsmith_mod_u32(func_3(vec3<i32>(var_1.a.x, 10651i, arg_0), true), ~arg_2.d)), -2147483647i, 0u, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_div_vec3_i32(vec3<i32>(26615i, u_input.b, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(34495i, -1514i, -1i)))) << (firstTrailingBit(vec3<u32>(u_input.a, ~39994u, 0u)) % vec3<u32>(32u));
    let var_1 = func_4(1i >> (min((u_input.a >> (79028u % 32u)) | min(20010u, u_input.a), firstLeadingBit(u_input.a)) % 32u), func_1(), Struct_1(~vec4<i32>(~u_input.b, var_0.x, firstLeadingBit(u_input.b), ~var_0.x), vec3<f32>(967f, 593f, _wgslsmith_f_op_f32(step(1528f, -689f))), abs(countOneBits(1i)), firstLeadingBit(u_input.a)));
    let var_2 = Struct_1(firstTrailingBit(var_1.d.a), var_1.d.b, 12930i, ~38809u);
    var var_3 = Struct_1(_wgslsmith_mult_vec4_i32(~var_2.a, _wgslsmith_add_vec4_i32(~vec4<i32>(-14361i, var_2.a.x, 61621i, -1i), var_1.d.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.b)) - var_1.d.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.b, var_1.d.b)))), _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(-25565i, var_2.c)), 4294967295u);
    var_3 = Struct_1(vec4<i32>(~(-_wgslsmith_add_i32(32979i, var_2.c)), func_4(1i, var_1.d, Struct_1(countOneBits(var_3.a), _wgslsmith_f_op_vec3_f32(select(var_1.d.b, var_1.d.b, vec3<bool>(var_1.a.x, true, var_1.a.x))), 49451i, abs(var_3.d))).d.c, func_1().c, _wgslsmith_mult_i32(-2147483647i, ~u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-944f, var_1.d.b.x, var_1.d.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b.x, 565f, -527f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, -278f, func_1().b.x))), var_1.b, var_3.d);
    var_3 = func_1();
    var var_4 = 8285i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.a.xw, _wgslsmith_f_op_vec3_f32(-var_2.b));
}

