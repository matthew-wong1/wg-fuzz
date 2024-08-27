struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<bool>(false, false), Struct_1(vec2<u32>(0u, 0u), vec3<bool>(false, true, false), vec3<u32>(0u, 0u, 0u)), Struct_1(vec2<u32>(11051u, 25907u), vec3<bool>(true, false, false), vec3<u32>(57018u, 4985u, 1u))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<u32>(63980u, 22458u), vec3<bool>(false, true, false), vec3<u32>(4294967295u, 35470u, 4294967295u)), Struct_1(vec2<u32>(44273u, 4294967295u), vec3<bool>(false, false, false), vec3<u32>(0u, 37644u, 4294967295u))), Struct_2(vec2<bool>(false, false), Struct_1(vec2<u32>(0u, 0u), vec3<bool>(false, true, true), vec3<u32>(60911u, 1u, 104843u)), Struct_1(vec2<u32>(26367u, 22738u), vec3<bool>(false, false, true), vec3<u32>(1u, 0u, 0u))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<u32>(1u, 59277u), vec3<bool>(false, true, false), vec3<u32>(44906u, 4294967295u, 9849u)), Struct_1(vec2<u32>(38911u, 72687u), vec3<bool>(false, false, false), vec3<u32>(31403u, 4294967295u, 4294967295u))));

var<private> global2: vec4<bool>;

