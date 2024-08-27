struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(54458u), 57553u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(22117u, u_input.b) & vec2<u32>(u_input.b, u_input.b), vec2<u32>(36094u, 4294967295u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(58196u, u_input.b, u_input.b, 1u), vec4<u32>(16605u, u_input.b, u_input.b, 1u)) | (reverseBits(vec4<u32>(1u, u_input.b, u_input.b, u_input.b)) >> (abs(vec4<u32>(41389u, 1u, u_input.b, u_input.b)) % vec4<u32>(32u)))));
    let var_1 = false;
    var var_2 = arg_1;
    var_2 = Struct_3(var_2.a, Struct_2(arg_1.b.a));
    var var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~(18219u << (1u % 32u)), firstTrailingBit(82652u << (u_input.b % 32u)), 0u), firstTrailingBit(abs(~vec3<u32>(u_input.b, var_0.x, var_0.x))));
    return vec4<i32>(arg_1.a.x, min(0i, -65290i), 15767i, -1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<i32> {
    var var_0 = arg_1.a.x;
    let var_1 = ~(~(~(~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))) << (~(~(~vec4<u32>(1970u, u_input.b, u_input.b, u_input.b))) % vec4<u32>(32u)));
    return vec3<i32>(arg_0.x, i32(-1i) * -reverseBits(_wgslsmith_dot_vec4_i32(arg_0, arg_0)), -u_input.a.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = 51833i;
    var var_1 = Struct_3(func_4(countOneBits(func_3(0i, Struct_3(vec3<i32>(u_input.a.x, 0i, -21589i), Struct_2(vec4<bool>(false, false, true, true))))), Struct_2(vec4<bool>(all(vec4<bool>(false, false, false, false)), true, true, false)), Struct_2(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true))), max(min(vec4<i32>(-18043i, u_input.a.x, 15269i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 23367i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 1i, 860i))), ~abs(vec4<i32>(u_input.a.x, u_input.a.x, -37661i, 14449i)))), Struct_2(vec4<bool>(true, true, true, true)));
    let var_2 = Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.x, ~(var_1.a.x | -2147483647i), ~(-var_1.a.x)), ~var_1.a & (vec3<i32>(-1i) * -vec3<i32>(var_1.a.x, 0i, 8572i))), var_1.b);
    var var_3 = Struct_2(!(!(!vec4<bool>(var_1.b.a.x, true, true, true))));
    var var_4 = countOneBits(-43135i);
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, ~firstLeadingBit(~u_input.b)), _wgslsmith_mod_u32(arg_1.x, u_input.b));
}

fn func_1() -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(782f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -880f) - _wgslsmith_f_op_f32(1650f * -299f)))), _wgslsmith_div_f32(-888f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-346f * 562f)))), -1103f);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.x))));
    var var_2 = select(vec4<bool>((_wgslsmith_f_op_f32(round(-282f)) <= 232f) && true, true, any(vec2<bool>(true, true)), u_input.b == func_2(vec4<f32>(var_0.x, -536f, -924f, var_0.x), abs(vec2<u32>(u_input.b, 96702u)))), !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true))), all(vec4<bool>(true, any(vec3<bool>(true, false, true)) || (u_input.a.x >= -2147483647i), firstLeadingBit(2147483647i) == u_input.a.x, true)));
    let var_3 = var_0.x;
    var var_4 = true;
    return var_2.xyx;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = arg_1.b;
    var_0 = arg_1.b;
    let var_1 = Struct_2(select(vec4<bool>(false, any(arg_1.b.a), !any(arg_1.b.a.xxz), arg_0.x), vec4<bool>(var_0.a.x, arg_1.b.a.x, false, arg_0.x), arg_1.b.a));
    var var_2 = any(!(!var_1.a.zyx)) & true;
    var_0 = arg_1.b;
    return Struct_1(var_0.a.yx, countOneBits(vec3<u32>(_wgslsmith_add_u32(~u_input.b, 4294967295u), u_input.b, u_input.b)), countOneBits(firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(52704u, u_input.b), vec2<u32>(0u, 5795u), vec2<u32>(u_input.b, u_input.b)), select(vec2<u32>(30772u, u_input.b), vec2<u32>(42475u, 0u), false)))), abs(~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(0u, 26951u, 101408u, 0u)), vec4<u32>(38861u, 34179u, u_input.b, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 378f;
    let var_1 = func_5(vec3<bool>(true, all(func_1()), all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)) && true), Struct_3(vec3<i32>(u_input.a.x, firstTrailingBit(11200i), firstTrailingBit(-u_input.a.x)), Struct_2(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true)))), vec2<i32>(-2147483647i, u_input.a.x));
    var var_2 = ~vec2<u32>(firstTrailingBit(28668u), 0u);
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec3<u32>(abs(43054u), var_2.x ^ func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 680f, var_0, var_0)), ~vec2<u32>(13266u, 21010u)), 20971u), ~vec2<u32>(u_input.b, abs(u_input.b)));
}

