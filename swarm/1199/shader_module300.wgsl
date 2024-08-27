struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

var<private> global1: f32 = -1000f;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global3: vec3<bool>;

var<private> global4: vec2<u32> = vec2<u32>(10507u, 15700u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    global3 = select(vec3<bool>(any(global2.xz), any(global3.xx), false), global0[_wgslsmith_index_u32(0u, 7u)], false);
    var var_0 = Struct_1(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 55205u, 1u), vec3<u32>(1u, 53941u, 25683u)) | vec3<u32>(1u, 922u & global4.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_div_f32(_wgslsmith_div_f32(-617f, arg_0), _wgslsmith_f_op_f32(-arg_0))) > -1021f, _wgslsmith_sub_u32(~_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, u_input.b)), 11695u), _wgslsmith_f_op_f32(trunc(-551f)), vec2<i32>(6813i, (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 35881i), vec2<i32>(-5138i, -2147483647i)) << (firstTrailingBit(1u) % 32u)) ^ -_wgslsmith_mod_i32(-1i, -1i)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d, var_0.d)) + _wgslsmith_f_op_f32(sign(var_0.d)))));
    var var_1 = Struct_2(abs(vec2<u32>(~(0u << (global4.x % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(42620u, global4.x), u_input.a))), 0u, Struct_1(~var_0.a, all(select(select(vec3<bool>(global2.x, false, true), vec3<bool>(var_0.b, global2.x, global2.x), false), !global0[_wgslsmith_index_u32(u_input.b, 7u)], true)), _wgslsmith_sub_u32((var_0.a.x | 49887u) << (_wgslsmith_add_u32(u_input.b, 0u) % 32u), _wgslsmith_clamp_u32(49504u & global4.x, 90269u >> (u_input.b % 32u), u_input.a.x)), _wgslsmith_f_op_f32(235f * 361f), var_0.e), true);
    global3 = select(select(vec3<bool>(true, true, true), select(global0[_wgslsmith_index_u32(var_1.c.c, 7u)], vec3<bool>(global2.x, true, var_0.d <= 302f), global0[_wgslsmith_index_u32(countOneBits(~var_0.c), 7u)]), !all(global2.xzy)), global0[_wgslsmith_index_u32(1u, 7u)], !vec3<bool>(all(select(global2.yw, vec2<bool>(global2.x, true), vec2<bool>(global3.x, global3.x))), global3.x, select(all(vec2<bool>(global2.x, false)), true, !global3.x)));
    return _wgslsmith_dot_vec3_u32(var_1.c.a, ~var_1.c.a) ^ 41636u;
}

