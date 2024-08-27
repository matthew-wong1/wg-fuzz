struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(26902u, 44675u, 1u), vec3<u32>(6422u, 4294967295u, 0u), 4294967295u, -903f, vec3<f32>(-107f, 269f, -1601f)), Struct_1(vec3<u32>(4294967295u, 1u, 23541u), vec3<u32>(1u, 0u, 32907u), 1u, -410f, vec3<f32>(617f, 1619f, -376f)), vec2<i32>(i32(-2147483648), 4884i));

var<private> global3: vec3<f32> = vec3<f32>(1484f, 232f, 1711f);

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_2(global2.a, Struct_1(vec3<u32>(arg_1.c, ~_wgslsmith_clamp_u32(5881u, 4294967295u, 0u), ~0u), vec3<u32>(4294967295u, global0.b.a.x, 34269u), firstTrailingBit(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1709f + 739f)), _wgslsmith_f_op_vec3_f32(trunc(global0.b.e))), ~vec2<i32>(u_input.d.x, 26692i));
    var var_1 = Struct_1(vec3<u32>(91809u, _wgslsmith_mod_u32(1u, abs(u_input.a.x)), ~firstTrailingBit(abs(58733u))), var_0.b.b, 12899u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.d) - arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-441f)), 256f, _wgslsmith_f_op_f32(-global0.b.d)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1518f, arg_1.e.x, 2404f), vec3<f32>(var_0.a.d, -642f, 180f)))));
    global1 = arg_1;
    global1 = global2.b;
    var var_2 = Struct_1(~(~var_0.a.a), _wgslsmith_div_vec3_u32(var_0.b.a, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a.a, ~global0.b.a), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(56405u, 10201u, arg_1.b.x), vec3<u32>(u_input.b, var_1.c, global2.a.c)), var_1.a >> (global2.a.a % vec3<u32>(32u)), countOneBits(vec3<u32>(45782u, 36932u, 7350u))), u_input.a)), arg_1.c, _wgslsmith_f_op_f32(-var_1.e.x), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.d, var_0.b.e.x)), -491f, global4.x))));
    return select(select(!(!select(vec3<bool>(global4.x, false, false), vec3<bool>(global4.x, global4.x, global4.x), global4.x)), vec3<bool>(global1.d <= -895f, true, any(select(vec2<bool>(global4.x, true), vec2<bool>(global4.x, global4.x), vec2<bool>(true, false)))), select(!vec3<bool>(global4.x, global4.x, true), vec3<bool>(false, all(vec4<bool>(false, global4.x, global4.x, global4.x)), false && global4.x), !select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(true, true, global4.x), vec3<bool>(false, true, global4.x)))), !(!select(select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(global4.x, global4.x, global4.x), select(vec3<bool>(global4.x, false, global4.x), vec3<bool>(global4.x, false, global4.x), vec3<bool>(global4.x, global4.x, false)))), !select(select(select(vec3<bool>(false, false, global4.x), vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, false, global4.x)), vec3<bool>(global4.x, true, true), global4.x), !select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(global4.x, false, false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(global4.x, global4.x, false), false), select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, true, global4.x)), global0.c.x != arg_2)));
}

fn func_2(arg_0: vec2<bool>) -> vec3<u32> {
    global2 = Struct_2(global0.b, Struct_1(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15209u, u_input.c.x, u_input.b), vec4<u32>(global0.a.b.x, 41820u, global2.b.a.x, u_input.b)), reverseBits(1515u), max(1u, global0.a.a.x)), global0.a.a.x, global1.a.x), global1.a, global2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_f_op_vec3_f32(-global2.b.e)), firstLeadingBit(u_input.d.zy) << (global1.a.yz % vec2<u32>(32u)));
    global4 = vec2<bool>(true, select(any(!select(vec3<bool>(true, false, true), vec3<bool>(false, global4.x, false), global4.x)), arg_0.x, any(func_3(global0.a.e, global2.b, firstTrailingBit(9915i)))));
    let var_0 = global1.e.yy;
    let var_1 = global0.c.x;
    global2 = Struct_2(Struct_1(global1.a, ~global0.b.b, ~1u, global0.a.d, _wgslsmith_f_op_vec3_f32(global0.b.e * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a.e, vec3<f32>(var_0.x, -980f, global2.a.e.x)))))), global0.b, _wgslsmith_clamp_vec2_i32(global0.c, ~global2.c, firstLeadingBit(vec2<i32>(3321i, global0.c.x)) >> (firstLeadingBit(countOneBits(vec2<u32>(4294967295u, global1.a.x))) % vec2<u32>(32u))));
    return _wgslsmith_div_vec3_u32(min(firstTrailingBit(abs(vec3<u32>(global2.a.b.x, 16539u, 0u))), global2.b.b), global0.a.b);
}

