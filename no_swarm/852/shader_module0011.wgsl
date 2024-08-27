struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21>;

var<private> global1: array<i32, 13> = array<i32, 13>(2147483647i, -51349i, 1i, -23249i, 0i, 0i, 3030i, 1i, -1i, 2147483647i, 1i, -1i, 2147483647i);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<bool>) -> bool {
    var var_0 = ~(17272i ^ -global2.d);
    return arg_2.a.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -363f), ~select(~2147483647i, -firstLeadingBit(arg_0.d), global2.b.x));
    let var_1 = ~vec4<u32>(~(~arg_1.a.a), u_input.a.x, arg_0.a, ~1u) ^ (~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(9134u, 14263u, global2.c, u_input.d.x)), ~vec4<u32>(arg_1.a.c, 0u, arg_0.a, 1u)) | ~vec4<u32>(arg_0.c, u_input.d.x, _wgslsmith_add_u32(u_input.d.x, arg_1.a.a), 4294967295u));
    return vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(reverseBits(u_input.e), vec3<i32>(var_0.b, arg_2, countOneBits(var_0.b))), (1i << (global2.c % 32u)) | select(max(1i, 1i), countOneBits(33578i), true), min(global1[_wgslsmith_index_u32(2421u, 13u)], firstTrailingBit(1i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>) -> i32 {
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(321f, 461f, 186f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1322f, 923f, -264f))))))));
    var var_1 = Struct_3(Struct_1(global2.a, !select(global2.b, global2.b, true), u_input.d.x, u_input.e.x), select(_wgslsmith_clamp_i32(u_input.c.x, (-27333i & global2.d) ^ -global1[_wgslsmith_index_u32(u_input.d.x, 13u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 13u)], ~global1[_wgslsmith_index_u32(57226u, 13u)])), -2147483647i, _wgslsmith_dot_vec4_u32(~u_input.d, u_input.d) <= u_input.d.x), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_div_f32(-945f, 1011f)))), ~(~(global1[_wgslsmith_index_u32(20142u, 13u)] >> (u_input.b % 32u)))));
    global0 = array<vec3<f32>, 21>();
    return 3099i;
}