var<private> global3: u32 = 7016u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    let var_0 = !(!(!(!(!vec4<bool>(true, arg_0.a.x, global2.x, arg_2.c.b.x)))));
    let var_1 = var_0;
    let var_2 = u_input.a.xxw;
    let var_3 = global0.x;
    let var_4 = -_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(0i, -1i, 13777i)), countOneBits(vec3<i32>(20402i, -43369i, -2147483647i))) << (~(~(firstTrailingBit(arg_0.b.c) | vec3<u32>(0u, 1u, 1u))) % vec3<u32>(32u));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-3736i, -_wgslsmith_mod_i32(3261i, -2147483647i), select(~(-1i), var_4.x, arg_0.a.x || arg_0.c.b.x), -25394i), vec4<i32>(-10915i, abs(~(-29365i)), 1i, var_4.x)) >> (abs(arg_1.x) % 32u);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = u_input.a.x;
    let var_1 = firstTrailingBit(26035i);
    var var_2 = true;
    var var_3 = arg_3;
    var_3 = Struct_1(vec2<u32>(global0.x, _wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.c.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 38443u, arg_3.c.x), vec3<u32>(4294967295u, 15491u, u_input.a.x))), reverseBits(arg_3.c.x << (arg_3.c.x % 32u)))), arg_3.b, _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, 65484u), countOneBits(firstTrailingBit(min(vec3<u32>(29668u, arg_0.b.a.x, var_3.a.x), var_3.c)))));
    return vec2<bool>(any(vec4<bool>(true, true, true, true)), !(!(arg_3.b.x & false)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> bool {
    var var_0 = Struct_1(u_input.a.ww, global2.yyz, u_input.a.xwy);
    let var_1 = Struct_2(vec2<bool>(var_0.b.x, arg_0.x), Struct_1(u_input.a.xz | var_0.c.yx, !(!select(vec3<bool>(false, false, arg_0.x), var_0.b, arg_0.x)), u_input.a.yyw), Struct_1(vec2<u32>(~global0.x ^ var_0.a.x, ~(global0.x >> (47726u % 32u))), !(!vec3<bool>(arg_0.x, false, arg_0.x)), var_0.c));
    let var_2 = Struct_1(u_input.a.yy, var_1.c.b, ~(~vec3<u32>(4294967295u, 55952u, var_0.a.x)) >> (reverseBits(vec3<u32>(u_input.a.x, ~0u, ~var_0.c.x)) % vec3<u32>(32u)));
    global1 = array<Struct_2, 4>();
    let var_3 = Struct_2(select(select(vec2<bool>(all(vec3<bool>(false, var_0.b.x, var_2.b.x)), var_0.b.x), vec2<bool>(true, var_2.b.x), !var_0.b.x & var_0.b.x), var_1.b.b.zz, !(false || select(var_0.b.x, true, arg_0.x))), Struct_1(~_wgslsmith_sub_vec2_u32(var_2.a, vec2<u32>(1u, var_1.c.a.x)), var_2.b, var_1.c.c), Struct_1(~vec2<u32>(countOneBits(1u), _wgslsmith_add_u32(0u, var_1.b.a.x)), !(!global2.xxx), var_0.c));
    return global2.x;
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0))), -882f, arg_0));
    let var_2 = ~2147483647i;
    global2 = !(!vec4<bool>(!global2.x, func_4(func_3(Struct_2(vec2<bool>(global2.x, false), Struct_1(u_input.a.zw, global2.wyy, vec3<u32>(global0.x, 15753u, 1144u)), Struct_1(u_input.a.yx, vec3<bool>(global2.x, global2.x, true), vec3<u32>(5427u, 0u, 0u))), global2.x, vec4<f32>(1317f, arg_0, var_1.x, arg_0), Struct_1(vec2<u32>(u_input.a.x, 0u), global2.wzw, u_input.a.zzy)), ~var_2), func_4(func_3(global1[_wgslsmith_index_u32(69969u, 4u)], true, vec4<f32>(arg_0, -844f, -1000f, 2043f), Struct_1(u_input.a.xy, global2.xyx, vec3<u32>(global0.x, 20361u, global0.x))), max(-12406i, var_2)), all(global2.yw)));
    global3 = _wgslsmith_mod_u32(global0.x, u_input.a.x);
    return global2.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    global2 = select(!select(vec4<bool>(any(vec4<bool>(false, false, global2.x, false)), global2.x, func_2(421f), false), select(!vec4<bool>(global2.x, false, true, arg_2.a.x), vec4<bool>(global2.x, true, true, true), all(vec3<bool>(arg_2.b.b.x, false, arg_2.b.b.x))), countOneBits(arg_2.b.c.x) <= arg_2.b.c.x), select(vec4<bool>(true, false, arg_2.c.b.x, false), !select(vec4<bool>(false, arg_2.c.b.x, global2.x, global2.x), select(vec4<bool>(false, global2.x, global2.x, arg_2.b.b.x), vec4<bool>(true, false, arg_2.b.b.x, true), vec4<bool>(arg_2.c.b.x, false, true, true)), false == global2.x), vec4<bool>(!arg_2.b.b.x, _wgslsmith_f_op_f32(-248f * -1255f) < _wgslsmith_f_op_f32(trunc(1239f)), true, false)), !vec4<bool>(!global2.x, false, all(vec4<bool>(true, true, false, false)), global2.x));
    let var_0 = true;
    let var_1 = any(vec2<bool>(any(select(select(vec4<bool>(arg_2.c.b.x, global2.x, global2.x, true), vec4<bool>(var_0, false, global2.x, true), vec4<bool>(true, arg_2.c.b.x, global2.x, false)), vec4<bool>(arg_2.b.b.x, true, true, var_0), !vec4<bool>(global2.x, false, global2.x, var_0))), any(select(vec4<bool>(arg_2.c.b.x, false, global2.x, true), select(vec4<bool>(arg_2.c.b.x, arg_2.c.b.x, false, true), vec4<bool>(var_0, global2.x, arg_2.a.x, false), global2.x), !global2.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(961f, -259f, 302f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(668f, -835f, -2350f) * vec3<f32>(261f, -213f, -1910f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(183f, 1287f, -268f) + vec3<f32>(1092f, 467f, 357f)), true))))));
    let var_3 = ~_wgslsmith_mult_u32(arg_1.x, ~(~0u) & _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(17185u, 8873u)));
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(27895u, _wgslsmith_mod_u32(~arg_2.c.c.x, _wgslsmith_div_u32(global0.x, ~global0.x))) << (select(abs(arg_2.b.c.x) & arg_2.b.a.x, 1u, any(vec2<bool>(arg_2.c.b.x, var_1)) || (var_0 & var_1)) % 32u), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.yyx;
    let var_1 = var_0.x == select(global2.x, var_0.x, true);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1244f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-732f)), -1109f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-765f)) - _wgslsmith_f_op_f32(trunc(1321f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-209f, 1000f)), 1f)))));
    var var_4 = u_input.a.zx;
    let var_5 = func_5(~(-vec2<i32>(func_1(global1[_wgslsmith_index_u32(1u, 4u)], u_input.a.xy, global1[_wgslsmith_index_u32(4040u, 4u)]), ~(-20976i))), ~u_input.a.wy, Struct_2(vec2<bool>(any(select(vec2<bool>(true, true), global2.yy, true)), func_2(_wgslsmith_f_op_f32(abs(-816f)))), Struct_1(firstLeadingBit(u_input.a.ww), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_1, var_1, false), global2.x), vec3<u32>(4294967295u ^ global0.x, 1u, _wgslsmith_sub_u32(u_input.a.x, var_4.x))), Struct_1(select(u_input.a.yy, select(u_input.a.zy, u_input.a.xx, var_0.xy), var_0.xz), !(!vec3<bool>(false, global2.x, true)), ~(~u_input.a.zww))));
    var var_6 = global1[_wgslsmith_index_u32(var_5.c.a.x, 4u)];
    var var_7 = Struct_3(var_6.b.b.x, Struct_1(vec2<u32>(firstLeadingBit(var_6.b.c.x), ~var_5.b.c.x) << (vec2<u32>(~var_4.x, 91608u & var_6.b.c.x) % vec2<u32>(32u)), var_6.c.b, var_6.b.c), _wgslsmith_div_vec3_u32(select(~firstTrailingBit(vec3<u32>(0u, 0u, 6482u)), ~(vec3<u32>(76189u, u_input.a.x, var_4.x) >> (var_5.c.c % vec3<u32>(32u))), false), abs(abs(abs(var_6.b.c)))));
    var_7 = Struct_3(var_6.a.x, Struct_1(var_7.c.xx, select(vec3<bool>(true, true, true), var_6.c.b, true), max(_wgslsmith_sub_vec3_u32(vec3<u32>(var_5.c.a.x, 31708u, global0.x), var_6.b.c) & ~u_input.a.xyw, ~var_7.b.c)), vec3<u32>(~u_input.a.x ^ var_6.b.c.x, ~(~func_5(vec2<i32>(0i, -732i), vec2<u32>(1u, 4294967295u), global1[_wgslsmith_index_u32(var_5.c.a.x, 4u)]).b.c.x), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(~(~u_input.a), u_input.a), firstTrailingBit(~vec4<u32>(max(0u, 48585u), 4294967295u, ~4294967295u, 48153u)), max(-(~2147483647i), ~(-6944i)));
}

