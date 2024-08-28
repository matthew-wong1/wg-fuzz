struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(4294967295u, 1u, 4294967295u, 38497u, 1u, 28226u, 1u, 33865u, 22982u, 49467u, 23622u, 44081u, 39868u, 0u, 13133u, 8139u, 4294967295u, 2909u, 17399u, 63611u, 41224u, 1u, 40240u, 66069u);

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<bool>(true, false, false, false), false, 473f), Struct_1(vec4<bool>(false, false, true, true), true, -1000f), Struct_1(vec4<bool>(true, false, true, true), false, 143f), Struct_1(vec4<bool>(false, false, false, true), false, 127f), Struct_1(vec4<bool>(true, false, true, false), true, -953f), Struct_1(vec4<bool>(true, true, true, false), false, -129f), Struct_1(vec4<bool>(true, false, false, true), false, 267f), Struct_1(vec4<bool>(true, false, false, false), true, 632f), Struct_1(vec4<bool>(false, false, true, false), true, -1163f), Struct_1(vec4<bool>(true, true, true, false), false, -628f), Struct_1(vec4<bool>(true, true, false, false), true, 400f), Struct_1(vec4<bool>(false, false, true, true), true, 814f), Struct_1(vec4<bool>(false, true, false, false), true, 1152f), Struct_1(vec4<bool>(false, false, false, false), true, -468f), Struct_1(vec4<bool>(true, false, true, false), false, 1665f), Struct_1(vec4<bool>(false, true, false, true), false, -469f), Struct_1(vec4<bool>(true, true, false, false), false, -444f), Struct_1(vec4<bool>(true, false, true, true), true, -1653f), Struct_1(vec4<bool>(true, true, true, true), false, -394f), Struct_1(vec4<bool>(false, false, true, true), true, -483f), Struct_1(vec4<bool>(true, true, true, true), false, 656f), Struct_1(vec4<bool>(true, false, true, true), false, -176f), Struct_1(vec4<bool>(false, false, true, false), false, -124f), Struct_1(vec4<bool>(false, true, true, false), false, 906f), Struct_1(vec4<bool>(false, true, true, false), false, -306f));

var<private> global4: array<Struct_4, 5>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = global2.a.zz;
    var var_1 = global2.b;
    global4 = array<Struct_4, 5>();
    let var_2 = Struct_3(u_input.b.xxz, global2.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, 828f), global2.c))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-772f))), 1000f)));
    var var_3 = -657f;
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-372f)), -1404f)), -913f);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_4 {
    global2 = Struct_3(vec3<u32>(~global0[_wgslsmith_index_u32(~global2.a.x << (4294967295u % 32u), 24u)], _wgslsmith_mult_u32(~max(u_input.c, 1u), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, u_input.c), 24u)]), _wgslsmith_mod_u32(global2.a.x, global0[_wgslsmith_index_u32(~1u, 24u)])), global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1, arg_1, !global2.b.a.wz)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(global2.c)), arg_1))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(global2.b.c + -550f), arg_1.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global2.b.a, u_input.b.yx))) * _wgslsmith_f_op_vec2_f32(func_3(global2.b.a, _wgslsmith_mod_vec2_u32(global2.a.xx, u_input.b.zy)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.x + 436f), global2.b.c)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-615f, global2.b.c, _wgslsmith_f_op_f32(-global2.b.c), _wgslsmith_div_f32(global2.b.c, arg_1.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, arg_1.x, arg_1.x, global2.b.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, -640f, var_0.x) - vec4<f32>(global2.b.c, arg_1.x, arg_1.x, 1478f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, arg_1.x, -1357f, -479f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c.x, arg_1.x, -527f, 256f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1461f, global2.b.c, 252f, global2.b.c)), all(global2.b.a.xyw)))))));
    var var_2 = Struct_2(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(70731u, 24u)], 0u, u_input.c, u_input.c), ~vec4<u32>(0u, u_input.c, u_input.c, 46800u))), Struct_1(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1u)], false, global2.b.b, global1[_wgslsmith_index_u32(30045u, 1u)]))), true, arg_1.x), 435f);
    let var_3 = max(u_input.a.zww, u_input.a.yzy);
    return global4[_wgslsmith_index_u32(max(~((~u_input.b.x & select(var_2.a, 111822u, var_2.b.a.x)) >> (~1u % 32u)), ~(~32137u)), 5u)];
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = -933f;
    var var_1 = arg_0.a;
    let var_2 = vec4<i32>(_wgslsmith_div_i32(u_input.a.x ^ firstTrailingBit(i32(-1i) * -13100i), u_input.a.x), -6144i, abs(~5786i), u_input.a.x);
    return arg_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_1 {
    global0 = array<u32, 24>();
    let var_0 = func_2(vec4<i32>(_wgslsmith_mod_i32(-40178i, -25550i), u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2(u_input.a, vec2<f32>(arg_1.b.c, arg_0.c), u_input.a.yw).a.b.c, _wgslsmith_f_op_f32(arg_1.b.c - arg_1.b.c)))), global2.c.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy), vec2<i32>(-1i) * -(~vec2<i32>(0i, u_input.a.x)), max(u_input.a.xz, select(u_input.a.yy, u_input.a.zy, vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 1u)])) ^ ~vec2<i32>(0i, -58936i)))).a.b.a;
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, !var_0.x, !(!var_0.x), !any(vec2<bool>(global2.b.a.x, arg_0.a.x))), _wgslsmith_add_vec2_u32(~u_input.b.yx, vec2<u32>(_wgslsmith_add_u32(1u, 19559u), min(30602u, 1u))))).x);
    global3 = array<Struct_1, 25>();
    return func_2(_wgslsmith_add_vec4_i32(vec4<i32>(~(-1i), i32(-1i) * -2147483647i, 4977i, select(u_input.a.x, ~(-2147483647i), true)), ~u_input.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(Struct_3(global2.a, arg_1.b, vec2<f32>(global2.b.c, -1000f)), arg_1, global2.b.a.xy)).c - arg_1.c) + arg_0.c), _wgslsmith_f_op_f32(step(arg_0.c, -520f))), ~min(-vec2<i32>(2147483647i, 1087i), abs(select(u_input.a.xy, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(arg_0.a.x, false))))).b.b;
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = !(!(!(!(!global2.b.a))));
    var var_1 = u_input.a.wyy;
    global1 = array<bool, 1>();
    let var_2 = func_5(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, max(global2.a.x, 13910u)), 25u)], func_4(func_2(u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.c, global2.c.x) + global2.c), vec2<f32>(-1532f, arg_0.x)), var_1.xx)), 1u, _wgslsmith_dot_vec2_u32(~(global2.a.zz ^ u_input.b.wy), vec2<u32>(58437u, reverseBits(4294967295u))) ^ global0[_wgslsmith_index_u32(~(~u_input.b.x), 24u)]);
    var var_3 = !(!var_2.a.ww);
    return !vec3<bool>(func_2(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), func_2(u_input.a, vec2<f32>(arg_0.x, arg_0.x), vec2<i32>(-25324i, u_input.a.x)).a.c, select(var_1.zy, var_1.zx, var_0.x)).a.b.a.x & (all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 1u)], var_2.b, global1[_wgslsmith_index_u32(global2.a.x, 1u)], true)) != var_0.x), var_1.x != 4717i, true);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(-33250i >> (min(u_input.c, ~u_input.b.x) % 32u), u_input.a.x, -11811i) | _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 2147483647i);
    global2 = func_2(-vec4<i32>(-var_0, -10816i, u_input.a.x, ~(-1i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 - arg_1) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1439f, 984f) * vec2<f32>(479f, -1048f)))))), vec2<i32>(max(u_input.a.x, -2147483647i), -1i)).a;
    var var_1 = global2.a.yy;
    var var_2 = ~u_input.b;
    var var_3 = func_2(vec4<i32>(-var_0, ~var_0, ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(-1i, 1i)), vec2<f32>(global2.b.c, global2.c.x), _wgslsmith_div_vec2_i32(~(vec2<i32>(-1i) * -u_input.a.yz), reverseBits(select(-u_input.a.wy, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0, u_input.a.x), u_input.a.xw), vec2<bool>(true, false)))));
    return var_3.a.b;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global1 = array<bool, 1>();
    return Struct_2(u_input.b.x, func_6(arg_0, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2.c))))), arg_1.a.zzy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(963f * 170f)), 1335f)));
}

