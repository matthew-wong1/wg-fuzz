struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global3: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_1(vec4<u32>(~(~_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(global3.a, arg_0.a))), 0u, 1u, u_input.e));
    var_0 = Struct_1(vec4<u32>(arg_1.x & _wgslsmith_mod_u32(u_input.d.x, ~global1.a.x), _wgslsmith_clamp_u32(select(~13749u, 0u, all(vec4<bool>(global0.x, false, true, arg_0.d.x))), arg_1.x >> (abs(37986u) % 32u), _wgslsmith_add_u32(~67360u, arg_1.x)), global1.a.x, max(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, 21723u), u_input.c.wz), max(_wgslsmith_mult_u32(global1.a.x, 3922u), 42107u))));
    let var_1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 1u), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.c, _wgslsmith_f_op_vec3_f32(select(global3.c, _wgslsmith_f_op_vec3_f32(trunc(arg_0.c)), global3.d.x)))), vec2<bool>(all(vec4<bool>(global3.d.x, true, !arg_0.d.x, arg_0.c.x != global3.b)), false));
    let var_2 = var_1;
    return vec3<f32>(var_2.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c.x))), _wgslsmith_f_op_f32(-var_2.c.x));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = u_input.e;
    global3 = Struct_2(global1.a.x, -750f, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.c.x, var_1), vec3<u32>(58203u, 12136u, var_1)), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c) * _wgslsmith_f_op_vec3_f32(-global3.c)), vec2<bool>(!arg_2.x, true)), reverseBits(vec3<u32>(8251u & global3.a, global1.a.x, 4294967295u)), _wgslsmith_add_i32(-9055i, 0i))), select(vec2<bool>(false, (-17183i > u_input.a) & !global0.x), !(!global0.zy), vec2<bool>(true, -1203f == _wgslsmith_f_op_f32(-global3.b))));
    let var_2 = Struct_2(firstTrailingBit(~_wgslsmith_sub_u32(1u, min(var_1, 27200u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_0)) - var_0)), global3.c, vec2<bool>(global0.x, true));
    var var_3 = -478f;
    return var_2;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<f32>) -> vec4<bool> {
    global3 = func_2(min(-arg_0, -56696i), u_input.a, vec4<bool>(false, false, !global0.x, global0.x));
    var var_0 = Struct_1(firstLeadingBit(vec4<u32>(min(40518u, 24399u) >> (abs(global3.a) % 32u), 4234u, ~global3.a, 101345u << (_wgslsmith_dot_vec2_u32(global1.a.zw, vec2<u32>(70089u, 8358u)) % 32u))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(115f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x * 1079f), _wgslsmith_f_op_f32(-global3.c.x)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(func_2(arg_1, -1i, vec4<bool>(global0.x, global0.x, false, global3.d.x)).c.x, _wgslsmith_f_op_f32(771f - 1658f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-152f * arg_2.x)))))));
    var var_2 = min(arg_0, countOneBits(~(arg_1 >> (0u % 32u))));
    var var_3 = vec3<bool>(global3.d.x, global3.d.x, any(select(!(!vec4<bool>(global0.x, false, global0.x, false)), vec4<bool>(any(vec4<bool>(global3.d.x, global3.d.x, false, true)), false && global3.d.x, true, true), select(vec4<bool>(false, global3.d.x, true, false), !vec4<bool>(global0.x, false, global3.d.x, false), select(vec4<bool>(false, false, global0.x, global3.d.x), vec4<bool>(global3.d.x, global0.x, false, false), vec4<bool>(global3.d.x, true, true, global0.x))))));
    return vec4<bool>(var_3.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.b))) >= -229f), func_2(arg_0 >> (~(~19631u) % 32u), ~0i, !vec4<bool>(!global0.x, true, false && var_3.x, global3.d.x)).d.x, any(global0.yz));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_2(272i, ~(-9541i), vec4<bool>(arg_2, arg_0.d.x, global0.x, false)).c)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-133f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - arg_1)))));
    var var_1 = arg_0;
    let var_2 = arg_3;
    var var_3 = global1.a.x;
    var var_4 = Struct_1(~abs(countOneBits(vec4<u32>(global1.a.x, u_input.e, 33271u, arg_0.a))));
    return func_2(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b, u_input.a | 48726i), vec2<i32>(max(u_input.a, -879i), ~u_input.b)), ~(~vec2<i32>(u_input.b, 56167i))), u_input.b, !(!var_2));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_1 {
    global1 = Struct_1(abs(global1.a));
    global2 = array<vec3<bool>, 24>();
    global1 = Struct_1(arg_1.a);
    global3 = func_4(arg_0, _wgslsmith_f_op_f32(-arg_2.x), true, !(!(!vec4<bool>(global3.d.x, global0.x, global3.d.x, global3.d.x))));
    return Struct_1(global1.a << (~u_input.d % vec4<u32>(32u)));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1((_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, 4262u, arg_0.a.x, 0u), arg_0.a) >> ((arg_0.a ^ vec4<u32>(u_input.e, 42440u, 4294967295u, global3.a)) % vec4<u32>(32u))) << (reverseBits(~vec4<u32>(u_input.c.x, global1.a.x, 49752u, global3.a)) % vec4<u32>(32u)));
    let var_1 = func_5(Struct_2(48733u, global3.c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, global3.c.x, global3.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, 527f, global3.b)))), global3.d), Struct_1(vec4<u32>(var_0.a.x, global1.a.x, ~_wgslsmith_mult_u32(154u, global3.a), _wgslsmith_div_u32(var_0.a.x >> (39858u % 32u), 76780u))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) * global3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 149f)), _wgslsmith_f_op_f32(767f + global3.c.x), global3.b, 1476f), _wgslsmith_mod_vec3_u32(arg_0.a.zzy >> (~(~vec3<u32>(19843u, var_0.a.x, global3.a)) % vec3<u32>(32u)), global1.a.wxy));
    let var_2 = u_input.a;
    var var_3 = 62529i;
    var var_4 = global1.a.xy;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(func_5(func_4(Struct_2(u_input.d.x, _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(969f, 129f, 329f) + global3.c), global0.zy), global3.b, true, select(!vec4<bool>(false, false, true, global0.x), func_1(u_input.b, 39844i, vec3<f32>(global3.c.x, 2560f, global3.c.x)), !vec4<bool>(false, global3.d.x, global3.d.x, true))), Struct_1(vec4<u32>(~4294967295u, 4294967295u, 47888u, select(global1.a.x, global3.a, true))), vec4<f32>(-660f, _wgslsmith_f_op_f32(floor(global3.c.x)), -130f, -1537f), vec3<u32>(select(~61443u, func_2(u_input.b, -8148i, vec4<bool>(global3.d.x, global3.d.x, true, false)).a, false), reverseBits(global3.a), 1u)));
    let var_0 = any(vec2<bool>(func_1(_wgslsmith_clamp_i32(i32(-1i) * -1i, -10411i, ~(-18788i)), 0i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c), global3.c)).x, func_4(func_4(Struct_2(global3.a, global3.b, vec3<f32>(global3.c.x, global3.c.x, global3.c.x), global3.d), global3.b, true, !vec4<bool>(global0.x, global3.d.x, global3.d.x, false)), global3.b, true, vec4<bool>(!global3.d.x, false, true, true)).d.x));
    let var_1 = vec3<bool>(true, func_4(Struct_2(global3.a, 2798f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.c, vec3<f32>(-1496f, -1576f, -608f))) - global3.c), vec2<bool>(1u >= global3.a, any(vec3<bool>(global3.d.x, global3.d.x, var_0)))), global3.b, !all(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 83204u), 24u)]), !select(func_1(u_input.a, u_input.b, global3.c), vec4<bool>(global3.d.x, true, global0.x, true), true)).d.x, func_1(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(-6165i, u_input.a, u_input.b))), i32(-1i) * -39599i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, global3.c.x, -1381f)) * _wgslsmith_f_op_vec3_f32(-global3.c))).x || false);
    let var_2 = vec2<bool>(true, !all(vec4<bool>(true, true, true, true)));
    global0 = !global2[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global3.c.yx)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, global3.c, firstTrailingBit(~u_input.c.x), _wgslsmith_div_f32(func_4(Struct_2(4294967295u, global3.c.x, vec3<f32>(var_3.x, var_3.x, 1309f), var_1.zz), _wgslsmith_f_op_f32(227f * _wgslsmith_f_op_f32(-global3.b)), !func_1(1i, u_input.a, vec3<f32>(1076f, -1161f, global3.b)).x, select(vec4<bool>(false, var_1.x, false, false), !vec4<bool>(true, global0.x, var_2.x, false), func_1(u_input.a, 1158i, vec3<f32>(global3.b, var_3.x, global3.b)))).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(37306u, 1729f, global3.c, global0.zz), vec3<u32>(global1.a.x, u_input.c.x, 4294967295u), -43822i)).x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, global3.c.x, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)))));
}

