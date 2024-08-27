struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -1225i, 10484i);

var<private> global1: array<bool, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> vec3<i32> {
    global0 = u_input.a.ywy >> (u_input.c % vec3<u32>(32u));
    let var_0 = 246f;
    global0 = reverseBits(vec3<i32>(u_input.a.x, -254i, _wgslsmith_clamp_i32(global0.x, reverseBits(-23938i >> (u_input.c.x % 32u)), -7665i)));
    global1 = array<bool, 10>();
    global0 = u_input.a.wxy;
    return ~firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.a.yww, (vec3<i32>(arg_1, global0.x, 0i) >> (vec3<u32>(28062u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) >> (u_input.c % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(false, _wgslsmith_dot_vec3_i32(select(func_2(!arg_0.yy, ~global0.x), func_2(vec2<bool>(true, true), _wgslsmith_mult_i32(u_input.b.x, -83540i)), !arg_1.b.zwy), -vec3<i32>(-arg_1.a.a, ~(-20225i), ~u_input.b.x)), global1[_wgslsmith_index_u32(u_input.c.x, 10u)]);
    global0 = -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x >> (3938u % 32u), u_input.a.x), firstTrailingBit(u_input.a.ywy ^ u_input.a.yzx)) ^ (vec3<i32>(reverseBits(2147483647i), 26677i, -_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) ^ u_input.a.yxz);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(819f))) * arg_2.x);
    return Struct_1(false, -27915i, true);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = 1f;
    let var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_mod_vec4_i32(~(-_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, u_input.b.x, global0.x, arg_1.b) | vec4<i32>(34637i, u_input.b.x, 17543i, u_input.b.x), -u_input.a)), -vec4<i32>(_wgslsmith_sub_i32(-3609i, global0.x & u_input.b.x), 1i, firstTrailingBit(-2147483647i), ~(i32(-1i) * -44613i)));
    var var_4 = func_1(!(!select(select(vec4<bool>(arg_1.a, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_1.a, false, true), arg_1.a), vec4<bool>(arg_1.c, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], arg_1.c))), Struct_3(Struct_2(_wgslsmith_div_i32(65407i, -36475i), max(u_input.c.zx, vec2<u32>(u_input.c.x, u_input.c.x)) ^ u_input.c.yy, -23724i, false, arg_0), select(select(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 10u)], true), vec4<bool>(arg_1.c, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], arg_1.a, true), vec4<bool>(true, false, true, false)), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(29324u, 10u)], arg_1.a, false), 34430u == u_input.c.x), !vec4<bool>(false, arg_1.c, arg_1.a, arg_1.c), true), _wgslsmith_sub_i32(u_input.a.x, 25964i), vec2<i32>(_wgslsmith_dot_vec3_i32(var_3.ywx, vec3<i32>(var_3.x, arg_1.b, u_input.b.x)), ~4187i)), vec4<f32>(var_1, var_1, -407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-643f)))), !func_1(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], arg_1.c, false, false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 10u)], false, global1[_wgslsmith_index_u32(935u, 10u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 10u)], false, false), arg_1.a), vec4<bool>(true, false, arg_1.a, arg_1.c)), Struct_3(Struct_2(arg_1.b, vec2<u32>(u_input.c.x, 54450u), arg_0, global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_0), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], true, false), vec4<bool>(true, arg_1.c, true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), true), -36440i >> (u_input.c.x % 32u), min(vec2<i32>(var_3.x, -2147483647i), u_input.b)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, var_1, -1641f, 260f))), !(u_input.a.x < u_input.b.x)).c);
    return Struct_1(true, 38262i, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    global0 = select(min(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(33380i, -14745i), -1i, arg_2.x)), _wgslsmith_div_vec3_i32(arg_2.wxy, arg_2.yxw)), arg_2.yyw, !vec3<bool>(all(vec4<bool>(arg_3, true, true, false)), select(!global1[_wgslsmith_index_u32(25931u, 10u)], any(arg_1.wyz), any(vec4<bool>(true, arg_3, arg_1.x, true))), false));
    var var_0 = Struct_4(vec3<u32>(~u_input.c.x, 26251u, ~u_input.c.x), arg_0, 1959f, u_input.c, Struct_2(countOneBits(func_3(2147483647i, arg_0, vec2<f32>(-191f, 244f)).b) >> (~(~27023u) % 32u), select(vec2<u32>(u_input.c.x, 0u), ~vec2<u32>(u_input.c.x, 5120u) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(1u, u_input.c.x)), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 10u)] & false)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, 2147483647i, arg_0.b), select(vec3<i32>(0i, -402i, 14983i), arg_2.ywy, arg_1.x))), true, _wgslsmith_mod_i32(0i, u_input.a.x >> (~159995u % 32u))));
    var var_1 = 1386f;
    let var_2 = abs(_wgslsmith_dot_vec3_i32(~min(arg_2.wzy, func_2(arg_1.wx, -2147483647i)), vec3<i32>(_wgslsmith_mult_i32(global0.x, global0.x) << (~var_0.a.x % 32u), ~var_0.b.b, 30497i)));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.a.zzy;
    let var_0 = ~vec2<u32>(func_4(func_3(_wgslsmith_add_i32(global0.x, 2147483647i), func_1(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(39299u, 10u)]), Struct_3(Struct_2(u_input.b.x, u_input.c.xy, u_input.a.x, true, 7540i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), -70186i, u_input.b), vec4<f32>(-1000f, 475f, -138f, -1154f), global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-501f, 1271f)))), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.zy), 10u)], true, global1[_wgslsmith_index_u32(max(37058u, u_input.c.x), 10u)], true), countOneBits(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-4467i, global0.x, 21049i, global0.x))), true), 4294967295u);
    let var_1 = true;
    let var_2 = Struct_4(~countOneBits(u_input.c), Struct_1(all(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], false, true)) | func_1(vec4<bool>(var_1, global1[_wgslsmith_index_u32(63422u, 10u)], true, false), Struct_3(Struct_2(-20179i, var_0, global0.x, global1[_wgslsmith_index_u32(4294967295u, 10u)], -1i), vec4<bool>(false, false, false, var_1), u_input.b.x, vec2<i32>(0i, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(853f, -928f, 738f, -1557f) * vec4<f32>(406f, 1120f, 1000f, 212f)), var_1).c, 57743i, var_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * 667f), 1452f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)])) * 333f), global1[_wgslsmith_index_u32(u_input.c.x, 10u)])), _wgslsmith_mult_vec3_u32(reverseBits(abs(u_input.c)), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.x, 0u, 1u)), abs(u_input.c)), ~_wgslsmith_sub_u32(var_0.x, 1u))), Struct_2(firstTrailingBit(global0.x), firstLeadingBit(u_input.c.yz), -24999i, any(vec4<bool>(all(vec3<bool>(var_1, var_1, var_1)), true, var_1, !var_1)), _wgslsmith_dot_vec3_i32(~vec3<i32>(10100i, u_input.b.x, u_input.a.x), u_input.a.xyx)));
    var var_3 = Struct_3(Struct_2(-6496i, ~vec2<u32>(var_0.x, var_0.x), -1i, true, ~(var_2.b.b << (reverseBits(var_0.x) % 32u))), select(!(!select(vec4<bool>(var_1, true, false, var_2.b.c), vec4<bool>(var_2.b.a, true, true, false), var_1)), vec4<bool>(var_2.d.x <= 1u, false, var_2.b.c, func_1(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 10u)], var_1, var_2.e.d, global1[_wgslsmith_index_u32(18321u, 10u)]), Struct_3(var_2.e, vec4<bool>(var_2.e.d, var_1, global1[_wgslsmith_index_u32(5252u, 10u)], false), 1i, global0.xx), vec4<f32>(var_2.c, var_2.c, var_2.c, var_2.c), false).c), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(var_2.e.d, false, var_1, true), vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_2.b.a, false, var_2.e.d, global1[_wgslsmith_index_u32(var_2.e.b.x, 10u)])), func_1(vec4<bool>(false, global1[_wgslsmith_index_u32(1288u, 10u)], false, var_2.e.d), Struct_3(var_2.e, vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(13322u, 10u)]), u_input.b.x, u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, var_2.c, var_2.c)), true == global1[_wgslsmith_index_u32(18054u, 10u)]).c)), -2147483647i, func_2(vec2<bool>(false, false), u_input.a.x).xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.c, -1382f, -3340f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-298f, -2157f, var_2.c))))), countOneBits(-(max(global0.x, 1i) ^ 1i)), _wgslsmith_add_u32(var_0.x, 23757u), _wgslsmith_mod_vec2_u32(~vec2<u32>(50803u, var_2.a.x ^ 4294967295u), vec2<u32>(1u, abs(var_3.a.b.x))));
}

