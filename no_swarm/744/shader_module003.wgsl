struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -249f;

var<private> global1: array<bool, 4> = array<bool, 4>(false, false, true, false);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(0u, vec3<i32>(-36i, 35769i, -17159i), 28800i), Struct_1(17079u, vec3<i32>(240i, -1106i, -1i), 13471i), Struct_1(4294967295u, vec3<i32>(50621i, -86517i, i32(-2147483648)), -40425i));

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_3, 23>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = !(!(!vec2<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 4u)], false)));
    global4 = array<Struct_3, 23>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-697f + -895f), 734f, -567f) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(367f)) + _wgslsmith_f_op_f32(max(665f, -458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f * -710f) - _wgslsmith_f_op_f32(floor(1492f))), _wgslsmith_f_op_f32(f32(-1f) * -801f))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(arg_3 + arg_3)))), arg_3, arg_3), vec2<i32>(~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(arg_2, arg_2, arg_2))), -22374i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(680f * _wgslsmith_div_f32(arg_3, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-491f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + 370f)))), Struct_1(_wgslsmith_dot_vec3_u32(~arg_0, u_input.a), _wgslsmith_clamp_vec3_i32(~firstLeadingBit(vec3<i32>(arg_2, arg_2, 2147483647i)), abs(-vec3<i32>(arg_2, 39180i, -54158i)), ~vec3<i32>(-2147483647i, 12801i, -2147483647i)), 1i | arg_2));
    global0 = _wgslsmith_f_op_f32(-var_0.a.x);
    global3 = !vec3<bool>(var_0.c.x > _wgslsmith_f_op_f32(var_0.c.x + var_0.a.x), !all(vec3<bool>(global3.x, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], false)), all(!(!vec4<bool>(true, true, true, global3.x))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.d.c, 2147483647i), vec3<i32>(var_0.b.x, arg_2, 1i)))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))))) * _wgslsmith_f_op_f32(-var_0.a.x));
    global3 = !vec3<bool>(var_0.a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1022f, -1000f))), _wgslsmith_clamp_u32(0u, u_input.a.x, var_0.d.a) > _wgslsmith_mod_u32(arg_0.x, u_input.a.x), any(vec2<bool>(any(vec4<bool>(global3.x, true, global3.x, global3.x)), 317f >= var_0.c.x)));
    return !global3.x;
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> vec3<bool> {
    global1 = array<bool, 4>();
    global3 = vec3<bool>(global1[_wgslsmith_index_u32(70609u, 4u)], !all(select(!vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.b.a.a, 4u)], true, true), all(vec3<bool>(global3.x, false, false)))), !all(!(!vec3<bool>(false, global3.x, false))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(func_2(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-12172i, arg_1.b.a.b.x, 27199i), firstLeadingBit(vec3<i32>(-2871i, 2147483647i, arg_1.c.a.c)))))), ~max(vec2<i32>(i32(-1i) * -1i, 24914i), -arg_1.c.a.b.xz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.b, _wgslsmith_f_op_f32(select(arg_1.c.b, arg_1.c.b, any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(1646f - arg_1.b.b))), Struct_1(~19111u, -arg_1.c.a.b, 2147483647i));
    let var_1 = (abs(abs(u_input.a.xz)) ^ firstTrailingBit(u_input.a.xy)) & u_input.a.zy;
    let var_2 = vec4<bool>(any(vec2<bool>(func_3(vec3<u32>(33027u, 0u, 13612u), ~arg_0, arg_1.d.b.x, _wgslsmith_f_op_f32(-471f - var_0.a.x)), true && global1[_wgslsmith_index_u32(u_input.a.x & 4905u, 4u)])), true, global3.x, true);
    return vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))) != -1504f, !select(!(!global1[_wgslsmith_index_u32(arg_1.d.a, 4u)]), global3.x, !func_3(vec3<u32>(0u, 256u, 0u), var_1.x, -2147483647i, 489f)), (false | !var_2.x) & true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !select(!func_1(0u, Struct_4(Struct_1(23381u, vec3<i32>(-1i, -1i, -29524i), -2147483647i), Struct_2(global2[_wgslsmith_index_u32(17916u, 3u)], 2051f), Struct_2(global2[_wgslsmith_index_u32(1u, 3u)], 494f), Struct_1(74827u, vec3<i32>(2147483647i, 2147483647i, 0i), 27850i))), vec3<bool>(false, 1000f < _wgslsmith_f_op_f32(select(410f, -534f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), !(!global3.x)), vec3<bool>(global1[_wgslsmith_index_u32(abs(u_input.a.x), 4u)] && global3.x, false, any(vec3<bool>(false, true, global3.x))));
    global3 = vec3<bool>(true, global1[_wgslsmith_index_u32(5860u, 4u)] | all(func_1(~1u, Struct_4(Struct_1(u_input.a.x, vec3<i32>(-2147483647i, -1i, 1i), -2147483647i), Struct_2(global2[_wgslsmith_index_u32(61287u, 3u)], 168f), Struct_2(Struct_1(u_input.a.x, vec3<i32>(-49542i, -1i, 800i), -1i), 2596f), Struct_1(u_input.a.x, vec3<i32>(-18638i, -1778i, 38935i), 1i)))), true);
    let var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(1i, 1i, 1i))).x, 423f));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, 748f)) + _wgslsmith_f_op_f32(ceil(var_0)))));
    global4 = array<Struct_3, 23>();
    let var_2 = global4[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 23u)];
    let var_3 = var_2.b.x >> (_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.a, var_2.d.a, var_2.d.a, 37925u) | ~vec4<u32>(38021u, 1u, u_input.a.x, u_input.a.x), ~vec4<u32>(77337u, u_input.a.x, 0u, u_input.a.x)), 1u) % 32u);
    let var_4 = !select(!(!(!vec3<bool>(true, global3.x, global3.x))), vec3<bool>(all(vec4<bool>(false, false, global3.x, global3.x)), false, true), !(!any(vec4<bool>(global3.x, global1[_wgslsmith_index_u32(57514u, 4u)], global1[_wgslsmith_index_u32(var_2.d.a, 4u)], global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_clamp_u32(max(u_input.a.x, u_input.a.x), 0u, ~17533u), ~(~3369u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~(u_input.a >> (u_input.a % vec3<u32>(32u)))));
}

