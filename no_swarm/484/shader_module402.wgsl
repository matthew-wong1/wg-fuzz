struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14>;

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-51990i, 29529i, -1i));

var<private> global2: array<u32, 29> = array<u32, 29>(74260u, 4294967295u, 41108u, 4294967295u, 56894u, 4294967295u, 41552u, 4294967295u, 1u, 1u, 11540u, 1u, 1u, 59475u, 1u, 1u, 0u, 0u, 1u, 16858u, 4294967295u, 4294967295u, 1u, 9159u, 5564u, 86233u, 84214u, 1u, 6257u);

var<private> global3: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = ~firstLeadingBit(vec4<i32>(firstTrailingBit(~arg_1.c.a.b.b), arg_2.c.a.b.b, ~_wgslsmith_sub_i32(71204i, -63135i), u_input.a));
    let var_1 = Struct_5(arg_1.c.a.b, _wgslsmith_dot_vec3_u32(arg_1.c.a.a, arg_3.a) ^ ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.a.x, 29u)], 29u)], 29u)], 29u)], 29u)], arg_1.a.a.x, 47899u, global3.x), vec4<u32>(global3.x, arg_1.b, 77206u, 28467u)) ^ abs(1u)), Struct_3(Struct_2(arg_3.a ^ (vec3<u32>(arg_1.a.e, 42048u, global2[_wgslsmith_index_u32(arg_1.c.a.c.a.x, 29u)]) << (vec3<u32>(58785u, 1u, 39014u) % vec3<u32>(32u))), arg_3.b, Struct_1(vec2<u32>(arg_3.b.e, 239u), arg_2.c.a.d.b >> (global2[_wgslsmith_index_u32(99560u, 29u)] % 32u), !vec4<bool>(arg_1.e.x, false, arg_1.a.c.x, true), global3.yx, arg_3.a.x), arg_1.c.a.c)), arg_1.e.x, select(arg_2.c.a.b.c, !arg_2.c.a.c.c, select(!vec4<bool>(arg_0, true, arg_3.d.c.x, true), arg_3.c.c, select(select(arg_3.b.c, vec4<bool>(true, arg_2.d, false, false), arg_3.b.c), arg_1.a.c, arg_2.a.c))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~select(4294967295u, arg_1.c.a.d.a.x, false) & 41444u, ~arg_1.c.a.b.d.x, ~select(~arg_3.d.e, 4294967295u, false), (~var_1.b ^ firstLeadingBit(4294967295u)) >> (1u % 32u)), _wgslsmith_add_vec4_u32(countOneBits(max(vec4<u32>(1u, arg_1.c.a.b.e, 9543u, 4294967295u), vec4<u32>(arg_1.c.a.b.d.x, 12485u, arg_3.a.x, 6857u))), vec4<u32>(1u, 13857u, abs(1u), var_1.b)));
    let var_3 = -arg_1.c.a.c.b | _wgslsmith_mult_i32(67076i, firstLeadingBit(_wgslsmith_add_i32(~0i, -2147483647i)));
    global2 = array<u32, 29>();
    return var_1.c.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> vec4<i32> {
    global0 = array<vec2<bool>, 14>();
    var var_0 = vec3<bool>(arg_1.x | true, true, arg_1.x);
    let var_1 = reverseBits(~global2[_wgslsmith_index_u32(global3.x, 29u)]);
    global2 = array<u32, 29>();
    var var_2 = vec3<i32>(arg_0.c.b, ~_wgslsmith_clamp_i32(1875i, -1i, firstLeadingBit(2147483647i)) >> (max(var_1, firstTrailingBit(~global2[_wgslsmith_index_u32(arg_0.b.d.x, 29u)])) % 32u), ~(-41558i));
    return vec4<i32>(-2147483647i, var_2.x, var_2.x, var_2.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_5 {
    let var_0 = arg_1.a.d.c;
    global0 = array<vec2<bool>, 14>();
    var var_1 = arg_1;
    let var_2 = ~_wgslsmith_clamp_vec4_i32(func_4(Struct_2(func_3(var_0.x, Struct_5(Struct_1(vec2<u32>(var_1.a.d.d.x, global2[_wgslsmith_index_u32(32942u, 29u)]), 4895i, vec4<bool>(var_0.x, var_1.a.d.c.x, true, var_0.x), vec2<u32>(var_1.a.b.d.x, 1u), 59409u), global3.x, Struct_3(Struct_2(vec3<u32>(16763u, arg_1.a.c.a.x, 4294967295u), Struct_1(global3.yx, 2147483647i, arg_1.a.b.c, vec2<u32>(global2[_wgslsmith_index_u32(92097u, 29u)], 1u), 10850u), arg_1.a.d, Struct_1(global3.xy, 3370i, var_1.a.b.c, global3.yy, 1u))), true, vec4<bool>(var_0.x, false, var_0.x, false)), Struct_5(Struct_1(vec2<u32>(53467u, 4294967295u), -14907i, vec4<bool>(var_1.a.c.c.x, var_0.x, false, false), vec2<u32>(4294967295u, 0u), 1u), global3.x, arg_1, false, vec4<bool>(var_0.x, var_0.x, var_1.a.d.c.x, arg_1.a.d.c.x)), Struct_2(var_1.a.a, Struct_1(vec2<u32>(arg_1.a.c.a.x, var_1.a.d.a.x), -1i, vec4<bool>(false, arg_1.a.d.c.x, var_1.a.d.c.x, arg_1.a.d.c.x), vec2<u32>(global3.x, 21366u), global3.x), arg_1.a.b, Struct_1(var_1.a.b.d, -24998i, vec4<bool>(var_0.x, var_0.x, var_0.x, arg_1.a.b.c.x), vec2<u32>(arg_1.a.d.e, arg_1.a.b.e), 4294967295u))), var_1.a.d, var_1.a.d, Struct_1(vec2<u32>(global3.x, 4294967295u), -47341i, vec4<bool>(true, var_0.x, false, true), arg_1.a.c.d, 0u)), select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 2365u), 14u)], !var_0.wx, vec2<bool>(var_0.x, var_0.x))), countOneBits(select(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.d.b, var_1.a.b.b, u_input.a, 1i), vec4<i32>(-45993i, arg_1.a.d.b, -1i, -2147483647i)), ~vec4<i32>(-16887i, 31209i, 1i, -30947i), arg_1.a.c.c.x)), ~abs(vec4<i32>(-31737i, 0i, 1i, u_input.a) << (vec4<u32>(3594u, 24302u, 35088u, 4294967295u) % vec4<u32>(32u))));
    let var_3 = ~(reverseBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(20168u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], 15566u), ~28206u)) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4025u, 1u, 12324u), vec3<u32>(4294967295u, arg_1.a.d.a.x, arg_1.a.a.x)) ^ (arg_1.a.d.e >> (arg_1.a.d.e % 32u))));
    return Struct_5(Struct_1(global3.zy, -1i, vec4<bool>(all(vec3<bool>(var_1.a.b.c.x, var_0.x, var_1.a.d.c.x)), global2[_wgslsmith_index_u32(46060u, 29u)] >= (global2[_wgslsmith_index_u32(4294967295u, 29u)] ^ 58893u), select(any(vec3<bool>(true, var_1.a.b.c.x, var_1.a.b.c.x)), true, any(vec3<bool>(false, var_0.x, var_1.a.c.c.x))), var_0.x), var_1.a.a.zz, 1u), var_1.a.d.d.x, arg_1, select(any(select(select(arg_1.a.c.c.yzw, vec3<bool>(arg_1.a.b.c.x, var_1.a.c.c.x, true), var_1.a.d.c.yxw), select(var_0.xzy, var_1.a.c.c.xxx, vec3<bool>(false, var_0.x, var_1.a.b.c.x)), !vec3<bool>(var_1.a.b.c.x, true, true))), var_0.x, any(vec2<bool>(true, any(vec2<bool>(false, var_0.x))))), var_1.a.d.c);
}

