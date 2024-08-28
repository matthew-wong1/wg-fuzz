struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(1u, 0u, 25698u, 31080u), vec4<u32>(4294967295u, 24951u, 1u, 10173u), vec4<u32>(59556u, 18054u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(12727u, 0u, 21643u, 1u), vec4<u32>(0u, 0u, 51021u, 20430u), vec4<u32>(20731u, 1u, 1u, 14927u), vec4<u32>(0u, 26464u, 111884u, 0u), vec4<u32>(7940u, 23372u, 7378u, 0u), vec4<u32>(4294967295u, 8570u, 0u, 1u));

var<private> global1: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(16860u, 49830u, 4294967295u), vec3<u32>(949u, 4294967295u, 1u), vec3<u32>(1u, 20572u, 38563u), vec3<u32>(32819u, 0u, 4294967295u), vec3<u32>(65635u, 0u, 11251u), vec3<u32>(4294967295u, 61050u, 4415u), vec3<u32>(4294967295u, 48132u, 48559u), vec3<u32>(4294967295u, 11427u, 1u), vec3<u32>(90441u, 65997u, 0u));

var<private> global2: Struct_4;

var<private> global3: bool = true;

var<private> global4: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(26584i, 0i), vec2<i32>(1i, 38368i), vec2<i32>(-14995i, -58665i), vec2<i32>(1i, 1i), vec2<i32>(-41404i, -24516i), vec2<i32>(-10997i, 0i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = ~(~(~min(~vec2<u32>(4294967295u, arg_2.a.c.x), vec2<u32>(arg_2.d.c.x, 18274u))));
    global3 = true;
    global3 = true;
    var var_1 = global2.a.b.yzx;
    let var_2 = any(!(!vec2<bool>(!arg_1.a.x, true)));
    return _wgslsmith_div_u32(var_0.x, ~(~abs(arg_0.a.c.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = ~(~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, 8376i, u_input.a.x, 2147483647i), vec4<i32>(1i, -1i, 2147483647i, -19765i)) >> (vec4<u32>(1u, _wgslsmith_mod_u32(arg_0, 3149u), func_3(Struct_4(global2.a, vec2<f32>(-400f, -1470f)), Struct_1(vec3<bool>(global2.a.a.x, global2.a.a.x, false), global2.a.b, arg_1.a), Struct_2(Struct_1(vec3<bool>(global2.a.a.x, global2.a.a.x, false), vec4<f32>(1070f, global2.a.b.x, global2.b.x, global2.a.b.x), vec2<u32>(1u, 61166u)), 4294967295u, Struct_1(global2.a.a, vec4<f32>(1632f, global2.a.b.x, -1000f, global2.b.x), vec2<u32>(arg_1.a.x, global2.a.c.x)), global2.a), firstLeadingBit(arg_1.a.x)), 0u) % vec4<u32>(32u)));
    let var_1 = 56867u;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(floor(global2.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f)));
    var var_3 = true;
    var var_4 = !(!(_wgslsmith_dot_vec4_i32(var_0, var_0) < u_input.a.x));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(global2.a, ~select(~1u, 67256u, false), global2.a, Struct_1(global2.a.a, _wgslsmith_f_op_vec4_f32(global2.a.b * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(643f, 1376f, 443f, arg_0))), global2.a.b)), countOneBits(vec2<u32>(~global2.a.c.x, 0u))));
    global1 = array<vec3<u32>, 9>();
    global4 = array<vec2<i32>, 6>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1701f * arg_0) - _wgslsmith_f_op_f32(var_0.c.b.x + 425f)), var_0.c.b.x))))));
    let var_2 = Struct_5(~countOneBits(max(u_input.a.x, 60133i)));
    return Struct_4(global2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1253f, arg_0)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = global2.a.c.x;
    global1 = array<vec3<u32>, 9>();
    let var_1 = arg_0.yx;
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(~u_input.b), 10u)];
    global2 = func_4(-175f, Struct_3(~(~(~vec2<u32>(var_2.x, u_input.b)))), !select(vec4<bool>(global2.a.b.x >= 424f, false, true || global2.a.a.x, !global2.a.a.x), !(!vec4<bool>(global2.a.a.x, false, global2.a.a.x, false)), !(!vec4<bool>(global2.a.a.x, global2.a.a.x, true, global2.a.a.x))), func_2(global2.a.c.x, Struct_3(var_2.yy)));
    return Struct_2(Struct_1(vec3<bool>(any(vec2<bool>(global2.a.a.x, global2.a.a.x)), global2.a.a.x, any(!global2.a.a.xz)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1221f, -111f, _wgslsmith_f_op_f32(trunc(global2.b.x)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), vec2<u32>(4294967295u, 1u)), ~_wgslsmith_div_u32(4294967295u, countOneBits(~60103u)), func_4(-2014f, Struct_3(vec2<u32>(var_2.x, 1u)), vec4<bool>(false, any(!vec4<bool>(false, global2.a.a.x, true, global2.a.a.x)), false, true & !global2.a.a.x), func_2(countOneBits(~var_2.x), func_2(~4294967295u, func_2(28546u, Struct_3(vec2<u32>(90822u, u_input.c)))))).a, func_4(_wgslsmith_f_op_f32(-var_1.x), func_2(var_2.x, Struct_3(vec2<u32>(var_2.x, global2.a.c.x))), vec4<bool>(!(!global2.a.a.x), !global2.a.a.x, all(!vec4<bool>(global2.a.a.x, global2.a.a.x, false, true)), all(!vec2<bool>(false, global2.a.a.x))), func_2(u_input.b, Struct_3(func_2(u_input.c, Struct_3(vec2<u32>(var_2.x, 17337u))).a))).a);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_5) -> f32 {
    return global2.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global2.a.b.x) <= _wgslsmith_f_op_f32(func_5(global2.a.a.x, func_1(vec3<f32>(-1161f, _wgslsmith_f_op_f32(global2.b.x * -726f), global2.b.x)), select(vec3<bool>(!global2.a.a.x, global2.a.a.x, true), global2.a.a, !func_1(vec3<f32>(global2.a.b.x, global2.a.b.x, global2.a.b.x)).d.a.x), Struct_5(u_input.a.x)));
    global1 = array<vec3<u32>, 9>();
    var var_1 = -2320f;
    let var_2 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -361f), Struct_3(select(vec2<u32>(u_input.c, 1u), abs(vec2<u32>(0u, 1u)), vec2<bool>(global2.a.a.x, global2.a.a.x)) & countOneBits(vec2<u32>(u_input.b, 4294967295u))), select(select(select(vec4<bool>(false, global2.a.a.x, global2.a.a.x, false), vec4<bool>(global2.a.a.x, false, global2.a.a.x, global2.a.a.x), select(vec4<bool>(global2.a.a.x, global2.a.a.x, true, false), vec4<bool>(false, false, true, true), true)), !select(vec4<bool>(global2.a.a.x, true, global2.a.a.x, global2.a.a.x), vec4<bool>(global2.a.a.x, false, false, global2.a.a.x), vec4<bool>(global2.a.a.x, global2.a.a.x, false, global2.a.a.x)), false), !vec4<bool>(any(vec2<bool>(global2.a.a.x, true)), true, true, true), select(vec4<bool>(false, false & global2.a.a.x, false, global2.a.a.x), !select(vec4<bool>(global2.a.a.x, global2.a.a.x, false, global2.a.a.x), vec4<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x, global2.a.a.x), false), vec4<bool>(true, true, true, global2.a.a.x))), func_2(19723u, Struct_3(func_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-693f, -1354f, global2.b.x)))).c.c))).a.a.zx;
    var var_3 = !select(vec2<bool>(false, all(!global2.a.a)), var_2, select(var_2.x, global2.a.a.x, select(true, any(vec2<bool>(var_2.x, var_2.x)), false)));
    var var_4 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(495f * -768f), _wgslsmith_f_op_f32(global2.a.b.x + -1200f), global2.a.b.x))) * global2.a.b.zyz));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c), var_4.d.b.xw, 0u, vec4<f32>(_wgslsmith_f_op_f32(trunc(global2.b.x)), _wgslsmith_f_op_f32(var_4.a.b.x * global2.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.c.b.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(414f - -1952f)))))), _wgslsmith_div_vec3_i32(select(max(vec3<i32>(u_input.a.x, 1i, 1763i), vec3<i32>(u_input.a.x, 13347i, -2147483647i)) ^ select(vec3<i32>(u_input.a.x, 33767i, -1688i), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<bool>(false, false, var_2.x)), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, all(vec3<bool>(true, false, true)), true == global2.a.a.x)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a.x, -26608i, u_input.a.x), firstTrailingBit(vec3<i32>(u_input.a.x, -6128i, 37771i))) >> (vec3<u32>(~var_4.d.c.x, select(0u, 6858u, var_3.x), ~34345u) % vec3<u32>(32u))));
}

