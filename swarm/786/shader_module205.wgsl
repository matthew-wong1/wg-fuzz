struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global2: array<f32, 3>;

var<private> global3: i32 = 33325i;

var<private> global4: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global2 = array<f32, 3>();
    var var_0 = select(!vec3<bool>(all(global1[_wgslsmith_index_u32(13454u, 18u)]), any(global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), global0.a.d), select(vec3<bool>(true, true, global0.a.d), vec3<bool>(global0.a.d, false, false), select(_wgslsmith_mod_u32(global0.a.e.x, 73949u), max(4294967295u, global0.a.e.x), !global4.a.a.d) != ~u_input.d), !(!(!vec3<bool>(global4.a.a.d, global4.a.a.d, global0.a.d))));
    let var_1 = _wgslsmith_f_op_f32(314f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    var var_2 = abs(vec4<u32>(1u, ~(~(0u & global0.a.e.x)), 4294967295u, ~(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 33219u, u_input.d, 0u), u_input.b) % 32u))));
    global0 = Struct_2(Struct_1(1i, global0.a.b, global4.a.b.x, global4.a.a.d, u_input.b.yxw), firstTrailingBit(vec4<i32>(global0.b.x, ~_wgslsmith_clamp_i32(-1i, 0i, global4.a.a.a), u_input.c.x, -2147483647i)));
    return -_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-7920i, 1i), -2147483647i), -_wgslsmith_clamp_vec2_i32(u_input.c, global0.b.wz, global4.a.b.zy));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    global2 = array<f32, 3>();
    var var_0 = Struct_1(abs(-min(global0.a.c, i32(-1i) * -1i)), func_3(_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_sub_i32(global4.a.b.x, firstLeadingBit(abs(global4.a.a.a))) << (0u % 32u), false, ~(~vec3<u32>(41495u, u_input.b.x, _wgslsmith_sub_u32(38858u, global4.a.a.e.x))));
    let var_1 = vec4<bool>(true & global0.a.d, true & var_0.d, global0.b.x > _wgslsmith_add_i32(global0.a.c, 0i), !any(!select(global1[_wgslsmith_index_u32(var_0.e.x, 18u)], global1[_wgslsmith_index_u32(28351u, 18u)], vec3<bool>(true, true, false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, -658f, 1000f, -328f))))))))));
    var var_3 = global0.a.d;
    return global4.a;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec3<f32> {
    var var_0 = any(!select(vec4<bool>(!global4.a.a.d, true, -15890i >= global0.a.b.x, select(global0.a.d, true, global0.a.d)), vec4<bool>(any(vec2<bool>(global0.a.d, arg_1.b.d)), !arg_2.x, arg_1.b.d, true), select(!vec4<bool>(global4.a.a.d, true, true, false), !vec4<bool>(arg_2.x, false, false, global0.a.d), select(vec4<bool>(false, true, true, false), vec4<bool>(true, global0.a.d, global4.a.a.d, false), vec4<bool>(true, arg_1.c.a.d, global0.a.d, true)))));
    let var_1 = func_2(!arg_2.yz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, arg_0, global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(89698u, 3u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global2[_wgslsmith_index_u32(1u, 3u)], arg_0, arg_0))))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0), global2[_wgslsmith_index_u32(~(~4294967295u), 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(21992u, 3u)] - arg_0) * _wgslsmith_f_op_f32(1142f - arg_0)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~30307u, firstTrailingBit(112868u)) >> (abs(~global4.a.a.e.x) % 32u), 3u)]));
    var var_2 = vec2<i32>(i32(-1i) * -66674i, -2147483647i);
    var var_3 = Struct_1(-abs(-1i), (u_input.c ^ arg_1.a.b) >> (countOneBits(firstTrailingBit(global4.a.a.e.yz & vec2<u32>(11787u, global4.a.a.e.x))) % vec2<u32>(32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(~(~var_1.b.x), var_2.x, min(var_1.b.x, var_1.b.x >> (42164u % 32u))), global0.b.xzz), true, _wgslsmith_div_vec3_u32(select(vec3<u32>(~global4.a.a.e.x, u_input.d, u_input.d), ~max(global4.a.a.e, arg_1.a.e), var_1.a.d), vec3<u32>(arg_1.c.a.e.x | 0u, global4.a.a.e.x, ~func_2(vec2<bool>(var_1.a.d, global0.a.d), vec4<f32>(arg_0, arg_0, -1001f, arg_0), -535f).a.e.x)));
    let var_4 = vec3<bool>(false, true, func_2(!vec2<bool>(arg_2.x, var_2.x == 268i), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1430f)), 833f, global2[_wgslsmith_index_u32(~(global0.a.e.x >> (arg_1.a.e.x % 32u)), 3u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(509f))), 1363f)).a.d);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.a.a.e.x, 3u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~var_1.a.e.x << (_wgslsmith_dot_vec2_u32(var_3.e.yx, vec2<u32>(var_3.e.x, 0u)) % 32u), 3u)])) - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))))), arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = select(vec4<bool>(!func_2(select(vec2<bool>(false, global4.a.a.d), vec2<bool>(false, true), global0.a.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 3u)], -233f, -927f, global2[_wgslsmith_index_u32(4294967295u, 3u)])), 1576f).a.d, all(select(select(vec4<bool>(global4.a.a.d, global0.a.d, arg_1, arg_3.a.d), vec4<bool>(false, global4.a.a.d, global4.a.a.d, arg_3.a.d), global0.a.d), vec4<bool>(false, arg_3.a.d, false, global4.a.a.d), any(vec4<bool>(arg_3.a.d, global4.a.a.d, false, false)))), !select(arg_1, true, true), !select(global0.a.d, any(global1[_wgslsmith_index_u32(global0.a.e.x, 18u)]), global4.a.a.d)), !(!select(vec4<bool>(global4.a.a.d, arg_1, false, arg_1), select(vec4<bool>(global4.a.a.d, false, global0.a.d, arg_3.a.d), vec4<bool>(true, global0.a.d, arg_3.a.d, true), arg_3.a.d), arg_3.a.d)), !select(select(select(vec4<bool>(false, false, arg_1, true), vec4<bool>(global4.a.a.d, true, global0.a.d, arg_3.a.d), vec4<bool>(false, arg_1, arg_1, global4.a.a.d)), select(vec4<bool>(false, global4.a.a.d, false, arg_1), vec4<bool>(true, false, true, false), arg_1), select(vec4<bool>(global0.a.d, global0.a.d, global0.a.d, false), vec4<bool>(true, global4.a.a.d, true, false), arg_1)), vec4<bool>(true, arg_3.a.d, true, true), any(global1[_wgslsmith_index_u32(u_input.b.x, 18u)]) && true));
    var var_1 = select(var_0.zy, select(vec2<bool>(arg_2 >= -481f, true), select(var_0.xw, var_0.zz, var_0.yy), all(select(!vec4<bool>(arg_1, global0.a.d, global0.a.d, false), !vec4<bool>(false, global0.a.d, global4.a.a.d, arg_1), select(global4.a.a.d, false, global4.a.a.d)))), var_0.x);
    var var_2 = Struct_3(arg_3.a, func_2(var_0.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-975f, -1823f, global2[_wgslsmith_index_u32(arg_3.a.e.x, 3u)], arg_0.x) * vec4<f32>(arg_0.x, global2[_wgslsmith_index_u32(26253u, 3u)], 2281f, 1316f)), vec4<f32>(-229f, arg_0.x, -1096f, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3.a.e.x, 3u)]), _wgslsmith_f_op_f32(-arg_0.x))))).a, arg_3);
    global2 = array<f32, 3>();
    var_1 = vec2<bool>(false, !arg_1);
    return select(select(vec4<bool>(var_1.x, global0.a.d, arg_1, any(vec4<bool>(var_1.x, false, false, var_2.a.d)) && (global0.a.e.x >= var_2.b.e.x)), vec4<bool>(var_2.c.a.d, select(true, var_2.a.d & true, arg_3.a.d && var_2.b.d), all(!vec3<bool>(true, global0.a.d, true)), any(vec2<bool>(var_0.x, true))), !var_1.x || any(var_0.xw)), vec4<bool>(global4.a.a.d, !(!any(vec2<bool>(arg_3.a.d, var_2.a.d))), var_2.a.d, true), select(!select(!vec4<bool>(global4.a.a.d, var_1.x, false, false), !vec4<bool>(arg_3.a.d, global4.a.a.d, true, var_1.x), true), !vec4<bool>(func_2(vec2<bool>(var_2.b.d, false), vec4<f32>(-660f, -128f, 1336f, arg_2), 129f).a.d, select(arg_3.a.d, true, var_1.x), any(var_0.xz), global4.a.a.d), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(global0.a.d, global4.a.a.d, true, var_0.x), var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(firstTrailingBit(global4.a.a.e.x) << (~global4.a.a.e.x % 32u)) ^ global4.a.a.e.x;
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, 1000f, -1848f) + vec3<f32>(971f, global2[_wgslsmith_index_u32(global4.a.a.e.x, 3u)], global2[_wgslsmith_index_u32(u_input.d, 3u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, -1000f, global2[_wgslsmith_index_u32(global0.a.e.x, 3u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(853f, global2[_wgslsmith_index_u32(global4.a.a.e.x, 3u)], -1005f), vec3<f32>(global2[_wgslsmith_index_u32(global0.a.e.x, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], 503f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global4.a.a.e.x, 3u)], -353f, 557f) * vec3<f32>(global2[_wgslsmith_index_u32(global4.a.a.e.x, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(42189u, 3u)])) + _wgslsmith_f_op_vec3_f32(func_1(global2[_wgslsmith_index_u32(39268u, 3u)], Struct_3(Struct_1(global4.a.a.b.x, u_input.c, u_input.c.x, false, u_input.b.wyw), Struct_1(-848i, vec2<i32>(u_input.c.x, global4.a.b.x), global4.a.b.x, global4.a.a.d, u_input.b.yzw), global4.a), global1[_wgslsmith_index_u32(global4.a.a.e.x, 18u)]))))), false, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global4.a.a.e.x, 3u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1787f)))), Struct_2(func_2(select(select(vec2<bool>(global0.a.d, global4.a.a.d), vec2<bool>(global0.a.d, false), vec2<bool>(global0.a.d, false)), vec2<bool>(global4.a.a.d, global4.a.a.d), global4.a.a.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1557f, global2[_wgslsmith_index_u32(0u, 3u)], -1430f, -620f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-482f, -412f, global2[_wgslsmith_index_u32(global0.a.e.x, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<f32>(-781f, 911f, -550f, -666f), vec4<bool>(true, global4.a.a.d, global0.a.d, global4.a.a.d)))), _wgslsmith_f_op_f32(f32(-1f) * -674f)).a, global0.b));
    let var_2 = false;
    let var_3 = u_input.b.x;
    let var_4 = global4.a.b.x;
    var var_5 = global4.a.a;
    var_5 = Struct_1(var_5.b.x, vec2<i32>(-44614i, max(-1i, -_wgslsmith_sub_i32(16956i, global0.b.x))), ~firstTrailingBit(_wgslsmith_mult_i32(0i, ~5310i)), false, u_input.b.zwx);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(select(!vec2<bool>(var_1.x, false), vec2<bool>(any(vec4<bool>(false, true, true, false)), false), !select(vec2<bool>(true, false), vec2<bool>(false, global4.a.a.d), var_1.wz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1415f, -1640f, global2[_wgslsmith_index_u32(0u, 3u)], 921f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(84801u, 3u)], 718f, 2266f, -1000f), vec4<f32>(global2[_wgslsmith_index_u32(1u, 3u)], -543f, -977f, -227f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(40042u, 3u)]))).a.e.x, abs(global4.a.a.e.x), 1u);
}

