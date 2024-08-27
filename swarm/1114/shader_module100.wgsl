struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, true, true, false, false, true, false, false, true, false, false, true, false, true, true, false, false, true, true, true, false, true, false, false, true, true, true, true);

var<private> global1: array<f32, 19> = array<f32, 19>(-704f, 102f, -1000f, 1674f, -431f, -538f, 644f, 740f, -1456f, 107f, -1000f, -1289f, -193f, -1168f, -1464f, 108f, -285f, 822f, 791f);

var<private> global2: array<u32, 11> = array<u32, 11>(55246u, 0u, 0u, 52273u, 22544u, 1u, 0u, 1u, 6400u, 1u, 0u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = !(!arg_3.a.c.zyw);
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a, -2304f)))))))) * _wgslsmith_f_op_vec2_f32(arg_3.a.e - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1234f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = false;
    return Struct_4(arg_3.a, -reverseBits(-u_input.a.wyw));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool) -> Struct_2 {
    global2 = array<u32, 11>();
    global2 = array<u32, 11>();
    global2 = array<u32, 11>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(19216u, ~arg_0.a.a), 11u)];
    let var_1 = vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(18102u, global2[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.e) * arg_1.zz), Struct_1(470f, select(true, true, arg_0.a.c.x), vec3<u32>(60545u, 27597u, 65392u), vec2<i32>(u_input.b, -1i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), arg_0.a.e.x), vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(70485u, 28u)], false)), true, true, true), arg_0).a.a, 11u)]), 19u)], global1[_wgslsmith_index_u32(~47701u, 19u)], _wgslsmith_f_op_f32(539f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f * global1[_wgslsmith_index_u32(~u_input.c.x, 19u)]) - _wgslsmith_f_op_f32(max(-1464f, -1397f)))), arg_1.x);
    return Struct_2(~_wgslsmith_dot_vec3_u32(u_input.c.yzz, firstLeadingBit(u_input.c.ywx)), vec4<bool>(!all(func_2(arg_1.zy, Struct_1(var_1.x, false, u_input.c.zwz, arg_0.b.xx, -1000f), arg_0.a.c, arg_0).a.b.yw), !(!(arg_0.b.x >= u_input.d)), true, false), arg_0.a.c, !arg_0.a.c.x, vec2<f32>(var_1.x, var_1.x));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = abs(_wgslsmith_div_u32(4294967295u, 29740u));
    var var_1 = Struct_4(func_3(func_2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 19u)])), Struct_1(-663f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 28u)], vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], 13990u, 2294u), ~vec2<i32>(2147483647i, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1096f)), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 28u)], false), Struct_4(Struct_2(14892u, vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 28u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], false, false, true), true, vec2<f32>(arg_0, -224f)), -u_input.a.zyx)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], global1[_wgslsmith_index_u32(53048u, 19u)], arg_0) - vec3<f32>(arg_0, -915f, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, -1000f, arg_0) - vec3<f32>(400f, -1000f, 957f)))), !(!(global0[_wgslsmith_index_u32(4294967295u, 28u)] && global0[_wgslsmith_index_u32(u_input.c.x, 28u)]))), vec3<i32>(-56901i, countOneBits(u_input.b), u_input.d) | select(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xxy, u_input.a.zyx), vec3<i32>(u_input.a.x, -29804i, -2147483647i) << (u_input.c.wyx % vec3<u32>(32u))), firstLeadingBit(select(u_input.a.wxz, u_input.a.xyz, vec3<bool>(true, true, false))), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], false, true)));
    global1 = array<f32, 19>();
    global2 = array<u32, 11>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22806u, 11u)], 11u)]), 19u)]), u_input.a.xyw);
    let var_1 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.a.e)) * vec2<f32>(810f, global1[_wgslsmith_index_u32(1u, 19u)])), var_0.a.e), Struct_1(_wgslsmith_f_op_f32(step(func_3(Struct_4(var_0.a, u_input.a.xzx), vec3<f32>(var_0.a.e.x, var_0.a.e.x, -917f), var_0.a.d).e.x, _wgslsmith_f_op_f32(step(134f, _wgslsmith_f_op_f32(-var_0.a.e.x))))), any(!vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86505u, 11u)], 28u)])), ~select(vec3<u32>(u_input.c.x, u_input.c.x, 5693u), u_input.c.wyw, global0[_wgslsmith_index_u32(123691u, 28u)]) | vec3<u32>(~u_input.c.x, 0u, var_0.a.a), -vec2<i32>(u_input.b, u_input.d), -978f), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e.x + _wgslsmith_f_op_f32(round(-1359f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-892f)) + var_0.a.e.x))).b, Struct_4(func_1(-405f), var_0.b)).a.c.zy;
    var var_2 = var_0.b | select(var_0.b, var_0.b, var_0.a.b.xxw);
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(countOneBits(-2147483647i), var_2.x), -1i), ~vec2<i32>(-(var_2.x >> (4294967295u % 32u)), 1i));
    var_2 = _wgslsmith_clamp_vec3_i32(min(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-947f, global1[_wgslsmith_index_u32(u_input.c.x, 19u)]) - _wgslsmith_f_op_vec2_f32(-var_0.a.e)), Struct_1(_wgslsmith_f_op_f32(var_0.a.e.x - var_0.a.e.x), var_1.x, vec3<u32>(u_input.c.x, 3986u, u_input.c.x) ^ u_input.c.wyz, countOneBits(vec2<i32>(16371i, -2756i)), _wgslsmith_f_op_f32(-var_0.a.e.x)), select(!var_0.a.b, select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(11733u, 28u)], var_1.x), var_0.a.c, var_0.a.d), true), func_2(var_0.a.e, Struct_1(2431f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 28u)], vec3<u32>(var_0.a.a, global2[_wgslsmith_index_u32(0u, 11u)], u_input.c.x), vec2<i32>(var_2.x, var_0.b.x), var_0.a.e.x), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], true, global0[_wgslsmith_index_u32(1u, 28u)]), Struct_4(Struct_2(0u, vec4<bool>(true, global0[_wgslsmith_index_u32(48203u, 28u)], true, var_1.x), vec4<bool>(true, var_0.a.b.x, var_1.x, true), global0[_wgslsmith_index_u32(84138u, 28u)], var_0.a.e), vec3<i32>(var_0.b.x, var_0.b.x, -11498i)))).b, abs(vec3<i32>(u_input.a.x << (var_0.a.a % 32u), ~u_input.b, var_2.x & -28625i))), u_input.a.zxw, countOneBits(firstTrailingBit(~(~u_input.a.xwx))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-var_0.a.e.x), !(countOneBits(~48900i) < (-u_input.a.x ^ -2147483647i)), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, ~var_0.a.a), ~1u, ~_wgslsmith_mult_u32(u_input.c.x, 63422u)) & reverseBits(u_input.c.yzy), u_input.a.yw, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstTrailingBit(~(~1u)), 19u)] * var_0.a.e.x));
    var var_5 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.e - var_0.a.e)))), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 19u)]), true, ~vec3<u32>(4294967295u, 1u, var_0.a.a), -var_4.d, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.c.x, 19u)] + _wgslsmith_f_op_f32(-926f * var_4.e))), func_2(_wgslsmith_f_op_vec2_f32(var_0.a.e + _wgslsmith_f_op_vec2_f32(-var_0.a.e)), Struct_1(_wgslsmith_f_op_f32(-374f + var_0.a.e.x), true, vec3<u32>(4294967295u, var_0.a.a, var_0.a.a), vec2<i32>(var_2.x, -2147483647i), _wgslsmith_f_op_f32(var_4.e * -665f)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -635f)).b, func_2(var_0.a.e, Struct_1(-1463f, false, u_input.c.xzw, u_input.a.yz, 1307f), !vec4<bool>(true, true, var_1.x, global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), Struct_4(var_0.a, u_input.a.xww))).a.b, func_2(vec2<f32>(416f, _wgslsmith_f_op_f32(floor(var_0.a.e.x))), var_4, var_0.a.c, func_2(_wgslsmith_f_op_vec2_f32(-var_0.a.e), Struct_1(1038f, var_0.a.d, vec3<u32>(0u, u_input.c.x, var_0.a.a), u_input.a.xw, 683f), select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_4.c.x, 11u)], 28u)]), var_0.a.c, vec4<bool>(var_0.a.c.x, var_4.b, true, global0[_wgslsmith_index_u32(var_4.c.x, 28u)])), func_2(vec2<f32>(var_0.a.e.x, -568f), var_4, vec4<bool>(var_1.x, false, var_4.b, false), Struct_4(var_0.a, vec3<i32>(u_input.b, 26639i, 1i)))))).a.a, select(select(select(var_0.a.b, vec4<bool>(var_4.b, var_1.x, var_1.x, var_1.x), false), func_3(func_2(var_0.a.e, var_4, var_0.a.c, Struct_4(Struct_2(var_4.c.x, var_0.a.b, vec4<bool>(false, true, var_1.x, false), var_0.a.d, var_0.a.e), var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.e.x, var_4.a, var_4.a)), false).b, var_0.a.b.x), !func_3(func_2(var_0.a.e, Struct_1(1902f, false, var_4.c, var_4.d, var_4.a), var_0.a.b, Struct_4(var_0.a, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-573f, var_0.a.e.x, -386f)), var_4.b & true).b, select(!var_0.a.c, var_0.a.b, var_4.b)), var_0.a.c, all(!(!select(var_0.a.b.zxx, var_0.a.b.wyz, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e.x + 140f) - global1[_wgslsmith_index_u32(1u, 19u)]), var_0.a.e.x)));
    var var_6 = all(var_5.c.yzx);
    let x = u_input.a;
    s_output = StorageBuffer(1048f);
}

