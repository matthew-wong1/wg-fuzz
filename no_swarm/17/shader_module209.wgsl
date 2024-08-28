struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(2147483647i, -1i, -17909i, -22095i, i32(-2147483648), -17400i, -8134i, -62512i);

var<private> global1: array<bool, 23> = array<bool, 23>(true, false, true, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, true, false);

var<private> global2: i32;

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = select(arg_0.b.c.yy, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(35581u, _wgslsmith_dot_vec4_u32(vec4<u32>(50953u, 27082u, 0u, arg_0.c), vec4<u32>(arg_0.b.b, 0u, arg_0.c, 0u))), vec2<u32>(u_input.c & 35496u, arg_0.b.b << (78888u % 32u)), vec2<u32>(u_input.c, ~u_input.c)), countOneBits(_wgslsmith_div_vec2_u32(arg_0.b.c.yy << (vec2<u32>(35584u, 39729u) % vec2<u32>(32u)), max(arg_0.b.c.xy, arg_0.b.c.xz)))), arg_0.d);
    var var_1 = !any(!(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.b.b, 23u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.b.b, 23u)]), vec2<bool>(true, true))));
    global0 = array<i32, 8>();
    var var_2 = abs(_wgslsmith_mod_vec2_i32(~(vec2<i32>(5572i, 2147483647i) >> (~arg_0.b.c.xx % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(arg_0.b.e.yw, u_input.d.yy, max(vec2<i32>(2147483647i, 2387i), ~u_input.d.xx))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.b.a.yy)), vec2<f32>(1038f, _wgslsmith_f_op_f32(arg_0.b.a.x * 331f)))), _wgslsmith_f_op_vec2_f32(floor(arg_0.b.a.zx)), !select(vec2<bool>(4294967295u == arg_0.c, all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], arg_0.a))), !vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 23u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(~var_0.x, 23u)]))));
    return ~64457u;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = 536f;
    global2 = 51395i;
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(select(arg_1, vec4<u32>(arg_1.x, arg_2.c.x, u_input.c, 0u), vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(arg_2.b, 23u)], global1[_wgslsmith_index_u32(u_input.c, 23u)], true)), arg_1, select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(8925u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 23u)], true, global1[_wgslsmith_index_u32(8886u, 23u)], true), global1[_wgslsmith_index_u32(u_input.c, 23u)])), vec4<u32>(39635u, func_3(Struct_3(false, Struct_1(arg_2.a, arg_2.c.x, arg_1.wwx, arg_2.e.zy, arg_2.e), u_input.c, global1[_wgslsmith_index_u32(1287u, 23u)], 26876i)), u_input.c, ~arg_0)), vec4<u32>(arg_1.x, arg_1.x, arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(76370u, 1u, 24717u, arg_0), vec4<u32>(25266u, 15756u, arg_1.x, 1u)))), 28u)]);
    let var_2 = Struct_3(true & all(vec3<bool>(1552f >= arg_2.a.x, true, any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], true, global1[_wgslsmith_index_u32(var_1.a.b, 23u)], global1[_wgslsmith_index_u32(arg_0, 23u)])))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1024f), var_0)), _wgslsmith_mod_u32(~(~var_1.a.b), _wgslsmith_mult_u32(arg_2.b, 4294967295u)), ~vec3<u32>(abs(arg_2.c.x), 41133u, 37732u), vec2<i32>(-2147483647i, -arg_2.d.x) >> (max(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.b, 5687u), vec2<u32>(0u, 0u)), var_1.a.c.yy) % vec2<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(1i, 1i, global0[_wgslsmith_index_u32(arg_2.b, 8u)], -1i)), var_1.a.c.x, var_1.a.d.x <= 0i, _wgslsmith_add_i32(-abs(min(var_1.a.d.x, -12544i)), abs(~_wgslsmith_clamp_i32(u_input.a, u_input.b, var_1.a.d.x))));
    var var_3 = Struct_3(select(false, var_2.a, var_2.d), arg_2, 4294967295u, !(!(~u_input.c <= 28424u)), 2147483647i);
    return vec3<bool>(!(!(!all(vec2<bool>(var_3.a, false)))), true, any(vec2<bool>(true, true)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> bool {
    let var_0 = select(vec3<bool>(any(!func_2(arg_1.x, vec4<u32>(2917u, 4294967295u, u_input.c, 0u), Struct_1(vec3<f32>(842f, 669f, -949f), 1u, vec3<u32>(u_input.c, arg_1.x, 4294967295u), u_input.d.xy, u_input.d))), false, func_2(max(27597u, 0u) >> (arg_0 % 32u), vec4<u32>(_wgslsmith_mult_u32(u_input.c, arg_1.x), ~0u, 0u, ~4294967295u), Struct_1(vec3<f32>(-252f, 254f, -799f), 62739u, ~vec3<u32>(arg_0, 0u, 4294967295u), u_input.d.ww, _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(2147483647i, 2147483647i, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.c, 8u)]), vec4<i32>(u_input.a, 2147483647i, u_input.b, u_input.d.x)))).x), vec3<bool>(!any(!vec2<bool>(true, global1[_wgslsmith_index_u32(7882u, 23u)])), all(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], true, true, false), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 23u)], false, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), !global1[_wgslsmith_index_u32(arg_0, 23u)])), false), !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(102643u, max(4294967295u, 4294967295u)), 23u)]);
    var var_1 = Struct_3(any(!select(vec4<bool>(global1[_wgslsmith_index_u32(43609u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], true, global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(true, var_0.x, false, var_0.x), true)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-489f + _wgslsmith_f_op_f32(min(-672f, 1736f))), _wgslsmith_f_op_f32(-1000f + 1f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -138f))), 4294967295u, vec3<u32>(firstTrailingBit(0u), ~(~11624u), arg_1.x), _wgslsmith_div_vec2_i32(u_input.d.yz, _wgslsmith_div_vec2_i32(u_input.d.xz, u_input.d.zx) & u_input.d.zy), vec4<i32>(u_input.d.x, abs(u_input.d.x), -11120i, _wgslsmith_clamp_i32(-2147483647i, ~global0[_wgslsmith_index_u32(u_input.c, 8u)], _wgslsmith_mod_i32(-24491i, u_input.a)))), u_input.c, true, _wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(min(0u, 6682u), 8u)], -1i) & min(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c, u_input.c << (arg_1.x % 32u)), 8u)], _wgslsmith_mult_i32(-52819i, global0[_wgslsmith_index_u32(countOneBits(u_input.c), 8u)])));
    global3 = array<Struct_1, 28>();
    global3 = array<Struct_1, 28>();
    let var_2 = -u_input.d.xyy;
    return all(vec2<bool>(_wgslsmith_clamp_u32(~4294967295u, arg_1.x, u_input.c & 4305u) >= 51939u, var_1.d));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2391f, 439f, _wgslsmith_f_op_f32(round(arg_2.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_2.xxw)) + arg_2.xxz) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1448f, arg_2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 137f, 341f) + arg_2.www)))), 33112u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), abs(vec2<u32>(4294967295u, u_input.c))), 1u), abs(_wgslsmith_sub_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(0u, 0u, u_input.c)), vec3<u32>(u_input.c, u_input.c, u_input.c), !arg_3), firstTrailingBit(firstLeadingBit(vec3<u32>(100049u, 25556u, 1u))))), u_input.d.wx, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 7562i, -1i, 1i) | vec4<i32>(-31686i, global0[_wgslsmith_index_u32(20905u, 8u)], 40410i, global0[_wgslsmith_index_u32(u_input.c, 8u)]), vec4<i32>(-1i, -1i, global0[_wgslsmith_index_u32(26052u, 8u)], -2147483647i)), firstTrailingBit(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b, -1i, 20997i))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d, ~vec4<i32>(26596i, arg_1, -1i, arg_1)), u_input.d)));
    global0 = array<i32, 8>();
    global2 = _wgslsmith_mult_i32(13626i, var_0.e.x);
    var var_1 = 1i;
    var_1 = ~27999i;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(sign(202f)), -329f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-768f, -2423f, -966f, 2045f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1352f, 782f, 509f, -501f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(!func_1(u_input.c, vec2<u32>(u_input.c, u_input.c)), u_input.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, 369f, 1328f, 1608f)), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], false))))));
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.c) & ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(22524u, 24383u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 24345u), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(u_input.c, 23u)], false)), vec4<u32>(45835u, u_input.c, u_input.c, 90182u)), 28u)]);
    let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, 43399u), func_3(Struct_3(true, Struct_1(vec3<f32>(var_0.x, var_1.a.a.x, var_0.x), 4294967295u, vec3<u32>(var_1.a.c.x, 1u, 23759u), vec2<i32>(global0[_wgslsmith_index_u32(102038u, 8u)], 6927i), vec4<i32>(1i, var_1.a.e.x, 6412i, 0i)), var_1.a.c.x, false, var_1.a.d.x)) ^ _wgslsmith_mult_u32(1u, u_input.c), ~(~var_1.a.c.x)), reverseBits(vec3<u32>(u_input.c, u_input.c, var_1.a.b) << (~var_1.a.c % vec3<u32>(32u))), ~((vec3<u32>(4294967295u, var_1.a.c.x, 4294967295u) & vec3<u32>(0u, 0u, var_1.a.b)) | var_1.a.c)), ~(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(51715u, var_1.a.c.x, u_input.c), var_1.a.c), var_1.a.c, func_2(var_1.a.c.x, vec4<u32>(9188u, var_1.a.b, 17195u, 0u), Struct_1(var_0.zwx, u_input.c, var_1.a.c, u_input.d.wy, vec4<i32>(-31117i, 22792i, -23958i, 40043i))).x)));
    global1 = array<bool, 23>();
    global2 = global0[_wgslsmith_index_u32(1u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_sub_u32(57259u, 15317u), select(12196u, _wgslsmith_mult_u32(var_1.a.c.x, u_input.c), true), _wgslsmith_dot_vec4_u32(vec4<u32>(65422u, 14247u, 115438u, 0u), vec4<u32>(var_1.a.b, 58786u, var_1.a.b, u_input.c)), u_input.c), reverseBits(-u_input.d.xy));
}

