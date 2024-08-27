struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 32> = array<bool, 32>(true, false, false, false, true, true, true, true, true, false, false, false, false, false, true, true, true, false, true, false, false, false, true, false, false, true, true, false, false, false, false, true);

var<private> global2: vec2<u32> = vec2<u32>(58131u, 4294967295u);

var<private> global3: Struct_2;

var<private> global4: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = ~global3.c.wzy;
    global2 = ~(~_wgslsmith_add_vec2_u32(select(vec2<u32>(global2.x, 0u), ~var_0.zy, select(global3.e.yz, vec2<bool>(false, global4.x), arg_0)), vec2<u32>(global2.x, var_0.x) ^ _wgslsmith_div_vec2_u32(global3.c.yy, global3.c.zx)));
    let var_1 = Struct_2(global3.a, ~_wgslsmith_mod_i32(global3.d, global3.b), reverseBits(global3.c), -global3.d, select(!global4.yzz, global4.xwy, false));
    var var_2 = all(vec4<bool>(!(global4.x | global1[_wgslsmith_index_u32(1423u, 32u)]) & false, -1000f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), !(!any(global3.e.yz)), false));
    let var_3 = vec3<i32>(~var_1.d, 0i, _wgslsmith_clamp_i32(var_1.d, select(-u_input.d, ~(var_1.d >> (u_input.c % 32u)), all(vec3<bool>(global3.e.x, global3.e.x, arg_0.x))), var_1.d));
    return 13500u;
}

fn func_2() -> f32 {
    global4 = !vec4<bool>(true, any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 32u)], global4.x, global1[_wgslsmith_index_u32(32331u, 32u)], global3.e.x), vec4<bool>(global4.x, false, global4.x, true), !global4.x)), any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global3.e.x, global4.x, true)) || !all(global4.wy), !any(select(vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 32u)], global1[_wgslsmith_index_u32(10466u, 32u)], global3.e.x), vec3<bool>(global4.x, true, global4.x), global3.e)));
    global4 = select(!vec4<bool>(countOneBits(u_input.c) < global2.x, global3.e.x, !select(global1[_wgslsmith_index_u32(global2.x, 32u)], global1[_wgslsmith_index_u32(global3.c.x, 32u)], true), !all(vec4<bool>(global3.e.x, global1[_wgslsmith_index_u32(0u, 32u)], global4.x, global1[_wgslsmith_index_u32(global2.x, 32u)]))), vec4<bool>(_wgslsmith_mod_u32(global2.x, func_3(global4.wy)) != _wgslsmith_mod_u32(global3.c.x & 0u, 1u), u_input.d == ~(~2147483647i), all(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], true, true, false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 32u)], global3.e.x, global4.x), vec4<bool>(global1[_wgslsmith_index_u32(0u, 32u)], true, global4.x, global3.e.x), false), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 32u)], global3.e.x))), true), abs(-global3.b & global3.b) == u_input.d);
    let var_0 = Struct_1(1u, ~u_input.d, select(vec3<u32>(1u, 63106u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(5698u, 28798u, global3.c.x))), ~global3.c.wyw, !global3.e), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.a * -530f), _wgslsmith_f_op_f32(max(-2207f, 945f)), _wgslsmith_f_op_f32(-409f - global3.a))))), ~firstTrailingBit(-1i) != 1i);
    var var_1 = false;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1387f), var_0.b, global3.c, global3.d, global4.zzx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = Struct_2(global3.a, ~(-2147483647i), global3.c, -1236i, !vec3<bool>(true, global3.e.x, false));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 - 356f)))), _wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(arg_1, arg_0.x)), -1235f, _wgslsmith_f_op_f32(592f * arg_1))) - vec3<f32>(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -1527f)), -968f)));
    global3 = var_0;
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(u_input.d, var_0.d, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.d, u_input.d, u_input.d)), select(-vec3<i32>(-19627i, -1i, global3.d), vec3<i32>(u_input.d, global3.d, 32424i) ^ vec3<i32>(-877i, var_0.d, var_0.d), var_0.e))), 1580i, -(~_wgslsmith_mod_i32(2147483647i, min(global3.d, var_0.d))), min(u_input.d, 0i));
    global2 = _wgslsmith_sub_vec2_u32(abs(select(reverseBits(var_0.c.yw), select(var_0.c.zz, global3.c.xx, vec2<bool>(true, true)) >> (~vec2<u32>(var_0.c.x, 1u) % vec2<u32>(32u)), global3.e.x)), vec2<u32>(0u, ~(~global3.c.x)));
    return var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global2 = global3.c.zw;
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.d.zx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, -1646f) - vec2<f32>(arg_0.d.x, arg_2.a)) - _wgslsmith_f_op_vec2_f32(-arg_0.d.zz))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(734f, _wgslsmith_div_f32(arg_0.d.x, 677f)))), !select(vec2<bool>(true, false), select(vec2<bool>(arg_0.e, arg_0.e), arg_2.e.zx, global4.x), true))), _wgslsmith_f_op_f32(func_2()), !select(_wgslsmith_dot_vec2_u32(vec2<u32>(82054u, arg_2.c.x), vec2<u32>(arg_2.c.x, 18407u)) != _wgslsmith_dot_vec3_u32(arg_2.c.xxz, vec3<u32>(global2.x, u_input.a, 16117u)), select(arg_1, true, true), all(!vec4<bool>(false, global3.e.x, true, false))));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(abs(~u_input.d), _wgslsmith_clamp_i32(~(-2147483647i), arg_0.b, -1i)) << (arg_0.c.zy % vec2<u32>(32u)), max(abs(-abs(vec2<i32>(491i, 18488i))), vec2<i32>(min(~u_input.d, -arg_0.b), global3.d | _wgslsmith_mod_i32(-13117i, 1i))));
    var var_2 = Struct_1(~(~1u), -arg_0.b, arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(abs(arg_2.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -3244f), true);
    let var_3 = arg_0;
    return Struct_1(global3.c.x, arg_0.b, vec3<u32>(global3.c.x, var_2.c.x, global3.c.x), var_3.d, true);
}

