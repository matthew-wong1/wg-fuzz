struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(i32(-2147483648));

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = ~((~_wgslsmith_mult_i32(-1i, 2147483647i) | countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-7010i, -17766i, 106511i, 44434i), vec4<i32>(0i, global0.a, 2147483647i, -50479i)))) >> ((1u << (~u_input.a % 32u)) % 32u));
    let var_1 = Struct_4(reverseBits(0i));
    global1 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(global0.a), u_input.b.x), -u_input.b.xz) << ((~abs(1u) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(56779u, u_input.c))) % 32u));
    global0 = var_1;
    var var_2 = reverseBits(~u_input.c);
    return 416f;
}

fn func_2() -> Struct_3 {
    let var_0 = -474f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(u_input.c & 63196u)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(-var_0) == _wgslsmith_f_op_f32(func_3(1u)))) - 757f));
    var var_2 = ~vec3<u32>(~u_input.c, _wgslsmith_mod_u32(8936u, 76119u), _wgslsmith_clamp_u32(u_input.a, u_input.c, ~u_input.c));
    var_2 = vec3<u32>(8022u, u_input.c, u_input.a << (u_input.c % 32u));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(select(var_1, -1689f, true))), (0u != ~u_input.c) || false)), _wgslsmith_f_op_f32(-2376f - 977f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1))), -1016f)), var_1);
    return Struct_3(min(55107i, _wgslsmith_add_i32(~2147483647i, u_input.b.x)) >> (reverseBits(firstTrailingBit(65278u)) % 32u), 2147483647i, Struct_1(vec2<u32>(~(~30181u), var_2.x), false, true, reverseBits(i32(-1i) * -u_input.b.x), 32182u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_3(31394i, ~(-2147483647i), arg_2.c);
    let var_1 = _wgslsmith_mod_u32(1u, arg_2.c.e);
    global0 = Struct_4(1i);
    global0 = Struct_4(_wgslsmith_mult_i32(0i, ~(firstLeadingBit(arg_2.c.d) << (_wgslsmith_mod_u32(arg_2.c.a.x, 4294967295u) % 32u))));
    var var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.c.a, _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(49214u), 0u), vec2<u32>(var_1, var_1 & var_1)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, var_0.c.a.x), ~arg_2.c.a)), vec2<u32>(max(_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.c.a.x, var_0.c.a.x, var_0.c.e), vec3<u32>(57572u, var_1, 806u)), ~vec3<u32>(var_1, 1u, 8714u)), abs(u_input.a)), ~var_1));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-959f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))), -826f))) - arg_1.x);
}

fn func_1() -> f32 {
    let var_0 = abs(-2147483647i);
    var var_1 = u_input.b;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-1443f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1155f, -1216f))) + _wgslsmith_f_op_f32(func_4(u_input.b.xx, vec4<f32>(2526f, 162f, 429f, 1360f), func_2())))), 1000f);
    let var_3 = var_2.x;
    var_1 = u_input.b;
    return _wgslsmith_f_op_f32(func_3(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-637f))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c << (4038u % 32u))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f + 1000f))) * _wgslsmith_f_op_f32(-1000f - 1538f)));
    var var_1 = countOneBits(reverseBits(~countOneBits(vec4<u32>(1u, u_input.c, u_input.c, 4741u) ^ vec4<u32>(u_input.c, 4294967295u, 0u, 1u))));
    var var_2 = select(u_input.b.ww, u_input.b.yw, !(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)))));
    global1 = 11805i;
    var var_3 = any(!(!vec3<bool>(true, select(true, true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(min(2147483647i, 39823i), func_2().c.d, -544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.b.zw, vec4<f32>(-565f, 498f, -769f, -293f), Struct_3(-67049i, 1i, Struct_1(var_1.yy, true, false, var_2.x, u_input.a)))) + _wgslsmith_f_op_f32(abs(812f)))))));
}