fn func_8(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    return func_7(Struct_1(func_4(Struct_4(Struct_3(u_input.b.wzw, global3[_wgslsmith_index_u32(arg_0.x, 25u)], vec2<f32>(603f, 993f)), func_4(Struct_4(Struct_3(global2.a, global2.b, global2.c), arg_2, arg_2.b.a.xz)), !vec2<bool>(arg_3.a.x, true))).b.a, false, arg_2.c), func_6(Struct_1(!(!vec4<bool>(true, arg_3.b, true, global1[_wgslsmith_index_u32(4294967295u, 1u)])), all(global2.b.a), -150f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.c, global2.c)), !func_2(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -15992i)), vec2<f32>(-1189f, arg_2.c), reverseBits(u_input.a.zy)).a.b.a.xzx)).b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    global2 = Struct_3(~vec3<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 24u)] & 20309u, ~global2.a.x), max(global2.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)] | u_input.b.x), 1u & _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.x, 24u)], 24u)], global2.a.x)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(99398u, ~_wgslsmith_mod_u32(30601u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), 0u) | min(global2.a.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(33969u, 24u)], 51700u)), 25u)], global2.c);
    var var_0 = func_8(~(~u_input.b.ww), vec3<i32>(firstLeadingBit(1i), abs(min(u_input.a.x, u_input.a.x) ^ (0i >> (1u % 32u))), u_input.a.x), func_7(func_6(Struct_1(!global2.b.a, false, _wgslsmith_f_op_f32(round(global2.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.c.x, -280f), global2.c)) + vec2<f32>(global2.c.x, 745f)), select(func_1(vec3<f32>(681f, -874f, -346f)), !global2.b.a.zwz, true)), Struct_1(global2.b.a, _wgslsmith_f_op_f32(644f + global2.c.x) <= func_2(vec4<i32>(1027i, u_input.a.x, u_input.a.x, u_input.a.x), global2.c, u_input.a.xy).a.c.x, _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(275f * global2.b.c)))), global2.b);
    let var_1 = 0u;
    var var_2 = global2.b.c;
    global4 = array<Struct_4, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), global2.b.c), var_0.c);
}