fn func_5(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = 58272u;
    var var_1 = select(u_input.a, arg_0.c.a.b.b, arg_0.a.c.x);
    global2 = array<u32, 29>();
    let var_2 = !all(vec4<bool>(arg_0.a.c.x, true, !arg_2, any(!arg_0.c.a.c.c.wx)));
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-678f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(721f, 175f)), -544f, false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(425f, arg_1.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(783f, -1095f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1558f, 452f)))))), Struct_3(Struct_2(arg_0.c.a.a, arg_0.c.a.c, arg_0.c.a.d, func_2(vec2<f32>(1000f, arg_1.x), arg_0.c).a))).c.a.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(864f, -527f)));
}

fn func_1() -> vec3<u32> {
    global2 = array<u32, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2619f)) + _wgslsmith_f_op_f32(step(579f, -279f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(247f)), -2087f, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1864f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_f_op_f32(f32(-1f) * -1547f)))))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1181f, -491f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1347f))), _wgslsmith_f_op_f32(func_5(func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-364f, -943f))), Struct_3(Struct_2(vec3<u32>(49833u, global3.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)]), Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(10403u, 29u)], 1u), u_input.a, vec4<bool>(true, false, true, false), vec2<u32>(1u, global3.x), global3.x), Struct_1(global3.xx, u_input.a, vec4<bool>(false, false, true, true), global3.xy, 64811u), Struct_1(global3.zz, u_input.a, vec4<bool>(false, true, true, false), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 29u)], 29u)], global3.x), 0u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-609f, 1064f, 454f, -633f), vec4<f32>(769f, 606f, 3277f, -523f)))), true)), 422f));
    global2 = array<u32, 29>();
    var var_1 = Struct_5(Struct_1(global3.xy, 1i, vec4<bool>(-u_input.a == 1i, true != all(global0[_wgslsmith_index_u32(1u, 14u)]), any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), vec2<u32>(max(1u, global2[_wgslsmith_index_u32(select(global3.x, global3.x, false), 29u)]), _wgslsmith_sub_u32(abs(18456u), ~global2[_wgslsmith_index_u32(103868u, 29u)])), global3.x), _wgslsmith_mult_u32(~24461u, firstLeadingBit(reverseBits(global3.x))), Struct_3(func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2043f, -1023f)))), func_2(vec2<f32>(-504f, var_0.x), Struct_3(Struct_2(vec3<u32>(1u, 11915u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15759u, 29u)], 29u)]), Struct_1(vec2<u32>(global3.x, global2[_wgslsmith_index_u32(37119u, 29u)]), u_input.a, vec4<bool>(false, true, false, true), global3.xz, 14054u), Struct_1(global3.yz, 5787i, vec4<bool>(false, true, false, false), global3.zy, 86188u), Struct_1(global3.zz, 27396i, vec4<bool>(true, true, true, true), vec2<u32>(14264u, global2[_wgslsmith_index_u32(74847u, 29u)]), 41175u)))).c).c.a), true, !func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-1001f, 1096f)), func_2(vec2<f32>(1744f, 490f), func_2(vec2<f32>(-989f, 109f), Struct_3(Struct_2(vec3<u32>(global3.x, 7676u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10879u, 29u)], 29u)], 29u)], 29u)], 29u)]), Struct_1(vec2<u32>(0u, 0u), u_input.a, vec4<bool>(false, true, true, true), global3.yy, 0u), Struct_1(global3.yy, -12911i, vec4<bool>(false, true, true, false), global3.yx, global2[_wgslsmith_index_u32(13493u, 29u)]), Struct_1(vec2<u32>(global3.x, 0u), u_input.a, vec4<bool>(false, true, false, true), global3.zx, 35031u)))).c).c).a.c);
    var_1 = func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.ww + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1239f, var_0.x), var_0.zz) + _wgslsmith_f_op_vec2_f32(-var_0.xw))))), Struct_3(var_1.c.a));
    return ~reverseBits(select((vec3<u32>(var_1.b, 45722u, 0u) | vec3<u32>(global3.x, global3.x, 10174u)) | vec3<u32>(32736u, 74257u, global2[_wgslsmith_index_u32(3511u, 29u)]), var_1.c.a.a, var_1.e.yxx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 1>();
    let var_0 = Struct_2(func_1(), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-343f, _wgslsmith_f_op_f32(f32(-1f) * -807f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 852f), _wgslsmith_f_op_vec2_f32(vec2<f32>(269f, -390f) + vec2<f32>(823f, 1444f)))), func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, -1162f)))), func_2(vec2<f32>(-143f, 685f), Struct_3(Struct_2(vec3<u32>(1u, 2088u, 77091u), Struct_1(global3.zy, 4808i, vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 60973u), 1u), Struct_1(global3.yx, u_input.a, vec4<bool>(false, false, false, true), vec2<u32>(109570u, 7178u), 4294967295u), Struct_1(global3.zy, 2147483647i, vec4<bool>(true, false, false, false), vec2<u32>(global2[_wgslsmith_index_u32(global3.x, 29u)], 1u), 71460u)))).c).c).a, Struct_1(vec2<u32>(global3.x, global3.x), (_wgslsmith_clamp_i32(-1i, 0i, u_input.a) << (global3.x % 32u)) >> (~1u % 32u), vec4<bool>(true, !select(true, false, false), true, false), select(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(9032u, global3.x), global3.xx), global3.yz), global3.xx, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(26028u), 51438u, global2[_wgslsmith_index_u32(4294967295u, 29u)]), 14u)]), 7587u), Struct_1(~(min(vec2<u32>(global2[_wgslsmith_index_u32(global3.x, 29u)], 4294967295u), global3.xy) >> (global3.xz % vec2<u32>(32u))), (i32(-1i) * -9795i) & (u_input.a >> (global3.x % 32u)), vec4<bool>(true, any(func_2(vec2<f32>(835f, 266f), Struct_3(Struct_2(vec3<u32>(global3.x, global2[_wgslsmith_index_u32(global3.x, 29u)], global3.x), Struct_1(global3.xy, 2147483647i, vec4<bool>(true, false, false, false), global3.zy, global3.x), Struct_1(global3.zx, u_input.a, vec4<bool>(false, false, true, true), global3.yz, 0u), Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(52775u, 29u)], 1u), u_input.a, vec4<bool>(false, true, false, false), vec2<u32>(9162u, global2[_wgslsmith_index_u32(global3.x, 29u)]), global2[_wgslsmith_index_u32(global3.x, 29u)])))).e.wyz), all(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, false))), vec2<u32>(global3.x, global3.x), ~40409u));
    var var_1 = ~(~(reverseBits(select(vec4<u32>(global2[_wgslsmith_index_u32(var_0.d.d.x, 29u)], 15866u, 4294967295u, global2[_wgslsmith_index_u32(0u, 29u)]), vec4<u32>(var_0.a.x, 83645u, global2[_wgslsmith_index_u32(global3.x, 29u)], global3.x), vec4<bool>(true, true, var_0.b.c.x, var_0.b.c.x))) >> ((~vec4<u32>(global3.x, global2[_wgslsmith_index_u32(15788u, 29u)], global2[_wgslsmith_index_u32(49585u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)]) & _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 90168u, global2[_wgslsmith_index_u32(15415u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)]), vec4<u32>(4294967295u, 45205u, 40264u, global2[_wgslsmith_index_u32(1u, 29u)]))) % vec4<u32>(32u))));
    var_1 = vec4<u32>(countOneBits(_wgslsmith_sub_u32(global3.x, global3.x)), 0u, 0u, ~var_0.a.x);
    var var_2 = 596f;
    let x = u_input.a;
    s_output = StorageBuffer((~(-vec2<i32>(u_input.a, -1i)) << (~vec2<u32>(46769u, 56549u) % vec2<u32>(32u))) | -(func_4(Struct_2(vec3<u32>(var_1.x, var_0.a.x, var_0.c.d.x), Struct_1(var_0.c.d, -2147483647i, var_0.c.c, var_0.a.xx, 38005u), var_0.b, Struct_1(var_1.xw, -72963i, vec4<bool>(false, var_0.c.c.x, var_0.b.c.x, var_0.c.c.x), var_1.yz, var_1.x)), var_0.d.c.xx).yw ^ -vec2<i32>(-24099i, 2147483647i)));
}

