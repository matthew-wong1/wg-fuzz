struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<bool>(true, false, false, false), 2147483647i, vec2<u32>(0u, 0u));

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -1i), Struct_2(vec4<f32>(-1048f, 753f, -1113f, 1000f), true, -704f, vec3<bool>(true, false, false), vec3<bool>(true, true, true))), Struct_3(vec4<i32>(-15349i, -56908i, -23246i, -6910i), Struct_2(vec4<f32>(-141f, 1679f, -292f, 743f), false, -270f, vec3<bool>(true, false, true), vec3<bool>(false, true, true))));

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-238f, -513f, -664f, 1000f), false, 1000f, vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(0u, 17557u, vec3<u32>(38099u, 17769u, 8092u), vec3<f32>(-1623f, -1000f, 1424f)), Struct_1(0u, 74512u, vec3<u32>(0u, 9939u, 39055u), vec3<f32>(-520f, 967f, 2398f)), Struct_1(4294967295u, 0u, vec3<u32>(51803u, 4294967295u, 1u), vec3<f32>(202f, -1005f, 696f)), Struct_1(0u, 22313u, vec3<u32>(108843u, 1u, 0u), vec3<f32>(-637f, -1341f, -1165f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~(~4294967295u), _wgslsmith_mod_u32(~firstLeadingBit(u_input.a), 17250u) & _wgslsmith_div_u32(max(~global0.c.x, 0u ^ global0.c.x), firstTrailingBit(~global0.c.x)), ~(~countOneBits(vec3<u32>(u_input.a, global0.c.x, global0.c.x))) ^ firstLeadingBit(vec3<u32>(min(u_input.a, global0.c.x), 1u, ~1u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -477f), global2.a.x, 533f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-370f, 693f)), vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x), -358f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.yy) - _wgslsmith_f_op_vec2_f32(-var_0.d.xy))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.x, global2.c), _wgslsmith_f_op_f32(f32(-1f) * -1163f)), _wgslsmith_f_op_f32(global2.a.x - 363f)))));
    var var_2 = false;
    var var_3 = -u_input.b.x ^ u_input.b.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(var_1));
    return ~(~1u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: bool) -> Struct_3 {
    global1 = array<Struct_3, 2>();
    let var_0 = -956f;
    var var_1 = _wgslsmith_mod_i32(-countOneBits(-2147483647i), u_input.b.x);
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(40413u, func_3()), 2u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    global0 = Struct_4(!(!vec4<bool>(any(global0.a.yx), true, arg_1.e.x, true)), global0.b, abs(global0.c));
    let var_0 = (1u < u_input.a) || global0.a.x;
    global1 = array<Struct_3, 2>();
    let var_1 = func_2(55261u, all(!global2.d), vec4<bool>(!any(global2.d), false, global2.e.x, true), all(global0.a));
    global2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(720f, var_1.b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -356f))), _wgslsmith_f_op_f32(sign(-1773f)))), -1044f, _wgslsmith_f_op_f32(floor(1f)), 432f), !((select(0i, -2147483647i, arg_1.e.x) << (u_input.a % 32u)) < abs(1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1964f * global2.c)), global2.d, !vec3<bool>(false, !(!var_0), true));
    return any(arg_1.d);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_2 {
    global2 = arg_1.b;
    let var_0 = select(arg_1.b.e.zz, func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, 1u, abs(4294967295u)), ~(~vec3<u32>(4294967295u, 18078u, u_input.a))), false, select(!select(global0.a, vec4<bool>(true, arg_0, global2.b, false), vec4<bool>(arg_1.b.d.x, arg_0, arg_1.b.d.x, global0.a.x)), global0.a, select(arg_1.b.e.x, false, arg_1.b.b) && true), all(!(!vec3<bool>(arg_1.b.b, true, global2.b)))).b.d.yx, arg_0);
    global0 = Struct_4(!select(global0.a, !global0.a, all(vec2<bool>(true, true))), 1i, global0.c << (select(global0.c, min(global0.c, global0.c), global2.b) % vec2<u32>(32u)));
    global3 = array<Struct_1, 4>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(max(1u, 14293u | _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(21973u, 4294967295u, global0.c.x), _wgslsmith_add_u32(u_input.a, 43322u), 63326u ^ u_input.a)), _wgslsmith_mod_u32(select(abs(firstLeadingBit(83120u)), 74899u, true), global0.c.x)), 4u)];
    return Struct_2(global2.a, _wgslsmith_f_op_f32(-var_1.d.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(765f, global2.a.x), 254f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-659f, global2.a.x)))), _wgslsmith_div_f32(248f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.c, _wgslsmith_f_op_f32(813f + 554f)) + _wgslsmith_f_op_f32(func_2(19250u, true, vec4<bool>(arg_1.b.b, false, arg_0, true), var_0.x).b.c - _wgslsmith_div_f32(1574f, 240f)))), !vec3<bool>(arg_0, true, !(arg_0 && global0.a.x)), vec3<bool>(!(!global2.e.x), (~arg_2.x < ~global0.b) & any(select(global0.a.yx, vec2<bool>(false, true), global2.d.zy)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(u_input.b.x, 7174i) ^ _wgslsmith_div_i32(22984i, global0.b);
    let var_1 = Struct_3(firstLeadingBit(-vec4<i32>(u_input.b.x, u_input.b.x, 0i, -global0.b)), func_4(!(func_1(vec4<i32>(u_input.b.x, global0.b, 2147483647i, 2147483647i), Struct_2(vec4<f32>(-789f, global2.a.x, global2.a.x, 293f), true, 331f, global0.a.yxx, vec3<bool>(false, global0.a.x, global2.e.x))) & all(global2.d.xz)), global1[_wgslsmith_index_u32(u_input.a >> ((u_input.a ^ global0.c.x) % 32u), 2u)], -(~vec4<i32>(61487i, -1i, var_0, var_0))));
    let var_2 = Struct_4(select(!select(select(vec4<bool>(global0.a.x, global0.a.x, var_1.b.d.x, global2.b), global0.a, vec4<bool>(false, global0.a.x, true, var_1.b.b)), global0.a, global0.a.x | false), vec4<bool>(global0.a.x, global0.a.x & global2.e.x, select(true, true, 102199u <= u_input.a), any(var_1.b.e)), global0.a.x), var_1.a.x, ~_wgslsmith_div_vec2_u32(abs(max(global0.c, global0.c)), ~vec2<u32>(1u, 57386u)));
    var var_3 = true | var_1.b.e.x;
    var var_4 = _wgslsmith_div_vec3_f32(global2.a.wyz, _wgslsmith_f_op_vec3_f32(exp2(global2.a.wxz)));
    let var_5 = func_2(global0.c.x, true, var_2.a, false).b;
    let var_6 = abs(~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(~(~abs(75403u)), var_2.a.x, global0.a, any(global0.a.xz)).a.x, ~_wgslsmith_mult_i32(max(-1i, -2147483647i), 1i), 23855u, 1u);
}

