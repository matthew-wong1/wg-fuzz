struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: i32 = -2866i;

var<private> global2: Struct_4 = Struct_4(4294967295u, 1u, Struct_1(vec4<i32>(2147483647i, 71142i, 35283i, 23794i), true), vec2<u32>(89111u, 22421u), vec3<i32>(49812i, 2147483647i, i32(-2147483648)));

var<private> global3: array<vec3<i32>, 9>;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> bool {
    let var_0 = 0i;
    let var_1 = vec4<bool>(true, any(!global4.yzz), global4.x, !global0.x);
    let var_2 = var_1.xzz;
    var var_3 = _wgslsmith_mult_i32(var_0, 2147483647i >> ((_wgslsmith_clamp_u32(~global2.d.x, u_input.b.x, _wgslsmith_div_u32(global2.a, global2.a)) & ~reverseBits(global2.a)) % 32u));
    var var_4 = _wgslsmith_sub_i32(26304i, -11013i) ^ -(~(~(-u_input.a)));
    return any(select(vec4<bool>(~u_input.a <= _wgslsmith_dot_vec2_i32(global2.c.a.zy, vec2<i32>(u_input.a, var_0)), false, any(global4.xxz), global4.x), vec4<bool>(-1008f < _wgslsmith_div_f32(arg_1, arg_0), true, global2.c.b, any(vec3<bool>(global0.x, global2.c.b, global2.c.b))), global0.x));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = ~global2.b;
    global0 = select(vec4<bool>(true, any(vec2<bool>(true, true)) | true, any(!global0.wzz) && all(!global4.yz), true), select(!vec4<bool>(arg_0, true, true | arg_0, global2.c.b), vec4<bool>(arg_0 && global2.c.b, any(global0.zx), !arg_0, global0.x || !global0.x), !func_3(_wgslsmith_f_op_f32(-1746f - -1372f), _wgslsmith_f_op_f32(max(1226f, 1026f)))), arg_0);
    let var_1 = 1663f;
    let var_2 = ~(-(~_wgslsmith_mod_i32(u_input.a, min(global2.c.a.x, -14739i))));
    var var_3 = -vec3<i32>(-global2.e.x, var_2, ~(-(-2694i >> (var_0 % 32u))));
    return Struct_2(global2.c, !(!(!global4.wz)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: u32) -> vec4<bool> {
    global2 = arg_2;
    let var_0 = ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-12635i, global2.e.x), arg_0.d)), vec2<i32>(-9181i, _wgslsmith_sub_i32(global2.e.x, u_input.a))));
    global0 = !vec4<bool>(arg_0.a.b, true, false, any(select(global4.xw, arg_0.c.b, vec2<bool>(arg_1.x, global2.c.b))));
    return vec4<bool>(261f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-649f * arg_0.b))))), global2.c.b, !any(!vec4<bool>(arg_2.c.b, global2.c.b, arg_1.x, false)), !((2091f == arg_0.b) && any(global0.wwz)));
}

