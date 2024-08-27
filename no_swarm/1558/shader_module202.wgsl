struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> bool {
    let var_0 = Struct_2(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(35142u << (global0.c % 32u), global0.c, firstLeadingBit(32685u)), min(_wgslsmith_div_vec3_u32(vec3<u32>(global0.c, global0.c, 4294967295u), vec3<u32>(global0.c, 1u, global0.c)), vec3<u32>(60801u, global0.c, global0.c)))), Struct_1(select(-15321i, max(-1i, -1i) & _wgslsmith_add_i32(global0.d, global0.a), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, global0.b, any(vec3<bool>(false, true, true))))), global0.c, -14751i), Struct_1(-u_input.a.x, -1660f, 4294967295u, ~(global0.d << (_wgslsmith_clamp_u32(8403u, global0.c, global0.c) % 32u))), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(max(611f, _wgslsmith_f_op_f32(trunc(-111f))))), Struct_1(-(u_input.a.x ^ (i32(-1i) * -2147483647i)), -218f, select(~(global0.c << (0u % 32u)), ~global0.c << (global0.c % 32u), !all(vec4<bool>(false, false, false, true))), (countOneBits(u_input.a.x) >> (~0u % 32u)) | -58149i));
    var var_1 = var_0.e;
    var var_2 = var_0.c;
    let var_3 = var_0.e;
    var var_4 = var_0.e;
    return false;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: f32) -> vec4<u32> {
    let var_0 = vec2<u32>(33582u, 1u >> (global0.c % 32u));
    var var_1 = Struct_2(countOneBits(~(~(~vec3<u32>(var_0.x, global0.c, global0.c)))), Struct_1(arg_2, arg_1, 0u, ~u_input.a.x), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, -u_input.a.x, -26843i, _wgslsmith_mult_i32(arg_2, 4302i)), max(u_input.a << (vec4<u32>(var_0.x, 1u, var_0.x, 31135u) % vec4<u32>(32u)), u_input.a >> (vec4<u32>(var_0.x, var_0.x, 30099u, 4294967295u) % vec4<u32>(32u)))), global0.b, 51177u, -2147483647i), _wgslsmith_div_f32(_wgslsmith_div_f32(-2101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(813f, global0.b)) * _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(581f, 1052f), -259f, any(vec3<bool>(false, true, arg_0)) && func_3()))), Struct_1(u_input.a.x, arg_1, firstTrailingBit(countOneBits(4294967295u)), -1i));
    var_1 = Struct_2(vec3<u32>(_wgslsmith_sub_u32(var_0.x, 36794u), 34746u, min(var_1.c.c, var_0.x)), var_1.e, Struct_1(1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), global0.c, u_input.a.x), _wgslsmith_f_op_f32(-arg_3), var_1.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), arg_3), 1409f, arg_3) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(1000f * arg_1), 2214f, _wgslsmith_f_op_f32(-arg_1)))))));
    var var_3 = 1u;
    return reverseBits(~select(abs(vec4<u32>(0u, 25146u, 85820u, 0u)), vec4<u32>(47793u, 0u, global0.c, 33265u) & ~vec4<u32>(var_0.x, var_1.c.c, var_1.e.c, global0.c), arg_0));
}