fn func_5(arg_0: Struct_1) -> i32 {
    global2 = global3.c.wz;
    var var_0 = _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(func_2()));
    let var_1 = false;
    global3 = Struct_2(_wgslsmith_f_op_f32(-global3.a), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-11629i, _wgslsmith_sub_i32(0i, -2147483647i), -31833i, func_1(arg_0, true, Struct_2(152f, global3.d, global3.c, -16467i, global4.wzw)).b), max(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_0.b, -27433i, arg_0.b), vec4<i32>(0i, 22403i, 1i, 0i)), vec4<i32>(-24058i, -2147483647i, global3.b, 21510i)))), global3.c, u_input.d, global3.e);
    var var_2 = func_1(func_1(arg_0, global3.a <= 1475f, Struct_2(global3.a, countOneBits(_wgslsmith_mod_i32(global3.d, -37070i)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(30714u, 40530u, 1u, global3.c.x), vec4<u32>(arg_0.c.x, 5144u, 4294967295u, arg_0.c.x)), _wgslsmith_mod_i32(_wgslsmith_add_i32(global3.b, u_input.d), ~u_input.d), select(select(vec3<bool>(true, true, global4.x), global4.yzz, true), select(vec3<bool>(true, arg_0.e, global1[_wgslsmith_index_u32(global3.c.x, 32u)]), global3.e, global3.e.x), any(vec3<bool>(true, var_1, false))))), false, Struct_2(-1000f, _wgslsmith_sub_i32(select(u_input.d, firstTrailingBit(u_input.d), true), -_wgslsmith_dot_vec2_i32(vec2<i32>(36066i, global3.d), vec2<i32>(47834i, 2147483647i))), vec4<u32>(1u, abs(arg_0.a) << ((u_input.a ^ u_input.b) % 32u), ~(~u_input.a), 21440u), arg_0.b, vec3<bool>(false, global3.e.x, all(select(vec3<bool>(false, var_1, true), global4.yww, global4.zzx)))));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (1i | firstTrailingBit(func_5(func_1(Struct_1(105268u, 2147483647i, global3.c.wzy, vec3<f32>(global3.a, global3.a, -226f), global1[_wgslsmith_index_u32(global2.x, 32u)]), true, Struct_2(-364f, -21388i, vec4<u32>(u_input.b, 0u, 0u, global2.x), 0i, global4.xww))))) << (global3.c.x % 32u);
    global2 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(func_1(Struct_1(u_input.a, 1i, vec3<u32>(global2.x, global3.c.x, global3.c.x), vec3<f32>(356f, global3.a, global3.a), global1[_wgslsmith_index_u32(global3.c.x, 32u)]), func_1(Struct_1(u_input.a, u_input.d, global3.c.wzw, vec3<f32>(-435f, global3.a, 1046f), true), global3.e.x, Struct_2(global3.a, u_input.d, vec4<u32>(global3.c.x, global3.c.x, u_input.a, global2.x), global3.b, vec3<bool>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(7823u, 32u)], false))).e, Struct_2(global3.a, -16910i, global3.c, global3.d, vec3<bool>(false, global4.x, global3.e.x))).c.x, ~u_input.c), countOneBits(vec2<u32>(global3.c.x, select(~global2.x, u_input.a, global4.x))), max(vec2<u32>(3843u, 42631u), global3.c.wy) >> (global3.c.zw % vec2<u32>(32u)));
    var var_1 = global2.x >> (abs(u_input.b) % 32u);
    global2 = select(global3.c.wx, max(global3.c.xy, global3.c.zz), global4.x && global4.x);
    var var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(abs(~global3.c.xx), ~select(vec2<u32>(4294967295u, global3.c.x), global3.c.xw, global4.zz)), countOneBits(_wgslsmith_div_vec2_u32(~global3.c.yx, ~global3.c.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

