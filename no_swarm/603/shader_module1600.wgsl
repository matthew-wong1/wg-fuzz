struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(28682u, 86174u, 0u, 1u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_0 = _wgslsmith_mod_u32(~reverseBits(select(0u, 1u, !arg_2.b.x)), arg_0.a);
    global0 = array<u32, 4>();
    var var_1 = arg_0;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1((_wgslsmith_dot_vec4_u32(~vec4<u32>(24409u, 1u, arg_0.d.x, 35402u), _wgslsmith_mult_vec4_u32(vec4<u32>(82381u, 4294967295u, 19744u, 0u), vec4<u32>(40198u, arg_3.a, 23168u, 1u))) >> (~(~4960u) % 32u)) | ~4294967295u, vec2<bool>(!arg_0.b.x, abs(select(u_input.b.x, u_input.b.x, true)) > 1i), arg_2.c, abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(58865u, u_input.c.x) & vec2<u32>(1u, arg_3.d.x), vec2<u32>(50778u, u_input.a)), 18965u, ~(~arg_2.d.x))));
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(~(1u ^ arg_0.d.x), 4u)], arg_0.b, _wgslsmith_sub_vec2_u32(u_input.c.yy, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.x, 97400u), vec2<u32>(arg_1.c.x, arg_3.c.x) | vec2<u32>(var_0.d.x, global0[_wgslsmith_index_u32(1u, 4u)]), vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(43942u, 4u)]))), max((~vec3<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 12201u, 0u) & select(arg_1.d, vec3<u32>(41288u, 4294967295u, 47168u), true)) | ~_wgslsmith_sub_vec3_u32(u_input.c, arg_1.d), ~vec3<u32>(~20113u, arg_3.a, arg_2.d.x)));
    var_1 = func_2(Struct_1(16577u, vec2<bool>(all(vec3<bool>(true, var_1.b.x, false)), arg_2.b.x), func_2(func_2(arg_3, ~var_0.c, Struct_1(59728u, var_0.b, vec2<u32>(1u, var_1.c.x), vec3<u32>(1u, 79u, arg_3.a))), vec2<u32>(34414u, _wgslsmith_mult_u32(42023u, arg_2.c.x)), arg_2).c, min(abs(abs(arg_3.d)), vec3<u32>(~13330u, u_input.a, 8791u))), ~vec2<u32>(~4294967295u, _wgslsmith_sub_u32(arg_1.a, 4294967295u)), func_2(Struct_1(_wgslsmith_mult_u32(u_input.c.x, ~arg_0.a), arg_2.b, vec2<u32>(min(1544u, 0u), ~var_1.a), var_1.d), _wgslsmith_clamp_vec2_u32(~arg_1.d.zz, ~vec2<u32>(arg_1.a, 1u), firstTrailingBit(vec2<u32>(arg_2.c.x, 1u))), func_2(func_2(func_2(arg_0, vec2<u32>(1u, 1u), arg_1), _wgslsmith_sub_vec2_u32(arg_1.d.yz, arg_2.d.zy), Struct_1(1u, vec2<bool>(false, var_0.b.x), vec2<u32>(1u, u_input.a), u_input.c)), ~vec2<u32>(4294967295u, arg_3.a), arg_3)));
    return Struct_1(arg_0.a, !arg_1.b, arg_0.c, firstTrailingBit(arg_1.d) << (abs((var_1.d << (u_input.c % vec3<u32>(32u))) << ((arg_3.d >> (vec3<u32>(1u, 1u, var_1.c.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_0 = !func_3(func_2(arg_2, ~(~vec2<u32>(4294967295u, 22967u)), func_2(Struct_1(u_input.c.x, arg_3.b, vec2<u32>(arg_2.c.x, arg_3.a), arg_2.d), ~vec2<u32>(6920u, global0[_wgslsmith_index_u32(arg_3.c.x, 4u)]), arg_2)), arg_3, Struct_1(~4294967295u & firstLeadingBit(global0[_wgslsmith_index_u32(12999u, 4u)]), vec2<bool>(true, true), func_2(Struct_1(32972u, vec2<bool>(false, arg_0), arg_3.d.xx, vec3<u32>(u_input.c.x, 0u, 1u)), func_3(arg_3, Struct_1(arg_3.c.x, arg_3.b, vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 6290u), arg_2.d), Struct_1(33177u, arg_2.b, arg_2.d.zx, arg_2.d), arg_2).c, func_3(Struct_1(arg_2.a, vec2<bool>(false, arg_3.b.x), arg_2.d.yx, vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 4u)], arg_2.a)), arg_3, Struct_1(46636u, arg_3.b, vec2<u32>(1u, 1u), vec3<u32>(1u, u_input.c.x, 0u)), arg_2)).d.xy, vec3<u32>(max(4294967295u, 1u), _wgslsmith_dot_vec3_u32(u_input.c, arg_3.d), ~24362u)), arg_2).b;
    var var_1 = 206f;
    let var_2 = func_3(arg_3, func_3(func_2(arg_3, _wgslsmith_div_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_add_vec2_u32(vec2<u32>(34133u, 0u), arg_3.c)), func_2(arg_2, vec2<u32>(0u, arg_3.c.x), Struct_1(u_input.c.x, var_0, vec2<u32>(1326u, 55187u), vec3<u32>(13078u, arg_2.c.x, arg_3.c.x)))), Struct_1(_wgslsmith_add_u32(~arg_2.c.x, u_input.a), !(!arg_2.b), min(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3.d.x, 4u)], 4u)], 4294967295u), arg_3.c), (vec3<u32>(arg_3.c.x, 0u, 3111u) ^ vec3<u32>(u_input.a, arg_2.a, 4294967295u)) >> (arg_2.d % vec3<u32>(32u))), Struct_1(global0[_wgslsmith_index_u32(~select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9572u, 4u)], 4u)], arg_2.d.x, arg_0), 4u)], !var_0, ~vec2<u32>(u_input.c.x, 34444u), abs(vec3<u32>(arg_2.d.x, 0u, global0[_wgslsmith_index_u32(90019u, 4u)]))), func_3(arg_2, func_2(arg_3, vec2<u32>(arg_3.a, u_input.c.x) << (arg_2.d.yz % vec2<u32>(32u)), func_3(Struct_1(1u, var_0, arg_2.c, vec3<u32>(0u, arg_2.a, 22795u)), Struct_1(arg_3.a, vec2<bool>(false, false), vec2<u32>(1u, u_input.a), arg_3.d), Struct_1(global0[_wgslsmith_index_u32(arg_2.a, 4u)], vec2<bool>(true, true), u_input.c.zx, u_input.c), Struct_1(4294967295u, arg_2.b, vec2<u32>(global0[_wgslsmith_index_u32(arg_3.d.x, 4u)], arg_3.c.x), vec3<u32>(99056u, 0u, arg_3.c.x)))), arg_3, arg_2)), Struct_1(u_input.a, select(vec2<bool>(arg_3.b.x, true), vec2<bool>(arg_3.b.x, true), func_3(arg_2, Struct_1(11057u, vec2<bool>(var_0.x, true), vec2<u32>(1u, 91877u), arg_3.d), Struct_1(1u, vec2<bool>(arg_0, arg_2.b.x), vec2<u32>(0u, 4995u), vec3<u32>(40067u, u_input.a, u_input.c.x)), func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], var_0, vec2<u32>(8087u, arg_3.d.x), vec3<u32>(47952u, global0[_wgslsmith_index_u32(32175u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)])), arg_2.c, arg_2)).b.x), u_input.c.xy, firstTrailingBit(~(~vec3<u32>(77822u, 0u, 4294967295u)))), func_2(Struct_1(select(global0[_wgslsmith_index_u32(1372u, 4u)], 52204u, false) & arg_3.d.x, !vec2<bool>(arg_3.b.x, arg_2.b.x), countOneBits(vec2<u32>(52840u, 121015u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.d.x, 1u, arg_3.c.x) << (vec3<u32>(1u, arg_2.c.x, arg_2.a) % vec3<u32>(32u)), arg_2.d)), ~(~vec2<u32>(66052u, u_input.c.x)), func_2(func_3(func_3(Struct_1(arg_3.d.x, arg_3.b, arg_2.c, arg_3.d), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], arg_3.b, vec2<u32>(56707u, arg_2.d.x), arg_2.d), arg_2, Struct_1(1u, vec2<bool>(arg_2.b.x, false), vec2<u32>(arg_3.a, u_input.c.x), arg_3.d)), arg_2, arg_3, arg_3), _wgslsmith_mod_vec2_u32(arg_3.d.zx, arg_2.c), func_2(func_2(arg_3, arg_3.c, arg_2), vec2<u32>(1u, 4294967295u) >> (arg_2.d.xz % vec2<u32>(32u)), arg_2))));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-524f, -1411f, 617f, -678f), vec4<f32>(-1616f, -1215f, -731f, 779f), vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -281f, 867f, 1728f) + vec4<f32>(206f, 2452f, -685f, 553f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, 212f, -1000f, -1347f))))));
    var var_1 = arg_0;
    global0 = array<u32, 4>();
    let var_2 = vec3<bool>(true, false, select(func_2(func_3(arg_3, arg_2, arg_0, func_4(true, u_input.b.x, arg_3, arg_0)), _wgslsmith_add_vec2_u32(~arg_3.c, vec2<u32>(30638u, 0u)), Struct_1(_wgslsmith_div_u32(7453u, arg_0.c.x), vec2<bool>(arg_3.b.x, false), ~var_1.d.zz, ~arg_3.d)).b.x, arg_3.b.x, any(vec2<bool>(func_4(arg_1.x, -72391i, Struct_1(0u, arg_1.zy, vec2<u32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(46162u, 4u)]), vec3<u32>(4294967295u, 6754u, var_1.c.x)), Struct_1(10253u, arg_0.b, u_input.c.yy, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 0u, arg_0.a))).b.x, !var_1.b.x))));
    var var_3 = Struct_1(firstTrailingBit(127609u >> (arg_2.d.x % 32u)), vec2<bool>(true, !(all(vec4<bool>(arg_1.x, true, false, true)) && arg_2.b.x)), ~(~countOneBits(~u_input.c.yz)), ~vec3<u32>(u_input.c.x, 12190u, ~0u) | ~vec3<u32>(var_1.a ^ var_1.c.x, 1u, arg_3.d.x >> (26679u % 32u)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-635f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1173f - _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(1141f + 191f)))));
}

