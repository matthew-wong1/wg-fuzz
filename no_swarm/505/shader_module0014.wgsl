struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1875f, -1297f, 1946f, -686f));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> vec4<bool> {
    global1 = vec4<bool>(true, !(!select(global1.x, global1.x, global1.x)) || all(!(!vec4<bool>(global1.x, global1.x, global1.x, false))), !global1.x, !global1.x);
    var var_0 = vec4<i32>(-u_input.b, 0i, ~min(arg_0.x, (-67214i << (u_input.a % 32u)) << ((u_input.a << (76966u % 32u)) % 32u)), 8425i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 29326u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(68913u, 0u)), countOneBits(vec2<u32>(37775u, u_input.a)))) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(404f + global0.a.x), 531f, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1539f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(global0.a))))));
    var var_2 = -986f;
    var var_3 = ~_wgslsmith_mult_i32(-3309i, 0i);
    return select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, false, false, global1.x), global1.x);
}

fn func_2() -> vec3<u32> {
    global1 = func_3((_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.b, u_input.b)) | -vec2<i32>(u_input.b, u_input.b)) ^ vec2<i32>(-u_input.b, ~1i), global0.a.x);
    let var_0 = vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-496f * _wgslsmith_f_op_f32(select(221f, global0.a.x, true))))));
    var var_1 = global1.x;
    let var_2 = Struct_1(vec4<f32>(-1152f, -883f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.a.x, 342f)))), _wgslsmith_f_op_f32(446f + var_0.x), (u_input.b << (0u % 32u)) >= (u_input.b << (u_input.a % 32u))))));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1985f - _wgslsmith_f_op_f32(var_0.x - 1123f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.a.x, var_0.x)))), 832f, _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(226f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -852f) - _wgslsmith_div_f32(-988f, 331f)))));
    return reverseBits(reverseBits(vec3<u32>(~5592u, ~1u, 1u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(11155u, 7270u, 1u) | vec3<u32>(22602u, u_input.a, u_input.a), vec3<u32>(u_input.a, 14581u, 55118u)) % vec3<u32>(32u))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f * global0.a.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0))), arg_0));
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_mult_i32(max(u_input.b, -1i), u_input.b), _wgslsmith_sub_i32(u_input.b, u_input.b) >> (4294967295u % 32u), ~(~u_input.b)) & _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 21748i, 12740i, -2147483647i), vec4<i32>(u_input.b, -2147483647i, -2147483647i, u_input.b)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, u_input.b, -2147483647i, 2147483647i), -vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b))), vec4<i32>(-1i, _wgslsmith_clamp_i32(u_input.b, _wgslsmith_clamp_i32(i32(-1i) * -32i, firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, 0i), vec4<i32>(-50599i, u_input.b, -1i, u_input.b))), _wgslsmith_clamp_i32(reverseBits(u_input.b), abs(33345i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)))), u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b)));
    var var_2 = vec3<u32>(abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, 10822u), vec3<u32>(u_input.a, 24900u, 4294967295u), arg_1.x), func_2()) >> ((_wgslsmith_add_u32(1u, u_input.a) & 42624u) % 32u)), 38124u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 6949u) | vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 49883u), vec2<bool>(true, false)) & ~(vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u) >> ((vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(44861u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), (vec2<u32>(1u, u_input.a) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) ^ vec2<u32>(68056u, u_input.a), ~countOneBits(vec2<u32>(u_input.a, u_input.a)))));
    let var_3 = global0.a.x;
    var var_4 = Struct_2(!select(!(!arg_1), vec4<bool>(global1.x, arg_1.x, all(global1.ywx), false | global1.x), !all(vec4<bool>(arg_1.x, global1.x, arg_1.x, false))), ~vec4<i32>(_wgslsmith_mod_i32(1i, u_input.b), -1i, var_1.x, ~u_input.b));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(global0.a, global0.a)))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    global1 = !func_3(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2, u_input.b) >> (vec2<u32>(u_input.a, 6234u) % vec2<u32>(32u)), ~vec2<i32>(arg_2, arg_2) >> (~vec2<u32>(arg_3, 0u) % vec2<u32>(32u))), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2310f + global0.a.x)))));
    global1 = func_3(max(firstTrailingBit(select(vec2<i32>(arg_2, 20395i) | vec2<i32>(arg_2, u_input.b), firstTrailingBit(vec2<i32>(u_input.b, arg_2)), global1.x)), reverseBits(~vec2<i32>(arg_2, 55145i)) ^ (vec2<i32>(-1i) * -vec2<i32>(6598i, u_input.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2223f - 972f)))), _wgslsmith_div_f32(-100f, _wgslsmith_f_op_f32(-1724f + _wgslsmith_f_op_f32(-global0.a.x))))));
    var var_0 = Struct_2(vec4<bool>(true, all(func_3(-vec2<i32>(u_input.b, 1i), global0.a.x).yzx), global1.x, any(func_3(vec2<i32>(u_input.b, u_input.b) & vec2<i32>(32584i, -1i), _wgslsmith_f_op_f32(-134f - arg_1.a.x)).wy)), -(vec4<i32>(0i, u_input.b, arg_2, _wgslsmith_sub_i32(-19379i, 78582i)) | vec4<i32>(-1i, _wgslsmith_clamp_i32(-1i, -2147483647i, u_input.b), -arg_2, 1i)));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(max(var_0.b, var_0.b), vec4<i32>(u_input.b, u_input.b, -12984i, 36740i), func_3(var_0.b.yw, global0.a.x)), select(_wgslsmith_add_vec4_i32(vec4<i32>(-49953i, -1i, 52738i, arg_2), vec4<i32>(var_0.b.x, 61541i, 37865i, arg_2)), var_0.b, vec4<bool>(var_0.a.x, arg_0, true, arg_0))), -vec4<i32>(firstLeadingBit(2147483647i), _wgslsmith_add_i32(var_0.b.x, 47734i), reverseBits(1i), ~var_0.b.x)), u_input.b ^ -1i);
    let var_2 = Struct_2(!func_3(var_0.b.xw, _wgslsmith_f_op_f32(-global0.a.x)), var_0.b);
    return arg_1;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(vec4<bool>(global1.x, select(false, !(!global1.x), u_input.b >= countOneBits(488i)), global1.x, all(vec4<bool>(true, global1.x, global1.x || false, global1.x))), vec4<i32>(countOneBits(u_input.b) >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), abs(u_input.a)) % 32u), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 17996i, u_input.b, -8845i), vec4<i32>(0i, 3698i, 0i, u_input.b))), u_input.b, min(u_input.b, u_input.b)));
    var var_1 = select(global1.zyw, select(global1.ywx, !var_0.a.wwz, true && select(false, false, all(vec2<bool>(false, true)))), global1.x);
    let var_2 = Struct_2(func_3(select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, var_0.b.x), global1.x) << (~(vec2<u32>(arg_0.x, 93466u) & vec2<u32>(u_input.a, 64839u)) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(745f)), _wgslsmith_f_op_f32(step(arg_1.a.x, -1145f)))), min(var_0.b, -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_0.b.x, u_input.b, u_input.b), vec4<i32>(-74998i, var_0.b.x, -49228i, -26837i))));
    var var_3 = func_4(func_3(vec2<i32>(select(var_2.b.x, abs(2147483647i), true), _wgslsmith_add_i32(abs(-22680i), ~var_2.b.x)), func_4(!any(vec4<bool>(var_1.x, false, var_0.a.x, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a)), 0i, firstLeadingBit(firstTrailingBit(u_input.a))).a.x).x, arg_1, ~(-(_wgslsmith_clamp_i32(var_2.b.x, var_2.b.x, -8928i) >> (~0u % 32u))), u_input.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 224f, -732f, -211f))), global0.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-786f, 621f, arg_1.a.x, 825f), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1255f), _wgslsmith_div_f32(1131f, arg_1.a.x)), vec4<bool>(any(var_1.yz), global1.x, true, true)))));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(func_5(~max(vec4<u32>(u_input.a, 4294967295u, u_input.a, 23312u) & vec4<u32>(4294967295u, 41095u, 1u, u_input.a), abs(vec4<u32>(1u, 1u, 4294967295u, u_input.a))), func_4(global1.x, func_1(_wgslsmith_f_op_f32(-global0.a.x), vec4<bool>(global1.x, global1.x, global1.x, false)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), vec4<i32>(-18168i, u_input.b, u_input.b, 0i)), abs(select(u_input.a, u_input.a, global1.x)))), 0u <= ~u_input.a, false, true);
    let var_0 = Struct_2(select(select(select(vec4<bool>(false, true, global1.x, false), !vec4<bool>(global1.x, true, false, global1.x), true), select(func_3(vec2<i32>(71953i, 13969i), global0.a.x), vec4<bool>(global1.x, global1.x, true, false), any(vec4<bool>(global1.x, false, global1.x, global1.x))), true), vec4<bool>(true, any(func_3(vec2<i32>(3336i, u_input.b), 1131f).wy), global1.x, !(2147483647i != u_input.b)), -u_input.b >= 1i), max(vec4<i32>(u_input.b, ~(-2147483647i), u_input.b, _wgslsmith_add_i32(-1i, u_input.b)), -vec4<i32>(u_input.b, u_input.b, u_input.b, 7908i) >> (~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)) % vec4<u32>(32u))));
    var var_1 = var_0;
    let var_2 = Struct_1(global0.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_2.a + var_2.a))))));
    let var_4 = global1.zyw;
    var var_5 = var_2.a.xzx;
    var_5 = vec3<f32>(-616f, 157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * var_5.x)));
    global1 = !var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, vec4<f32>(205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(global0.a.x - 1288f), _wgslsmith_f_op_f32(-var_2.a.x)), vec2<f32>(global0.a.x, global0.a.x), vec4<f32>(var_3.x, var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-497f, 1773f) - -556f), 328f), -1386f));
}

