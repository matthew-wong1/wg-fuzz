struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: vec2<f32> = vec2<f32>(-358f, 209f);

var<private> global2: array<Struct_2, 18>;

var<private> global3: i32 = 5007i;

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<bool> {
    global4 = 15671u;
    let var_0 = true;
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.b.x), max(~_wgslsmith_div_i32(-2147483647i, u_input.d.x), u_input.b.x)), reverseBits(u_input.d), abs(firstTrailingBit(-global0[_wgslsmith_index_u32(u_input.c.x, 30u)])));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-609f, -292f, global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), global1.x, 193f), true)))));
    return vec3<bool>(!(24171i <= var_1.x), true, !(!(~u_input.b.x > var_1.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    global0 = array<vec2<i32>, 30>();
    var var_0 = select(func_3(), select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(arg_1.a, false), arg_1.a)), true | arg_1.a, any(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(false, true, arg_1.a, arg_1.a)))), func_3(), arg_1.a), vec3<bool>(!all(select(vec4<bool>(arg_1.a, true, false, arg_1.a), vec4<bool>(arg_1.a, false, false, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true))), arg_1.a, all(!vec2<bool>(false, arg_1.a))));
    let var_1 = var_0.xy;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2276f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.x)), 101f, var_1.x != var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-global1.x))) + global1.x));
    global0 = array<vec2<i32>, 30>();
    return u_input.d.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = vec2<u32>(abs(1u), firstTrailingBit(_wgslsmith_div_u32(arg_1.x, ~_wgslsmith_mult_u32(arg_1.x, arg_1.x))));
    var var_1 = !select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), false), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec3<bool>(true, true, true)), true, false, all(vec3<bool>(true, false, true))));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 638f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.xx) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1104f, -1158f), arg_2.wx))))), vec2<f32>(-1040f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-643f - arg_2.x))) - -404f))));
    global3 = u_input.b.x << (u_input.c.x % 32u);
    let var_2 = vec3<f32>(-2323f, 329f, 1425f);
    return vec2<f32>(_wgslsmith_f_op_f32(sign(-173f)), 1900f);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_u32(~select(reverseBits(vec4<u32>(1u, arg_0, 0u, arg_0)), ~vec4<u32>(23350u, 57345u, u_input.c.x, 3074u), vec4<bool>(false, true, false, true)), vec4<u32>(~arg_0, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 2829u, arg_0), vec3<u32>(arg_0, 1u, u_input.c.x))), firstTrailingBit(~u_input.a), arg_0)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(~30792u, u_input.a | 1u, firstTrailingBit(36441u), _wgslsmith_dot_vec2_u32(vec2<u32>(76974u, arg_0), u_input.c.xx)), vec4<u32>(arg_0, ~arg_0, ~1u, countOneBits(4294967295u))) % vec4<u32>(32u));
    global1 = _wgslsmith_f_op_vec2_f32(func_4(-vec3<i32>(func_2(u_input.a, global2[_wgslsmith_index_u32(~u_input.a, 18u)], abs(vec2<i32>(u_input.b.x, 9904i)), reverseBits(var_0.x)), countOneBits(u_input.b.x), abs(u_input.b.x)), vec4<u32>((~u_input.a | var_0.x) >> (~_wgslsmith_mod_u32(var_0.x, 1u) % 32u), _wgslsmith_dot_vec3_u32(u_input.c, ~(~u_input.c)), ~1u, select(~_wgslsmith_clamp_u32(var_0.x, 1u, 71108u), _wgslsmith_mult_u32(arg_0, _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(8812u, 0u, var_0.x, arg_0))), !any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -348f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(804f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f - 1075f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, global1.x, -2166f, global1.x)))))), vec2<i32>(u_input.b.x, (~2147483647i >> ((u_input.a | u_input.c.x) % 32u)) & _wgslsmith_sub_i32(-u_input.b.x, 0i))));
    global4 = ~1u;
    let var_1 = Struct_3(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), !vec2<bool>(true, select(false, false, true)), func_3().zx), Struct_1(min(1u, 1u) << (1u % 32u), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1004f))), !func_3().zz, 1i >= _wgslsmith_mult_i32(abs(2147483647i), u_input.b.x & 4035i)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(846f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(688f, global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1606f))) - 1124f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1672f, _wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1131f * -559f), _wgslsmith_f_op_f32(var_1.b.c - -181f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1672f, global1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.zz)), var_1.d.xz, !(!var_1.b.d.x)))));
    return Struct_1(select(reverseBits(arg_0), 4294967295u, false), func_3().x, 993f, vec2<bool>(!all(var_1.b.d), _wgslsmith_clamp_i32(1i, abs(29908i), u_input.b.x) <= ~func_2(1u, Struct_2(true), vec2<i32>(-21808i, u_input.d.x), var_0.x)), true);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = false;
    let var_1 = all(vec3<bool>(false, false, (_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(u_input.c.x, 1u)) > ~4294967295u) & !all(arg_0.d)));
    let var_2 = select(select(vec4<bool>(_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.yz) < u_input.c.x, arg_2, true, select(var_1, false, true)), vec4<bool>(arg_0.e, false, all(arg_0.d), _wgslsmith_f_op_f32(arg_0.c - arg_0.c) <= arg_0.c), (all(arg_0.d) && all(vec3<bool>(true, arg_2, arg_0.d.x))) & !(!arg_0.b)), vec4<bool>(true, true, var_1, !all(!vec2<bool>(var_1, arg_0.d.x))), vec4<bool>(true, all(func_3()), func_1(_wgslsmith_mod_u32(arg_1, 54996u) << (select(69731u, u_input.c.x, arg_0.e) % 32u)).d.x, any(vec3<bool>(false | arg_2, u_input.b.x > 868i, var_1 != false))));
    var var_3 = global2[_wgslsmith_index_u32(~(~111086u), 18u)];
    var var_4 = _wgslsmith_add_vec3_u32(u_input.c << (~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, 0u, arg_1), ~vec3<u32>(32613u, 0u, 1u)) % vec3<u32>(32u)), (vec3<u32>(89920u, 22494u, u_input.c.x >> (arg_1 % 32u)) & u_input.c) & u_input.c);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = !vec3<bool>(arg_0.e & true, arg_2.e, func_1(u_input.a).b);
    var var_1 = -select(20699i, i32(-1i) * -1i, arg_1 < -252f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -363f) + 885f)) * _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))) == -1214f;
    var var_3 = arg_0.c;
    let var_4 = Struct_3(vec2<bool>(true, false && all(vec4<bool>(true, false, false, true))), func_1(4294967295u), arg_1, vec3<f32>(_wgslsmith_f_op_f32(sign(func_5(arg_0, ~4294967295u, func_3().x).c)), global1.x, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_div_f32(388f, _wgslsmith_f_op_f32(sign(1185f))), u_input.c.x >= ~4294967295u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-159f - -522f))))) * 1922f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_u32(reverseBits(firstTrailingBit(_wgslsmith_add_u32(49163u, u_input.a))), ~u_input.a), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(func_1(8364u), _wgslsmith_dot_vec4_u32(vec4<u32>(43614u, u_input.a, 25394u, 20989u), vec4<u32>(u_input.c.x, u_input.a, u_input.a, 46364u)), true), 491f, func_5(Struct_1(44358u, false, -144f, vec2<bool>(true, true), false), ~u_input.a, 1u < u_input.a), vec3<bool>(true, all(vec2<bool>(false, true)), true)))), func_1(13749u).d, true);
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_add_vec2_i32(~u_input.b, select(vec2<i32>(u_input.b.x, 27318i), vec2<i32>(-16994i, u_input.b.x), var_0.e))), firstLeadingBit(vec2<i32>(-2147483647i, ~u_input.d.x))), u_input.b & max(~(~vec2<i32>(16527i, u_input.b.x)), ~(u_input.d >> (vec2<u32>(var_0.a, 28105u) % vec2<u32>(32u)))));
    global2 = array<Struct_2, 18>();
    global3 = -26119i | abs(max(_wgslsmith_clamp_i32(i32(-1i) * -66644i, -57898i >> (var_0.a % 32u), 60374i & var_1.x), u_input.d.x));
    global4 = var_0.a;
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-366f - _wgslsmith_f_op_f32(1059f * -1795f)), _wgslsmith_f_op_f32(f32(-1f) * -419f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1426f, global1.x)))))));
    let var_2 = Struct_3(!(!var_0.d), func_1(~10293u), global1.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1223f - -1635f), _wgslsmith_f_op_f32(f32(-1f) * -454f), var_0.c) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c, var_0.c, var_0.c))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, var_0.c, -209f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, 1213f, var_0.c), vec3<f32>(global1.x, 199f, 170f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1386f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.d.xz, var_2.d.yx)), var_2.d.xz))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 203f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0.c)))))));
}