fn func_1(arg_0: bool) -> bool {
    global0 = select(func_4(Struct_3(Struct_1(vec4<i32>(2147483647i, 2147483647i, u_input.a, 49384i), true), _wgslsmith_div_f32(-472f, _wgslsmith_f_op_f32(1089f + 350f)), func_2(false), -global2.e.zx), vec2<bool>(!(!global4.x), 13450i != max(global2.c.a.x, global2.c.a.x)), Struct_4(global2.a, u_input.b.x, Struct_1(-vec4<i32>(u_input.a, global2.e.x, global2.c.a.x, 2147483647i), any(vec4<bool>(true, true, true, true))), _wgslsmith_div_vec2_u32(vec2<u32>(21529u, u_input.b.x) | vec2<u32>(global2.d.x, 27515u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b.x), global2.d)), vec3<i32>(-1i, 1i, global2.e.x)), ~(~4294967295u | global2.d.x)), vec4<bool>(global0.x, false, arg_0, !arg_0), func_3(713f, _wgslsmith_f_op_f32(422f - _wgslsmith_f_op_f32(337f + _wgslsmith_f_op_f32(min(1000f, -1467f))))));
    return !func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1097f), -443f), _wgslsmith_f_op_f32(-1318f - -644f)) && any(!select(select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(false, true, global0.x), global2.c.b), func_4(Struct_3(global2.c, 281f, Struct_2(global2.c, global4.wx), global2.c.a.xy), global4.xy, Struct_4(global2.a, global2.a, Struct_1(vec4<i32>(u_input.a, global2.e.x, global2.c.a.x, -2147483647i), global4.x), u_input.b.xx, global2.c.a.zwy), 4294967295u).zwz, !global0.zwx));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec4<bool>(-2147483647i >= (-1i << (select(global2.d.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, 1u, u_input.b.x)), true) % 32u)), global4.x, global0.x, func_1(global0.x));
    var var_0 = global3[_wgslsmith_index_u32(~(global2.d.x ^ u_input.b.x), 9u)];
    global4 = vec4<bool>(true, (_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(global2.a, 9u)], vec3<i32>(2147483647i, u_input.a, -2147483647i)) ^ var_0.x) >= global2.c.a.x, func_4(Struct_3(Struct_1(select(global2.c.a, vec4<i32>(global2.e.x, -1i, 1i, -1i), vec4<bool>(true, true, global2.c.b, global0.x)), all(global0.wy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f * -1000f) - _wgslsmith_div_f32(272f, 1262f)), func_2(true), global2.c.a.wz), !vec2<bool>(true, false && global0.x), Struct_4(1u, u_input.b.x, func_2(!global2.c.b).a, abs(abs(vec2<u32>(4294967295u, 1u))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x << (26048u % 32u), u_input.b.x), 9u)]), _wgslsmith_clamp_u32(reverseBits(global2.b), ~(u_input.b.x << (3305u % 32u)), ~1u >> (~4294967295u % 32u))).x, 4294967295u < _wgslsmith_mod_u32(global2.b, 48977u));
    var var_1 = (global0.x && select(false, global2.c.b, global2.c.b)) != false;
    let var_2 = vec3<u32>(u_input.b.x, global2.d.x, ~select(u_input.b.x, u_input.b.x, !(!global4.x)));
    let var_3 = select(vec3<bool>(!any(select(global4.zzy, global0.wwx, global0.x)), !any(!vec3<bool>(global0.x, false, true)), global2.c.b), select(vec3<bool>(func_4(Struct_3(Struct_1(vec4<i32>(7879i, 20615i, u_input.a, var_0.x), global2.c.b), -464f, Struct_2(global2.c, global0.zw), vec2<i32>(1i, var_0.x)), func_4(Struct_3(global2.c, 271f, Struct_2(global2.c, vec2<bool>(false, global2.c.b)), vec2<i32>(14381i, u_input.a)), vec2<bool>(global2.c.b, false), Struct_4(var_2.x, var_2.x, global2.c, u_input.b.zz, global3[_wgslsmith_index_u32(var_2.x, 9u)]), 4294967295u).zy, Struct_4(27641u, u_input.b.x, global2.c, vec2<u32>(var_2.x, u_input.b.x), vec3<i32>(-40241i, u_input.a, u_input.a)), var_2.x).x, u_input.b.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), var_2), !(!global4.x)), vec3<bool>(global0.x, func_3(-1006f, _wgslsmith_f_op_f32(max(-1029f, -256f))), func_1(global4.x)), vec3<bool>(any(!vec4<bool>(global4.x, global0.x, global2.c.b, global2.c.b)), true, !all(global0.yyw))), !(!(!vec3<bool>(global4.x, global2.c.b, global0.x))));
    var_0 = -countOneBits(select(vec3<i32>(u_input.a, var_0.x, -37325i) >> (vec3<u32>(u_input.b.x, 31576u, 0u) % vec3<u32>(32u)), global2.e, func_4(Struct_3(global2.c, 505f, Struct_2(global2.c, vec2<bool>(global2.c.b, true)), vec2<i32>(50741i, u_input.a)), var_3.yz, Struct_4(98294u, u_input.b.x, global2.c, vec2<u32>(u_input.b.x, 4294967295u), global2.e), global2.a).x)) & vec3<i32>(1i, abs(2147483647i), abs(0i));
    var var_4 = !func_4(Struct_3(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1799f, 1596f))), Struct_2(func_2(global2.c.b).a, select(global0.xz, global4.ww, vec2<bool>(true, true))), global2.e.zx), select(vec2<bool>(true, false), !(!vec2<bool>(false, global0.x)), global4.zy), Struct_4(abs(select(global2.d.x, 43398u, true)), global2.d.x, func_2(func_2(false).a.b).a, ~vec2<u32>(var_2.x, 7456u), func_2(any(vec3<bool>(false, true, true))).a.a.yzy), u_input.b.x).wwz;
    global1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(53981i, abs(select(vec4<u32>(global2.d.x, 1u, u_input.b.x, u_input.b.x) >> (select(vec4<u32>(u_input.b.x, var_2.x, 1u, var_2.x), vec4<u32>(0u, 80345u, 31334u, global2.a), var_3.x) % vec4<u32>(32u)), ~abs(vec4<u32>(8473u, var_2.x, 70369u, 2903u)), func_4(Struct_3(Struct_1(global2.c.a, true), 303f, Struct_2(global2.c, global4.xw), vec2<i32>(-90958i, 16483i)), func_2(true).b, Struct_4(0u, global2.a, global2.c, global2.d, global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), ~global2.d.x))), ~u_input.a, _wgslsmith_sub_i32(1i, min(-27551i, _wgslsmith_dot_vec3_i32(abs(global3[_wgslsmith_index_u32(global2.d.x, 9u)]), countOneBits(global2.c.a.xyx)))));
}

