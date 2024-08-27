struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<bool, 31>;

var<private> global2: vec4<i32> = vec4<i32>(-18011i, 0i, -1i, 1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = -328f;
    let var_1 = ~global2.x;
    global0 = array<Struct_2, 21>();
    global1 = array<bool, 31>();
    var var_2 = -global2.x;
    return false;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<u32> {
    let var_0 = global2.xw;
    global0 = array<Struct_2, 21>();
    var var_1 = vec2<bool>(global1[_wgslsmith_index_u32(21896u, 31u)], func_3(Struct_2(Struct_1(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 31u)], global1[_wgslsmith_index_u32(arg_0, 31u)], global1[_wgslsmith_index_u32(28578u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(8496u, 31u)], false), vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], false)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)]), _wgslsmith_f_op_f32(ceil(-416f)), i32(-1i) * -1i, _wgslsmith_f_op_f32(min(542f, 818f))), Struct_1(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c, 31u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(arg_0, 31u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(17876u, 31u)], global1[_wgslsmith_index_u32(2100u, 31u)])), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_f32(f32(-1f) * -672f), i32(-1i) * -30865i, _wgslsmith_div_f32(282f, 165f)), arg_0, Struct_1(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0, 31u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)], true)), select(vec4<bool>(global1[_wgslsmith_index_u32(25295u, 31u)], false, false, global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], true), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(1u, 31u)])), 2102f, 61748i, 302f)), vec4<f32>(_wgslsmith_f_op_f32(-144f + _wgslsmith_f_op_f32(459f + 619f)), -358f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1721f)), -1193f), 1f, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.yxx, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, arg_0, u_input.c), u_input.b.yxx)), 35860u, 1u ^ u_input.b.x)));
    let var_2 = !vec4<bool>(!(!all(vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(0u, 31u)]))), var_1.x, func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(arg_0), arg_0 | u_input.c), 21u)], _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-952f, -1000f, -324f, -1941f), vec4<f32>(535f, 2046f, 1075f, 924f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-923f * -1709f))), u_input.b.zyz), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-821f, 262f, -303f, 914f) * vec4<f32>(-735f, -118f, 1061f, -1446f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    return vec3<u32>(_wgslsmith_add_u32(32365u, ~max(~u_input.c, arg_0)), 0u, countOneBits(_wgslsmith_mod_u32(~(arg_0 ^ arg_0), 2542u)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    global2 = ~(-(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, 15378i, 1i, 8872i), vec4<i32>(var_0.d, global2.x, 58879i, -29341i)), vec4<i32>(u_input.a, 18426i, var_0.d, 1i) ^ vec4<i32>(-20551i, -1i, arg_2.d, global2.x), -vec4<i32>(var_0.d, u_input.a, var_0.d, arg_2.d)) ^ countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-21112i, global2.x, 53152i, -43613i), vec4<i32>(5068i, var_0.d, global2.x, var_0.d)))));
    global2 = ~(~vec4<i32>(global2.x, -2147483647i, ~arg_2.d, i32(-1i) * -35905i)) >> (vec4<u32>(0u, u_input.b.x, ~((u_input.c >> (u_input.b.x % 32u)) | u_input.b.x), 31643u) % vec4<u32>(32u));
    var var_1 = ~func_2(u_input.b.x, _wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(1i, global2.x)));
    var var_2 = global2.xx | reverseBits(abs(countOneBits(vec2<i32>(arg_2.d, 1i))));
    return 13215u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_1, abs(arg_1)), firstLeadingBit(_wgslsmith_dot_vec2_u32(~arg_1.zz, arg_1.wz))), 31u)];
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    global0 = array<Struct_2, 21>();
    return Struct_1(!select(vec3<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 31u)], true, arg_3), !global1[_wgslsmith_index_u32(0u, 31u)], arg_3), !vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), select(!vec3<bool>(arg_3, true, true), !vec3<bool>(true, arg_3, global1[_wgslsmith_index_u32(u_input.c, 31u)]), vec3<bool>(true, arg_3, global1[_wgslsmith_index_u32(u_input.b.x, 31u)]))), !(!select(vec4<bool>(arg_3, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(67593u, 31u)], arg_3), select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)], arg_3, true), vec4<bool>(false, false, arg_3, arg_3), true), true)), arg_2, 44902i, 1639f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(vec3<u32>(~(~u_input.b.x), ~28565u, 4294967295u), vec4<u32>(max(func_1(-896f, vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)]), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], true, global1[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)]), 965f, global2.x, 1488f)), 1u), ~17024u, 1u, _wgslsmith_div_u32(~3411u, max(27068u, u_input.c))), -1000f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.b.x, u_input.b.x), ~u_input.b.x), vec2<u32>(abs(u_input.c), u_input.c)), 31u)]), Struct_1(select(func_4(func_2(1u, -1i), u_input.b ^ u_input.b, _wgslsmith_div_f32(1498f, 922f), true).a, select(vec3<bool>(true, true, true), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 31u)], true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(9406u, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(17192u, 31u)]))), !func_4(vec3<u32>(u_input.b.x, 35220u, 12041u), u_input.b, 169f, global1[_wgslsmith_index_u32(0u, 31u)]).b.x), !select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], false, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1332f))))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-u_input.a, _wgslsmith_add_i32(global2.x, -43573i)), _wgslsmith_add_i32(~global2.x, -49995i >> (u_input.b.x % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -184f)), u_input.c, Struct_1(vec3<bool>(func_3(Struct_2(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(4695u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 31u)], false, global1[_wgslsmith_index_u32(48928u, 31u)]), -1447f, 59809i, 101f), Struct_1(vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], false, false, global1[_wgslsmith_index_u32(46746u, 31u)]), -1625f, global2.x, -1000f), u_input.c, Struct_1(vec3<bool>(true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)]), 326f, 6968i, 2714f)), _wgslsmith_div_vec4_f32(vec4<f32>(-326f, 733f, -364f, -255f), vec4<f32>(-1625f, -1063f, -680f, 2063f)), _wgslsmith_f_op_f32(1448f * -1300f), vec3<u32>(u_input.c, 2250u, 71781u)), !any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(70616u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)])), any(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(11865u, 31u)], true))), func_4(u_input.b.zyy, vec4<u32>(_wgslsmith_mult_u32(1u, u_input.c), ~9269u, min(0u, u_input.c), firstTrailingBit(u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(541f * -1000f), _wgslsmith_f_op_f32(min(-1000f, 1786f))), any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c, 31u)], true))).b, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(372f)))), u_input.a, -1733f));
    let var_1 = _wgslsmith_div_u32(4294967295u >> (u_input.c % 32u), var_0.c);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec3_u32(u_input.b.zyw, u_input.b.zwy), vec4<u32>(var_0.c, u_input.c, 53288u, 22165u), _wgslsmith_f_op_f32(f32(-1f) * -1151f), true).c * _wgslsmith_f_op_f32(round(var_0.a.c))) * var_0.d.e), _wgslsmith_f_op_f32(1320f * _wgslsmith_div_f32(1000f, var_0.b.c)));
    var var_3 = Struct_2(var_0.a, var_0.d, 0u, func_4(~(~u_input.b.wzy), ~vec4<u32>(abs(var_1), 1u, u_input.c, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 683f))), 1000f < _wgslsmith_f_op_f32(var_0.b.c - _wgslsmith_f_op_f32(-var_0.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0.a.e, func_4(u_input.b.xzy, ~u_input.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.c * -2164f), var_3.a.e)), !var_0.b.b.x).b.zy, var_3.b), u_input.b.x, _wgslsmith_f_op_f32(var_0.b.c * -1000f), firstTrailingBit(min(global2.zwx, vec3<i32>(var_0.a.d, 1i, var_3.d.d)) & vec3<i32>(7722i, _wgslsmith_mod_i32(-1i, 2147483647i), 1i)));
}