fn func_1() -> vec3<u32> {
    global0 = array<u32, 4>();
    let var_0 = _wgslsmith_f_op_f32(func_5(func_4(all(vec3<bool>(false, false, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(1u, 1u, 4294967295u, 1u) % vec4<u32>(32u)), min(vec4<i32>(u_input.b.x, 28525i, 2147483647i, 0i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 13160i))), func_2(Struct_1(u_input.c.x, vec2<bool>(false, true), u_input.c.zz, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 13198u)), vec2<u32>(u_input.c.x, 5591u), Struct_1(u_input.c.x, vec2<bool>(false, true), vec2<u32>(u_input.a, u_input.c.x), vec3<u32>(u_input.c.x, 21430u, u_input.c.x))), func_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 4u)], vec2<bool>(true, true), vec2<u32>(4294967295u, 35049u), u_input.c), abs(vec2<u32>(u_input.c.x, u_input.a)), func_3(Struct_1(1u, vec2<bool>(true, true), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41077u, 4u)], 4u)], u_input.a), vec3<u32>(57313u, u_input.c.x, 1u)), Struct_1(u_input.a, vec2<bool>(true, true), u_input.c.zy, vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a)), Struct_1(147042u, vec2<bool>(false, true), vec2<u32>(u_input.c.x, u_input.a), u_input.c), Struct_1(1u, vec2<bool>(true, false), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)]), u_input.c)))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true), Struct_1(max(~u_input.c.x, global0[_wgslsmith_index_u32(~0u, 4u)]), select(vec2<bool>(true, false), func_3(Struct_1(1u, vec2<bool>(true, false), u_input.c.xx, vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 4u)], 0u)), Struct_1(global0[_wgslsmith_index_u32(74273u, 4u)], vec2<bool>(true, true), u_input.c.zz, u_input.c), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61440u, 4u)], 4u)], vec2<bool>(false, false), vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 4294967295u), u_input.c), Struct_1(0u, vec2<bool>(true, false), u_input.c.yx, u_input.c)).b, select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<u32>(40871u, u_input.a) & reverseBits(u_input.c.xx), vec3<u32>(~global0[_wgslsmith_index_u32(66922u, 4u)], ~1u, firstLeadingBit(u_input.c.x))), func_4(all(vec2<bool>(true, false)), ~(-65196i), func_2(Struct_1(0u, vec2<bool>(false, false), vec2<u32>(6450u, u_input.a), u_input.c), select(u_input.c.zz, u_input.c.zy, false), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 4u)], vec2<bool>(false, false), vec2<u32>(0u, 44165u), u_input.c)), Struct_1(4294967295u ^ u_input.a, vec2<bool>(true, true), u_input.c.yx, ~u_input.c)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))), -316f);
    let var_1 = func_3(func_2(Struct_1(36183u & u_input.a, func_4(true, u_input.b.x | u_input.b.x, func_2(Struct_1(201u, vec2<bool>(false, var_0), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(48560u, 4u)]), vec3<u32>(4294967295u, u_input.a, 11831u)), u_input.c.yz, Struct_1(4294967295u, vec2<bool>(true, true), u_input.c.xy, vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(52326u, 4u)]))), Struct_1(0u, vec2<bool>(var_0, var_0), vec2<u32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), u_input.c)).b, u_input.c.yx, ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 1u, 125896u), vec3<u32>(u_input.c.x, 82829u, 28948u))), ~vec2<u32>(~33008u, ~0u), Struct_1(0u, !vec2<bool>(true, var_0), abs(select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49611u, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)]), u_input.c.yx, vec2<bool>(var_0, true))), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(4294967295u, 0u, u_input.a)))), Struct_1(_wgslsmith_mod_u32(~4294967295u, ~global0[_wgslsmith_index_u32(4294967295u, 4u)]), select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), true), func_4(true, u_input.b.x, func_2(Struct_1(global0[_wgslsmith_index_u32(1u, 4u)], vec2<bool>(true, false), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a), vec3<u32>(1u, 0u, 1u)), vec2<u32>(4294967295u, 0u), Struct_1(5267u, vec2<bool>(var_0, true), vec2<u32>(u_input.a, 0u), u_input.c)), func_3(Struct_1(70690u, vec2<bool>(var_0, true), vec2<u32>(global0[_wgslsmith_index_u32(903u, 4u)], 2272u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 4u)], 338u)), Struct_1(u_input.c.x, vec2<bool>(false, var_0), vec2<u32>(u_input.a, 4294967295u), u_input.c), Struct_1(1u, vec2<bool>(true, var_0), u_input.c.zy, u_input.c), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)], vec2<bool>(false, true), vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), u_input.c))).b, true), ~u_input.c.xx, ~(vec3<u32>(u_input.c.x, u_input.a, u_input.c.x) << (~u_input.c % vec3<u32>(32u)))), Struct_1(((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)] | 4294967295u) & 4294967295u) >> (~(~global0[_wgslsmith_index_u32(17561u, 4u)]) % 32u), !vec2<bool>(!var_0, !var_0), _wgslsmith_clamp_vec2_u32((u_input.c.yx | vec2<u32>(0u, 4294967295u)) << (vec2<u32>(61283u, u_input.c.x) % vec2<u32>(32u)), vec2<u32>(~4294967295u, global0[_wgslsmith_index_u32(38429u, 4u)]), u_input.c.xz), vec3<u32>(_wgslsmith_dot_vec2_u32(func_3(Struct_1(1876u, vec2<bool>(true, var_0), u_input.c.zy, vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 4u)], 1u)), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], vec2<bool>(var_0, var_0), vec2<u32>(1u, 4294967295u), u_input.c), Struct_1(u_input.a, vec2<bool>(var_0, var_0), vec2<u32>(u_input.c.x, u_input.c.x), vec3<u32>(45427u, 4294967295u, global0[_wgslsmith_index_u32(14291u, 4u)])), Struct_1(0u, vec2<bool>(false, var_0), u_input.c.zy, vec3<u32>(5792u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)], global0[_wgslsmith_index_u32(32419u, 4u)]))).d.zx, vec2<u32>(u_input.c.x, u_input.c.x)), 0u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.a, 1u), ~u_input.a))), Struct_1(1u, vec2<bool>(true, false), func_2(Struct_1(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 4u)], 22515u), vec2<bool>(var_0, false), abs(vec2<u32>(16392u, 4294967295u)), vec3<u32>(1u, u_input.a, 0u) << (u_input.c % vec3<u32>(32u))), select(func_2(Struct_1(u_input.a, vec2<bool>(true, false), vec2<u32>(global0[_wgslsmith_index_u32(0u, 4u)], u_input.a), u_input.c), vec2<u32>(0u, 1u), Struct_1(u_input.c.x, vec2<bool>(var_0, false), u_input.c.yz, u_input.c)).d.zy, u_input.c.yx, false), func_3(func_4(var_0, u_input.b.x, Struct_1(4294967295u, vec2<bool>(true, var_0), vec2<u32>(34133u, 42697u), u_input.c), Struct_1(4294967295u, vec2<bool>(var_0, true), vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), u_input.c)), func_4(var_0, 1i, Struct_1(global0[_wgslsmith_index_u32(1u, 4u)], vec2<bool>(var_0, var_0), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15383u, 4u)], 4u)], 4u)], 4294967295u), vec3<u32>(1816u, u_input.a, u_input.c.x)), Struct_1(0u, vec2<bool>(var_0, var_0), vec2<u32>(u_input.c.x, 11620u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 4u)], u_input.a, u_input.c.x))), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], vec2<bool>(var_0, var_0), u_input.c.yz, u_input.c), Struct_1(28913u, vec2<bool>(false, true), vec2<u32>(u_input.a, u_input.c.x), vec3<u32>(1u, u_input.c.x, u_input.c.x)))).d.xz, _wgslsmith_add_vec3_u32(~(~u_input.c), u_input.c >> (~u_input.c % vec3<u32>(32u)))));
    global0 = array<u32, 4>();
    var var_2 = Struct_1(_wgslsmith_sub_u32(~2078u, 24169u), func_4(any(vec2<bool>(var_0, true)), _wgslsmith_mod_i32(abs(u_input.b.x), u_input.b.x) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42371u, 4u)], 4u)], 25112u), vec3<u32>(u_input.a, 1587u, 7379u)) % 32u), Struct_1(countOneBits(var_1.c.x), select(vec2<bool>(true, true), var_1.b, !var_1.b), ~(u_input.c.xx ^ vec2<u32>(u_input.c.x, 0u)), func_3(var_1, var_1, func_4(true, -35334i, var_1, var_1), Struct_1(19347u, var_1.b, var_1.c, u_input.c)).d), var_1).b, firstTrailingBit(var_1.c), reverseBits(u_input.c));
    return ~(vec3<u32>(_wgslsmith_mult_u32(36689u, _wgslsmith_clamp_u32(54130u, u_input.a, 69926u)), 8915u, select(var_2.c.x, 4294967295u, true) & (global0[_wgslsmith_index_u32(u_input.a, 4u)] & global0[_wgslsmith_index_u32(var_2.a, 4u)])) & ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 8310u, 4294967295u), vec3<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(1u, 4u)])), ~var_1.d, select(vec3<bool>(true, true, false), vec3<bool>(var_2.b.x, true, false), var_0)));
}

