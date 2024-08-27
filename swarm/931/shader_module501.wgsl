struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32;

var<private> global2: array<f32, 14>;

var<private> global3: array<u32, 24> = array<u32, 24>(71067u, 4294967295u, 1u, 48506u, 6391u, 12712u, 86839u, 87760u, 1u, 2526u, 0u, 0u, 4294967295u, 4294967295u, 48011u, 51775u, 4294967295u, 1u, 7264u, 0u, 1u, 4294967295u, 4294967295u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(220f, -246f, -1561f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x >> (u_input.c % 32u), _wgslsmith_div_u32(u_input.c, 42077u)), 24u)], 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.c, 14u)])) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 14u)])))) * vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.d.x, global3[_wgslsmith_index_u32(u_input.d.x, 24u)], 4294967295u), 0u), 24u)], _wgslsmith_mod_u32(52390u, countOneBits(u_input.d.x))), 14u)], global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(606f + -640f) + _wgslsmith_f_op_f32(abs(1052f))) - _wgslsmith_f_op_f32(-global0.b))));
    var var_1 = global2[_wgslsmith_index_u32(~min(firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_clamp_u32(u_input.c, u_input.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], 24u)]))), 0u), 14u)];
    global0 = Struct_3(!(!any(arg_3.a.xy)), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yw * vec2<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 24u)], 14u)], global0.b))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, global0.b))), _wgslsmith_f_op_vec2_f32(global0.c + global0.c), arg_3.a.xz))))));
    global3 = array<u32, 24>();
    global3 = array<u32, 24>();
    return 1314f;
}

