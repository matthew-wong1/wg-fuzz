struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-703f, -1000f, 1712f, 281f, -1559f, 823f, -955f, -476f, -305f, -1205f, -169f, -124f, -1484f, -736f, 1389f, 307f, -1000f, -1526f);

var<private> global1: array<Struct_2, 2>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32) -> vec2<bool> {
    var var_0 = Struct_3(!(!vec2<bool>(308f > arg_1.b.c.a, !arg_1.b.c.d)), u_input.a.x, Struct_2(arg_1.b.c.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.b.c.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-823f - arg_0.e), global0[_wgslsmith_index_u32(41812u, 18u)])), _wgslsmith_sub_u32(arg_1.b.d.x, u_input.c) > ~arg_0.a)), arg_0.c, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, arg_1.b.a) | arg_0.c.c.xx, vec2<u32>(50947u, 4294967295u) >> (arg_0.d.yx % vec2<u32>(32u))), arg_1.b.a >> (_wgslsmith_sub_u32(17823u, 0u) % 32u), _wgslsmith_sub_u32(4294967295u, arg_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.b.c.c.x, 1u), 18u)] - 388f)))));
    var var_1 = vec3<bool>(select(!arg_1.b.c.d, true, !(any(vec2<bool>(arg_0.c.d, var_0.c.c.d)) || all(vec4<bool>(true, true, false, false)))), arg_1.b.c.d, !all(!(!vec3<bool>(arg_0.c.d, false, arg_0.c.d))));
    var var_2 = arg_1.a;
    var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.d.x, 18u)] - var_0.c.e))) < _wgslsmith_f_op_f32(select(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f)), true)), all(!(!vec3<bool>(false, arg_1.b.c.d, arg_1.b.c.d))), var_1.x);
    global1 = array<Struct_2, 2>();
    return !var_0.a;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(max(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2366i, arg_0.c.c.b), u_input.a.wx)), u_input.a.x), min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 28475i, 1i), vec3<i32>(arg_1.d.b, u_input.b, -21214i)), arg_0.b)), 0i);
    let var_1 = !arg_0.a.x;
    let var_2 = global3[_wgslsmith_index_u32(u_input.c, 11u)];
    let var_3 = vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(u_input.a.xxw, max(vec3<i32>(-28761i, 0i, arg_1.d.c.c.b), select(vec3<i32>(3947i, 0i, -3746i), vec3<i32>(u_input.a.x, 41226i, arg_1.d.c.c.b), vec3<bool>(true, false, false))));
    let var_4 = vec3<bool>(!(any(!vec3<bool>(var_1, false, false)) || func_2(Struct_2(arg_1.b, var_2.a, global3[_wgslsmith_index_u32(arg_0.c.a, 11u)], var_2.c, 963f), Struct_4(arg_1.c, Struct_2(4294967295u, arg_1.c.x, arg_0.c.c, vec3<u32>(0u, arg_1.d.c.a, 0u), arg_0.c.b)), 1i).x), var_1, var_0.x <= abs(-(~0i)));
    return arg_1.d.c.c.c.x;
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_5(func_2(global1[_wgslsmith_index_u32(4294967295u, 2u)], Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(56904u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], 251f, -1722f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-327f, global0[_wgslsmith_index_u32(56356u, 18u)], 1332f, -987f) - vec4<f32>(-460f, global0[_wgslsmith_index_u32(u_input.c, 18u)], -702f, 426f))), Struct_2(min(37157u, 43676u), _wgslsmith_f_op_f32(round(-1635f)), global3[_wgslsmith_index_u32(u_input.c, 11u)], vec3<u32>(28689u, u_input.c, u_input.c) | vec3<u32>(4162u, u_input.c, u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 18u)])), _wgslsmith_div_i32(_wgslsmith_mod_i32(firstLeadingBit(-6763i), u_input.a.x), 2147483647i)), select(~u_input.c >> (1u % 32u), ~12748u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 2061u, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u)) > u_input.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(-822f, global0[_wgslsmith_index_u32(0u, 18u)])), 919f, -2539f, -158f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(615f, 239f, global0[_wgslsmith_index_u32(4294967295u, 18u)], 1000f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 762f, global0[_wgslsmith_index_u32(54868u, 18u)], global0[_wgslsmith_index_u32(31179u, 18u)])))))))), Struct_3(func_2(Struct_2(26947u, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(56683u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)])), Struct_1(global0[_wgslsmith_index_u32(1u, 18u)], -2147483647i, vec3<u32>(u_input.c, 65568u, u_input.c), arg_0.x), ~vec3<u32>(u_input.c, u_input.c, 0u), global0[_wgslsmith_index_u32(u_input.c, 18u)]), Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), vec4<f32>(403f, 1000f, -107f, 348f)), global1[_wgslsmith_index_u32(firstTrailingBit(111645u), 2u)]), u_input.a.x), _wgslsmith_div_i32(58583i, -21267i) & (13029i | (u_input.a.x ^ -24877i)), Struct_2(func_3(Struct_3(arg_0.zz, u_input.b, global1[_wgslsmith_index_u32(u_input.c, 2u)]), Struct_5(vec2<bool>(arg_0.x, arg_0.x), u_input.c, vec4<f32>(-1832f, -1117f, 143f, -206f), Struct_3(vec2<bool>(arg_0.x, arg_0.x), -45470i, Struct_2(1u, -1757f, Struct_1(152f, -2147483647i, vec3<u32>(1u, 1u, 0u), true), vec3<u32>(13528u, u_input.c, 4294967295u), 521f)))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c, 18u)], _wgslsmith_f_op_f32(select(-259f, global0[_wgslsmith_index_u32(40486u, 18u)], false))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c & u_input.c, ~u_input.c), 11u)], ~vec3<u32>(u_input.c, 19087u, u_input.c) & max(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 51318u)), global0[_wgslsmith_index_u32(4294967295u, 18u)])));
    var var_1 = Struct_3(select(vec2<bool>(arg_0.x, false), !var_0.a, select(!arg_0.ww, select(var_0.d.a, vec2<bool>(true, true), vec2<bool>(var_0.d.a.x, false)), vec2<bool>(-2034f <= global0[_wgslsmith_index_u32(85210u, 18u)], true))), select(countOneBits(-reverseBits(1i)), reverseBits(-_wgslsmith_mod_i32(49061i, 1i)), any(vec2<bool>(arg_0.x | var_0.a.x, arg_0.x))), global1[_wgslsmith_index_u32(max(u_input.c, 26126u), 2u)]);
    global0 = array<f32, 18>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.wy));
    global3 = array<Struct_1, 11>();
    return Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(~4294967295u >> (var_1.c.a % 32u), 18u)], -1555f, var_0.c.x, -855f))), Struct_2(_wgslsmith_sub_u32(var_0.b, var_1.c.a) | max(var_0.d.c.d.x, u_input.c | 25877u), -1004f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 18u)] - var_2.x)), -1i, max(vec3<u32>(9720u, 89865u, 0u), var_1.c.d ^ var_0.d.c.d), _wgslsmith_f_op_f32(f32(-1f) * -446f) > _wgslsmith_f_op_f32(var_2.x * 977f)), select(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.d.c.d, var_1.c.d), ~1u, 1u & var_0.d.c.c.c.x), countOneBits(vec3<u32>(39332u, 1u, 0u)), vec3<bool>(arg_0.x, arg_0.x, var_0.a.x)), _wgslsmith_f_op_f32(-var_0.c.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0.b.c.b;
    var var_1 = true;
    let var_2 = _wgslsmith_div_vec3_i32(min(u_input.a.wzy, u_input.a.yxy), vec3<i32>(-15710i, -firstLeadingBit(-arg_0.b.c.b), 1i));
    let var_3 = Struct_5(vec2<bool>(!any(vec4<bool>(arg_0.b.c.d, arg_0.b.c.d, true, false)), false & arg_0.b.c.d), arg_1.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1890f, _wgslsmith_f_op_f32(-764f * _wgslsmith_f_op_f32(arg_0.a.x * 1147f)), _wgslsmith_f_op_f32(ceil(arg_0.b.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-279f - 149f), _wgslsmith_f_op_f32(min(arg_0.a.x, -990f)))) + _wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) + _wgslsmith_f_op_vec4_f32(-arg_0.a)))), Struct_3(vec2<bool>(!arg_1.d, true), 1i, global1[_wgslsmith_index_u32(1u, 2u)]));
    var var_4 = 136f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.b.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 18u)] + -1826f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f - -1000f)) + arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(30904u, u_input.c, 26118u) & vec3<u32>(u_input.c, 4294967295u, 25465u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f * global0[_wgslsmith_index_u32(37591u, 18u)])), -226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec4<bool>(false, true, false, true)), global3[_wgslsmith_index_u32(52073u, 11u)])))) * vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 18u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1008f * global0[_wgslsmith_index_u32(7137u, 18u)]), -204f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 18u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)))));
    var var_2 = Struct_2(19305u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_1(vec4<bool>(false, false, true, false)).b.d.x, 18u)]))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1255f - var_1.x)), 1i, firstTrailingBit(~(~vec3<u32>(var_0.x, 0u, u_input.c))), !all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), countOneBits(firstTrailingBit(~min(vec3<u32>(0u, u_input.c, var_0.x), vec3<u32>(var_0.x, 0u, 58564u)))), var_1.x);
    var_2 = global1[_wgslsmith_index_u32(68465u, 2u)];
    var_2 = Struct_2(_wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.c, var_2.d.x, var_0.x)), vec3<u32>(0u, u_input.c, var_2.a)), max(select(vec3<u32>(var_2.c.c.x, var_2.d.x, var_0.x), var_2.c.c, false), firstLeadingBit(vec3<u32>(61740u, var_2.c.c.x, u_input.c))), select(select(vec3<bool>(false, true, true), vec3<bool>(var_2.c.d, false, var_2.c.d), vec3<bool>(var_2.c.d, var_2.c.d, var_2.c.d)), select(vec3<bool>(var_2.c.d, var_2.c.d, var_2.c.d), vec3<bool>(var_2.c.d, true, var_2.c.d), true), true)), min(vec3<u32>(~8758u, _wgslsmith_clamp_u32(35055u, 0u, 33227u), var_2.c.c.x << (6150u % 32u)), var_2.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(vec4<f32>(-280f, 528f, 940f, var_1.x), Struct_2(var_2.d.x, var_1.x, Struct_1(642f, 82056i, var_2.c.c, var_2.c.d), vec3<u32>(28627u, var_0.x, var_2.d.x), global0[_wgslsmith_index_u32(0u, 18u)])), global3[_wgslsmith_index_u32(69096u, 11u)])))), func_1(select(vec4<bool>(any(vec2<bool>(var_2.c.d, var_2.c.d)), func_1(vec4<bool>(var_2.c.d, false, true, false)).b.c.d, -575f <= global0[_wgslsmith_index_u32(48017u, 18u)], var_2.c.d), !(!vec4<bool>(var_2.c.d, var_2.c.d, false, false)), !(!vec4<bool>(var_2.c.d, true, var_2.c.d, true)))).b.c, var_2.c.c, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, !(u_input.a.x > var_2.c.b))));
    global1 = array<Struct_2, 2>();
    global1 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, vec4<u32>(36174u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(min(var_2.c.c.x, var_0.x), 0u, 35768u), abs(~1u)), 10884u | u_input.c, 4294967295u), vec2<i32>(~(-(u_input.a.x ^ u_input.a.x)), var_2.c.b));
}

