struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<i32>, 26>;

var<private> global2: array<f32, 9>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_2(~72170i, Struct_1(select(global3.a, vec4<bool>(u_input.a <= u_input.a, false, !arg_0, true), vec4<bool>(all(global3.a.wx), true, global3.b, arg_0)), all(!(!vec4<bool>(false, global3.a.x, false, global3.b)))));
    global1 = array<vec4<i32>, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 9u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 9u)], 1016f)) + _wgslsmith_f_op_f32(f32(-1f) * -1224f)) + -1513f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(52854u, 9u)]) - 1536f), 715f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 9u)])), 2025f)));
    global1 = array<vec4<i32>, 26>();
    global0 = any(vec4<bool>(arg_0, true, !arg_0, var_0.a > (-38935i | var_0.a))) & arg_0;
    return var_0.b;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global0 = !global3.b;
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(1398i, -1i) >> (vec2<u32>(arg_0.x, u_input.a) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(-vec2<i32>(-53223i, 1i), ~vec2<i32>(1i, 1i))) << (_wgslsmith_sub_u32(~(~4261u), ~u_input.a) % 32u), -(_wgslsmith_add_i32(17987i, abs(1i)) >> (0u % 32u)));
    global3 = func_2(true);
    var var_1 = _wgslsmith_f_op_f32(ceil(826f));
    var var_2 = Struct_2(-40902i, Struct_1(!select(!vec4<bool>(false, global3.a.x, false, global3.b), global3.a, !global3.a), any(global3.a)));
    return 31207u;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global3 = Struct_1(vec4<bool>(global3.a.x, global3.b, !select(!global3.b, !global3.b, all(global3.a)), true), select(global3.a.x, false, true));
    global3 = func_2(true);
    let var_0 = u_input.a;
    global0 = true;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1030f, _wgslsmith_f_op_f32(f32(-1f) * -869f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(0u, 9u)]))))))));
    return Struct_1(global3.a, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_0, arg_0) & max(arg_0.x, arg_0.x), func_3(vec2<u32>(arg_0.x, arg_0.x)) << (10601u % 32u), arg_0.x), 9u)] < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1278f)), 113f)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_2 {
    global3 = func_2(true & (_wgslsmith_sub_i32(min(arg_1.a.x, arg_1.a.x), arg_1.b.a) >= 0i));
    var var_0 = vec3<i32>(arg_1.a.x, ~(_wgslsmith_sub_i32(2147483647i, countOneBits(1i)) ^ arg_1.a.x), _wgslsmith_mult_i32(18588i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_1.b.a), vec2<i32>(0i, arg_1.b.a)), vec2<i32>(22142i, arg_1.b.a) << (arg_3 % vec2<u32>(32u))) >> (abs(1u) % 32u)));
    global1 = array<vec4<i32>, 26>();
    global2 = array<f32, 9>();
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.x) | var_0.xz, ~(-arg_1.a.zx)), arg_1.b.a), ~abs(~vec2<i32>(-35118i, arg_1.a.x)));
    return Struct_2(-2147483647i, arg_0.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = -_wgslsmith_sub_i32(0i, 0i) ^ ~arg_1.x;
    let var_1 = Struct_2(~arg_0.a, func_1(firstLeadingBit(max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(25740u, 1u)), vec2<u32>(4294967295u, u_input.a)))));
    let var_2 = all(vec3<bool>(!arg_0.b.a.x, arg_0.b.b, false));
    var var_3 = Struct_4(Struct_1(vec4<bool>(true, any(vec4<bool>(var_2, false, var_2, true)), !all(vec3<bool>(false, false, var_1.b.a.x)), 0i == arg_1.x), !any(select(global3.a.ywz, vec3<bool>(global3.b, true, arg_0.b.a.x), var_1.b.b))));
    let var_4 = vec3<bool>(_wgslsmith_div_u32(~u_input.a, 0u) < 4294967295u, !any(select(global3.a.yxx, !global3.a.wxz, true)), func_4(Struct_4(func_2(true == global3.a.x)), Struct_3(vec4<i32>(arg_0.a, arg_0.a, _wgslsmith_add_i32(var_1.a, arg_0.a), _wgslsmith_clamp_i32(-6561i, arg_1.x, arg_1.x)), func_4(Struct_4(Struct_1(vec4<bool>(true, var_1.b.a.x, var_3.a.b, true), arg_0.b.b)), Struct_3(global1[_wgslsmith_index_u32(1u, 26u)], Struct_2(arg_1.x, var_3.a), arg_0.b, Struct_1(vec4<bool>(false, var_1.b.b, var_2, false), var_1.b.b), arg_0.b.b), global3.a, vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), func_4(Struct_4(var_3.a), Struct_3(global1[_wgslsmith_index_u32(u_input.a, 26u)], arg_0, arg_0.b, var_3.a, var_2), var_3.a.a, vec2<u32>(31865u, u_input.a)).b, var_1.b, !var_3.a.b), vec4<bool>(!all(vec2<bool>(false, var_3.a.b)), false, true, any(var_1.b.a.wy)), vec2<u32>(_wgslsmith_clamp_u32(51094u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 29363u), vec4<u32>(u_input.a, 33490u, 92414u, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a))), 0u)).b.a.x);
    return func_4(Struct_4(func_4(Struct_4(Struct_1(vec4<bool>(false, false, true, var_4.x), var_4.x)), Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_1.a, 38269i, var_1.a), vec4<i32>(var_1.a, 44600i, 2147483647i, 0i)), func_4(Struct_4(Struct_1(vec4<bool>(true, arg_0.b.a.x, var_2, false), true)), Struct_3(global1[_wgslsmith_index_u32(59558u, 26u)], Struct_2(arg_0.a, Struct_1(vec4<bool>(global3.a.x, false, false, true), true)), arg_0.b, arg_0.b, var_4.x), arg_0.b.a, vec2<u32>(u_input.a, u_input.a)), arg_0.b, func_2(false), true), vec4<bool>(true, func_4(Struct_4(var_1.b), Struct_3(vec4<i32>(arg_0.a, 1i, arg_1.x, 50256i), Struct_2(2147483647i, Struct_1(vec4<bool>(false, var_4.x, false, global3.b), arg_0.b.a.x)), Struct_1(var_1.b.a, arg_0.b.a.x), Struct_1(vec4<bool>(true, false, true, true), false), var_3.a.b), var_3.a.a, vec2<u32>(1u, 4475u)).b.a.x, !global3.b, true), select(~vec2<u32>(u_input.a, 47839u), ~vec2<u32>(4294967295u, 4294967295u), arg_0.b.a.x)).b), Struct_3(~firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 26u)]), Struct_2(-2147483647i, var_1.b), Struct_1(!func_4(Struct_4(Struct_1(vec4<bool>(global3.b, global3.b, true, global3.a.x), true)), Struct_3(vec4<i32>(arg_1.x, 34047i, 22824i, 2483i), Struct_2(-1i, Struct_1(var_1.b.a, false)), Struct_1(vec4<bool>(false, false, var_3.a.a.x, var_2), true), Struct_1(global3.a, true), global3.a.x), vec4<bool>(var_1.b.a.x, false, var_4.x, false), vec2<u32>(u_input.a, u_input.a)).b.a, all(!var_3.a.a.wx)), func_1(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), func_1(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 47288u), max(vec2<u32>(u_input.a, 27717u), vec2<u32>(0u, 536u)))).b), !select(!(!global3.a), func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(65075u, 0u), vec2<u32>(1u, u_input.a))).a, true), vec2<u32>(~_wgslsmith_clamp_u32(26560u, 4294967295u, u_input.a), _wgslsmith_add_u32(4294967295u, u_input.a >> (u_input.a % 32u))) << (select(~(~vec2<u32>(1u, u_input.a)), ~_wgslsmith_div_vec2_u32(vec2<u32>(28207u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), !select(var_4.yy, vec2<bool>(var_4.x, var_4.x), vec2<bool>(var_3.a.b, false))) % vec2<u32>(32u)));
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_4(Struct_1(!global3.a, false));
    let var_1 = 1u;
    global3 = Struct_1(func_1(firstLeadingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(5619u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 2795u), vec2<u32>(46932u, 4294967295u))))).a, !select(true, true, all(arg_0.b.a.ww)));
    let var_2 = _wgslsmith_dot_vec4_u32(min(~_wgslsmith_sub_vec4_u32(vec4<u32>(80792u, 52903u, u_input.a, 0u) << (vec4<u32>(u_input.a, var_1, 4294967295u, 3647u) % vec4<u32>(32u)), select(vec4<u32>(42784u, 69643u, var_1, 1u), vec4<u32>(var_1, 0u, 1u, 12723u), vec4<bool>(true, true, global3.b, global3.a.x))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 140012u, 4294967295u, var_1), vec4<u32>(8022u, u_input.a, var_1, 13137u)), vec4<u32>(u_input.a, 4294967295u, 17865u, 0u))), vec4<u32>(~4294967295u, u_input.a, var_1, min(max(min(4294967295u, var_1), var_1), ~u_input.a)));
    let var_3 = Struct_3(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-12816i, -1i, arg_0.a, arg_1)) & firstLeadingBit(vec4<i32>(arg_0.a, arg_0.a, arg_1, -1i)), vec4<i32>(arg_1, arg_0.a, 30458i, -2895i) ^ select(vec4<i32>(-2147483647i, -30366i, arg_1, -2147483647i), vec4<i32>(21806i, arg_1, arg_1, 1i), false), -(global1[_wgslsmith_index_u32(8456u, 26u)] | vec4<i32>(1i, 9801i, arg_0.a, arg_0.a))) | global1[_wgslsmith_index_u32(var_2 << (~var_2 % 32u), 26u)], arg_0, func_5(Struct_2(reverseBits(-arg_1), arg_0.b), -vec2<i32>(i32(-1i) * -18350i, arg_1), -597f).b, Struct_1(vec4<bool>(select(all(var_0.a.a.xww), true, 2147483647i != arg_1), global3.b, all(var_0.a.a), !(!global3.a.x)), all(arg_0.b.a.wzy)), !all(arg_0.b.a));
    return Struct_2(select((abs(41336i) << (_wgslsmith_mod_u32(var_2, 4294967295u) % 32u)) & arg_0.a, 0i, var_0.a.b), func_2(any(!var_3.c.a.wz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.xww;
    let var_1 = Struct_1(!vec4<bool>(global3.b, all(vec2<bool>(global3.a.x, var_0.x)) && !global3.b, !all(global3.a), all(vec2<bool>(var_0.x, true))), true);
    let var_2 = func_6(func_5(func_4(Struct_4(Struct_1(vec4<bool>(global3.b, var_0.x, false, true), var_0.x)), Struct_3(vec4<i32>(-37332i, 41077i, -2147483647i, 1i), Struct_2(-25519i, Struct_1(vec4<bool>(var_0.x, true, global3.b, false), global3.a.x)), var_1, func_1(vec2<u32>(9947u, 10014u)), var_1.a.x), vec4<bool>(false, false, any(vec2<bool>(false, global3.b)), true), vec2<u32>(4294967295u, ~u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -1i)) << (select(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 31994u), false), vec2<u32>(18152u, u_input.a), select(global3.a.xw, vec2<bool>(var_1.a.x, var_0.x), true)) % vec2<u32>(32u)), 1000f), -func_4(Struct_4(Struct_1(vec4<bool>(global3.b, global3.b, var_1.b, false), var_1.a.x)), Struct_3(select(global1[_wgslsmith_index_u32(u_input.a, 26u)], vec4<i32>(-2147483647i, 20379i, 27105i, 2147483647i), global3.b), func_5(Struct_2(-9445i, Struct_1(vec4<bool>(var_0.x, false, false, true), global3.b)), vec2<i32>(0i, -1i), 979f), func_5(Struct_2(-2147483647i, Struct_1(var_1.a, true)), vec2<i32>(-58828i, -16215i), global2[_wgslsmith_index_u32(u_input.a, 9u)]).b, var_1, var_1.b), vec4<bool>(any(vec2<bool>(false, false)), !var_0.x, true, true), ~vec2<u32>(13292u, 13593u) << (min(vec2<u32>(3231u, 10820u), vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))).a);
    var var_3 = func_2(!global3.b).b;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a, 9u)])), -454f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_f_op_f32(max(-553f, global2[_wgslsmith_index_u32(abs(countOneBits(u_input.a)), 9u)]))) - vec3<f32>(global2[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 9u)]) - _wgslsmith_f_op_f32(min(755f, -201f))) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a), 9u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1083u, 9u)])), _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(10542u, 9u)]), _wgslsmith_f_op_f32(238f - -1175f)))));
    var var_5 = ~vec2<i32>(-65622i, 42475i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~vec2<i32>(var_2.a, var_5.x), -vec2<i32>(var_5.x, var_2.a), vec2<bool>(global3.a.x, false)) | vec2<i32>(firstTrailingBit(var_5.x), var_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(17113u, 9u)], var_4.x, -869f, -1000f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, 426f, 101f, -1316f), vec4<f32>(-542f, 355f, -1000f, global2[_wgslsmith_index_u32(4294967295u, 9u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(309f, global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)]))), func_2(var_2.b.a.x).a)))));
}