fn func_2() -> u32 {
    global2 = array<f32, 14>();
    let var_0 = vec3<bool>(!any(vec2<bool>(true, true)), !(1000f >= _wgslsmith_f_op_f32(func_3(all(vec2<bool>(global0.a, false)), 1i, 8497i, Struct_1(vec4<bool>(global0.a, false, false, false))))), all(vec4<bool>(true, (global0.a | true) != select(global0.a, global0.a, false), true, true)));
    var var_1 = Struct_2(Struct_1(vec4<bool>(true, global0.a, all(vec4<bool>(global0.a, false, global0.a, true)), !all(vec4<bool>(var_0.x, true, var_0.x, true)))), Struct_1(select(!select(vec4<bool>(false, global0.a, var_0.x, var_0.x), vec4<bool>(true, true, global0.a, var_0.x), vec4<bool>(var_0.x, global0.a, false, var_0.x)), vec4<bool>(true, true, true, global0.a), all(vec4<bool>(true, global0.a, var_0.x, global0.a)))), Struct_1(!(!select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, global0.a, false, var_0.x)))), -351f);
    global0 = Struct_3(var_0.x, _wgslsmith_f_op_f32(floor(1742f)), global0.c);
    global2 = array<f32, 14>();
    return _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(abs(u_input.c), 24u)], ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 24u)], 24u)]);
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = max(u_input.b, _wgslsmith_clamp_i32(u_input.a, -firstTrailingBit(-19686i), 2147483647i)) > abs(u_input.b);
    let var_1 = _wgslsmith_clamp_u32(reverseBits(_wgslsmith_mult_u32(1u, select(37296u, 410u, true) & global3[_wgslsmith_index_u32(27699u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], 24u)] % 32u), 24u)])), _wgslsmith_sub_u32(countOneBits(8252u), 1u), ~1u);
    let var_2 = Struct_1(vec4<bool>(true, arg_0.a, global0.a, !(!(!arg_0.a))));
    let var_3 = _wgslsmith_sub_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d.yx, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1, 24u)], 24u)], 37175u)), ~4294967295u), 55701u) ^ (~0u | _wgslsmith_clamp_u32(func_2(), ~69266u, _wgslsmith_dot_vec2_u32(u_input.d.yy | u_input.d.yy, _wgslsmith_mod_vec2_u32(u_input.d.zx, u_input.d.yy))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -107f) + _wgslsmith_f_op_f32(-arg_0.c.x))))));
    return abs(17561i);
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec4<i32>(-18294i, func_1(Struct_3(abs(u_input.a) == -1i, global2[_wgslsmith_index_u32(u_input.d.x, 14u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)) * _wgslsmith_f_op_vec2_f32(max(global0.c, global0.c))))), abs(-2147483647i), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_0.x, -36407i, -57146i, -18807i), _wgslsmith_mod_vec4_i32(vec4<i32>(-51762i, arg_0.x, -2147483647i, u_input.a), vec4<i32>(0i, 0i, arg_0.x, 1903i))), ~vec4<i32>(arg_0.x, -5745i, arg_0.x, u_input.b)));
    let var_1 = Struct_4(Struct_3(!(!(global3[_wgslsmith_index_u32(1u, 24u)] >= 20283u)), -101f, _wgslsmith_f_op_vec2_f32(select(global0.c, _wgslsmith_f_op_vec2_f32(global0.c + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, 363f))), global0.a))), u_input.d.x, -u_input.a ^ 1i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41490u, 24u)], 14u)] * global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], 14u)]) - -992f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(60209u, 14u)], global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], 24u)], 24u)], 24u)], 14u)]))));
    var var_2 = _wgslsmith_div_f32(622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.a.b)), _wgslsmith_f_op_f32(-1324f - 336f)))));
    var_2 = 558f;
    var var_3 = vec2<i32>(_wgslsmith_div_i32(select(23502i, abs(var_0.x), !all(vec3<bool>(var_1.a.a, true, global0.a))), u_input.a), -u_input.b);
    return Struct_1(vec4<bool>(any(vec2<bool>(true, !var_1.a.a)), var_1.a.a, !any(!vec3<bool>(true, global0.a, global0.a)), all(vec3<bool>(true, true, true))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_1(!select(vec4<bool>(false, all(vec4<bool>(arg_1.x, true, arg_1.x, arg_2.d.a)), select(arg_0.a.x, arg_1.x, arg_0.a.x), true), func_4(-vec3<i32>(u_input.b, 21984i, 0i)).a, any(vec4<bool>(arg_2.a.a, false, global0.a, arg_0.a.x))));
    var var_1 = firstLeadingBit(abs(~firstLeadingBit(vec3<i32>(2147483647i, arg_2.c, 39053i))));
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    var var_2 = _wgslsmith_f_op_f32(trunc(-1000f));
    return Struct_3(var_0.a.x | select(all(vec2<bool>(arg_0.a.x, arg_2.d.a)), all(select(arg_1, vec3<bool>(var_0.a.x, false, arg_1.x), vec3<bool>(var_0.a.x, true, arg_2.a.a))), false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1085f, -702f))), 660f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.d.c), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 14u)], 656f) * arg_2.d.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1110f, arg_2.a.c.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~67335u, 24u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(707f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.c, 14u)])))));
    let var_2 = Struct_4(Struct_3(global0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(97462u, 14u)] - global2[_wgslsmith_index_u32(1u, 14u)]) + global2[_wgslsmith_index_u32(u_input.c ^ 21210u, 14u)]))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(521f, 1704f)))))), 25900u, -52105i, func_5(func_4(vec3<i32>(u_input.b, ~u_input.a, func_1(Struct_3(true, 1086f, vec2<f32>(-548f, 1392f))))), func_4(~min(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.a, u_input.b, -1i))).a.www, Struct_4(Struct_3(global0.a, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)], 14u)] + -2132f), vec2<f32>(-735f, 974f)), countOneBits(func_2()), abs(min(-6120i, 1i)), Struct_3(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 14u)], _wgslsmith_f_op_vec2_f32(global0.c + global0.c)))));
    var var_3 = Struct_5(_wgslsmith_dot_vec2_u32(vec2<u32>(37041u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(68203u, var_2.b, 5419u), u_input.d) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, var_2.b, var_2.b, u_input.c), vec4<u32>(global3[_wgslsmith_index_u32(1628u, 24u)], u_input.c, 1u, u_input.d.x)) ^ ~var_2.b), (u_input.d.zz << (u_input.d.xz % vec2<u32>(32u))) >> ((u_input.d.xy ^ ~vec2<u32>(0u, 58410u)) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(var_2.b), abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 65559u), u_input.d.zy), vec2<u32>(global3[_wgslsmith_index_u32(28729u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]) ^ u_input.d.xy))), Struct_2(func_4(countOneBits(min(vec3<i32>(-1i, -2147483647i, var_2.c), vec3<i32>(var_2.c, u_input.b, var_2.c)))), Struct_1(select(select(vec4<bool>(false, true, true, global0.a), vec4<bool>(false, false, false, true), vec4<bool>(var_2.d.a, true, var_2.d.a, global0.a)), vec4<bool>(global0.a, var_2.d.a, global0.a, global0.a), func_4(vec3<i32>(1i, u_input.a, 1i)).a.x)), func_4(min(~vec3<i32>(u_input.b, -2147483647i, -2631i), vec3<i32>(var_2.c, var_2.c, 19557i) ^ vec3<i32>(-9570i, var_2.c, var_2.c))), _wgslsmith_f_op_f32(-var_2.a.c.x)), ~var_2.b ^ _wgslsmith_clamp_u32(0u, abs(_wgslsmith_mult_u32(4294967295u, u_input.c)), var_2.b), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.d.x, var_2.b, 31633u, u_input.c), vec4<u32>(69174u, var_2.b, 0u, u_input.c), global0.a), reverseBits(vec4<u32>(5821u, 0u, global3[_wgslsmith_index_u32(u_input.c, 24u)], 0u))), max(vec4<u32>(u_input.d.x, 12209u, var_2.b, u_input.d.x), vec4<u32>(1u, 1u, 4294967295u, u_input.d.x)) << ((vec4<u32>(13904u, 36143u, 25528u, 18352u) ^ vec4<u32>(0u, 4294967295u, var_2.b, u_input.c)) % vec4<u32>(32u)), vec4<u32>(18297u, ~81688u, var_2.b | u_input.c, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.d.x, var_2.b, global3[_wgslsmith_index_u32(u_input.d.x, 24u)]) << (~vec4<u32>(u_input.c, global3[_wgslsmith_index_u32(u_input.d.x, 24u)], global3[_wgslsmith_index_u32(u_input.d.x, 24u)], global3[_wgslsmith_index_u32(75500u, 24u)]) % vec4<u32>(32u)), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)], 24u)], 3853u, 38093u, countOneBits(1u)))));
    global0 = func_5(func_4(vec3<i32>(-2147483647i, max(~var_2.c, -2147483647i), ~(~(-2147483647i)))), select(select(func_4(vec3<i32>(-13006i, 24177i, u_input.a)).a.zzw, vec3<bool>(true, var_2.d.a, !global0.a), !vec3<bool>(var_2.a.a, true, var_2.d.a)), func_4(-select(vec3<i32>(0i, 1i, -1i), vec3<i32>(19482i, var_2.c, var_2.c), global0.a)).a.zyw, !var_3.c.c.a.wwz), var_2);
    var var_4 = select(abs(reverseBits(vec3<i32>(var_2.c, 8272i, 1i))), _wgslsmith_mult_vec3_i32(-vec3<i32>(1i, var_2.c | u_input.b, 2147483647i), _wgslsmith_clamp_vec3_i32(-countOneBits(vec3<i32>(2147483647i, -1i, 1i)), -(~vec3<i32>(u_input.a, 8223i, u_input.b)), -vec3<i32>(var_2.c, u_input.a, 33732i) << ((vec3<u32>(0u, var_3.e.x, global3[_wgslsmith_index_u32(u_input.c, 24u)]) << (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u)))), any(vec3<bool>(true, any(vec3<bool>(var_2.a.a, global0.a, true)), (global0.a || var_3.c.c.a.x) & true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -934f), 848f, any(func_4(vec3<i32>(30141i, u_input.a, -5006i)).a.ww))), _wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.d + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(62443u, 14u)])))), _wgslsmith_sub_i32(~var_2.c, _wgslsmith_div_i32(14235i, _wgslsmith_mod_i32(29385i & var_2.c, _wgslsmith_dot_vec2_i32(var_4.zy, vec2<i32>(-1i, 0i))))), 0i);
}

