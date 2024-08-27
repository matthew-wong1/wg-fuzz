struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-425f, 538f);

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(2147483647i, 2147483647i, 17457i), vec3<i32>(0i, 0i, 1i), vec3<i32>(0i, -19242i, 3429i), vec3<i32>(-4333i, 0i, -1i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(1i, i32(-2147483648), 24314i), vec3<i32>(1i, 2827i, 20543i), vec3<i32>(69225i, 18739i, 2147483647i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(-7326i, -1i, -1i), vec3<i32>(-1i, -6048i, 2147483647i));

var<private> global2: array<f32, 1> = array<f32, 1>(418f);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true), 1u, 29773u, vec4<f32>(-2264f, 536f, 590f, 154f)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), 1u, 4294967295u, vec4<f32>(-737f, 899f, -213f, 952f)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true), 1u, 1u, vec4<f32>(-2027f, 549f, 710f, 755f)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), 4294967295u, 88145u, vec4<f32>(305f, -456f, -663f, 469f)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), 22788u, 4294967295u, vec4<f32>(-763f, -1438f, 532f, 1000f)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = select(!select(!(!vec3<bool>(false, arg_1.b.x, true)), arg_1.a, vec3<bool>(!global3.a.a.x, arg_1.a.x, true)), !select(select(global3.e.a, global3.c.a, !vec3<bool>(arg_1.a.x, arg_1.b.x, false)), !arg_1.a, !global3.d.a), true);
    return var_0.zy;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: i32) -> bool {
    global1 = array<vec3<i32>, 11>();
    global2 = array<f32, 1>();
    global3 = arg_1;
    global2 = array<f32, 1>();
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    return any(!vec4<bool>(!(-23739i <= arg_3), true, global3.a.a.x, false));
}

