struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(36947i);

var<private> global1: array<vec4<bool>, 27>;

var<private> global2: array<bool, 15> = array<bool, 15>(true, false, true, false, false, false, false, false, true, false, true, true, true, false, false);

var<private> global3: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-2602i, 0i, -1i, 41682i), vec4<i32>(1i, -34990i, i32(-2147483648), -588i), vec4<i32>(2147483647i, 32212i, 15528i, -53368i), vec4<i32>(48790i, 1i, 1262i, 1i), vec4<i32>(i32(-2147483648), -37509i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 2147483647i, -15866i, 0i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 14356i), vec4<i32>(-1i, 2689i, 0i, 4840i), vec4<i32>(37741i, -10477i, i32(-2147483648), 2147483647i), vec4<i32>(11399i, 1i, -25569i, 1i), vec4<i32>(1i, 40050i, -6930i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(35790i, -55601i, -48762i, -6102i), vec4<i32>(i32(-2147483648), 1i, 1i, 0i), vec4<i32>(2147483647i, -1i, 0i, -22227i), vec4<i32>(-1i, 12362i, 8749i, 89i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: u32) -> i32 {
    var var_0 = vec3<bool>(global0[_wgslsmith_index_u32(max(~25297u, 1u), 1u)] < (_wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 12448i, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(arg_1, 1u)]), vec4<i32>(u_input.b.x, -44615i, -2147483647i, 9392i))) >> ((arg_1 >> (countOneBits(0u) % 32u)) % 32u)), any(global1[_wgslsmith_index_u32(4294967295u, 27u)]), !all(vec2<bool>(true, true)) && false);
    var var_1 = Struct_1(i32(-1i) * -(~firstTrailingBit(-17907i)), vec4<bool>(!arg_0, arg_0, !(var_0.x | true), true || any(var_0.yy)), global2[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(arg_1, 87690u >> (_wgslsmith_mod_u32(arg_1, 0u) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 24785u, arg_1) ^ vec3<u32>(21285u, arg_1, 4294967295u), vec3<u32>(0u, arg_1, 1u))), 0u), 15u)], u_input.c.x >> (arg_1 % 32u));
    var_1 = Struct_1(-33027i, !(!vec4<bool>(true, true, all(vec2<bool>(global2[_wgslsmith_index_u32(arg_1, 15u)], global2[_wgslsmith_index_u32(55714u, 15u)])), var_0.x)), !all(vec4<bool>(false, arg_0, all(vec4<bool>(global2[_wgslsmith_index_u32(arg_1, 15u)], arg_0, true, arg_0)), any(var_0.yx))), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_1, 1u)] << (arg_1 % 32u), ~max(firstLeadingBit(47670i), u_input.c.x), -52367i));
    global3 = array<vec4<i32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2560f)) * -1321f));
    return -1i;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<i32>(countOneBits(-func_3(arg_0 | global2[_wgslsmith_index_u32(arg_1.x, 15u)], countOneBits(52555u))), ~51176i);
    var var_1 = 1115f;
    var var_2 = arg_1.x;
    var_2 = ~min(arg_1.x, ~max(4294967295u & arg_1.x, 9109u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(571f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-123f - 438f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1511f)));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<u32>(1u, ~4294967295u, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(1u, 46083u, 66868u)), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_add_u32(1u >> (min(0u, 4294967295u) % 32u), reverseBits(firstTrailingBit(10034u))));
    var_0 = abs(reverseBits(min(vec4<u32>(~var_0.x, ~var_0.x, var_0.x, ~var_0.x), vec4<u32>(1u, var_0.x, 4294967295u, _wgslsmith_add_u32(1u, var_0.x)))));
    let var_1 = false;
    global3 = array<vec4<i32>, 16>();
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(6014u, 1u)], !vec4<bool>(!all(global1[_wgslsmith_index_u32(var_0.x, 27u)]), var_1, false, -arg_0.x <= min(-1i, arg_0.x)), arg_0.x > _wgslsmith_div_i32(reverseBits(~14414i), select(_wgslsmith_dot_vec3_i32(arg_0.zzy, arg_0.xyy), i32(-1i) * -8593i, true)), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(arg_0.zwx, arg_0.yww)));
    return Struct_1(-_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, var_2.a, 0i) ^ vec3<i32>(arg_0.x, var_2.a, 0i)), -(~vec3<i32>(38477i, u_input.b.x, u_input.a))), select(select(select(!vec4<bool>(false, true, var_1, var_2.b.x), select(var_2.b, global1[_wgslsmith_index_u32(59169u, 27u)], var_2.b.x), select(vec4<bool>(false, false, true, true), var_2.b, global2[_wgslsmith_index_u32(var_0.x, 15u)])), vec4<bool>(true, true, var_2.c || false, var_2.c), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, var_0.x), 15u)]), vec4<bool>(var_1, all(global1[_wgslsmith_index_u32(var_0.x, 27u)]), !(var_1 != global2[_wgslsmith_index_u32(4294967295u, 15u)]), !global2[_wgslsmith_index_u32(var_0.x, 15u)] || any(var_2.b)), false), !(var_1 || var_1), ~(-(~global0[_wgslsmith_index_u32(~4294967295u, 1u)])));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(~(-global3[_wgslsmith_index_u32(23098u, 16u)] & ((global3[_wgslsmith_index_u32(103996u, 16u)] | global3[_wgslsmith_index_u32(0u, 16u)]) & -global3[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(900f, 872f)), vec2<f32>(1051f, 998f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, vec4<u32>(49966u, 4294967295u, 36307u, 30979u), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(1540u, 27u)], false, 36913i))) + -407f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) - _wgslsmith_f_op_f32(ceil(1204f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(929f, -1745f))))));
    global0 = array<i32, 1>();
    global2 = array<bool, 15>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(379f, -401f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, -326f))))))));
    var var_2 = var_0.b.zx;
    return func_4(-(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, 1i, -2147483647i, -11618i), global3[_wgslsmith_index_u32(55067u, 16u)])) & -vec4<i32>(-2147483647i, 45382i, var_0.d, 0i)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), -402f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(var_1.x - var_1.x)), var_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_2;
    var var_1 = arg_2;
    var_1 = Struct_1(func_3(arg_0.c, max(36205u, ~max(16239u, 4294967295u))), !(!vec4<bool>(false, arg_0.c, func_1().c, all(vec4<bool>(false, arg_3.c, false, false)))), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(24172u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32982u), vec2<u32>(41367u, 4294967295u))) >> (~4294967295u % 32u), 15u)], var_0.d);
    let var_2 = 1u;
    global3 = array<vec4<i32>, 16>();
    return arg_0.b.xw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_5(func_1(), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(56146u, 4294967295u, 1976u), vec3<u32>(28818u, 27744u, 0u)), _wgslsmith_clamp_u32(10048u, 27281u, 4294967295u)), 1u)], func_1(), Struct_1(~global0[_wgslsmith_index_u32(39407u, 1u)], global1[_wgslsmith_index_u32(1797u, 27u)], all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], true, true)), u_input.a)));
    let var_1 = true;
    global2 = array<bool, 15>();
    let var_2 = abs(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    global2 = array<bool, 15>();
    global2 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-775f, 980f, 0u, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(var_2.ywx, vec3<u32>(~var_2.x, var_2.x, abs(3474u))), firstTrailingBit(vec3<u32>(~var_2.x, var_2.x, ~var_2.x))));
}