fn func_2() -> Struct_3 {
    global4 = abs(vec2<u32>(func_3(-769f), u_input.b) & _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(8966u, 3004u)));
    var var_0 = _wgslsmith_sub_u32(global4.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global4.x, global4.x, 1u), ~vec3<u32>(u_input.b, 1u, 4294967295u)), ~max(firstLeadingBit(vec3<u32>(24109u, u_input.a.x, 0u)), reverseBits(vec3<u32>(global4.x, global4.x, 4294967295u)))));
    var var_1 = _wgslsmith_mod_vec3_u32(~(~select(_wgslsmith_add_vec3_u32(vec3<u32>(56706u, 13605u, 52325u), vec3<u32>(global4.x, u_input.b, 0u)), vec3<u32>(u_input.a.x, 1u, global4.x), false)), vec3<u32>(abs(global4.x), ~global4.x | _wgslsmith_dot_vec4_u32(~vec4<u32>(42846u, 0u, 4294967295u, u_input.b), ~vec4<u32>(global4.x, global4.x, u_input.b, 83699u)), ~0u));
    global3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.x, var_1.x) << ((vec4<u32>(26690u, 1u, 0u, global4.x) & vec4<u32>(42165u, 4294967295u, var_1.x, 7640u)) % vec4<u32>(32u)), reverseBits(~vec4<u32>(global4.x, 27651u, global4.x, var_1.x))), vec4<u32>(47123u, ~global4.x, 4294967295u, u_input.b)), 7u)];
    var var_2 = Struct_2(_wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(1u, global4.x)), u_input.a), u_input.a.x, Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, u_input.a.x), vec3<u32>(6928u, u_input.a.x, var_1.x)), ~vec3<u32>(1u, u_input.a.x, var_1.x)) ^ _wgslsmith_mod_vec3_u32(abs(vec3<u32>(global4.x, 0u, 0u)), ~vec3<u32>(var_1.x, u_input.a.x, var_1.x)), global2.x, _wgslsmith_add_u32(0u, firstLeadingBit(global4.x) << (var_1.x % 32u)), -1700f, -min(~vec2<i32>(1210i, 11200i), vec2<i32>(27719i, -1591i))), true);
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -778f) < _wgslsmith_f_op_f32(max(-129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.d - 758f)))), Struct_2(vec2<u32>(~_wgslsmith_div_u32(0u, 36408u), var_1.x), global4.x, var_2.c, any(select(global3.xx, global2.wy, true)) | false), Struct_2(vec2<u32>(countOneBits(~global4.x), _wgslsmith_add_u32(_wgslsmith_add_u32(global4.x, global4.x), ~1u)), u_input.a.x, var_2.c, !(!global2.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c.d)), _wgslsmith_f_op_f32(abs(291f)));
    var var_1 = vec4<i32>(2147483647i, min(~42485i, _wgslsmith_mod_i32(arg_0.c.c.e.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.c.c.c, u_input.a.x, arg_0.c.a.x), vec4<u32>(69940u, 4294967295u, global4.x, 1u)) % 32u), arg_0.b.c.e.x)), select(~1i ^ _wgslsmith_add_i32(-arg_0.b.c.e.x, -arg_0.c.c.e.x), arg_0.b.c.e.x ^ _wgslsmith_clamp_i32(countOneBits(arg_0.b.c.e.x), arg_0.b.c.e.x, arg_0.c.c.e.x ^ arg_0.c.c.e.x), true), arg_0.b.c.e.x);
    let var_2 = ~((vec4<i32>(firstTrailingBit(var_1.x), max(var_1.x, arg_0.b.c.e.x), ~(-2147483647i), 28785i) & _wgslsmith_div_vec4_i32(min(vec4<i32>(1i, -2147483647i, 2898i, arg_0.b.c.e.x), vec4<i32>(-8633i, 2147483647i, var_1.x, 2147483647i)), ~vec4<i32>(arg_0.c.c.e.x, var_1.x, arg_0.c.c.e.x, var_1.x))) & ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, 22156i), vec3<i32>(var_1.x, -3583i, var_1.x)), var_1.x, 2147483647i, -31229i));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-406f + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-624f + arg_1.x))), _wgslsmith_f_op_f32(abs(arg_0.b.c.d)), _wgslsmith_f_op_f32(round(275f)), 505f) * vec4<f32>(arg_0.b.c.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, -927f), _wgslsmith_f_op_f32(arg_0.b.c.d * arg_0.c.c.d)) + _wgslsmith_f_op_f32(-arg_0.b.c.d)), _wgslsmith_f_op_f32(-var_0.x), arg_1.x));
    let var_4 = arg_0.b.c.a.yx;
    return vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_0.b.c.d));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32) -> vec2<f32> {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 51908u, global4.x), vec3<u32>(4294967295u, global4.x, u_input.a.x)), vec3<u32>(38935u, global4.x, 4294967295u)), ~(~global4.x)), ~_wgslsmith_add_u32(1u, 9981u), firstLeadingBit(abs(4294967295u))), global2.x, abs(u_input.a.x) ^ global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(round(1093f))))), ~vec2<i32>(_wgslsmith_mod_i32(~1i, 1i), 1i));
    var var_1 = func_2().b.c;
    let var_2 = Struct_3(!(!(!any(global2.wz))), Struct_2(firstLeadingBit(reverseBits(vec2<u32>(23989u, 43098u))), 12923u, var_0, any(select(global0[_wgslsmith_index_u32(0u, 7u)], !global2.zwz, vec3<bool>(arg_0.x, var_0.b, true)))), Struct_2(vec2<u32>(var_0.a.x, 19813u), firstLeadingBit(_wgslsmith_mult_u32(15549u, 876u)) ^ (var_0.c & ~var_0.a.x), var_0, !(true | func_2().c.c.b)));
    var_1 = func_2().b.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)) * _wgslsmith_f_op_vec2_f32(-arg_1)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, -1589f) + arg_1)))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * 863f)), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(631f, arg_2))))));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    global4 = vec2<u32>(~0u, 1u);
    let var_0 = 4294967295u != global4.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1219f * 1792f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(312f - 1489f))) - _wgslsmith_f_op_vec2_f32(func_5(!(!global0[_wgslsmith_index_u32(global4.x, 7u)]), _wgslsmith_f_op_vec2_f32(func_4(func_2(), vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(-265f + _wgslsmith_f_op_f32(ceil(-1263f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(502f, var_1.x, 1000f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(2120f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -2059f, 182f))), vec3<bool>(var_0, false, var_1.x == var_1.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(step(1099f, 1164f)), 264f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-1357f, 631f, 209f), vec3<f32>(var_1.x, var_1.x, 1170f))))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_2.x, var_2.x);
    return arg_0.x;
}

fn func_6(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_3.b.c.d + arg_3.c.c.d) == arg_3.c.c.d;
    global3 = global0[_wgslsmith_index_u32(1u, 7u)];
    let var_1 = abs(countOneBits(arg_3.c.a.x) << (arg_2.b % 32u));
    global4 = u_input.a;
    global1 = _wgslsmith_f_op_f32(max(arg_3.b.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(235f + arg_1.c.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1120f * _wgslsmith_f_op_f32(arg_2.c.d * arg_1.d))))));
    return Struct_1(~(~vec3<u32>(_wgslsmith_div_u32(u_input.b, 20657u), global4.x, arg_1.c.c)), true, 13491u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(vec3<bool>(true, arg_2.c.b, arg_2.a.x == 110195u), _wgslsmith_f_op_vec2_f32(func_5(!vec3<bool>(true, arg_1.c.b, arg_3.c.c.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.c.c.d, 767f))), -1159f)), arg_1.c.d)).x), arg_1.a.e);
}