fn func_2() -> Struct_1 {
    let var_0 = global3.c.e.xyy;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x - var_0.x))), global3.e.e.x, global3.e.e.x, _wgslsmith_f_op_f32(max(-778f, 189f))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global3.d.e.x)), _wgslsmith_f_op_f32(-1000f + -642f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f * -783f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(global3.e.c, 1u)], 1232f)), global0.x, !global3.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -123f) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.d, 1u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.e.e.x - var_0.x), -512f)) + global3.d.e));
    let var_2 = Struct_1(!select(select(global3.e.a, vec3<bool>(false, global3.b.a.x, false), 4848i <= u_input.b), !select(global3.d.a, global3.b.a, vec3<bool>(true, false, true)), global3.e.b.x & global3.d.b.x), !global3.e.a.zy, ~_wgslsmith_clamp_u32(u_input.d, abs(5684u), 0u), abs(abs(~(~4294967295u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1324f, -2062f, 427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.a.e.x, 798f)) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(34206u, 1u)] - var_1.x))))));
    var var_3 = global3.a.a.x;
    var_3 = func_4(abs(~(~vec3<u32>(global3.d.d, 38328u, u_input.a) << (vec3<u32>(global3.b.d, 4294967295u, u_input.d) % vec3<u32>(32u)))), Struct_2(var_2, Struct_1(vec3<bool>(true, true, true), func_3(global0.x, Struct_1(var_2.a, vec2<bool>(global3.b.b.x, var_2.b.x), 0u, 21712u, vec4<f32>(var_1.x, global2[_wgslsmith_index_u32(var_2.d, 1u)], global3.d.e.x, 578f))), countOneBits(var_2.c) >> (8343u % 32u), select(u_input.a, global3.b.c, any(vec4<bool>(true, global3.b.a.x, global3.e.b.x, true))), global3.d.e), Struct_1(select(var_2.a, global3.d.a, !vec3<bool>(global3.a.a.x, false, global3.e.b.x)), select(vec2<bool>(var_2.b.x, var_2.a.x), !global3.c.b, vec2<bool>(true, global3.d.b.x)), 0u, ~(~0u), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global0.x, global2[_wgslsmith_index_u32(u_input.d, 1u)], -230f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1408f, global2[_wgslsmith_index_u32(global3.d.d, 1u)], -2338f, 1211f), var_2.e)))), global3.a, Struct_1(global3.d.a, global3.d.b, ~abs(u_input.a), var_2.c >> (~var_2.c % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-717f, 1000f, -1349f, var_0.x) + vec4<f32>(-152f, var_1.x, -694f, var_2.e.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.e.x, 611f, global3.c.e.x, var_1.x) + vec4<f32>(1406f, global3.c.e.x, global0.x, global2[_wgslsmith_index_u32(19159u, 1u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e.x, var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(51776u, 1u)]))))), -u_input.c);
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(7247u, 1u)], 1000f)) + vec2<f32>(arg_1.e.x, -1101f));
    var var_0 = Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.b, -8957i, -1i, -2147483647i), vec4<bool>(arg_0.b.x, global3.c.a.x, arg_0.a.x, true)), vec4<i32>(-28159i, -2147483647i, u_input.c, u_input.c)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -10951i, u_input.c, 1i) << (vec4<u32>(u_input.d, u_input.a, 4294967295u, arg_0.d) % vec4<u32>(32u)), select(vec4<i32>(u_input.c, u_input.c, u_input.b, 2147483647i), vec4<i32>(1i, u_input.c, u_input.c, 2147483647i), vec4<bool>(arg_1.a.x, global3.d.b.x, true, global3.a.a.x)), ~vec4<i32>(u_input.c, u_input.c, 1487i, u_input.b)), abs(-vec4<i32>(u_input.b, 9652i, u_input.c, u_input.c))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -14806i), vec4<i32>(0i, u_input.c, u_input.c, u_input.b))) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, arg_0.c, 13334u, arg_1.d), vec4<u32>(4294967295u, u_input.a, 0u, arg_0.c), vec4<u32>(u_input.a, global3.b.c, 93694u, 1u)), select(vec4<u32>(7982u, 4294967295u, global3.a.c, 72700u), vec4<u32>(4294967295u, 4294967295u, arg_1.c, global3.b.d), vec4<bool>(arg_1.b.x, false, false, false)), any(global3.b.a.zz)) % vec4<u32>(32u))));
    let var_1 = Struct_2(func_2(), Struct_1(global3.d.a, func_2().a.xy, global3.a.c, ~(~global3.b.d), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)), 437f, -341f, global0.x)), Struct_1(!func_2().a, select(arg_0.a.xz, !vec2<bool>(false, arg_0.b.x), vec2<bool>(false, !arg_0.b.x)), u_input.a, arg_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.e) * _wgslsmith_f_op_vec4_f32(arg_0.e * arg_0.e)))), arg_1, Struct_1(vec3<bool>(false, false, true && all(vec4<bool>(false, false, global3.d.b.x, true))), vec2<bool>(any(!arg_1.a.zy), false), u_input.a, 3534u, _wgslsmith_f_op_vec4_f32(select(global3.b.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0.e, global3.a.e))), !select(vec4<bool>(global3.c.a.x, false, false, true), vec4<bool>(global3.b.a.x, true, global3.d.b.x, false), true)))));
    var var_2 = Struct_3(var_0.a);
    global2 = array<f32, 1>();
    return var_2.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1;
    global2 = array<f32, 1>();
    let var_1 = var_0.d.e.x;
    var var_2 = Struct_3(vec4<i32>(abs(u_input.b), func_5(global3.a, func_2()), i32(-1i) * -u_input.b, u_input.c));
    global1 = array<vec3<i32>, 11>();
    return (1i & var_2.a.x) >> (min(_wgslsmith_sub_u32(~arg_0.d ^ global3.d.d, ~arg_0.d), var_0.d.d) % 32u);
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> vec4<f32> {
    global1 = array<vec3<i32>, 11>();
    var var_0 = Struct_1(select(select(func_2().a, global3.d.a, arg_1.b.a.x), !vec3<bool>(func_2().b.x, global3.d.a.x, !global3.b.a.x), all(vec4<bool>(!arg_1.a.a.x, all(arg_1.e.a), any(global3.d.a), global3.c.a.x))), func_2().a.xy, ~4294967295u, _wgslsmith_sub_u32(1u, u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, -107f, global2[_wgslsmith_index_u32(u_input.d, 1u)])))) + vec4<f32>(arg_1.e.e.x, global2[_wgslsmith_index_u32(arg_1.e.c, 1u)], _wgslsmith_f_op_f32(abs(-1919f)), _wgslsmith_f_op_f32(-global3.a.e.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-318f, arg_1.e.e.x, global3.d.e.x, -616f)) - arg_1.a.e)));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, global3.c.c), vec3<u32>(0u, u_input.d, global3.b.c))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.d, global3.d.c), vec2<u32>(global3.b.c, 20799u), vec2<bool>(arg_1.d.a.x, true)), ~vec2<u32>(var_0.d, arg_1.d.c)), ~31928u, _wgslsmith_mult_u32(38902u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.d, var_0.c), vec2<u32>(var_0.c, arg_1.b.c)))), vec4<u32>(_wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20877u), vec2<u32>(47230u, arg_1.d.c))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(18918u, global3.a.c), 0u), ~firstTrailingBit(0u), u_input.d ^ arg_1.e.d), vec4<u32>(~45085u, global3.d.d, 35944u, ~(0u | var_0.c))), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(~var_0.d, ~18629u, 71802u, _wgslsmith_mod_u32(u_input.a, arg_1.c.c))), ~vec4<u32>(abs(2933u), reverseBits(22594u), 4294967295u, min(187u, 39656u))));
    global1 = array<vec3<i32>, 11>();
    let var_2 = Struct_1(select(global3.b.a, !vec3<bool>(true, true, arg_1.e.b.x), true), select(vec2<bool>(u_input.b >= 1i, global3.e.c >= ~4294967295u), !select(func_2().b, arg_1.a.b, var_0.b), vec2<bool>(false, 0u >= var_0.d)), _wgslsmith_div_u32(44645u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, global3.e.c, 29685u), vec3<u32>(1u, arg_1.b.d, 1u)) ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global3.b.d, global3.c.d), 0u ^ arg_1.d.c, 65642u)), _wgslsmith_dot_vec3_u32(vec3<u32>(max(abs(arg_1.b.c), 1u << (0u % 32u)), var_0.d, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(19817u, var_1, 4294967295u), vec3<u32>(23482u, 0u, 106567u)))), ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(global3.b.d, 37392u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(42399u, u_input.d, 16415u), vec3<u32>(global3.a.d, u_input.d, 1u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(~var_0.d, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) - _wgslsmith_f_op_f32(round(var_0.e.x))), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.e.x))) + _wgslsmith_f_op_vec4_f32(-var_0.e)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + -955f)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-751f * 229f)), _wgslsmith_f_op_f32(-arg_1.e.e.x)) * _wgslsmith_f_op_vec4_f32(min(var_2.e, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.d, 1u)]) - -1645f), arg_1.e.e.x, var_0.e.x, 254f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global3.e.a, select(vec2<bool>(global3.c.b.x, global3.d.b.x), !vec2<bool>(true, global3.b.b.x || false), vec2<bool>(all(!vec4<bool>(false, global3.d.b.x, global3.b.a.x, false)), global3.e.a.x)), global3.e.d, firstTrailingBit(global3.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_mult_i32(~(-43018i), func_1(global3.a, Struct_2(global3.a, global3.d, global3.d, global3.d, Struct_1(global3.c.a, vec2<bool>(false, false), u_input.d, u_input.a, global3.e.e)))), Struct_2(func_2(), func_2(), func_2(), func_2(), func_2())))));
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.e.x, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-759f, 194f))))));
    global1 = array<vec3<i32>, 11>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2160f), 1526f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.ywy, firstTrailingBit(_wgslsmith_mult_u32(firstTrailingBit(var_1.c), 60883u)), u_input.b);
}

