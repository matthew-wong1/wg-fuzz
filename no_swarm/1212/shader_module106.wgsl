struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 0i), 2147483647i), Struct_1(vec2<bool>(true, true), vec2<i32>(1i, i32(-2147483648)), 0i), Struct_1(vec2<bool>(false, true), vec2<i32>(0i, -35721i), 35429i), Struct_1(vec2<bool>(true, true), vec2<i32>(14893i, 2147483647i), -3348i), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, 12817i), i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 40921i), 0i), Struct_1(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -1i), -7955i), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, 2147483647i), 0i), Struct_1(vec2<bool>(true, true), vec2<i32>(-8481i, 0i), 2147483647i), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 0i), 31922i), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, 17894i), i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -61929i), 46710i), Struct_1(vec2<bool>(true, true), vec2<i32>(-9242i, 2147483647i), -1i), Struct_1(vec2<bool>(true, true), vec2<i32>(2147483647i, 0i), i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec2<i32>(1i, -66170i), i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec2<i32>(-25934i, i32(-2147483648)), -27772i), Struct_1(vec2<bool>(true, false), vec2<i32>(-8031i, -19622i), i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec2<i32>(-22086i, 2147483647i), 23432i), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, -68871i), 11431i), Struct_1(vec2<bool>(false, true), vec2<i32>(-1i, i32(-2147483648)), 1i), Struct_1(vec2<bool>(false, true), vec2<i32>(-1i, 51103i), 14558i), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -44206i), 0i), Struct_1(vec2<bool>(false, false), vec2<i32>(-1i, i32(-2147483648)), -41379i), Struct_1(vec2<bool>(true, false), vec2<i32>(-69647i, -31075i), 1i), Struct_1(vec2<bool>(true, false), vec2<i32>(-6783i, -12509i), 41762i));

var<private> global2: array<vec4<bool>, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = !select(!select(global0.a, !vec2<bool>(false, global0.a.x), true), vec2<bool>(!(true & global0.a.x), global0.a.x), !select(!global0.a, vec2<bool>(false, global0.a.x), vec2<bool>(false, true)));
    global2 = array<vec4<bool>, 17>();
    global0 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    var_0 = !vec2<bool>(all(global0.a), !(!any(vec2<bool>(true, global0.a.x))));
    var var_1 = 1u;
    return _wgslsmith_mod_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(70252u, 67901u, 4294967295u)) ^ (min(52880u, 108055u) >> (firstTrailingBit(4294967295u) % 32u)), ~(~84193u)), 38569u);
}

fn func_2(arg_0: i32) -> vec4<i32> {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(func_3(), 25u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1563f), -1201f, 1f) + vec3<f32>(1f, 1f, 1f))));
    global2 = array<vec4<bool>, 17>();
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(var_1.xz));
    return -vec4<i32>(i32(-1i) * -2147483647i, firstTrailingBit(2147483647i), var_2.b.x, reverseBits(-1i));
}

fn func_1() -> f32 {
    var var_0 = Struct_4(!(!vec3<bool>(true, false, !global0.a.x)), select(_wgslsmith_mod_vec4_i32(func_2(global0.c) & (vec4<i32>(global0.b.x, u_input.a, -53694i, 0i) >> (vec4<u32>(50122u, 293u, 4294967295u, 4294967295u) % vec4<u32>(32u))), -(~vec4<i32>(global0.b.x, global0.b.x, global0.b.x, 92972i))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(~vec4<i32>(10559i, -61148i, u_input.a, -1i)), abs(vec4<i32>(2147483647i, 0i, global0.b.x, global0.b.x)), ~(vec4<i32>(1i, global0.b.x, u_input.a, global0.c) | vec4<i32>(2147483647i, 0i, -116i, global0.c))), select(!global2[_wgslsmith_index_u32(abs(0u), 17u)], vec4<bool>(true, true, !global0.a.x, true), !global2[_wgslsmith_index_u32(73665u >> (0u % 32u), 17u)])), !(!select(select(vec3<bool>(true, global0.a.x, false), vec3<bool>(global0.a.x, false, global0.a.x), global0.a.x), !vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.a.x)), u_input.a, Struct_2(Struct_1(vec2<bool>(!global0.a.x, true), -abs(global0.b), u_input.a), global2[_wgslsmith_index_u32(4294967295u, 17u)], Struct_1(global0.a, select(_wgslsmith_add_vec2_i32(global0.b, vec2<i32>(global0.c, 19199i)), -global0.b, !global0.a.x), ~(i32(-1i) * -1i)), vec4<f32>(1f, 1f, 1f, 1f), !(!global0.a.x)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f * var_0.e.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.e.d.x)))), true)), var_0.e.d.x, any(global0.a)));
    var_0 = Struct_4(vec3<bool>(false, all(vec2<bool>(!var_0.e.b.x, true)), any(!(!global2[_wgslsmith_index_u32(43293u, 17u)]))), var_0.b, vec3<bool>(all(!select(var_0.c, var_0.c, false)), true, var_0.e.a.a.x), 2147483647i, var_0.e);
    let var_2 = select(var_0.e.b, select(select(!(!vec4<bool>(var_0.c.x, global0.a.x, true, global0.a.x)), vec4<bool>(var_0.a.x, all(global2[_wgslsmith_index_u32(50485u, 17u)]), var_0.e.e, false), all(!vec3<bool>(var_0.c.x, true, true))), vec4<bool>(!(-430f >= var_1), any(select(var_0.c, vec3<bool>(var_0.c.x, false, var_0.c.x), false)), global0.a.x, !any(global2[_wgslsmith_index_u32(54856u, 17u)])), select(select(select(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, var_0.c.x, true, true), vec4<bool>(var_0.c.x, global0.a.x, true, var_0.e.a.a.x)), !var_0.e.b, global0.a.x), select(vec4<bool>(var_0.c.x, false, false, global0.a.x), var_0.e.b, var_0.e.b), !vec4<bool>(true, global0.a.x, var_0.c.x, true))), all(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(76137u, 4294967295u, 27140u, 0u)) & vec4<u32>(0u, 1u, 58100u, 66366u), vec4<u32>(1u, 1u, 1u, 1u)), 17u)]));
    let var_3 = vec3<i32>(-17751i, ~max(28325i ^ ~u_input.a, _wgslsmith_sub_i32(global0.c, var_0.d)), func_2(~var_0.e.a.c).x);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 500u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1140f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-188f - 1055f)) * _wgslsmith_f_op_f32(floor(-432f)))) + _wgslsmith_f_op_f32(func_1()));
    global2 = array<vec4<bool>, 17>();
    global2 = array<vec4<bool>, 17>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -2190f), -993f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(-1539f + var_1)), 1f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 424f, var_1, var_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 287f, -383f, 1308f)))))));
    let var_3 = true;
    let var_4 = vec2<u32>(~_wgslsmith_mult_u32(var_0 | var_0, func_3()), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_2.x, -1279f, false)), var_1, all(vec4<bool>(var_3, true, true, var_3)))), _wgslsmith_f_op_f32(step(1686f, 393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f)), var_1, 1006f));
}

