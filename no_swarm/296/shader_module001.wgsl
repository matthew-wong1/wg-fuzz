struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 22> = array<bool, 22>(true, true, true, true, true, true, true, false, true, false, true, true, true, true, false, true, false, false, false, false, false, false);

var<private> global2: vec3<i32>;

var<private> global3: vec3<f32> = vec3<f32>(-1386f, 1799f, 704f);

var<private> global4: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    let var_0 = vec3<i32>(global2.x, 18460i, global2.x);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1873f, global3.x)), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -421f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, -1000f, -986f) * vec3<f32>(global3.x, global3.x, global3.x)))))));
    let var_1 = any(select(vec4<bool>(!arg_0 || global1[_wgslsmith_index_u32(abs(arg_1.x), 22u)], global1[_wgslsmith_index_u32(~(arg_1.x | arg_1.x), 22u)], true, arg_0), !select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], arg_0, global1[_wgslsmith_index_u32(arg_1.x, 22u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(61805u, 22u)], global0.x, true), vec4<bool>(global0.x, true, false, false)), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 22u)], global0.x, true), any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 22u)]))), !(!(arg_1.x == arg_1.x))));
    let var_2 = Struct_2(Struct_1(abs(arg_1.x) ^ (_wgslsmith_div_u32(arg_1.x, 1u) ^ u_input.a), select(vec2<bool>(!global1[_wgslsmith_index_u32(u_input.a, 22u)], false), !select(global0.yw, global0.wy, arg_0), vec2<bool>(true, !global0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1216f, 809f, 1053f) + vec3<f32>(global3.x, -1095f, global3.x))))), ~select(abs(arg_1.wyz), arg_1.wyx & arg_1.wyw, !global0.yxw)), Struct_1(u_input.a, select(global0.xw, select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 22u)]), select(global0.ww, global0.yz, var_1), global0.wy), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global3.x) - _wgslsmith_f_op_f32(min(142f, global3.x))), global3.x), ~(~vec3<u32>(arg_1.x, 1u, 0u))), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, select(1u, 5969u, true | global0.x), u_input.a), ~vec3<u32>(arg_1.x, u_input.a, 4294967295u) ^ vec3<u32>(abs(0u), firstLeadingBit(arg_1.x), 96564u)), Struct_1(arg_1.x, select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(false, false), select(global0.wz, vec2<bool>(true, true), false)), !(!vec2<bool>(global0.x, false)), select(!global0.zw, select(global0.xz, vec2<bool>(var_1, global0.x), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 22u)])), !global1[_wgslsmith_index_u32(96219u, 22u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(462f, global3.x, -2049f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(854f, global3.x, 1670f))), !vec3<bool>(var_1, global0.x, global1[_wgslsmith_index_u32(45530u, 22u)])))), vec3<u32>(0u ^ u_input.a, 63067u, 4294967295u)), abs(arg_1.x) >> (~arg_1.x % 32u));
    let var_3 = Struct_1((var_2.b.a & _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.x, 28028u), u_input.a)) | 35060u, vec2<bool>(true, !global0.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(2324f)), var_2.b.c.x)), _wgslsmith_f_op_f32(-299f - _wgslsmith_f_op_f32(f32(-1f) * -1191f)), var_2.b.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) + _wgslsmith_f_op_f32(trunc(-284f))), _wgslsmith_f_op_f32(-119f * -909f), _wgslsmith_f_op_f32(var_2.b.c.x - _wgslsmith_f_op_f32(round(-705f))))), _wgslsmith_add_vec3_u32(~(arg_1.wxx | ~vec3<u32>(1u, arg_1.x, 0u)), abs(~arg_1.zzz ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), arg_1.xyw))));
    return 47163u;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    var var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~func_3(global0.x & global1[_wgslsmith_index_u32(102525u, 22u)], firstLeadingBit(vec4<u32>(arg_1, u_input.a, 4294967295u, u_input.a))), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1, ~211u), u_input.a)), 22u)];
    let var_1 = Struct_2(Struct_1(~min(1u, ~4294967295u), vec2<bool>(global3.x >= 829f, any(select(vec2<bool>(true, global0.x), vec2<bool>(false, true), vec2<bool>(false, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(241f, -1347f, 1826f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_div_vec3_f32(arg_0, arg_0))), firstLeadingBit(select(vec3<u32>(35525u, arg_2.x, 4294967295u), vec3<u32>(1u, 1u, u_input.a), !global0.yyz))), Struct_1(arg_1, !(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)]), vec2<bool>(global0.x, global1[_wgslsmith_index_u32(arg_1, 22u)]), global0.zy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))), ~vec3<u32>(reverseBits(arg_1), max(0u, u_input.a), 0u << (arg_2.x % 32u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, min(u_input.a, 51756u), ~61633u), vec3<u32>(arg_2.x, u_input.a, arg_2.x) & vec3<u32>(4294967295u, u_input.a, 60315u)), Struct_1(max(reverseBits(arg_1), u_input.a) >> (4294967295u % 32u), vec2<bool>(any(!vec4<bool>(global0.x, global0.x, true, false)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))), countOneBits(abs(arg_2))), abs(max(arg_1, u_input.a)));
    var var_2 = false && any(global0.wyw);
    let var_3 = reverseBits(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -7007i, global2.x, 0i), vec4<i32>(2381i, global2.x, 1i, global2.x)), -1i, ~0i, global2.x) & (~(vec4<i32>(global2.x, global2.x, global2.x, global2.x) ^ vec4<i32>(global2.x, -21033i, global2.x, 28491i)) ^ reverseBits(vec4<i32>(-2147483647i, 16953i, -4154i, global2.x))));
    return ~_wgslsmith_sub_i32(0i, -1i);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec2<i32> {
    global2 = select(~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, global2.x), ~2147483647i), _wgslsmith_add_i32(global2.x, -16453i), -1i), -vec3<i32>(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(549f, -1223f, -1080f), arg_1)), countOneBits(4294967295u), ~vec3<u32>(u_input.a, u_input.a, 68482u)), global2.x, _wgslsmith_mult_i32(-9005i, global2.x)), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global0.x, false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global0.x, true)), global0.yzw, all(global0.xzw)), vec3<bool>(true, arg_0, global1[_wgslsmith_index_u32(8097u >> (u_input.a % 32u), 22u)]), !vec3<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.a, 22u)], false)), select(vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global0.x, global1[_wgslsmith_index_u32(u_input.a, 22u)])), select(global0.x, global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), true || global1[_wgslsmith_index_u32(0u, 22u)]), select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(1u, 22u)]), u_input.a >= u_input.a), all(vec4<bool>(false, false, true, true))), !vec3<bool>(true, false && global1[_wgslsmith_index_u32(u_input.a, 22u)], global2.x > 0i)));
    var var_0 = Struct_1(132233u, global0.zz, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1346f, arg_1.x, 175f)))))), reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 45938u) << (vec2<u32>(20020u, u_input.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(23248u, 11229u), vec2<u32>(1u, u_input.a))), ~u_input.a, 43654u)));
    var var_1 = global0.xzz;
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~var_0.d.zx, var_0.d.zx), var_1.xx, _wgslsmith_f_op_vec3_f32(-var_0.c), ~(~var_0.d) << (~var_0.d % vec3<u32>(32u))), Struct_1(u_input.a, global0.yz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -483f)), 585f, var_0.c.x), ~vec3<u32>(_wgslsmith_mult_u32(var_0.a, var_0.d.x), countOneBits(var_0.a), var_0.a)), var_0.d, Struct_1(4294967295u, vec2<bool>(false, true), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 918f) - arg_1), _wgslsmith_f_op_vec3_f32(arg_1 - arg_1)), _wgslsmith_f_op_vec3_f32(var_0.c * arg_1)), ~vec3<u32>(13425u, u_input.a, u_input.a)), ~(~(u_input.a & var_0.d.x)));
    let var_3 = var_2.b;
    return vec2<i32>(global2.x, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-965f, _wgslsmith_f_op_f32(-global3.x), 287f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1558f, global3.x) * vec3<f32>(global3.x, -663f, -1319f)))))));
    global4 = global0.x;
    var var_1 = select(select(!vec4<bool>(global3.x <= 876f, global0.x || global0.x, all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 22u)], false, global1[_wgslsmith_index_u32(u_input.a, 22u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 0u), 22u)]), !(!select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.a, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], true, true, false), vec4<bool>(false, global0.x, global0.x, global1[_wgslsmith_index_u32(1u, 22u)]))), false | global0.x), vec4<bool>(global0.x, global0.x, false, global1[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(u_input.a, u_input.a), firstLeadingBit(reverseBits(0u))), 22u)]), select(vec4<bool>(global0.x, !global1[_wgslsmith_index_u32(u_input.a & 80586u, 22u)], all(vec3<bool>(false, true, false)) == true, global1[_wgslsmith_index_u32(18061u, 22u)]), !(!select(vec4<bool>(false, false, false, global0.x), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(37223u, 22u)]), true)), select(select(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 22u)], global0.x), vec4<bool>(global0.x, true, true, global1[_wgslsmith_index_u32(u_input.a, 22u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 22u)], true, global1[_wgslsmith_index_u32(0u, 22u)])), vec4<bool>(false, true, false, global0.x), global1[_wgslsmith_index_u32(u_input.a, 22u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], true, false, true), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.a, 22u)]), global0.x), global1[_wgslsmith_index_u32(30537u, 22u)])));
    var var_2 = 391f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1412f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(474i, abs(2147483647i), 764i) | ~select(vec3<i32>(global2.x, 46170i, global2.x), vec3<i32>(0i, var_0.x, global2.x), global0.yxz), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -18912i, var_0.x), vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(-2147483647i, 2147483647i, var_0.x)), ~vec3<i32>(global2.x, 1i, var_0.x)), abs(~vec3<i32>(8573i, var_0.x, -2147483647i)))));
}

