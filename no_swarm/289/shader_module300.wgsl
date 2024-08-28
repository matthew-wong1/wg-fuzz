struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 25>;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), 1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_div_f32(-1030f, -850f);
    var_0 = _wgslsmith_f_op_f32(-1034f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1560f * -634f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1394f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) * _wgslsmith_f_op_f32(select(-648f, -943f, true)))), 409f)));
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_add_i32(global2.x, -8789i), reverseBits(u_input.b.x));
    return arg_0.x;
}

fn func_2() -> i32 {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, u_input.c.x)), 5293u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, u_input.c.x), firstLeadingBit(u_input.c.x), ~u_input.c.x)), ~(~vec3<u32>(0u, 67631u, 4294967295u)) | abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(62598u, 9994u, 18940u), vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 797u))), vec3<u32>(4294967295u, 1u, ~u_input.c.x));
    global1 = array<Struct_1, 25>();
    let var_1 = -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(-17489i, global2.x), vec2<i32>(global2.x, -28858i), true) << (_wgslsmith_div_vec2_u32(var_0.xy, var_0.yx) % vec2<u32>(32u)), (global2.xy ^ vec2<i32>(global2.x, -34558i)) | u_input.b), select(-vec2<i32>(u_input.a, global2.x), global2.zy, vec2<bool>(true, func_3(vec4<bool>(true, true, false, true), u_input.c.x))));
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, 1746u, 1u, u_input.c.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, 34166u, 66847u, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, var_0.x, var_0.x), select(vec4<u32>(u_input.c.x, var_0.x, 520u, 0u), vec4<u32>(u_input.c.x, 14821u, 39092u, 1u), true))), u_input.c.x), 25u)], firstTrailingBit(~u_input.c & select(vec2<u32>(var_0.x, 67564u), vec2<u32>(0u, 28693u), vec2<bool>(true, true))), var_0.x, min(u_input.c.x ^ var_0.x, _wgslsmith_clamp_u32(41138u, ~select(1u, 38837u, false), u_input.c.x)));
    return var_1.x;
}

fn func_1() -> Struct_1 {
    let var_0 = i32(-1i) * -2147483647i;
    global2 = countOneBits(vec3<i32>(min(-(i32(-1i) * -3200i), abs(-2147483647i) & u_input.b.x), u_input.a ^ 54116i, func_2()));
    global2 = firstTrailingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, global2.x), ~vec3<i32>(global2.x, -48973i, 2147483647i))) & (~_wgslsmith_clamp_vec3_i32(min(vec3<i32>(global2.x, u_input.b.x, 31934i), vec3<i32>(-2208i, u_input.a, -4784i)), ~vec3<i32>(1i, global2.x, -1i), ~vec3<i32>(var_0, global2.x, var_0)) & abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(-27235i, 56772i, 1002i), vec3<i32>(15848i, var_0, global2.x))));
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, ~u_input.c.x, 0u), ~(~vec3<u32>(u_input.c.x, 4294967295u, 17131u))), 25u)], u_input.b, true, Struct_3(Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), global1[_wgslsmith_index_u32(~0u, 25u)], _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, 43870u, u_input.c.x), u_input.c.x)), _wgslsmith_mult_u32(~u_input.c.x, u_input.c.x), _wgslsmith_clamp_u32(~(~u_input.c.x), ~(~93399u), u_input.c.x)));
    let var_2 = 36606u;
    return Struct_1(select(var_1.a.a, var_1.d.a.a, false));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_2 {
    global2 = (~vec3<i32>(-11328i, _wgslsmith_dot_vec2_i32(vec2<i32>(22230i, arg_0.b.x), u_input.b), arg_1.a) | -vec3<i32>(-1i, 1i, ~u_input.b.x)) << (abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 58544u, u_input.c.x), abs(vec3<u32>(17285u, 1u, 15804u)))) % vec3<u32>(32u));
    return Struct_2(global2.x, func_1());
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    global1 = array<Struct_1, 25>();
    let var_0 = ~select(vec3<i32>(arg_2.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-23158i, 18185i, -13828i), vec3<i32>(2147483647i, -27625i, global2.x), arg_1.b.a), select(vec3<i32>(2147483647i, arg_2.a, u_input.a), vec3<i32>(0i, 11872i, -7365i), true)), arg_0.a), vec3<i32>(-1i) * -countOneBits(vec3<i32>(arg_1.a, global2.x, -15116i)), vec3<bool>(arg_0.b.a.x, true, true));
    global0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -566f);
    var var_2 = Struct_3(Struct_1(arg_1.b.a), func_4(Struct_4(func_4(Struct_4(arg_0.b, u_input.b, arg_0.b.a.x, Struct_3(arg_1.b, arg_0.b, u_input.c, u_input.c.x, u_input.c.x)), arg_1).b, global2.xy, func_3(select(vec4<bool>(arg_0.b.a.x, true, arg_0.b.a.x, true), vec4<bool>(true, true, true, arg_0.b.a.x), arg_1.b.a.x), ~62746u), Struct_3(arg_2.b, Struct_1(arg_2.b.a), vec2<u32>(0u, u_input.c.x), u_input.c.x, ~27003u)), arg_0).b, (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c.x) >> (u_input.c % vec2<u32>(32u)), ~u_input.c) << (u_input.c % vec2<u32>(32u))) | abs(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(50074u, 19062u) | vec2<u32>(1u, u_input.c.x))), reverseBits(reverseBits(1u)), ~1u);
    return StorageBuffer(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(Struct_4(func_1(), vec2<i32>(global2.x, 2147483647i) >> (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)), any(vec2<bool>(true, true)), Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 1u), 25u)], Struct_1(vec3<bool>(true, true, true)), u_input.c, abs(u_input.c.x), u_input.c.x)), Struct_2(_wgslsmith_mult_i32(28112i, ~u_input.b.x), func_1())), Struct_2(u_input.a, Struct_1(vec3<bool>(true, true, true))), Struct_2(-12090i, func_1()));
}

