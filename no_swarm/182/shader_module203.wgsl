struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(1u, 22392u), vec2<u32>(0u, 0u), vec2<u32>(25866u, 9438u), vec2<u32>(7828u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(67629u, 4294967295u), vec2<u32>(37656u, 1u), vec2<u32>(47996u, 4294967295u), vec2<u32>(8663u, 37842u), vec2<u32>(80284u, 0u), vec2<u32>(4294967295u, 59451u), vec2<u32>(50500u, 4294967295u), vec2<u32>(4294967295u, 41376u), vec2<u32>(0u, 44840u), vec2<u32>(2971u, 88527u), vec2<u32>(1u, 32835u), vec2<u32>(1u, 1u));

var<private> global2: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = any(global2.yzy);
    global2 = !vec4<bool>(arg_0.c.c, !any(vec4<bool>(false, false, false, true)), arg_0.c.a.x, all(arg_0.d.c.a.xx) | false);
    global1 = array<vec2<u32>, 17>();
    global0 = global2.x;
    let var_0 = arg_0.d.d.x;
    return var_0;
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = global2.x;
    global1 = array<vec2<u32>, 17>();
    global1 = array<vec2<u32>, 17>();
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0 | firstLeadingBit(29029u), max(1u, arg_0)) & func_3(Struct_3(Struct_1(vec3<bool>(true, true, true), u_input.a, false, 750f, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(global2.wyw, 2147483647i, global2.x, -1000f, 1283i), Struct_2(4294967295u, 40154i, Struct_1(vec3<bool>(false, global2.x, false), 14003i, global2.x, 641f, 2147483647i), vec2<u32>(6032u, arg_0), 9445i), vec4<i32>(19856i, u_input.a, u_input.b.x, 15991i) | vec4<i32>(-2147483647i, -45337i, u_input.b.x, u_input.b.x))), ~(~0u));
    var var_2 = countOneBits(((vec2<u32>(arg_0, arg_0) >> (abs(global1[_wgslsmith_index_u32(arg_0, 17u)]) % vec2<u32>(32u))) | select(vec2<u32>(arg_0, arg_0), _wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(54145u, 17u)], vec2<u32>(arg_0, 50715u)), !vec2<bool>(true, global2.x))) ^ ~(~(~global1[_wgslsmith_index_u32(arg_0, 17u)])));
    return Struct_3(Struct_1(vec3<bool>(all(global2.zzy), !global2.x, max(-10273i, 1i) <= u_input.a), u_input.a ^ -43867i, true, 1096f, 0i), _wgslsmith_f_op_f32(f32(-1f) * -692f), Struct_1(select(vec3<bool>(any(global2.wx), true, global2.x), vec3<bool>(u_input.a == -43176i, true, global2.x), global2.x && !global2.x), u_input.a, true, 635f, ~(~(-u_input.a))), Struct_2(arg_0, -6285i, Struct_1(!select(vec3<bool>(global2.x, global2.x, true), global2.wzw, global2.yzz), 0i, all(select(vec3<bool>(global2.x, global2.x, true), global2.wzy, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1239f)), -79575i), vec2<u32>(~(~0u), 1u), abs(abs(~20164i))), vec4<i32>(u_input.a, 3297i, -15488i, u_input.b.x));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    return arg_0.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(arg_2, -41193i, Struct_1(!global2.zwx, u_input.a, (_wgslsmith_sub_u32(arg_2, 1u) >> (4294967295u % 32u)) < arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f * _wgslsmith_f_op_f32(f32(-1f) * -451f)) - arg_1.d), arg_1.b), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, min(arg_2 | 36880u, arg_2 | arg_2)), vec2<u32>(~44560u, min(reverseBits(arg_2), arg_2))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_1.e, arg_3)), _wgslsmith_add_vec2_i32(firstTrailingBit(u_input.b), -vec2<i32>(arg_3, arg_0.x))), 42285i));
    let var_1 = (-320f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(-321f * arg_1.d)) + func_2(20034u >> (1u % 32u)).b)) || all(!vec3<bool>(2620f > arg_1.d, true, true || var_0.c.a.x));
    let var_2 = func_2(1u).d;
    let var_3 = _wgslsmith_f_op_f32(max(var_2.c.d, var_2.c.d));
    let var_4 = var_0.a;
    return var_2.c;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    global2 = vec4<bool>(true, false, all(vec2<bool>(arg_0.d.d.x > arg_0.d.a, true | arg_1.c)), false);
    var var_0 = -_wgslsmith_mod_i32(u_input.b.x, -u_input.b.x);
    var var_1 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_0.d.a, arg_0.d.a, ~12277u, 0u) & ~vec4<u32>(arg_0.d.d.x, 1u, 13927u, 27202u)), _wgslsmith_div_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.d.x, arg_0.d.d.x, arg_0.d.d.x, arg_0.d.d.x) & vec4<u32>(arg_0.d.a, 0u, arg_0.d.d.x, 4294967295u), ~vec4<u32>(arg_0.d.a, arg_0.d.d.x, arg_0.d.d.x, arg_0.d.a)), ~vec4<u32>(0u, arg_0.d.d.x, arg_0.d.a, 484u), vec4<bool>(true, true, arg_1.c, true)), ~firstTrailingBit(~vec4<u32>(30195u, 41119u, arg_0.d.d.x, arg_0.d.a))));
    let var_2 = func_4(arg_0);
    var var_3 = arg_0;
    return select(select(vec4<bool>(all(global2.zxy), any(vec4<bool>(var_2.c, false, false, arg_1.c)), arg_1.a.x, true != global2.x), !select(!vec4<bool>(false, var_2.a.x, true, global2.x), vec4<bool>(true, false, arg_0.a.a.x, global2.x), select(vec4<bool>(true, arg_0.c.c, true, true), vec4<bool>(var_3.c.c, arg_0.c.c, true, var_3.d.c.c), global2.x)), !select(vec4<bool>(global2.x, false, false, false), select(vec4<bool>(var_2.a.x, true, arg_1.c, true), vec4<bool>(global2.x, false, var_2.c, true), true), vec4<bool>(var_2.c, false, false, arg_0.a.c))), vec4<bool>(!(func_3(arg_0) != abs(4294967295u)), _wgslsmith_f_op_f32(func_4(arg_0).d - _wgslsmith_f_op_f32(f32(-1f) * -360f)) == arg_0.c.d, var_2.d != func_2(var_3.d.a).b, func_2(0u >> (var_3.d.a % 32u)).c.a.x != true), arg_1.c);
}

