struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 66548u;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = vec2<u32>(countOneBits(countOneBits(firstLeadingBit(1u))), ~u_input.a);
    global0 = 1u;
    var_0 = vec2<u32>(4294967295u, u_input.a);
    let var_1 = Struct_5(Struct_2(vec3<i32>(~(~u_input.c), -firstLeadingBit(u_input.c), u_input.c | u_input.c), u_input.c), Struct_2(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.c)), u_input.c), _wgslsmith_sub_i32(-firstLeadingBit(2147483647i), ~u_input.c & (u_input.c << (u_input.a % 32u))) >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(114295u, var_0.x, 4764u, var_0.x), vec4<u32>(u_input.a, 1u, var_0.x, var_0.x) | vec4<u32>(var_0.x, u_input.b, u_input.a, 70111u))) % 32u));
    var var_2 = ~_wgslsmith_sub_u32(var_0.x, ~1u);
    return ~var_0.x;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = 1u;
    global0 = func_3();
    var var_1 = Struct_1(max(_wgslsmith_mult_u32(~0u, func_3() << (~var_0 % 32u)), u_input.b), ~(~firstTrailingBit(~vec2<u32>(var_0, 58464u))));
    let var_2 = Struct_5(Struct_2(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, 33512i)) & min(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(-2147483647i, -30720i, u_input.c)), firstLeadingBit(abs(vec3<i32>(2730i, u_input.c, u_input.c)))), 1393i), Struct_2(vec3<i32>(57370i, 1i, ~u_input.c << (_wgslsmith_add_u32(21202u, var_0) % 32u)), -28529i), _wgslsmith_mod_i32(-9641i, u_input.c));
    let var_3 = Struct_2(~_wgslsmith_div_vec3_i32(var_2.a.a & _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_2.a.a.x, var_2.b.b), vec3<i32>(-2147483647i, var_2.b.b, -64055i)), var_2.a.a), 0i);
    return false;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> bool {
    global0 = select(~(~18312u), ~u_input.b, !(!(!func_2(vec3<bool>(true, true, false)))));
    let var_0 = Struct_5(Struct_2(-arg_1.a, -1i), arg_1, _wgslsmith_mod_i32(0i, arg_1.a.x << (u_input.b % 32u)));
    var var_1 = Struct_1(26426u, ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.a, 74046u), reverseBits(vec4<u32>(48570u, u_input.b, u_input.b, u_input.b))), func_3()));
    var_1 = Struct_1(u_input.a | countOneBits(func_3()), var_1.b);
    let var_2 = arg_0;
    return _wgslsmith_clamp_u32(0u, var_1.a, (1u << (1u % 32u)) ^ u_input.b) != 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.a | 0u) >> (u_input.b % 32u);
    let var_1 = select(!(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))), vec4<bool>(false, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true, true && !func_1(357f, Struct_2(vec3<i32>(1i, u_input.c, 0i), u_input.c))), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)), select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, false))), vec4<bool>(u_input.a <= u_input.a, true, true, true), true), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true))));
    var var_2 = u_input.c;
    global0 = _wgslsmith_dot_vec2_u32(abs(abs(reverseBits(~vec2<u32>(u_input.a, u_input.a)))), ~(~vec2<u32>(18007u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 20636u)))));
    let var_3 = vec4<f32>(281f, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1243f + -1005f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -630f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1462f)))));
    let var_4 = Struct_5(Struct_2(vec3<i32>(min(2147483647i, -1i), ~u_input.c, -u_input.c), -2147483647i), Struct_2(countOneBits(vec3<i32>(u_input.c, u_input.c, reverseBits(-23439i))), -1i), i32(-1i) * -min(_wgslsmith_clamp_i32(-32297i, -16296i, u_input.c), 18184i));
    var_0 = _wgslsmith_mod_u32(u_input.a, u_input.a);
    let var_5 = select(~vec4<i32>(1i, countOneBits(firstTrailingBit(20035i)), ~0i, countOneBits(u_input.c) & (-47686i >> (u_input.a % 32u))), ~vec4<i32>(-20372i, var_4.c, firstTrailingBit(var_4.c), u_input.c), var_1.x);
    var var_6 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(var_5.x), ~(~var_4.c) | ~(~(-20327i)), firstTrailingBit(_wgslsmith_clamp_i32(min(u_input.c, 0i), abs(-1i), _wgslsmith_mult_i32(70083i, var_5.x)))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 27293u, 0u), ~vec3<u32>(u_input.a, 18782u, 4294967295u)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(13051u, 54482u, 6170u) ^ vec3<u32>(17224u, u_input.a, 122606u), select(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(0u, 1u, 0u), var_1.x)), vec3<u32>(~1u, ~u_input.b, countOneBits(u_input.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x) * var_3.zxw)) * var_3.xzw) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, 198f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.yxw + var_3.zzy) * _wgslsmith_f_op_vec3_f32(-var_3.yxz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, -1000f))))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, -2147483647i), vec3<i32>(-4264i, var_4.b.a.x, var_4.b.b)), _wgslsmith_clamp_i32(var_4.b.b, var_4.c, -2147483647i), -20656i, countOneBits(51284i)) & var_5);
}

