struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec4<i32> = vec4<i32>(0i, -16958i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = arg_1.c;
    return u_input.b.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    global1 = ~vec4<i32>(~(-abs(global1.x)), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec3_i32(global1.zwx, vec3<i32>(-80055i, -45455i, u_input.a)), u_input.a), max(~u_input.a, u_input.a), 1i);
    let var_0 = _wgslsmith_clamp_vec4_i32(((firstTrailingBit(vec4<i32>(u_input.a, u_input.a, global1.x, u_input.a)) | ~vec4<i32>(u_input.a, -1i, global1.x, u_input.a)) << (vec4<u32>(_wgslsmith_div_u32(64349u, 17029u), ~arg_0.x, u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), u_input.b.wyz)) % vec4<u32>(32u))) & -vec4<i32>(global1.x, 23000i, 49788i, -u_input.a), vec4<i32>(~(-2147483647i), i32(-1i) * -2147483647i, 21849i, min(i32(-1i) * -46215i, -min(global1.x, u_input.a))), vec4<i32>(-1i) * -(vec4<i32>(1i, -22706i, global1.x, -2147483647i) >> (vec4<u32>(arg_0.x, 35126u, 0u, 4294967295u) % vec4<u32>(32u))));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2313f, arg_1.a.x)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -1061f) - arg_1.a.yw)) + arg_1.a.zw))));
    return ~global1.ywx;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = select(!select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(52969u, 12u)]), global0[_wgslsmith_index_u32(17143u, 12u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(26392u, 12u)]), !vec2<bool>(-1899f != _wgslsmith_f_op_f32(step(1000f, 1380f)), true), select(!(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], false))), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)] | global0[_wgslsmith_index_u32(u_input.b.x, 12u)], !global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true), vec2<bool>(global0[_wgslsmith_index_u32(17024u, 12u)], global0[_wgslsmith_index_u32(14976u, 12u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], false)), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)])), vec2<bool>(all(vec2<bool>(true, true)), false)), vec2<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(44155u, 12u)])), !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 12u)])));
    global0 = array<bool, 12>();
    global1 = vec4<i32>(_wgslsmith_dot_vec3_i32(-firstLeadingBit(global1.ywz), func_3(u_input.b, Struct_2(vec4<f32>(1311f, 132f, 933f, -404f), Struct_1(var_0.x, false), Struct_1(false, global0[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(true, false)), Struct_1(global0[_wgslsmith_index_u32(19630u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]))) & (global1.x & global1.x), select(u_input.a, u_input.a, abs(u_input.b.x) <= 121572u), -global1.x, -u_input.a << (9084u % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1523f + 188f) + _wgslsmith_f_op_f32(-1788f * -1079f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-783f, -643f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(998f + 3066f)) * -1509f)));
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(max(~(~u_input.b.x), ~0u) << ((_wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), ~36389u) << (max(u_input.b.x, 0u) % 32u)) % 32u), 12u)], all(vec2<bool>(var_0.x, true)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, var_1, -1328f, -819f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1), var_1, var_1, -782f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 100f)) + vec4<f32>(var_1, var_1, -941f, var_1)))), var_2, Struct_1(!global0[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_add_i32(firstLeadingBit(1i), ~u_input.a) >= u_input.a), !(!(!vec2<bool>(true, var_0.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    let var_0 = 4074u;
    var var_1 = u_input.b.x;
    let var_2 = 527f;
    var var_3 = Struct_1(false, true & any(vec3<bool>(true, var_2 == arg_2.a.x, true)));
    var_1 = 1u;
    return arg_2.a.x;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    global1 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -32724i, global1.x), 1i, global1.x, max(global1.x, -2147483647i) >> (~arg_0 % 32u)) | _wgslsmith_div_vec4_i32(-select(max(vec4<i32>(-5993i, 0i, -1i, -15289i), vec4<i32>(global1.x, global1.x, global1.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, -1i, global1.x, u_input.a)), vec4<bool>(true, false, arg_2, true)), select(reverseBits(vec4<i32>(global1.x, 0i, 0i, global1.x)), reverseBits(max(vec4<i32>(global1.x, -1i, global1.x, global1.x), vec4<i32>(u_input.a, 2147483647i, global1.x, 29626i))), any(!vec3<bool>(false, arg_2, false))));
    var var_0 = !(true == (!arg_2 & all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], true, false)))) != false;
    var var_1 = countOneBits(~(~(reverseBits(1u) | u_input.b.x)));
    var var_2 = -global1.xyw;
    var var_3 = vec2<bool>(!any(vec2<bool>(all(vec4<bool>(arg_1, arg_1, arg_2, false)), true)), false);
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 125f))), vec4<f32>(arg_3.x, 601f, -313f, -236f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, 317f, 811f, -1000f), func_2(1i).a, vec4<bool>(arg_2, false, var_3.x, global0[_wgslsmith_index_u32(u_input.b.x, 12u)])))) - vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.x))), -163f)), func_2(max(-2147483647i, u_input.a) >> (abs(~arg_0) % 32u)).c, Struct_1(true, false), vec2<bool>(any(vec4<bool>(true, arg_2, arg_1, var_3.x)) || arg_1, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(global0[_wgslsmith_index_u32(23605u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)] | true, any(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 12u)], false)), global0[_wgslsmith_index_u32(select(38308u, u_input.b.x, true), 12u)])));
    var_0 = !vec3<bool>(global0[_wgslsmith_index_u32(func_1(-10025i, Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(384f, -829f, 348f, 1468f))), Struct_1(false, false), Struct_1(var_0.x, false), vec2<bool>(true, false)), -674f), 12u)], !global0[_wgslsmith_index_u32(u_input.b.x, 12u)], ~global1.x >= _wgslsmith_mult_i32(~global1.x, abs(global1.x)));
    var var_1 = 1f;
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 12u)], !(!all(!vec4<bool>(false, true, var_0.x, true))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = !vec3<bool>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, 11474u), u_input.b.x & 1u) <= min(u_input.b.x, ~97108u), false, all(!vec2<bool>(var_0.x, var_0.x)) || any(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 12u)], true, true)));
    var var_3 = vec4<u32>(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, 1u, _wgslsmith_mod_u32(func_1(global1.x, Struct_2(vec4<f32>(-688f, -922f, -655f, 855f), Struct_1(var_2.a, false), Struct_1(true, true), var_0.xz), 2449f), 4294967295u)), u_input.b.x), abs(u_input.b.x | 4294967295u), 94484u);
    let var_4 = func_5(u_input.b.x, var_2.a, all(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1035f, -548f) * -482f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) + 2402f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1655f) + _wgslsmith_f_op_f32(func_4(firstTrailingBit(vec2<u32>(48370u, u_input.b.x)), vec4<i32>(global1.x, u_input.a, global1.x, global1.x), func_2(-51567i), var_0.xz)))));
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(15315u, _wgslsmith_sub_u32(18062u | u_input.b.x, ~4294967295u), 0u, ~select(u_input.b.x, u_input.b.x, true)), ~(~u_input.b)), reverseBits(u_input.b));
}

