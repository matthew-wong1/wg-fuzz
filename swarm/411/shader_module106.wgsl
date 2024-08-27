struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 65823i);

var<private> global1: array<Struct_1, 1>;

var<private> global2: i32;

var<private> global3: array<bool, 30>;

var<private> global4: array<f32, 30> = array<f32, 30>(-870f, 516f, -861f, -1000f, 488f, -1360f, 280f, 1523f, 359f, 590f, 321f, -161f, -129f, 689f, 783f, -1594f, -755f, -856f, 551f, -599f, 511f, 182f, 1000f, 184f, 1004f, -710f, -139f, 391f, -1219f, -650f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    global2 = -countOneBits(-1i);
    global3 = array<bool, 30>();
    global4 = array<f32, 30>();
    var var_0 = select(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], global3[_wgslsmith_index_u32(47139u, 30u)])), select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec2<bool>(false, false), true), global3[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec2<bool>(!all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.e.x, 30u)], true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], global3[_wgslsmith_index_u32(u_input.b.x, 30u)], true, true))), true), !global3[_wgslsmith_index_u32(u_input.b.x | ~(~75999u), 30u)]);
    var var_1 = select(~max(~(vec4<u32>(u_input.e.x, 14476u, 44483u, 4294967295u) ^ vec4<u32>(u_input.e.x, 12011u, u_input.e.x, u_input.e.x)), max(vec4<u32>(59976u, 56747u, u_input.e.x, u_input.b.x), reverseBits(vec4<u32>(u_input.b.x, 17096u, u_input.b.x, u_input.e.x)))), min(~vec4<u32>(abs(4070u), ~u_input.b.x, _wgslsmith_mod_u32(u_input.e.x, u_input.e.x), 0u), abs(vec4<u32>(~6979u, ~62800u, u_input.b.x, min(1052u, 1u)))), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 30u)], any(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 30u)] == var_0.x, true, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e.x, u_input.b.x), 30u)])), true, any(select(!vec4<bool>(true, var_0.x, true, var_0.x), select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 30u)], false, false), vec4<bool>(false, var_0.x, true, var_0.x), true), vec4<bool>(true, var_0.x, false, false)))));
    return -1034f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -1i), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.zz, _wgslsmith_sub_vec2_i32(arg_1.zz, arg_1.xz)), arg_1.wz));
    global4 = array<f32, 30>();
    global0 = -_wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(~arg_1.zw, -vec2<i32>(-9057i, 2147483647i)), ~vec2<i32>(_wgslsmith_dot_vec4_i32(arg_1, arg_1), u_input.a), abs(-_wgslsmith_sub_vec2_i32(arg_1.wz, vec2<i32>(var_0.x, 28666i))));
    let var_1 = Struct_4(_wgslsmith_div_vec2_i32(arg_1.yz, vec2<i32>(-10959i, -(~u_input.c))), _wgslsmith_f_op_f32(2305f - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.x, 30u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 30u)]), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.e.x), arg_0.yz), 30u)]), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(global4[_wgslsmith_index_u32(1u, 30u)], vec3<f32>(global4[_wgslsmith_index_u32(u_input.e.x, 30u)], 316f, global4[_wgslsmith_index_u32(u_input.b.x, 30u)])), global0.x)), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(u_input.b.x, 30u)]))))));
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(19179i, u_input.a), min(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, -6438i), vec3<i32>(var_1.a.x, -67854i, arg_1.x))), (vec2<i32>(1i, 2147483647i) << (arg_0.xx % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, 23491i), vec2<i32>(31578i, 1i), vec2<i32>(var_1.a.x, var_1.a.x))), var_1.a));
    return global1[_wgslsmith_index_u32(firstTrailingBit(~(50101u & countOneBits(_wgslsmith_mod_u32(4294967295u, arg_0.x)))), 1u)];
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-12307i, global0.x), min(vec2<i32>(1i, -4474i), vec2<i32>(global0.x, u_input.c))), -(~u_input.d)), vec2<i32>(arg_2.e, i32(-1i) * -1i)), _wgslsmith_f_op_f32(round(arg_2.b)), vec2<f32>(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(max(94061u, 4294967295u), 30u)])), -187f));
    var_0 = Struct_4(-vec2<i32>(var_0.a.x, select(2147483647i, arg_0, arg_2.a) & -global0.x), var_0.c.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-638f, _wgslsmith_f_op_f32(min(259f, _wgslsmith_f_op_f32(var_0.b * 414f)))) - vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(-1325f, vec3<f32>(var_0.c.x, -109f, global4[_wgslsmith_index_u32(arg_1.x, 30u)])), var_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(6428u, 30u)], 1000f)), 490f)))));
    var_0 = Struct_4(var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(abs(var_0.c)));
    let var_1 = ~u_input.e ^ _wgslsmith_sub_vec2_u32(arg_1.yy, firstTrailingBit((arg_1.wy >> (u_input.b % vec2<u32>(32u))) ^ countOneBits(arg_2.d.xw)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1022f + global4[_wgslsmith_index_u32(arg_1.x, 30u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(81494u, 30u)]), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(1u, 30u)])) + 1072f))));
    return Struct_4(-var_0.a, _wgslsmith_f_op_f32(557f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, arg_2.b)) * -952f)))), var_2);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32((u_input.b.x >> ((~_wgslsmith_add_u32(u_input.e.x, 47875u) >> (1u % 32u)) % 32u)) << ((4294967295u << (_wgslsmith_mult_u32(u_input.b.x, arg_1) % 32u)) % 32u), 1u)];
    let var_1 = func_4(-1i, arg_0, func_2(var_0.d.zww, abs(vec4<i32>(-1i, 15175i, var_0.e, _wgslsmith_div_i32(1i, 2147483647i))), arg_2, abs(arg_0.x) < ~_wgslsmith_sub_u32(arg_1, u_input.e.x)));
    let var_2 = var_1.c.x;
    global4 = array<f32, 30>();
    global1 = array<Struct_1, 1>();
    return ~((u_input.a & (~23462i ^ -var_0.e)) | max(var_0.e, _wgslsmith_mod_i32(54239i, 53373i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.x;
    global0 = vec2<i32>(func_1(reverseBits(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1836u), vec2<u32>(u_input.b.x, u_input.e.x)), u_input.e.x >> (u_input.b.x % 32u), 1u ^ u_input.b.x)), u_input.b.x, false), ~(-firstLeadingBit(2147483647i)));
    let var_0 = true;
    let var_1 = select(func_2(~(~(~vec3<u32>(6953u, 20557u, 0u))), -(~(~vec4<i32>(u_input.c, 2147483647i, 4859i, 1i))), true, var_0).d, _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.e.x, u_input.b.x, 41321u, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.e.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.e.x, 40899u, u_input.b.x))), vec4<u32>(u_input.b.x, firstLeadingBit(1u) ^ (u_input.b.x | u_input.e.x), 1u, 8743u)), !var_0);
    global3 = array<bool, 30>();
    global2 = firstLeadingBit(1i);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(31635u, 30u)], 762f) * vec2<f32>(global4[_wgslsmith_index_u32(0u, 30u)], global4[_wgslsmith_index_u32(4294967295u, 30u)]))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-761f, global4[_wgslsmith_index_u32(var_1.x, 30u)]), _wgslsmith_div_vec2_f32(vec2<f32>(-472f, 1000f), vec2<f32>(global4[_wgslsmith_index_u32(25003u, 30u)], 398f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(u_input.b.x, 30u)]))), -1739f)), vec4<u32>(~reverseBits(_wgslsmith_sub_u32(9031u, u_input.e.x)), 1u, _wgslsmith_add_u32(23539u, u_input.e.x), ~23886u), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(4294967295u ^ (0u ^ var_1.x)), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_clamp_u32(1u, 10408u, _wgslsmith_mult_u32(33687u, 1u)))), 30u)]);
}