fn func_1() -> Struct_3 {
    global2 = func_6(Struct_3(func_5(select(vec4<i32>(u_input.b.x, 11246i, u_input.a, -1i), reverseBits(vec4<i32>(-66861i, u_input.b.x, u_input.b.x, 1i)), true & global2.x), func_4(func_2(101504u)), _wgslsmith_clamp_u32(func_2(70258u).d.d.x, 4294967295u, ~85724u), abs(u_input.b.x)), 273f, Struct_1(vec3<bool>(true, select(true, global2.x, global2.x), func_5(vec4<i32>(u_input.a, u_input.b.x, 0i, 2147483647i), Struct_1(vec3<bool>(true, false, false), u_input.b.x, true, -1339f, 3956i), 60708u, 60456i).a.x), -9907i, true, _wgslsmith_f_op_f32(1090f * -1203f), 1i), func_2(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(max(80106u, 0u), 17u)], vec2<u32>(0u, 1u))).d, max(vec4<i32>(2147483647i, -u_input.b.x, -10633i, _wgslsmith_dot_vec4_i32(vec4<i32>(43759i, u_input.b.x, u_input.b.x, -80670i), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a))), vec4<i32>(u_input.b.x >> (1u % 32u), 2147483647i, u_input.b.x, 1i))), Struct_1(vec3<bool>(global2.x, true, any(vec4<bool>(global2.x, global2.x, global2.x, global2.x))), u_input.a, false, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-359f)), _wgslsmith_f_op_f32(min(1507f, 157f))), _wgslsmith_f_op_f32(step(func_4(Struct_3(Struct_1(global2.yzy, u_input.b.x, global2.x, 564f, u_input.b.x), -162f, Struct_1(global2.wyy, u_input.b.x, global2.x, -150f, 7049i), Struct_2(69823u, 0i, Struct_1(vec3<bool>(global2.x, true, false), u_input.b.x, true, 1000f, u_input.a), vec2<u32>(4294967295u, 0u), 24495i), vec4<i32>(35024i, -2147483647i, 0i, 0i))).d, _wgslsmith_f_op_f32(1512f * -1637f))))), _wgslsmith_mult_i32(firstLeadingBit(u_input.b.x) ^ 2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), ~0i, ~(-56175i)))), 1948f);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(1337f * 505f), any(vec4<bool>(false, true, global2.x, global2.x))))), func_5(~(~vec4<i32>(u_input.b.x, 9412i, u_input.b.x, u_input.b.x)), Struct_1(global2.xyw, countOneBits(u_input.b.x), true, -340f, u_input.b.x), 1u, u_input.b.x).c)));
    let var_1 = func_2(41316u);
    global0 = global2.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1722f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.c.d * var_0), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.d * _wgslsmith_f_op_f32(f32(-1f) * -821f))))));
    return func_2(func_2(_wgslsmith_sub_u32(~(~var_1.d.a), 19516u)).d.a);
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    let var_0 = arg_1;
    var var_1 = func_1().c;
    let var_2 = func_2(~func_3(Struct_3(func_4(arg_1), -1000f, func_5(vec4<i32>(0i, var_0.a.b, var_1.b, var_1.e), Struct_1(vec3<bool>(var_0.c.c, false, false), 2147483647i, global2.x, 207f, -2147483647i), 0u, 2147483647i), Struct_2(arg_1.d.d.x, -67991i, var_0.c, global1[_wgslsmith_index_u32(var_0.d.a, 17u)], -2147483647i), arg_0))).d.c;
    global0 = true;
    global1 = array<vec2<u32>, 17>();
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(vec4<i32>(abs(i32(-1i) * -u_input.a), u_input.b.x, 1i, 142i), func_1());
    global1 = array<vec2<u32>, 17>();
    global0 = global2.x;
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_1(global2.wxz, 1i, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -224f), 929f)))), 588i);
    global2 = select(vec4<bool>(false, abs(func_1().c.e) < var_1.e, global2.x, false), vec4<bool>(var_1.d != func_5(vec4<i32>(var_1.e, 2147483647i, 2147483647i, var_1.b), var_1, 0u, var_1.e).d, all(func_2(~0u).a.a.zz), true, (-var_1.e != u_input.a) == var_0.x), !var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.d, ~(~(~vec3<i32>(2147483647i, -21851i, -34555i) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(var_1.b, -43490i, var_1.b)))), firstLeadingBit(25447u));
}

