struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(vec4<i32>(25740i, 2147483647i, 2147483647i, 1i), vec2<u32>(1u, 67807u), 30809u), vec2<bool>(true, false), 0i), Struct_3(Struct_2(vec4<i32>(0i, -44057i, 2147483647i, 0i), vec2<u32>(539u, 315u), 85929u), vec2<bool>(false, true), 0i), Struct_3(Struct_2(vec4<i32>(i32(-2147483648), 1i, -1i, 18023i), vec2<u32>(49746u, 0u), 1u), vec2<bool>(true, false), 2147483647i), Struct_3(Struct_2(vec4<i32>(-1i, 0i, 4407i, 1i), vec2<u32>(79397u, 8369u), 4294967295u), vec2<bool>(false, false), -1472i), Struct_3(Struct_2(vec4<i32>(-1i, -53291i, 23971i, 1i), vec2<u32>(0u, 42218u), 4294967295u), vec2<bool>(true, true), -6861i), Struct_3(Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 29096i, 2147483647i), vec2<u32>(0u, 1u), 111556u), vec2<bool>(false, true), 40142i), Struct_3(Struct_2(vec4<i32>(1i, 0i, -1i, i32(-2147483648)), vec2<u32>(7532u, 30793u), 4294967295u), vec2<bool>(false, false), -1i), Struct_3(Struct_2(vec4<i32>(-1i, 1i, 40965i, -16814i), vec2<u32>(1u, 1513u), 0u), vec2<bool>(true, true), -9253i), Struct_3(Struct_2(vec4<i32>(i32(-2147483648), -40055i, -39946i, i32(-2147483648)), vec2<u32>(0u, 16343u), 4294967295u), vec2<bool>(false, true), 20167i), Struct_3(Struct_2(vec4<i32>(1i, 23600i, 8407i, 0i), vec2<u32>(41219u, 9952u), 12748u), vec2<bool>(true, false), 1i), Struct_3(Struct_2(vec4<i32>(2147483647i, 49973i, -26960i, -75722i), vec2<u32>(57826u, 0u), 1u), vec2<bool>(true, false), 17230i), Struct_3(Struct_2(vec4<i32>(51070i, -87806i, 2147483647i, -83221i), vec2<u32>(66840u, 0u), 4294967295u), vec2<bool>(true, true), 4725i), Struct_3(Struct_2(vec4<i32>(25648i, 1i, -3900i, 2147483647i), vec2<u32>(1u, 0u), 8540u), vec2<bool>(true, false), 1i), Struct_3(Struct_2(vec4<i32>(1i, 2147483647i, 21290i, 20328i), vec2<u32>(0u, 30961u), 4294967295u), vec2<bool>(false, false), 0i), Struct_3(Struct_2(vec4<i32>(2147483647i, 67284i, -4869i, i32(-2147483648)), vec2<u32>(834u, 1u), 38761u), vec2<bool>(true, true), 1i), Struct_3(Struct_2(vec4<i32>(6729i, 0i, -1i, 2282i), vec2<u32>(17114u, 1478u), 88036u), vec2<bool>(true, true), 1i), Struct_3(Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 1i, 19502i), vec2<u32>(38167u, 0u), 70177u), vec2<bool>(true, false), -7044i), Struct_3(Struct_2(vec4<i32>(i32(-2147483648), 0i, 0i, 0i), vec2<u32>(2471u, 4237u), 0u), vec2<bool>(true, false), 1i), Struct_3(Struct_2(vec4<i32>(18157i, -18869i, 1i, 0i), vec2<u32>(17103u, 54024u), 55499u), vec2<bool>(true, true), 1i), Struct_3(Struct_2(vec4<i32>(-12856i, 78680i, 38480i, -21854i), vec2<u32>(43906u, 1u), 37308u), vec2<bool>(true, true), 1403i));

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<i32>(0i, -20148i, -1i, 44809i), vec2<u32>(66505u, 0u), 34837u), vec2<bool>(false, false), 88500i);

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<f32, 28> = array<f32, 28>(-1000f, -848f, 383f, 667f, 1000f, 370f, 1656f, 1052f, 353f, 168f, -560f, 1433f, -474f, 1199f, 239f, 892f, 126f, 195f, 1000f, 781f, 794f, 583f, 819f, 1418f, -2127f, 686f, 296f, -258f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.b.x, 28u)] * -602f)), abs(vec4<u32>(1u, ~u_input.b, _wgslsmith_clamp_u32(global3.b.x, global2.b.x >> (9029u % 32u), 1u), 35881u)), reverseBits(global1.a.a.xww));
    var var_1 = global0[_wgslsmith_index_u32(~(~38387u), 20u)];
    var var_2 = global1.a.b.x ^ ~var_1.a.b.x;
    let var_3 = global2.b.zy;
    let var_4 = Struct_4(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.a.c, 28u)]))), 642f)), abs(firstLeadingBit(vec4<u32>(var_1.a.b.x, u_input.d, var_3.x, 4294967295u))), global1.a.a.zzx >> ((vec3<u32>(var_0.b.x, var_1.a.b.x, var_3.x) & var_0.b.zxx) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-641f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1530f * global3.a))) - _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.d, 28u)], global2.a)))));
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    global4 = array<f32, 28>();
    global4 = array<f32, 28>();
    global3 = Struct_1(_wgslsmith_f_op_f32(func_3()), vec4<u32>(_wgslsmith_add_u32(u_input.d ^ 0u, 4294967295u), 9265u, arg_0.b.x, arg_0.b.x), select(select(countOneBits(global2.c), global3.c, select(vec3<bool>(global1.b.x, global1.b.x, true), vec3<bool>(true, global1.b.x, global1.b.x), global1.b.x)), firstLeadingBit(-global3.c), false) ^ (~global1.a.a.zyy >> (global2.b.zwy % vec3<u32>(32u))));
    var var_0 = global1.b.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), select(_wgslsmith_mod_vec4_u32(~global3.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, global2.b.x, 1u, 8998u), abs(vec4<u32>(4294967295u, global1.a.c, arg_0.b.x, 1u)))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.d, 0u, u_input.b), _wgslsmith_sub_vec4_u32(global3.b, vec4<u32>(arg_0.b.x, global2.b.x, global2.b.x, 0u))), !(all(vec3<bool>(true, true, global1.b.x)) | false)), global2.c | -vec3<i32>(global3.c.x, global3.c.x, 42147i & arg_0.a.x));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-global2.a), vec4<u32>(reverseBits(abs(5193u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.b.x, 1u), global3.b.x), firstTrailingBit(~global2.b.x), u_input.d), global2.c));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    global4 = array<f32, 28>();
    global1 = Struct_3(global1.a, select(vec2<bool>(all(vec2<bool>(true, true)), select(global3.c.x, -2147483647i, global1.b.x) <= countOneBits(arg_0.a.c.x)), vec2<bool>(!global1.b.x && global1.b.x, all(vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x))), all(vec3<bool>(global1.b.x, true, select(true, true, false)))), 1i);
    return Struct_3(global1.a, !vec2<bool>(18101u < (28251u ^ arg_0.a.b.x), !global1.b.x), max(countOneBits(global3.c.x), global3.c.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    var var_0 = func_4(func_2(Struct_2(-max(vec4<i32>(global3.c.x, global2.c.x, global2.c.x, global2.c.x), vec4<i32>(7885i, global1.c, 0i, 2147483647i)), ~(~vec2<u32>(u_input.d, 13718u)), countOneBits(~u_input.d))));
    return ~u_input.c;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    global3 = func_2(global1.a).a;
    var var_0 = vec2<bool>(all(select(select(select(vec4<bool>(arg_3, true, arg_3, arg_3), vec4<bool>(global1.b.x, arg_3, global1.b.x, global1.b.x), true), !vec4<bool>(true, global1.b.x, true, true), !global1.b.x), vec4<bool>(any(vec4<bool>(global1.b.x, arg_3, false, global1.b.x)), true, func_4(Struct_4(Struct_1(global4[_wgslsmith_index_u32(arg_2.b.x, 28u)], vec4<u32>(6851u, 0u, 4294967295u, global3.b.x), global1.a.a.ywx))).b.x, true), true)), global1.b.x);
    var var_1 = ~18030u;
    let var_2 = ~firstTrailingBit(arg_0);
    let var_3 = u_input.d;
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(11931u, 0u ^ abs(abs(_wgslsmith_div_u32(global3.b.x, global3.b.x)))), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global2.c, vec3<i32>(global1.c, ~(-2147483647i), global1.a.a.x), select(select(vec3<bool>(global1.b.x, true, 0i <= u_input.c), vec3<bool>(any(vec4<bool>(true, false, global1.b.x, true)), global1.b.x, false), select(!vec3<bool>(global1.b.x, global1.b.x, global1.b.x), select(vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(false, true, global1.b.x), false), all(vec3<bool>(global1.b.x, global1.b.x, global1.b.x)))), vec3<bool>(all(vec2<bool>(global1.b.x, false)), true, true), false));
    let var_1 = func_5(~global2.b.x, 1i, Struct_2(min(global1.a.a, vec4<i32>(firstLeadingBit(-6805i), func_1(vec4<f32>(117f, global4[_wgslsmith_index_u32(4294967295u, 28u)], global4[_wgslsmith_index_u32(1u, 28u)], global3.a), global3.c.x), func_4(Struct_4(Struct_1(-171f, vec4<u32>(global3.b.x, 166530u, 14267u, global3.b.x), global3.c))).c, firstLeadingBit(global2.c.x))), global3.b.xz, firstTrailingBit(firstTrailingBit(~0u))), all(vec3<bool>(false, true, false)));
    let var_2 = !vec3<bool>(all(vec4<bool>(true, global1.b.x, func_5(u_input.b, global2.c.x, global1.a, global1.b.x).b.x, true)), func_5(~(~25594u), var_0.x, Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(global2.c.x, 15223i, global3.c.x, 1i), vec4<i32>(var_1.c, global2.c.x, global2.c.x, var_1.c)), vec2<u32>(43603u, 100378u) >> (vec2<u32>(var_1.a.c, var_1.a.b.x) % vec2<u32>(32u)), global3.b.x), !(556f != global3.a)).b.x, func_4(func_2(func_4(Struct_4(Struct_1(-722f, global2.b, vec3<i32>(-2147483647i, -31841i, -2147483647i)))).a)).b.x);
    let var_3 = select(true, ~u_input.b > var_1.a.b.x, true);
    let var_4 = _wgslsmith_f_op_f32(-global3.a);
    var var_5 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4))))));
    let x = u_input.a;
    s_output = StorageBuffer(8613u, vec4<i32>(-1i ^ global2.c.x, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(-45509i, -2147483647i, -16630i, -2147483647i), global1.a.a, vec4<bool>(global1.b.x, false, true, var_3)), vec4<i32>(-45137i, var_0.x, u_input.c, 32980i)), -6590i, 1i), min(vec2<u32>(abs(firstTrailingBit(global1.a.c)), global2.b.x), _wgslsmith_add_vec2_u32(var_1.a.b, abs(_wgslsmith_div_vec2_u32(global3.b.wy, var_1.a.b)))), global2.b.x, abs(reverseBits(_wgslsmith_sub_u32(0u, func_4(Struct_4(Struct_1(var_5.x, global3.b, global3.c))).a.c))));
}

