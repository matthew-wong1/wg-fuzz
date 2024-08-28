struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

var<private> global1: i32;

var<private> global2: array<f32, 3>;

var<private> global3: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>) -> i32 {
    var var_0 = vec4<bool>(!all(select(!vec4<bool>(false, arg_0.b.a, arg_0.a.e.a.x, true), select(vec4<bool>(arg_0.a.e.a.x, false, arg_0.b.e.a.x, arg_0.e), vec4<bool>(arg_0.b.a, false, false, arg_0.b.e.a.x), vec4<bool>(true, true, false, true)), select(vec4<bool>(arg_0.a.a, true, true, arg_0.a.a), vec4<bool>(false, arg_0.b.e.a.x, arg_0.e, true), arg_0.b.a))), arg_0.b.e.a.x, all(select(select(vec4<bool>(false, true, false, arg_0.b.e.a.x), !vec4<bool>(true, true, true, arg_0.e), select(vec4<bool>(false, arg_0.b.e.a.x, arg_0.a.a, true), vec4<bool>(arg_0.e, false, true, true), vec4<bool>(arg_0.a.e.a.x, arg_0.e, arg_0.a.a, arg_0.b.a))), vec4<bool>(false, arg_0.e || true, arg_0.e && arg_0.e, !arg_0.a.a), !all(vec2<bool>(arg_0.b.e.a.x, arg_0.a.a)))), true);
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(24344u, arg_0.b.d.x, arg_0.b.d.x, _wgslsmith_mult_u32(abs(56636u), _wgslsmith_add_u32(17704u, arg_0.b.d.x))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(45230u, arg_0.b.d.x, 4273u, 0u), vec4<u32>(arg_0.b.d.x, arg_0.b.d.x, 54872u, arg_0.a.d.x)) | select(vec4<u32>(0u, arg_0.a.d.x, arg_0.a.d.x, 90757u), vec4<u32>(19235u, 18362u, 0u, 0u), vec4<bool>(false, arg_0.e, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x)));
    let var_3 = select(arg_0.a.d << (vec2<u32>(36012u, arg_0.a.d.x) % vec2<u32>(32u)), arg_0.b.d, var_0.x);
    let var_4 = Struct_1(var_0.zz, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-933f, 331f), _wgslsmith_f_op_f32(arg_0.b.e.c + global3.x), _wgslsmith_f_op_f32(round(-824f)), -2483f) + arg_0.b.e.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-386f + -1311f), arg_0.b.e.c, _wgslsmith_f_op_f32(min(-1528f, global3.x)), 128f) - arg_0.b.e.b), true)), -537f);
    return _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, _wgslsmith_add_i32(0i, 23989i))) ^ vec2<i32>(-8439i, u_input.a.x), min(arg_1, vec2<i32>(u_input.a.x, _wgslsmith_add_i32(~u_input.a.x, -6961i))));
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = arg_0.e.b.zww;
    return vec4<i32>(arg_0.b.x, abs(_wgslsmith_sub_i32(~func_3(Struct_5(Struct_3(arg_0.a, vec2<i32>(arg_0.c.x, 37829i), vec4<i32>(5576i, 0i, u_input.a.x, -1i), vec2<u32>(arg_0.d.x, 78403u), arg_0.e), Struct_3(false, global0[_wgslsmith_index_u32(5691u, 4u)], u_input.a, vec2<u32>(1u, 12778u), Struct_1(arg_0.e.a, vec4<f32>(1074f, 1658f, global2[_wgslsmith_index_u32(47223u, 3u)], 1532f), global3.x)), vec2<f32>(1739f, -228f), Struct_4(Struct_2(vec3<i32>(-2147483647i, 1i, -29812i))), arg_0.e.a.x), vec2<i32>(arg_0.c.x, -1i)), reverseBits(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)))), arg_0.c.x, 1i);
}