fn func_1(arg_0: vec3<i32>) -> vec4<u32> {
    let var_0 = Struct_1(global0.a, -401f, ~30908u, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(global0.a, 34592i, u_input.a.x)), arg_0 & _wgslsmith_mult_vec3_i32(~arg_0, vec3<i32>(global0.d, u_input.a.x, -18764i))));
    let var_1 = var_0;
    let var_2 = false;
    global0 = Struct_1(-42948i, _wgslsmith_f_op_f32(abs(global0.b)), global0.c, _wgslsmith_div_i32(var_0.d, max(~(-2147483647i), -1i)));
    return reverseBits(max(reverseBits(vec4<u32>(var_0.c, global0.c, 4294967295u, 1u)) & min(vec4<u32>(global0.c, global0.c, var_1.c, var_0.c), vec4<u32>(4294967295u, var_1.c, 59748u, 1u)), func_2(var_2, -751f, u_input.a.x, var_0.b) << (~vec4<u32>(40245u, var_1.c, var_1.c, global0.c) % vec4<u32>(32u))) | (~vec4<u32>(var_1.c, var_0.c, 10338u, 0u) << (abs(vec4<u32>(4294967295u, var_1.c, 33201u, 4294967295u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = global0.b;
    global0 = Struct_1(_wgslsmith_add_i32(min(-2147483647i & u_input.a.x, 1i), -global0.d), 638f, arg_0.x, -_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, u_input.a.x), ~select(u_input.a.zy, vec2<i32>(2147483647i, global0.a), true)));
    var var_1 = global0.a;
    var var_2 = ~arg_0;
    let var_3 = u_input.a.x >> (8391u % 32u);
    return Struct_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, -2147483647i), u_input.a.x & var_3, select(-17210i, reverseBits(var_3), false)) | _wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(u_input.a.xxw, u_input.a.yzx), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 7987i, var_3), vec3<i32>(0i, u_input.a.x, var_3)), vec3<bool>(true, true, false)), select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(5185u, arg_0.x, global0.c) % vec3<u32>(32u)), u_input.a.xyy, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), 579f, countOneBits(~(~42958u)) >> (0u % 32u), ~(-var_3) & var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec4<u32>(_wgslsmith_dot_vec4_u32(func_1(firstTrailingBit(vec3<i32>(69705i, -17281i, u_input.a.x))), reverseBits(abs(vec4<u32>(27282u, 52955u, global0.c, 46401u)))), global0.c << (0u % 32u), _wgslsmith_mod_u32(countOneBits(4294967295u), global0.c), min(func_2(true, global0.b, firstTrailingBit(21825i), _wgslsmith_f_op_f32(step(global0.b, 162f))).x, ~global0.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 53408u), vec2<u32>(19646u, 0u)) % 32u))), global0.b);
    global0 = func_4(~(~vec4<u32>(4294967295u, _wgslsmith_mult_u32(global0.c, global0.c), _wgslsmith_sub_u32(global0.c, global0.c), abs(global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + -1000f)));
    let var_0 = Struct_2(~abs(countOneBits(select(vec3<u32>(0u, global0.c, 0u), vec3<u32>(global0.c, 1u, 20496u), false))), Struct_1(_wgslsmith_clamp_i32(-(0i << (global0.c % 32u)), _wgslsmith_dot_vec3_i32(u_input.a.wwy, -u_input.a.xxw), -15809i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-714f, global0.b))))), global0.c, _wgslsmith_dot_vec4_i32(u_input.a, select(-vec4<i32>(-1i, 19639i, -45133i, 10414i), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a), all(vec4<bool>(false, false, true, false))))), func_4(~abs(vec4<u32>(global0.c, global0.c, 1u, global0.c)), _wgslsmith_f_op_f32(exp2(global0.b))), 745f, func_4(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, global0.c) & vec4<u32>(global0.c, 84813u, 4294967295u, global0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.c, global0.c, global0.c, global0.c), vec4<u32>(global0.c, global0.c, 0u, global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f))));
    let var_1 = !(!all(vec2<bool>(true, true))) || (max(~(global0.a << (1u % 32u)), ~(~global0.d)) > 74142i);
    let var_2 = all(select(!select(!vec3<bool>(true, var_1, var_1), select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_1, var_1), vec3<bool>(false, var_1, false)), true), !(!select(vec3<bool>(var_1, false, var_1), vec3<bool>(false, var_1, false), false)), vec3<bool>(!(var_1 | true), select(var_1, true, all(vec2<bool>(false, var_1))), false)));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(598f + _wgslsmith_f_op_f32(var_0.c.b - global0.b)), 743f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-334f, global0.b), vec2<f32>(-662f, 205f), vec2<bool>(false, var_2))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.d, -1000f), vec2<f32>(var_0.c.b, global0.b))))))))));
    global0 = Struct_1(global0.d, 893f, countOneBits(1u), min(-2147483647i, -firstTrailingBit(~global0.d)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b), var_0.b.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(152f, _wgslsmith_f_op_f32(-var_0.d)), var_3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-978f + -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.zz);
}

