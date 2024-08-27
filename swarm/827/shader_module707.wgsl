struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 27>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(-3742i, 28731i, i32(-2147483648)), vec3<bool>(true, true, false), 942f, -53623i), Struct_1(vec3<i32>(-23270i, 52398i, -40207i), vec3<bool>(false, false, true), 908f, 1i), Struct_1(vec3<i32>(23723i, 0i, 1i), vec3<bool>(true, true, false), -300f, i32(-2147483648)), Struct_1(vec3<i32>(-1i, -47707i, 2147483647i), vec3<bool>(false, true, false), -669f, 0i), Struct_1(vec3<i32>(-18039i, 21521i, 22060i), vec3<bool>(false, true, true), 1000f, 2147483647i), Struct_1(vec3<i32>(1i, -70618i, 10676i), vec3<bool>(false, false, false), 379f, 0i), Struct_1(vec3<i32>(1i, 34995i, -1i), vec3<bool>(false, false, true), 691f, -65510i), Struct_1(vec3<i32>(i32(-2147483648), 38679i, 32703i), vec3<bool>(false, true, false), 213f, i32(-2147483648)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec3<bool>) -> u32 {
    var var_0 = vec2<bool>(true, arg_2.x);
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zy));
    var var_3 = -arg_1.a.c.zwx;
    var var_4 = vec2<u32>(reverseBits(select(~_wgslsmith_add_u32(var_1, 1u), var_1, true)), 13332u);
    return var_4.x;
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-475f, -1494f) + 1378f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f * -875f)));
    var var_1 = _wgslsmith_div_vec3_i32(global0.a.d.a, global0.a.d.a);
    global2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(840f, var_0.x, var_0.x, -381f))) - vec4<f32>(-849f, 1078f, -1000f, -376f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1300f, global0.a.b, -344f, -247f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-400f, global0.a.c.c), global0.a.b, -1137f, _wgslsmith_f_op_f32(trunc(global0.a.e.c))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.d.c, var_0.x, -1258f, -952f) * vec4<f32>(global0.a.e.c, -258f, 904f, 116f)))))), Struct_5(Struct_4(global0.a, false, _wgslsmith_clamp_vec4_i32(global0.c, global0.c, global0.c) & vec4<i32>(var_1.x, u_input.b.x, u_input.b.x, -40561i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(734f)))), !vec3<bool>(false, !(!global0.b), true));
    global3 = array<Struct_1, 8>();
    var var_2 = ~vec2<u32>(1u, 1u);
    return Struct_2(global0.a.e.a, -1783f, Struct_1(-vec3<i32>(26875i, 36306i, 2147483647i) ^ _wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.x, global0.a.c.d, var_1.x), vec3<i32>(global0.a.e.a.x, var_1.x, var_1.x) << (vec3<u32>(var_2.x, 1u, var_2.x) % vec3<u32>(32u))), vec3<bool>((global0.a.c.c < -370f) == any(vec2<bool>(global0.b, false)), true, global0.a.d.b.x), 1f, 2147483647i), Struct_1(global0.a.e.a, vec3<bool>(global0.a.c.b.x, global0.a.d.b.x, true), global0.a.e.c, -_wgslsmith_add_i32(-u_input.b.x, global0.c.x & global0.a.d.d)), global1[_wgslsmith_index_u32(4294967295u, 27u)]);
}

fn func_3(arg_0: Struct_2) -> Struct_4 {
    global0 = Struct_4(Struct_2(-global0.c.wwz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.e.c, -890f, true)))), Struct_1(arg_0.c.a, vec3<bool>(true, arg_0.c.c > -1047f, true), global0.a.e.c, abs(countOneBits(arg_0.a.x))), global1[_wgslsmith_index_u32(~67978u, 27u)], global3[_wgslsmith_index_u32(~4387u, 8u)]), reverseBits(u_input.a) < 11292i, (vec4<i32>(~arg_0.e.a.x, 1i, -29470i, _wgslsmith_clamp_i32(global0.c.x, 602i, global0.a.a.x)) & (vec4<i32>(-1i) * -vec4<i32>(arg_0.c.d, -1i, -1i, 3425i))) ^ global0.c);
    let var_0 = false;
    global0 = Struct_4(global0.a, false, vec4<i32>(~firstTrailingBit(arg_0.a.x), _wgslsmith_add_i32(~global0.a.d.a.x, i32(-1i) * -2147483647i), ~global0.a.d.d, _wgslsmith_add_i32(15989i, 0i | arg_0.e.d)) & max(-vec4<i32>(2147483647i, -88382i, 0i, arg_0.c.d), vec4<i32>(~arg_0.a.x, firstLeadingBit(global0.a.c.a.x), -u_input.a, 1i)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.e.c - _wgslsmith_f_op_f32(-arg_0.e.c))))));
    let var_2 = -47550i;
    return Struct_4(func_1(), true, ~(vec4<i32>(-1i) * -vec4<i32>(var_2, var_2, arg_0.c.d, 0i)));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_4) -> Struct_4 {
    var var_0 = vec4<i32>(global0.c.x, global0.a.e.d >> ((arg_0.x & ~arg_0.x) % 32u), 38973i, countOneBits(-28179i));
    var var_1 = u_input.b.x;
    var var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, ~38238u, ~arg_0.x), firstLeadingBit(arg_0.wxx));
    global0 = func_3(Struct_2(min(-_wgslsmith_sub_vec3_i32(var_0.zxz, global0.a.a), countOneBits(global0.a.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.d.c), _wgslsmith_f_op_f32(-889f * global0.a.e.c)))), global3[_wgslsmith_index_u32(~(~arg_0.x), 8u)], Struct_1(vec3<i32>(-1i) * -vec3<i32>(arg_2.a.c.a.x, arg_2.c.x, u_input.a), vec3<bool>(any(vec3<bool>(false, true, arg_2.b)), !arg_2.b, arg_2.a.c.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.a.b)))), 1i), func_3(arg_2.a).a.c));
    var var_3 = var_0.x;
    return func_3(func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.c;
    var var_1 = Struct_5(func_4(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(60864u, 1u, 13136u, 1u)), select(!global0.a.c.b.x, !(global0.b && true), select(all(vec3<bool>(true, false, true)), var_0.c <= 1073f, true)), func_3(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-644f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.c, global0.a.c.c)), _wgslsmith_f_op_f32(1117f + global0.a.d.c))))));
    global2 = firstLeadingBit(countOneBits(16699u << (0u % 32u)));
    global2 = ~1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.a.c.c, var_0.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b)) + -618f))));
    var_1 = Struct_5(func_3(func_1()), var_2.x);
    var var_3 = Struct_1(~(~(~vec3<i32>(-2147483647i, 18827i, global0.a.c.a.x))), func_4(vec4<u32>(1u, 1u, 1u, 1u), (-1i | var_1.a.c.x) != var_0.d, Struct_4(Struct_2(var_0.a, _wgslsmith_div_f32(175f, var_1.a.a.c.c), Struct_1(var_0.a, var_0.b, var_2.x, var_0.a.x), func_4(vec4<u32>(1u, 0u, 68205u, 4294967295u), true, Struct_4(var_1.a.a, true, vec4<i32>(u_input.a, u_input.a, var_1.a.a.d.d, var_0.a.x))).a.e, global1[_wgslsmith_index_u32(4294967295u, 27u)]), !any(global0.a.e.b.zy), ~abs(var_1.a.c))).a.e.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-900f + -326f))), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(~48779i, ~vec4<u32>(1u, 1u, 1u, 1u), var_2, select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), true), var_0.d);
}

