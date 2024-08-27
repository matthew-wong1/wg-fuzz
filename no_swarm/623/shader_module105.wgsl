struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<f32> = vec4<f32>(-286f, -374f, 2171f, -1242f);

var<private> global2: array<i32, 4>;

var<private> global3: u32;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1599f + _wgslsmith_f_op_f32(global1.x - global1.x)))))) < 1053f;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), 1300f, _wgslsmith_f_op_f32(-402f + 400f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 176f, global1.x) * vec4<f32>(-755f, -1366f, global1.x, global1.x)), vec4<f32>(-1307f, global1.x, 282f, -2374f), global4.x)))));
    let var_0 = Struct_4(~(-vec4<i32>(firstTrailingBit(0i), ~69267i, 0i, _wgslsmith_add_i32(u_input.c, global2[_wgslsmith_index_u32(u_input.b, 4u)]))), select(vec3<bool>(false, true, true), global4.yyx, !(!global4.x)), select(select(select(!vec4<bool>(global4.x, true, global4.x, false), select(vec4<bool>(false, false, global4.x, global4.x), vec4<bool>(false, global4.x, true, false), true), global4.x), !select(vec4<bool>(global4.x, global4.x, global4.x, true), vec4<bool>(true, false, false, true), vec4<bool>(true, global4.x, global4.x, global4.x)), select(select(vec4<bool>(global4.x, false, false, global4.x), vec4<bool>(true, global4.x, true, false), vec4<bool>(false, false, global4.x, global4.x)), !vec4<bool>(true, global4.x, true, true), global4.x)), select(select(!vec4<bool>(false, false, global4.x, global4.x), !vec4<bool>(global4.x, global4.x, true, true), global1.x <= -549f), !select(vec4<bool>(global4.x, global4.x, global4.x, true), vec4<bool>(false, global4.x, false, global4.x), global4.x), !select(vec4<bool>(true, global4.x, global4.x, true), vec4<bool>(global4.x, true, true, global4.x), global4.x)), any(global4.xx)), !(!vec4<bool>(false, global4.x || global4.x, false, u_input.d.x != u_input.a)), countOneBits(firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(u_input.c, 35570i, 0i), -1i))));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + _wgslsmith_f_op_f32(round(global1.x))), 195f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-609f * global1.x))))), global1.x, 584f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -276f, global1.x, global1.x), vec4<f32>(766f, global1.x, -325f, global1.x), var_0.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 161f, -351f) * vec4<f32>(global1.x, global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(458f, 764f, 1389f, 1440f)))), !vec4<bool>(global4.x, var_0.b.x, true, global4.x)))));
    global2 = array<i32, 4>();
    return ~(i32(-1i) * -select(-14324i, 2147483647i, true));
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = arg_0;
    var var_1 = func_3();
    let var_2 = Struct_1(~34920u, arg_0.a.x == -(~var_0.e.x), _wgslsmith_add_i32(abs(12559i), var_0.a.x), -802f);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(571f, _wgslsmith_f_op_f32(exp2(var_2.d)), _wgslsmith_f_op_f32(938f - -889f), _wgslsmith_f_op_f32(global1.x + var_2.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, global1.x, global1.x, var_2.d))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-793f, -494f, var_2.d, global1.x)))), vec4<f32>(-526f, _wgslsmith_f_op_f32(ceil(1000f)), var_2.d, _wgslsmith_div_f32(global1.x, -851f)))), (3405u < _wgslsmith_add_u32(1u, u_input.d.x)) || global4.x)));
    var var_3 = arg_0;
    return var_2.a;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = vec3<u32>(~24170u, max(func_2(Struct_4(select(arg_2, arg_2, vec4<bool>(global4.x, true, false, global4.x)), select(global4.ywz, global4.zwx, global4.yzz), !vec4<bool>(false, global4.x, true, true), select(vec4<bool>(false, false, false, arg_1), vec4<bool>(true, true, false, false), false), arg_2.zy)), u_input.a), 4294967295u ^ _wgslsmith_clamp_u32(reverseBits(u_input.d.x), 4294967295u, ~u_input.b));
    global0 = global4.x;
    var var_1 = Struct_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(func_3()), countOneBits(1i), -1i, func_3()), _wgslsmith_sub_vec4_i32(arg_2, firstTrailingBit(arg_2 | arg_2)), arg_2), !vec3<bool>(false, _wgslsmith_f_op_f32(ceil(-1000f)) > -467f, false), !select(!vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_1, all(vec2<bool>(true, arg_1)), arg_1, true), all(global4.wzx)), !(!(!vec4<bool>(arg_1, global4.x, global4.x, true))), arg_2.yw);
    global4 = vec4<bool>(all(vec3<bool>(any(var_1.d.wy), true, u_input.b < var_0.x)) | (_wgslsmith_clamp_u32(0u, var_0.x, firstTrailingBit(0u)) <= firstLeadingBit(~5936u)), global4.x, !(31216u > u_input.a), !(~abs(0u) >= _wgslsmith_add_u32(0u & var_0.x, func_2(Struct_4(arg_2, vec3<bool>(var_1.d.x, true, var_1.c.x), var_1.c, var_1.d, vec2<i32>(u_input.c, u_input.c))))));
    global0 = false;
    return vec4<bool>(any(select(select(!var_1.d.wxx, select(var_1.c.xyw, vec3<bool>(var_1.b.x, arg_1, global4.x), global4.yzw), !global4.xwx), select(global4.wzw, var_1.c.xyw, select(vec3<bool>(true, false, arg_1), vec3<bool>(true, false, false), var_1.c.x)), vec3<bool>(any(var_1.d.yzx), var_1.c.x, true))), (var_1.c.x & !all(vec4<bool>(var_1.b.x, false, true, true))) == !any(select(vec2<bool>(var_1.d.x, true), global4.yx, vec2<bool>(global4.x, arg_1))), all(!vec2<bool>(!arg_1, all(vec2<bool>(global4.x, arg_1)))), firstLeadingBit(firstTrailingBit(arg_2.x)) > (min(_wgslsmith_mult_i32(512i, 0i), _wgslsmith_sub_i32(u_input.c, arg_0)) >> (var_0.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = select(vec4<bool>(!(1u > firstLeadingBit(u_input.b)), global4.x, true, all(!global4.xwx)), !select(select(func_1(u_input.c, true, vec4<i32>(u_input.c, -1i, global2[_wgslsmith_index_u32(u_input.a, 4u)], 38154i)), vec4<bool>(global4.x, false, global4.x, global4.x), vec4<bool>(global4.x, true, false, global4.x)), func_1(-6003i, global4.x && global4.x, ~vec4<i32>(global2[_wgslsmith_index_u32(34345u, 4u)], 2147483647i, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(12018u, 4u)])), !(!vec4<bool>(global4.x, false, false, true))), !(!(!vec4<bool>(global4.x, global4.x, false, false))));
    var var_0 = Struct_4(vec4<i32>(-2147483647i, -2147483647i, -(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], u_input.c) >> (u_input.d.x % 32u)), 2147483647i), select(func_1(u_input.c, !(global4.x || global4.x), countOneBits(select(vec4<i32>(2147483647i, -2147483647i, global2[_wgslsmith_index_u32(54119u, 4u)], -1i), vec4<i32>(48873i, -2147483647i, 0i, global2[_wgslsmith_index_u32(u_input.a, 4u)]), global4.x))).wxw, vec3<bool>(!any(vec4<bool>(true, global4.x, false, false)), false, any(select(vec4<bool>(global4.x, global4.x, true, false), vec4<bool>(true, true, global4.x, global4.x), global4.x))), true), vec4<bool>(true, global4.x, global4.x & (1u <= (u_input.d.x | 1u)), global4.x), func_1(~max(i32(-1i) * -31777i, 2147483647i), global4.x, vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(37u, u_input.b), ~u_input.b, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), 4u)], -1i, -2147483647i, u_input.c)), countOneBits(vec2<i32>(-global2[_wgslsmith_index_u32(u_input.a, 4u)] >> (u_input.a % 32u), -9953i)));
    var var_1 = global1.wx;
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_1.x, 1774f, var_1.x)) + vec4<f32>(var_1.x, 544f, 408f, var_1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(535f, global1.x, var_1.x, var_1.x) + vec4<f32>(global1.x, 1549f, 836f, -567f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-646f, var_1.x, 533f, -496f), vec4<f32>(global1.x, -823f, var_1.x, -1034f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(-681f * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -397f), var_1.x))));
    var var_2 = select(select(_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.b, ~63762u, 4294967295u, 111598u)), ~u_input.d, all(vec2<bool>(true, false))), u_input.d, select(var_0.c, !vec4<bool>(global1.x != 660f, all(vec4<bool>(global4.x, var_0.b.x, var_0.c.x, true)), true, all(vec2<bool>(global4.x, true))), vec4<bool>(global4.x, false, !select(global4.x, var_0.c.x, false), var_0.d.x || (var_0.c.x & var_0.b.x))));
    global3 = var_2.x;
    var_2 = ~vec4<u32>(17992u, 1u, ~((1u | u_input.d.x) << (4294967295u % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.d.x, u_input.b, u_input.d.x), u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(var_2.zyw, firstTrailingBit(u_input.d.zwx)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(42377u >> (var_2.x % 32u), 4294967295u), ~_wgslsmith_mult_u32(4294967295u, u_input.d.x), var_2.x), reverseBits(select(vec3<u32>(var_2.x, var_2.x, u_input.b) >> (vec3<u32>(u_input.a, u_input.b, u_input.b) % vec3<u32>(32u)), u_input.d.wxx ^ vec3<u32>(0u, var_2.x, 3099u), vec3<bool>(global4.x, true, var_0.b.x))), abs(var_2.zxy)), var_0.a);
}