fn func_1() -> vec2<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a.e.x, global0.a.e.x, _wgslsmith_div_f32(1648f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-601f))))));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(18829u, 1u), ~48822u, 71475u), func_2(vec2<bool>(global4.x, true))) << (((global2.a.b.x | ~7542u) << ((u_input.c.x << (abs(37374u) % 32u)) % 32u)) % 32u), max(~global1.a.x, 73057u), countOneBits(global0.b.c));
    global4 = func_3(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(992f * -811f), _wgslsmith_div_f32(-767f, _wgslsmith_f_op_f32(2225f - global1.d)))), _wgslsmith_f_op_f32(global2.a.e.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.b.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x - _wgslsmith_f_op_f32(-326f * global0.b.d)) - -827f)), global2.a, -(1i & _wgslsmith_div_i32(abs(global0.c.x), -1i))).yx;
    let var_2 = Struct_1(select(select(select(vec3<u32>(4294967295u, global0.a.c, u_input.b), global0.b.a, vec3<bool>(global4.x, true, global4.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.a.b.x, 37727u), vec3<u32>(24659u, 19828u, global2.a.b.x)), vec3<bool>(global4.x, false, true)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global0.b.a.x, global0.a.c, 0u), ~vec3<u32>(35023u, global0.a.a.x, 4294967295u)), func_2(vec2<bool>(true, false)) ^ ((u_input.c >> (vec3<u32>(1u, global1.a.x, 16203u) % vec3<u32>(32u))) >> (u_input.c % vec3<u32>(32u))), select(!vec3<bool>(true, global4.x, global4.x), !select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(false, global4.x, global4.x), global4.x), vec3<bool>(!global4.x, u_input.e <= 46824i, true))), u_input.a & global1.b, global2.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-460f, -516f, global4.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(608f, _wgslsmith_f_op_f32(-global1.e.x), global4.x))))), global2.a.e);
    global2 = Struct_2(Struct_1(vec3<u32>(4294967295u, (0u & global1.b.x) << (4294967295u % 32u), _wgslsmith_clamp_u32(global1.b.x, 4294967295u, 3118u) | global2.b.a.x), var_1, ~(~0u ^ _wgslsmith_mod_u32(var_2.b.x, global2.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b.e.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global2.b.d, -115f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.e.x, -1335f, global1.e.x))), global4.x | global4.x)) + var_0.xzz)), global0.a, vec2<i32>(countOneBits(-_wgslsmith_mult_i32(global2.c.x, 22618i)), abs(-2147483647i)));
    return vec2<u32>(_wgslsmith_sub_u32(4999u, ~(~max(global2.b.a.x, global1.c))), countOneBits(func_2(!(!vec2<bool>(false, global4.x))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = min(~global1.b.zx, select(global2.b.b.zx, max(func_1(), vec2<u32>(60334u, global0.b.a.x)), !vec2<bool>(global4.x, global4.x))) ^ min(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), ~u_input.c.yz), _wgslsmith_div_vec2_u32(global2.a.a.yy, firstTrailingBit(~global0.b.a.yz)));
    var var_2 = global2.a.e.x;
    var_2 = -1091f;
    let var_3 = global0.a;
    var var_4 = Struct_2(Struct_1(~reverseBits(firstLeadingBit(vec3<u32>(20754u, 10968u, var_3.c))), vec3<u32>(global2.b.b.x, select(func_2(vec2<bool>(false, false)).x, _wgslsmith_dot_vec2_u32(vec2<u32>(6790u, 0u), global2.a.a.yy), true), 1u), _wgslsmith_mod_u32(0u, ~global2.b.a.x), -1042f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-228f, global2.a.d, var_3.d))) * _wgslsmith_f_op_vec3_f32(-var_3.e)))), global2.a, global0.c);
    let var_5 = Struct_2(Struct_1(countOneBits(global2.b.b), global2.a.a, 7648u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.e.x))))), global0.a.e), global0.a, -global0.c);
    let var_6 = global4.x == !any(select(!vec4<bool>(false, global4.x, false, global4.x), select(vec4<bool>(true, global4.x, false, global4.x), vec4<bool>(global4.x, true, global4.x, false), true), vec4<bool>(true, global4.x, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2168f), 722f);
}