fn func_1() -> bool {
    global2 = array<f32, 3>();
    global1 = _wgslsmith_dot_vec4_i32(u_input.a ^ _wgslsmith_mod_vec4_i32(-vec4<i32>(-12508i, u_input.a.x, u_input.a.x, 0i), -func_2(Struct_3(true, vec2<i32>(2147483647i, -1i), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec2<u32>(60296u, 34544u), Struct_1(vec2<bool>(true, false), vec4<f32>(global2[_wgslsmith_index_u32(47695u, 3u)], global2[_wgslsmith_index_u32(26075u, 3u)], global3.x, -887f), 1071f)))), u_input.a);
    var var_0 = Struct_5(Struct_3(true, ~vec2<i32>(-u_input.a.x, u_input.a.x), countOneBits(~(vec4<i32>(u_input.a.x, -8695i, 37521i, 0i) & vec4<i32>(-2147483647i, u_input.a.x, -2430i, u_input.a.x))), vec2<u32>(1u, 1u), Struct_1(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 1504f, 433f, global3.x))))), _wgslsmith_f_op_f32(select(1294f, global2[_wgslsmith_index_u32(firstTrailingBit(4890u), 3u)], true)))), Struct_3(true, vec2<i32>(u_input.a.x, -u_input.a.x), vec4<i32>(_wgslsmith_mod_i32(-u_input.a.x, ~u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(37709i, 0i)), u_input.a.x, u_input.a.x), _wgslsmith_mod_vec2_u32(~max(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(~0u, 4294967295u)), Struct_1(vec2<bool>(false, any(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(415f, -553f, 1037f, -970f) + vec4<f32>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], 459f))), _wgslsmith_f_op_f32(1498f * -100f))), vec2<f32>(-299f, global2[_wgslsmith_index_u32(44061u, 3u)]), Struct_4(Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), reverseBits(u_input.a.wzy)))), select(!any(vec3<bool>(false, false, true)), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))));
    var_0 = Struct_5(var_0.b, var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0.a.d.x, 1u), 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(select(1u, 26052u, var_0.b.a), 3u)]))), var_0.d, all(!select(vec4<bool>(var_0.a.a, false, var_0.a.a, var_0.b.e.a.x), select(vec4<bool>(false, var_0.e, true, true), vec4<bool>(var_0.b.a, true, true, var_0.b.e.a.x), vec4<bool>(var_0.b.e.a.x, false, true, false)), true)));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, -583f))) + var_0.c) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1177f, -710f) - _wgslsmith_f_op_f32(var_0.a.e.c + var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.b.d.x, 3u)], -157f)))), _wgslsmith_f_op_f32(f32(-1f) * -635f)));
    return true;
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    global0 = array<vec2<i32>, 4>();
    var var_0 = Struct_3(false, vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(33696i, 2147483647i, u_input.a.x), u_input.a.wxz)), select(~u_input.a.wyw, func_2(Struct_3(arg_0.x, vec2<i32>(1i, u_input.a.x), u_input.a, vec2<u32>(0u, 4294967295u), Struct_1(vec2<bool>(false, arg_0.x), vec4<f32>(-137f, global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], 215f), global3.x))).zxz, false))), firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.a, min(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(false, any(vec4<bool>(false, true, arg_0.x, false)) | true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], 349f, 1477f), vec4<f32>(-2461f, global2[_wgslsmith_index_u32(1u, 3u)], -1347f, global3.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], -377f, global3.x)))), global3.x));
    var var_1 = !func_1();
    let var_2 = !select(arg_0.x, arg_0.x || all(!arg_0.yx), arg_0.x);
    global1 = 1i;
    return Struct_2(var_0.c.yyx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<bool>(!func_1(), true, all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), false))));
    global2 = array<f32, 3>();
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(1u << (countOneBits(31572u) % 32u)), ~(~10861u), min(4294967295u, ~25804u), _wgslsmith_div_u32(0u, ~1u)), vec4<u32>(1u, 1u, 1u, 1u) | _wgslsmith_add_vec4_u32(reverseBits(countOneBits(vec4<u32>(4294967295u, 4294967295u, 1270u, 21554u))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(43623u, 40137u, 0u, 4294967295u), vec4<u32>(23434u, 4294967295u, 4294967295u, 37485u), vec4<bool>(false, false, false, false)), ~vec4<u32>(39498u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = Struct_5(Struct_3(!select(1i != var_0.a.x, true, any(vec2<bool>(false, true))), vec2<i32>(-1i) * -var_0.a.xx, vec4<i32>(-26307i, abs(var_0.a.x), (u_input.a.x ^ u_input.a.x) & var_0.a.x, _wgslsmith_div_i32(var_0.a.x, u_input.a.x >> (12775u % 32u))), ~(~(~vec2<u32>(99889u, 1u))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 10875u), 3u)], _wgslsmith_f_op_f32(global3.x + 186f), _wgslsmith_f_op_f32(trunc(global3.x)), 1301f), global3.x)), Struct_3(true, max(~vec2<i32>(u_input.a.x, 21552i) | ~u_input.a.xw, u_input.a.xw), u_input.a, vec2<u32>(1u, ~4294967295u), Struct_1(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec3<bool>(true, false, true))), vec4<f32>(_wgslsmith_f_op_f32(step(-1277f, -679f)), -2529f, _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(19102u, 3u)])), global2[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4579u, 3u)], global3.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -702f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(59408u, 3u)]))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1227f, -267f), vec2<f32>(411f, global2[_wgslsmith_index_u32(61209u, 3u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 3u)], -857f))))), vec2<f32>(global2[_wgslsmith_index_u32(12693u, 3u)], global3.x)), Struct_4(func_4(vec3<bool>(false, any(vec2<bool>(false, true)), true))), all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a);
}