fn func_1() -> u32 {
    global2 = Struct_1(u_input.d.x, select(vec4<bool>(true, false, global2.b.x, all(global2.b)), select(select(!global2.b, !global2.b, true), !global2.b, vec4<bool>(func_2(Struct_2(934f, global1[_wgslsmith_index_u32(0u, 13u)]), Struct_3(Struct_1(0u, vec4<bool>(true, true, true, global2.b.x), u_input.b, 2147483647i), -29652i, Struct_2(2204f, u_input.e.x)), Struct_3(Struct_1(22585u, vec4<bool>(true, true, true, global2.b.x), 1u, -2147483647i), global1[_wgslsmith_index_u32(u_input.b, 13u)], Struct_2(-401f, 2147483647i)), vec3<bool>(true, true, global2.b.x)), !global2.b.x, !global2.b.x, global2.b.x)), vec4<bool>(false, all(select(global2.b.wzz, global2.b.xyy, false)), false, global2.b.x)), _wgslsmith_add_u32(global2.c, _wgslsmith_div_u32(~79947u, u_input.a.x)), func_4(vec3<bool>(any(!vec4<bool>(global2.b.x, false, global2.b.x, true)), global2.b.x, true), func_3(Struct_1(44670u, global2.b, 4294967295u, -2147483647i), Struct_3(Struct_1(0u, vec4<bool>(global2.b.x, true, false, true), 53130u, u_input.c.x), global2.d, Struct_2(-2149f, global2.d)), -u_input.e.x) << (vec4<u32>(~u_input.a.x, 1u, _wgslsmith_mult_u32(global2.a, 1u), global2.c) % vec4<u32>(32u))));
    let var_0 = !vec2<bool>(false, global2.b.x & true);
    global0 = array<vec3<f32>, 21>();
    global0 = array<vec3<f32>, 21>();
    var var_1 = Struct_4(Struct_2(878f, global2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, 429f, 955f, 279f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -762f, -1517f, 643f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1443f, 876f, -141f, 242f) - vec4<f32>(690f, 1000f, 952f, -1150f))))), vec3<bool>(true || global2.b.x, true, !((global2.b.x | global2.b.x) || true)), select(select(global2.b, select(!global2.b, global2.b, var_0.x), !(var_0.x || global2.b.x)), global2.b, global2.b.x), Struct_2(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1813f - _wgslsmith_f_op_f32(floor(-474f)))), global1[_wgslsmith_index_u32(u_input.a.x, 13u)]));
    return u_input.a.x ^ u_input.d.x;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    global1 = array<i32, 13>();
    let var_0 = global1[_wgslsmith_index_u32(~abs(~(~4294967295u)), 13u)];
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(global2.d, _wgslsmith_mod_i32(-abs(u_input.c.x), 2147483647i)), global1[_wgslsmith_index_u32(47735u, 13u)]);
    global2 = Struct_1(firstLeadingBit(arg_2), !global2.b, arg_2, ~2147483647i);
    global0 = array<vec3<f32>, 21>();
    return Struct_2(-1195f, -func_4(select(vec3<bool>(arg_3.x, global2.b.x, true), select(vec3<bool>(true, true, false), global2.b.xww, false), true), _wgslsmith_clamp_vec4_i32(abs(u_input.c), _wgslsmith_add_vec4_i32(u_input.c, u_input.c), u_input.c)));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<vec3<f32>, 21>();
    var var_0 = select(u_input.d.yx, ~(~u_input.d.xx), any(arg_1.a.b.xyw));
    let var_1 = vec3<bool>(arg_2.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1912f - arg_2.x)) - 1267f), global2.b.x, select(true, !any(vec4<bool>(arg_1.a.b.x, global2.b.x, true, global2.b.x)) || arg_1.a.b.x, true));
    let var_2 = select(select(!vec2<bool>(any(vec4<bool>(false, false, true, false)), arg_1.a.b.x), !(!arg_1.a.b.zz), select(!global2.b.zx, select(vec2<bool>(arg_1.a.b.x, true), !arg_1.a.b.ww, true), !select(vec2<bool>(var_1.x, global2.b.x), global2.b.yz, vec2<bool>(false, true)))), var_1.zz, !(!(!(false & var_1.x))));
    var var_3 = func_5(arg_2.x, 0i, 0u >> (select(15976u, global2.c, true) % 32u), arg_1.a.b.yyz);
    return Struct_1(56256u, select(arg_1.a.b, vec4<bool>(!select(false, var_2.x, arg_1.a.b.x), arg_2.x == -1051f, !func_2(Struct_2(1406f, u_input.c.x), Struct_3(arg_1.a, 10034i, arg_1.c), arg_1, vec3<bool>(false, global2.b.x, false)), true), vec4<bool>(true, global2.b.x, !any(global2.b.yw), !(!global2.b.x))), ~(~(~0u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~1u), reverseBits(u_input.a) ^ ~vec2<u32>(global2.c, u_input.a.x)), ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(~vec2<i32>(_wgslsmith_mod_i32(global2.d, global1[_wgslsmith_index_u32(1u, 13u)]), -global1[_wgslsmith_index_u32(global2.c, 13u)]), Struct_3(Struct_1(49748u, !global2.b, _wgslsmith_div_u32(4294967295u, u_input.a.x), -1i), global1[_wgslsmith_index_u32(92646u, 13u)], func_5(-559f, abs(0i), func_1(), select(vec3<bool>(true, false, global2.b.x), vec3<bool>(global2.b.x, true, global2.b.x), vec3<bool>(false, false, global2.b.x)))), vec2<f32>(569f, -757f)), 1969i, Struct_2(_wgslsmith_f_op_f32(func_5(318f, 2147483647i | global2.d, abs(global2.c), select(vec3<bool>(global2.b.x, global2.b.x, global2.b.x), global2.b.wxz, global2.b.x)).a - -188f), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.d.yyz, vec3<u32>(u_input.d.x, u_input.d.x, u_input.b)), 13u)], -35574i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~firstTrailingBit(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d)), vec4<u32>(4294967295u, var_0.a.c, _wgslsmith_add_u32(4294967295u, u_input.d.x) ^ 19701u, min(_wgslsmith_mult_u32(28452u, u_input.a.x), ~71878u)), select(vec4<bool>(true, var_0.a.b.x, select(global2.b.x, true, global2.b.x), var_0.a.b.x), !vec4<bool>(false, true, true, var_0.a.b.x), !select(vec4<bool>(false, global2.b.x, false, false), vec4<bool>(true, global2.b.x, global2.b.x, var_0.a.b.x), var_0.a.b.x))));
}

