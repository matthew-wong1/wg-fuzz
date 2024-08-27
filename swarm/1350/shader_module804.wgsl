struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(51738u, 7937u, 12930u), vec3<u32>(19303u, 1u, 7284u), vec3<u32>(4022u, 67611u, 57423u));

var<private> global2: vec3<f32>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = !((_wgslsmith_f_op_f32(-global3.c.x) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x * 247f)))) && (abs(_wgslsmith_mod_i32(-58218i, global3.b.x)) <= global3.b.x));
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~0u), 24u)];
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global2.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e * 267f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-720f, 1000f, global3.c.x, global2.x)), vec4<f32>(-1783f, 558f, global2.x, 351f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 536f, global2.x) - vec4<f32>(global2.x, global3.c.x, 580f, global3.e)))))));
    var var_2 = -(global3.b.x & global3.b.x);
    var var_3 = global3.c;
    return u_input.a.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(41516u, 24u)], global2.x);
    var var_1 = max(_wgslsmith_clamp_vec2_u32(~(~u_input.a), vec2<u32>(reverseBits(func_3()), _wgslsmith_div_u32(u_input.a.x, 42690u) | u_input.a.x), vec2<u32>(49073u, ~(~u_input.a.x))), u_input.a >> ((vec2<u32>(~u_input.a.x, u_input.a.x) << (vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 1u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), 589f);
    global0 = array<Struct_3, 24>();
    var_1 = vec2<u32>(u_input.a.x, var_1.x);
    return Struct_4(Struct_3(all(vec4<bool>(any(vec4<bool>(false, arg_1.x, true, true)), 0u <= u_input.a.x, true, true)), firstLeadingBit(global3.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(839f, 269f, 676f, -2283f) + vec4<f32>(-710f, -426f, arg_0.b, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-1888f)), 450f, _wgslsmith_f_op_f32(step(var_2.x, var_0.a.e)), arg_0.a.e)), select(global3.d, !(!arg_1.zw), false), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1663f, 1000f), var_0.b)))))));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = select(select(vec4<bool>(select(false, false, arg_2.c.x) && (false == arg_0.a.d.x), arg_0.a.e > -849f, !arg_2.c.x, all(vec3<bool>(global3.a, arg_0.a.a, arg_0.a.a)) != all(vec3<bool>(false, arg_0.a.a, arg_3.a.d.x))), select(!vec4<bool>(false, arg_0.a.a, false, arg_3.a.d.x), select(vec4<bool>(true, true, arg_0.a.d.x, arg_0.a.d.x), select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_0.a.d.x, global3.a, false), vec4<bool>(arg_0.a.a, true, false, false)), !vec4<bool>(false, false, arg_0.a.d.x, arg_3.a.d.x)), vec4<bool>(global3.a, any(vec3<bool>(arg_2.c.x, arg_3.a.d.x, global3.a)), 58268i >= arg_0.a.b.x, false)), true), !(!select(vec4<bool>(global3.d.x, arg_0.a.d.x, arg_3.a.a, false), vec4<bool>(true, arg_3.a.a, true, global3.a), all(vec2<bool>(false, false)))), all(arg_2.c));
    global0 = array<Struct_3, 24>();
    var var_2 = firstLeadingBit(~select(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(111174u, arg_2.a.x), vec2<u32>(149709u, 1u), arg_2.b.yz), ~u_input.a, ~arg_2.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, arg_2.a.x), vec2<u32>(u_input.a.x, arg_2.b.x)), true));
    var var_3 = _wgslsmith_sub_i32(arg_0.a.b.x, _wgslsmith_dot_vec4_i32(~arg_2.d, (-vec4<i32>(arg_0.a.b.x, -53335i, arg_2.e.x, arg_2.d.x) ^ abs(arg_2.d)) | -arg_2.d));
    return arg_2;
}

