struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 5430u, 69474u, 0u);

var<private> global1: f32 = -1943f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_5) -> f32 {
    let var_0 = 114f;
    let var_1 = arg_2.a;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32((_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d.x), u_input.d.xx) ^ u_input.d.x) & u_input.e.x, -1i), u_input.b);
    global0 = select(~vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(max(global0.x, u_input.a), select(0u, 34297u, arg_1.b.a.x)), ~global0.x, ~_wgslsmith_sub_u32(50187u, 46937u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a, countOneBits(~global0.x), 80561u, ~_wgslsmith_clamp_u32(global0.x, arg_0.c, 4294967295u)), vec4<u32>(~u_input.a, ~max(u_input.a, arg_0.d.x), u_input.c.x, _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_add_u32(arg_0.d.x, u_input.c.x))), reverseBits(vec4<u32>(global0.x, reverseBits(u_input.c.x), 4294967295u, arg_0.c << (8532u % 32u)))), vec4<bool>(false, arg_0.b, select(arg_2.b.a.x && true, true | arg_1.b.a.x, !arg_1.a.a.x) && true, !(arg_0.a.x > var_0)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), arg_0.b & select(true, arg_1.b.a.x, true)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(vec2<bool>(true, true));
    global1 = -435f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-714f * 257f), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(738f, 815f), var_0.a.x, 61672u, vec2<u32>(u_input.c.x, arg_0.x)), Struct_5(Struct_3(var_0.a), var_0), Struct_5(var_0, var_0)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-312f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1231f, 1243f))), -399f)));
    global0 = max(select(vec4<u32>(global0.x << (4547u % 32u), ~4294967295u, arg_0.x, _wgslsmith_add_u32(u_input.c.x, u_input.c.x)) >> (vec4<u32>(abs(49006u), arg_0.x, ~63354u, ~45723u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, 1u), vec3<u32>(1u, arg_0.x, 4294967295u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0.zwx, arg_0.wzw), ~global0.x), 1u & _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 58910u), 15693u), select(!vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), select(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), !var_0.a.x), var_0.a.x)), firstLeadingBit(vec4<u32>(countOneBits(6253u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_0.x, arg_0.x), ~vec3<u32>(global0.x, u_input.a, 4294967295u)), global0.x, firstTrailingBit(~global0.x))));
    var var_1 = u_input.d.x;
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1694f) + _wgslsmith_f_op_f32(-525f + -1630f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-729f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-861f, 1256f)), _wgslsmith_f_op_f32(-491f + -2782f))), true, 10097u, _wgslsmith_mod_vec2_u32(~(global0.zw >> (u_input.c % vec2<u32>(32u))) >> (~vec2<u32>(global0.x, u_input.c.x) % vec2<u32>(32u)), ~(~arg_0.xz)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5) -> Struct_4 {
    global0 = abs(~_wgslsmith_mult_vec4_u32(~select(vec4<u32>(arg_0.d.x, 66672u, 4294967295u, arg_1), vec4<u32>(1u, arg_1, 1u, 1u), arg_2.a.a.x), vec4<u32>(min(6853u, 1u), 19132u, 38156u, ~global0.x)));
    let var_0 = ~vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(firstLeadingBit(4294967295u), arg_0.d.x)), 4294967295u);
    global1 = _wgslsmith_div_f32(-790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)))), -492f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1483f)), _wgslsmith_f_op_f32(f32(-1f) * -709f)))));
    global1 = 1432f;
    var var_1 = u_input.c;
    return Struct_4(-firstLeadingBit(vec2<i32>(u_input.d.x, u_input.d.x) << (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u))), arg_0.b, firstLeadingBit(~_wgslsmith_add_vec4_i32(u_input.d, u_input.d)), Struct_2(vec3<u32>(var_0.x, 45703u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(41356u, u_input.a, var_0.x), global0.xzz))), ~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-15137i, u_input.e.x, u_input.b)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.d.x), vec3<i32>(u_input.e.x, u_input.e.x, 2147483647i))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e, vec3<i32>(15065i, u_input.e.x, -9192i)), vec3<i32>(-3813i, u_input.d.x, u_input.d.x))));
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(func_2(vec4<u32>(4294967295u, _wgslsmith_sub_u32(~global0.x, ~27171u), global0.x, ~global0.x)), 0u, Struct_5(Struct_3(vec2<bool>(true, true)), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var var_1 = Struct_1(vec2<f32>(-476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f))), !any(vec4<bool>(true, true, true, true)), ~countOneBits(reverseBits(1u)), vec2<u32>(var_0.d.a.x, 4294967295u));
    var_1 = func_2(min(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.d.a.x, var_1.c, 91282u), vec4<u32>(1u, 1u, 43928u, 88003u))), ~vec4<u32>(~71758u, _wgslsmith_mod_u32(var_1.c, var_1.d.x), var_0.d.a.x, var_0.d.a.x)));
    var var_2 = abs(vec2<i32>(~(i32(-1i) * -98022i), (abs(var_0.e.x) ^ _wgslsmith_mult_i32(u_input.d.x, 2147483647i)) ^ -min(6888i, -11929i)));
    global0 = ~(~firstTrailingBit(vec4<u32>(0u, var_1.c, func_2(vec4<u32>(var_0.d.a.x, 91960u, global0.x, 4294967295u)).d.x, 0u)));
    return Struct_4(firstTrailingBit(u_input.e.yz), any(vec2<bool>(func_4(Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), true, 1u, var_0.d.a.zx), 1u, Struct_5(Struct_3(vec2<bool>(var_1.b, var_0.b)), Struct_3(vec2<bool>(false, false)))).b == all(vec4<bool>(false, false, var_0.b, false)), var_1.b)), ~firstTrailingBit(var_0.c >> ((vec4<u32>(99620u, var_0.d.a.x, u_input.c.x, 24894u) ^ vec4<u32>(0u, u_input.a, 0u, var_1.d.x)) % vec4<u32>(32u))), func_4(func_2(abs(vec4<u32>(global0.x, global0.x, global0.x, 1u))), global0.x, Struct_5(Struct_3(vec2<bool>(var_1.b, true)), Struct_3(vec2<bool>(false, true)))).d, vec3<i32>(var_0.e.x | 1i, -11474i, 6454i));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> Struct_3 {
    return Struct_3(vec2<bool>(arg_0.b, arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), func_4(func_2(~vec4<u32>(global0.x, u_input.c.x, global0.x, global0.x)), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, u_input.a, u_input.a, 0u), vec4<u32>(global0.x, global0.x, 63249u, 1921u))), Struct_5(Struct_3(vec2<bool>(false, true)), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))));
    var var_1 = func_2(max(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, global0.x, 1u, 61653u), _wgslsmith_add_vec4_u32(vec4<u32>(118023u, 1u, u_input.a, global0.x), vec4<u32>(4294967295u, 76385u, 0u, 0u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 1u, u_input.c.x), vec4<u32>(u_input.a, 1u, 0u, u_input.a)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(55736u, 4294967295u), u_input.a, 0u, 1u)));
    var var_2 = _wgslsmith_sub_u32(~12824u, ~firstLeadingBit(func_2(vec4<u32>(u_input.a, global0.x, 0u, 1u)).d.x) ^ func_2(min(vec4<u32>(43118u, 4294967295u, 0u, 0u), min(vec4<u32>(11674u, global0.x, var_1.d.x, 0u), vec4<u32>(u_input.c.x, var_1.d.x, 70838u, 1u)))).c);
    var_2 = 70312u;
    var var_3 = func_5(Struct_4(vec2<i32>(~u_input.e.x, abs(u_input.b)), true & var_0.a.x, select(u_input.d, u_input.d, func_1().b), Struct_2(vec3<u32>(var_1.c, global0.x, 1u)), vec3<i32>(-2147483647i | u_input.d.x, -u_input.b, u_input.e.x) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -47676i, u_input.e.x), vec3<i32>(2147483647i, u_input.e.x, u_input.b))), func_1()).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0.x, ~_wgslsmith_add_u32(u_input.a, var_1.c), 44405u, u_input.c.x) >> (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, global0.x, 34736u), vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 1u))) % vec4<u32>(32u)), firstLeadingBit(vec2<i32>(39867i, u_input.e.x)), u_input.d.wz, select(vec4<u32>(1u, ~0u, firstTrailingBit(var_1.d.x) << (70542u % 32u), 1u), max(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x) & vec4<u32>(36245u, 73606u, 0u, 0u), vec4<u32>(3721u, 14979u, var_1.c, 1u)) & ~max(vec4<u32>(17758u, 1u, global0.x, 0u), vec4<u32>(0u, u_input.a, 61700u, u_input.c.x)), false), global0.zyx);
}