fn func_6(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> StorageBuffer {
    global0 = array<u32, 4>();
    var var_0 = Struct_1(1u, func_4(_wgslsmith_div_i32(u_input.b.x, -53395i) <= u_input.b.x, -(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)) & 1i), func_3(arg_3, func_4(u_input.b.x == 2147483647i, 1i, func_4(arg_3.b.x, 2147483647i, Struct_1(arg_2.x, vec2<bool>(arg_3.b.x, arg_3.b.x), arg_3.d.yx, vec3<u32>(arg_1.x, 29359u, 1u)), arg_3), func_4(true, u_input.b.x, arg_3, arg_3)), arg_3, func_3(arg_3, arg_3, Struct_1(arg_2.x, arg_3.b, vec2<u32>(8068u, 100773u), arg_2), arg_3)), Struct_1(38781u, arg_3.b, arg_1.xz, _wgslsmith_add_vec3_u32(arg_2, vec3<u32>(arg_1.x, arg_1.x, arg_3.a)))).b, u_input.c.xy | arg_1.xz, vec3<u32>(u_input.c.x, arg_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.a, u_input.a, arg_2.x), ~vec4<u32>(u_input.c.x, arg_2.x, 22895u, arg_2.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_3.a, 2720u, arg_1.x), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, arg_2.x), vec4<u32>(arg_3.a, arg_3.a, 58453u, u_input.a)))));
    let var_1 = func_4(any(select(select(select(vec3<bool>(arg_3.b.x, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, true, arg_3.b.x), vec3<bool>(true, arg_3.b.x, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(var_0.b.x, false, arg_3.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))), !select(vec3<bool>(arg_3.b.x, false, true), vec3<bool>(arg_3.b.x, true, arg_3.b.x), vec3<bool>(var_0.b.x, true, arg_3.b.x)), all(arg_3.b))), select(-(~u_input.b.x), firstLeadingBit(u_input.b.x), var_0.b.x), arg_3, arg_3);
    let var_2 = vec2<u32>(4294967295u, 4294967295u);
    global0 = array<u32, 4>();
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)))), func_4(!var_0.b.x, reverseBits(0i) << (_wgslsmith_mod_u32(func_1().x, max(var_2.x, 35168u)) % 32u), Struct_1(~21129u, func_2(func_2(var_1, vec2<u32>(arg_2.x, 43291u), Struct_1(73913u, vec2<bool>(var_1.b.x, var_0.b.x), arg_1.zy, var_0.d)), vec2<u32>(var_1.c.x, arg_3.d.x), arg_3).b, arg_2.zz, _wgslsmith_sub_vec3_u32(arg_2, arg_3.d)), Struct_1(5946u, !var_0.b, select(~vec2<u32>(1807u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23184u, 4u)], 4u)]), vec2<u32>(var_1.d.x, 24499u) & arg_3.c, !arg_3.b.x), arg_1)).d.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(f32(-1f) * -1351f), func_1(), ~func_4(any(vec2<bool>(false, true)), reverseBits(i32(-1i) * -38738i), func_2(Struct_1(22747u, vec2<bool>(false, false), vec2<u32>(26123u, global0[_wgslsmith_index_u32(1u, 4u)]), u_input.c), ~vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)]), Struct_1(global0[_wgslsmith_index_u32(19758u, 4u)], vec2<bool>(true, true), u_input.c.zx, u_input.c)), Struct_1(51838u, select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<u32>(1u, 1u), ~vec3<u32>(global0[_wgslsmith_index_u32(48933u, 4u)], 7613u, 3275u))).d, Struct_1(firstTrailingBit(reverseBits(~u_input.a)), vec2<bool>(true, true), _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(9156u, 4u)])), u_input.c.yx), ~u_input.c >> (vec3<u32>(0u, ~global0[_wgslsmith_index_u32(43802u, 4u)], 4294967295u) % vec3<u32>(32u))));
}