fn func_1() -> Struct_4 {
    global3 = global0[_wgslsmith_index_u32(firstLeadingBit(0u) >> (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(min(~u_input.a.x, 49850u), ~(~u_input.a.x))) % 32u), 24u)];
    var var_0 = Struct_2(4294967295u);
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(26826u, u_input.a.x), var_0.a);
    let var_2 = func_4(func_2(Struct_4(global0[_wgslsmith_index_u32(abs(~16507u), 24u)], global3.c.x), !vec4<bool>(false, 4294967295u < var_1, global3.a, true)), _wgslsmith_f_op_f32(select(global3.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x + -110f)))), global3.a)), Struct_1(~u_input.a, ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 23715u, 4294967295u), vec4<u32>(4294967295u, 48836u, var_0.a, var_1))), select(!(!vec3<bool>(true, global3.a, global3.d.x)), vec3<bool>(true, true, true), false & global3.a), min(abs(countOneBits(vec4<i32>(-2147483647i, -22824i, 4928i, -2147483647i))), vec4<i32>(0i, -1i, -2147483647i, 36979i) ^ abs(vec4<i32>(2147483647i, 2147483647i, global3.b.x, global3.b.x))), max(reverseBits(select(vec3<i32>(global3.b.x, -2775i, global3.b.x), vec3<i32>(global3.b.x, global3.b.x, 3524i), vec3<bool>(global3.d.x, global3.d.x, true))), ~(-vec3<i32>(global3.b.x, 9284i, global3.b.x)))), Struct_4(Struct_3(true, func_2(Struct_4(Struct_3(global3.d.x, global3.b, vec4<f32>(global3.e, global2.x, global3.e, global3.e), global3.d, -670f), global3.c.x), !vec4<bool>(false, global3.d.x, true, false)).a.b, vec4<f32>(global3.e, _wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(abs(1436f)), 131f), !vec2<bool>(global3.a, true), -763f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1711f + global3.e))));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-614f - -1345f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.x, global3.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -152f), global3.c.x)))))));
    return Struct_4(Struct_3(!(!(!var_2.c.x)), var_2.d.wx & vec2<i32>(1i, func_4(Struct_4(global0[_wgslsmith_index_u32(var_0.a, 24u)], -624f), global3.c.x, Struct_1(vec2<u32>(var_0.a, 4294967295u), vec4<u32>(29724u, 0u, 41579u, var_1), var_2.c, var_2.d, vec3<i32>(-10954i, global3.b.x, var_2.d.x)), Struct_4(global0[_wgslsmith_index_u32(4294967295u, 24u)], global3.e)).e.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c), global3.c), !func_2(Struct_4(Struct_3(false, vec2<i32>(-36276i, var_2.d.x), vec4<f32>(global3.e, global2.x, global2.x, global2.x), vec2<bool>(true, true), global2.x), global3.c.x), select(vec4<bool>(var_2.c.x, global3.a, true, var_2.c.x), vec4<bool>(true, var_2.c.x, global3.a, true), false)).a.d, -168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.e))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = func_1().a.c.wyy;
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.x, var_0.x)), arg_0) + func_1().b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(func_2(arg_2, vec4<bool>(arg_2.a.a, true, true, false)).a.e)), _wgslsmith_f_op_f32(f32(-1f) * -282f))), 692f, func_2(arg_2, !select(vec4<bool>(false, arg_2.a.a, false, arg_2.a.a), vec4<bool>(arg_2.a.d.x, true, true, arg_2.a.d.x), true)).b));
    var var_2 = _wgslsmith_mult_vec2_i32(-global3.b, -vec2<i32>(0i, 20115i));
    global3 = func_1().a;
    var var_3 = arg_2.a;
    return func_2(Struct_4(arg_2.a, _wgslsmith_f_op_f32(-func_1().b)), select(!vec4<bool>(arg_2.a.d.x, arg_2.a.d.x, global3.a, false), vec4<bool>(any(select(vec4<bool>(true, true, true, arg_2.a.a), vec4<bool>(false, var_3.d.x, var_3.d.x, arg_2.a.a), false)), true, arg_2.a.a, !(arg_2.a.a != false)), any(vec4<bool>(false, all(arg_2.a.d), true, u_input.a.x > 36768u)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c.wxw;
    let var_1 = 8376i;
    var var_2 = abs(-(~reverseBits(_wgslsmith_div_i32(var_1, -1i))));
    let var_3 = func_5(global2.x, global3.c, func_1());
    var var_4 = _wgslsmith_f_op_f32(round(-381f));
    global1 = array<vec3<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_mult_i32(max(0i, -13634i), 1i)), -567f, min(-2147483647i & -global3.b.x, abs(countOneBits(_wgslsmith_div_i32(-2147483647i, -1i)))), -1641f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(903f, 564f), global3.c.x))))));
}