fn func_7(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global4 = arg_0.a.xz << (arg_2.a.xx % vec2<u32>(32u));
    var var_0 = ~(-_wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(2147483647i, arg_2.e.x, arg_2.e.x))) & arg_2.e.x;
    global3 = !(!global0[_wgslsmith_index_u32(arg_2.a.x, 7u)]);
    global1 = _wgslsmith_f_op_f32(max(-2241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_2.d))))));
    let var_1 = countOneBits(~global4.x);
    return Struct_1(vec3<u32>(~max(~57495u, 36713u), arg_1.x, select(~(~arg_1.x), _wgslsmith_add_u32(~arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 34492u, arg_2.c), vec4<u32>(4294967295u, arg_1.x, 1u, var_1))), arg_2.b)), !all(vec2<bool>(global2.x, any(vec2<bool>(true, arg_2.b)))), reverseBits(1u & ~(arg_0.a.x << (global4.x % 32u))), _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.d, _wgslsmith_f_op_f32(exp2(arg_2.d)))) - -1366f), arg_2.b)), vec2<i32>(-31624i, arg_2.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, Struct_2(~select(u_input.a, u_input.a, vec2<bool>(true, true)), global4.x, func_7(func_6(func_1(vec2<i32>(0i, 512i)), Struct_4(Struct_1(vec3<u32>(u_input.b, 1u, global4.x), false, 32085u, -166f, vec2<i32>(-2147483647i, 20448i)), 36033i, Struct_1(vec3<u32>(0u, u_input.b, global4.x), global2.x, 49347u, -1026f, vec2<i32>(-2147483647i, 0i)), -520f), Struct_2(u_input.a, global4.x, Struct_1(vec3<u32>(u_input.a.x, 7047u, 0u), true, global4.x, -670f, vec2<i32>(-4617i, 1i)), true), Struct_3(false, Struct_2(u_input.a, 4294967295u, Struct_1(vec3<u32>(64739u, 43224u, 22267u), global2.x, 14431u, 1201f, vec2<i32>(1i, -48114i)), true), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), 32607u, Struct_1(vec3<u32>(u_input.b, 4294967295u, 0u), true, 4294967295u, -184f, vec2<i32>(-45648i, -14362i)), global3.x))), ~vec2<u32>(u_input.b, 0u), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(68621u, global4.x, 4294967295u), vec3<u32>(u_input.b, global4.x, 4294967295u)), true, global4.x, _wgslsmith_f_op_f32(f32(-1f) * -490f), vec2<i32>(-33187i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(526f)))), !(func_6(-1i, Struct_4(Struct_1(vec3<u32>(u_input.a.x, 41763u, 30694u), global3.x, u_input.a.x, -110f, vec2<i32>(-19509i, 43050i)), -1i, Struct_1(vec3<u32>(0u, global4.x, 0u), true, global4.x, 1000f, vec2<i32>(0i, -2147483647i)), 261f), Struct_2(u_input.a, 25401u, Struct_1(vec3<u32>(19185u, u_input.a.x, 2525u), true, 1u, 1001f, vec2<i32>(2147483647i, 0i)), true), Struct_3(false, Struct_2(u_input.a, u_input.b, Struct_1(vec3<u32>(u_input.b, global4.x, 8435u), true, 0u, 533f, vec2<i32>(1i, 2147483647i)), false), Struct_2(vec2<u32>(0u, 1u), 1u, Struct_1(vec3<u32>(u_input.b, 8417u, 31408u), global2.x, 4294967295u, 1335f, vec2<i32>(1i, 0i)), true))).b || true)), Struct_2(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(u_input.b, global4.x, 4294967295u)), _wgslsmith_add_u32(global4.x, global4.x))), abs(~reverseBits(21133u)), func_6(select(0i, 1i, !global2.x), Struct_4(Struct_1(vec3<u32>(125440u, u_input.b, u_input.b), global2.x, global4.x, -772f, vec2<i32>(5953i, 18799i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), vec3<i32>(-21883i, -1i, -43381i)), Struct_1(vec3<u32>(29624u, 0u, global4.x), false, global4.x, 784f, vec2<i32>(-1i, -2147483647i)), _wgslsmith_f_op_f32(-1031f + -730f)), Struct_2(~vec2<u32>(1u, global4.x), global4.x, Struct_1(vec3<u32>(global4.x, 12680u, 21872u), global3.x, 7552u, -586f, vec2<i32>(0i, 37447i)), func_2().c.d), func_2()), false));
    var var_1 = var_0;
    global0 = array<vec3<bool>, 7>();
    global2 = !select(select(vec4<bool>(func_7(Struct_1(vec3<u32>(u_input.a.x, global4.x, 4294967295u), true, u_input.b, -348f, vec2<i32>(var_0.b.c.e.x, -2147483647i)), var_0.b.a, Struct_1(var_0.b.c.a, global2.x, var_1.c.c.a.x, var_0.b.c.d, vec2<i32>(var_1.c.c.e.x, var_1.c.c.e.x)), 862f).b, var_1.c.c.b, false, true && global2.x), select(vec4<bool>(var_0.b.d, true, false, false), vec4<bool>(false, true, var_1.b.c.b, var_0.a), vec4<bool>(true, true, true, true)), !(!vec4<bool>(false, false, var_0.b.d, true))), select(select(select(vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(global3.x, global2.x, var_0.c.c.b, true), vec4<bool>(false, true, var_1.b.d, global2.x)), vec4<bool>(global3.x, global3.x, false, false), !var_1.c.d), !(!vec4<bool>(global3.x, true, false, global2.x)), true), !select(select(vec4<bool>(global3.x, true, global3.x, global2.x), vec4<bool>(var_0.a, var_1.c.c.b, false, global2.x), var_0.b.d), !vec4<bool>(var_1.b.d, var_0.a, global2.x, true), select(vec4<bool>(true, var_1.b.c.b, var_0.b.c.b, global3.x), vec4<bool>(global3.x, false, global3.x, global2.x), vec4<bool>(true, global3.x, false, var_0.a))));
    let var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.d, 708f, var_1.c.c.d, -2395f), vec4<f32>(-127f, 963f, -1176f, -503f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1081f, var_2.c.d, var_2.c.d, var_0.b.c.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(132f, 1129f, -455f, var_1.c.c.d) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2258f, 816f, 307f, -925f) + vec4<f32>(-174f, 1000f, var_2.c.d, 919f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c.d, -1000f, 425f, 321f) + vec4<f32>(var_1.c.c.d, var_2.c.d, var_0.b.c.d, var_2.c.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.c.d, 1952f, var_1.b.c.d, 104f)))))), 1u);
}

