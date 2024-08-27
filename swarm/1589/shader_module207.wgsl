struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_4, 9>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_div_vec2_i32(~(global0.c.xy & global0.c.xw), vec2<i32>(global0.c.x, global0.b.b.x) ^ min(vec2<i32>(-11987i, global0.a.b.x), vec2<i32>(global0.b.b.x, global0.b.c))), global0.c.x, true), Struct_1(vec2<bool>(true, !(!global0.b.d)), _wgslsmith_sub_vec2_i32(global0.c.xx, global0.b.b), 0i, global0.b.b.x > select(global0.c.x, -global0.b.b.x, true)), firstTrailingBit(vec4<i32>(~(-global0.a.b.x), countOneBits(_wgslsmith_add_i32(global0.c.x, global0.a.b.x)), countOneBits(45200i), ~(i32(-1i) * -1i))));
    let var_1 = (_wgslsmith_div_i32(~global0.a.c, _wgslsmith_div_i32(-15308i, 2147483647i)) & -1645i) << (~63013u % 32u);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1));
    var var_3 = -368f;
    var var_4 = all(select(!vec3<bool>(true, var_0.a.a.x, global0.b.a.x | global0.b.d), vec3<bool>(var_0.b.a.x, var_0.a.a.x, var_0.b.a.x), !select(vec3<bool>(var_0.a.d, false, true), !vec3<bool>(true, var_0.a.a.x, global0.a.a.x), any(vec3<bool>(var_0.b.d, false, false)))));
    return true;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = abs(abs(u_input.a.zzw));
    global0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_add_vec2_i32(vec2<i32>(~global0.b.c, -2147483647i), global0.c.yw), global0.c.x, arg_0.x), Struct_1(vec2<bool>(!(arg_0.x & false), func_3(4294967295u, -270f) | arg_0.x), ~max(~vec2<i32>(global0.a.c, global0.c.x), countOneBits(global0.c.yz)), -9053i, global0.a.a.x), global0.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(185f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -979f))) * -605f)));
    var var_2 = vec2<i32>(-1i) * -(vec2<i32>(_wgslsmith_sub_i32(-17428i, -27522i), 1i) ^ countOneBits(select(vec2<i32>(2147483647i, global0.b.b.x), vec2<i32>(-40770i, 19079i), arg_0.x)));
    let var_3 = !vec3<bool>(~83371u != var_0.x, arg_0.x, true);
    return Struct_1(select(vec2<bool>(any(arg_0.xy), all(var_3)), arg_0.xy, true), select(-global0.c.wz, global0.c.yx ^ _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, 0i), global0.c.zx), !select(vec2<bool>(true, global0.a.d), vec2<bool>(global0.b.d, arg_0.x), !arg_0.x)), ~max(17824i, _wgslsmith_clamp_i32(17910i, _wgslsmith_mult_i32(1571i, 0i), ~var_2.x)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) > _wgslsmith_f_op_f32(min(var_1, 308f))) && true);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> vec2<i32> {
    let var_0 = ~arg_2;
    var var_1 = Struct_3(Struct_2(func_2(vec4<bool>(global0.a.a.x, true, all(vec2<bool>(false, global0.a.d)), 14054u < var_0.x)), Struct_1(vec2<bool>(true, func_2(vec4<bool>(false, global0.a.a.x, true, global0.b.a.x)).a.x), vec2<i32>(global0.b.b.x, -32184i), -1i, all(vec3<bool>(true, global0.b.d, false))), -select(vec4<i32>(global0.c.x, 0i, global0.b.c, global0.b.c), global0.c, vec4<bool>(global0.b.a.x, true, global0.a.d, true)) | -global0.c));
    global0 = var_1.a;
    var var_2 = Struct_5(abs(~vec2<u32>(select(59218u, 0u, global0.a.a.x), ~arg_2.x)));
    var var_3 = !(!(global0.a.d & true));
    return -vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.a.c, -2147483647i), var_1.a.c.wy)), ~abs(vec2<i32>(var_1.a.a.b.x, 2147483647i))), global0.b.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = ~(~(~_wgslsmith_mult_u32(~u_input.b, abs(52411u))));
    global1 = array<Struct_4, 9>();
    let var_1 = ~select(24674i, -global0.b.b.x ^ global0.c.x, !(global0.a.d && true) | (global0.c.x <= ~8778i));
    return Struct_2(Struct_1(select(!select(vec2<bool>(false, false), arg_1, true), arg_1, true), -max(arg_0, arg_0), global0.c.x, all(!(!vec2<bool>(global0.a.d, false)))), func_2(!vec4<bool>(global0.b.d, true, false, arg_1.x)), global0.c);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_2(func_4(arg_2.d.c.zw, !(!(!vec2<bool>(true, arg_1.d.a.d)))).a, Struct_1(vec2<bool>(true, arg_0.a.b.d), select(arg_1.d.b.b, _wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_0.a.c.x, -19576i), vec2<i32>(arg_1.d.a.b.x, arg_2.d.c.x), vec2<bool>(global0.b.a.x, true)), -vec2<i32>(arg_2.d.a.b.x, arg_0.a.b.c)), select(select(vec2<bool>(arg_0.a.a.d, global0.b.a.x), arg_0.a.b.a, true), global0.b.a, vec2<bool>(arg_0.a.a.d, false))), ~(_wgslsmith_add_i32(global0.a.b.x, 0i) & countOneBits(arg_1.d.a.b.x)), !global0.a.d), arg_0.a.c);
    var var_1 = -750f;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-191f, 807f, false)), arg_1.a)) - 2460f))), arg_2.b, ~min(_wgslsmith_sub_u32(4294967295u, 576u) >> (_wgslsmith_mod_u32(46824u, 1u) % 32u), max(arg_1.c, ~u_input.a.x)), arg_0.a);
    var_0 = func_4(vec2<i32>(arg_1.d.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.b.c, arg_2.d.a.c), vec2<i32>(var_0.c.x, 2147483647i)) >> (~u_input.c.x % 32u)) ^ (arg_1.d.c.zw & vec2<i32>(_wgslsmith_sub_i32(-1i, global0.b.c), arg_0.a.c.x)), vec2<bool>(-(~var_2.d.b.c) != ~(-arg_2.d.c.x), false));
    let var_3 = func_4(vec2<i32>(_wgslsmith_clamp_i32(-1i, -9261i, abs(_wgslsmith_dot_vec3_i32(arg_2.d.c.yzz, arg_1.d.c.yyw))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, arg_0.a.c.x, -51013i), vec3<i32>(global0.b.b.x, global0.a.c, arg_0.a.c.x)), arg_1.d.c.xww) >> (arg_1.c % 32u)), !(!(!(!var_2.d.b.a))));
    return Struct_2(func_2(vec4<bool>(false, true, all(!vec3<bool>(arg_0.a.b.a.x, arg_2.d.a.d, arg_1.d.b.a.x)), !(false != var_0.a.d))), func_2(vec4<bool>(var_3.b.d, false, true, global0.b.a.x)), vec4<i32>(abs(-46770i), countOneBits(var_3.c.x), _wgslsmith_dot_vec3_i32(global0.c.xzz, vec3<i32>(2147483647i, ~(-1i), _wgslsmith_clamp_i32(1i, 9677i, var_2.d.a.b.x))), func_2(!(!vec4<bool>(arg_2.d.b.a.x, var_3.a.a.x, arg_2.d.a.d, var_3.b.d))).c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(select(~(~25386u), max(~_wgslsmith_div_u32(u_input.a.x, u_input.c.x), min(4294967295u << (u_input.a.x % 32u), u_input.c.x)) << (firstLeadingBit(u_input.b) % 32u), false), 9u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), var_0.a, var_0.a, _wgslsmith_f_op_f32(trunc(-2229f)));
    global0 = var_0.d;
    var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_div_f32(var_1.x, 499f))), 11827u, u_input.c.x, func_5(Struct_3(var_0.d), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_0.a) + 1000f), ~1u, 1u << (u_input.a.x % 32u), func_4(func_1(-226f, vec2<f32>(-422f, 530f), u_input.c), vec2<bool>(true, var_0.d.b.a.x))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)), _wgslsmith_mult_u32(0u & u_input.c.x, countOneBits(var_0.b)), var_0.c, Struct_2(Struct_1(var_0.d.a.a, vec2<i32>(17409i, -51278i), -16625i, var_0.d.a.d), func_2(vec4<bool>(false, false, true, false)), select(global0.c, global0.c, false)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1f, var_0.a))) * var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_dot_vec4_i32(~global0.c, abs(global0.c)) & min(_wgslsmith_sub_i32(~var_0.d.b.b.x, select(69781i, -8021i, false)), 2147483647i), ~(_wgslsmith_mod_u32(_wgslsmith_mult_u32(2402u, 1u), var_0.b) ^ 4294967295u));
}

