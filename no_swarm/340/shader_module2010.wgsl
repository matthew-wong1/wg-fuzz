struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<u32, 17>;

var<private> global2: vec2<i32>;

var<private> global3: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> i32 {
    global2 = vec2<i32>(-_wgslsmith_clamp_i32(1i >> (arg_0.b.x % 32u), u_input.c.x, _wgslsmith_sub_i32(countOneBits(u_input.c.x), u_input.c.x >> (65296u % 32u))), -_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 46247i, global2.x, 0i), vec4<i32>(u_input.c.x, -34783i, global2.x, 26144i)), max(u_input.c.x, -1i) ^ global2.x));
    var var_0 = vec2<u32>(abs(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(min(5791u, 3167u), 17u)] >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.b.x, 65860u), vec3<u32>(arg_2, global0[_wgslsmith_index_u32(arg_0.b.x, 21u)], arg_2)) % 32u), arg_0.b.x ^ arg_1.b.x)), arg_0.b.x);
    var var_1 = !(0u != var_0.x);
    let var_2 = select(select(select(vec3<bool>(1128f > arg_0.a.x, global3.c.x, -39952i >= global2.x), arg_1.c.xxx, !all(vec3<bool>(arg_0.c.x, global3.c.x, arg_1.c.x))), !(!arg_0.c.wxz), arg_1.c.xyy), vec3<bool>(!select(false, arg_1.c.x, any(global3.c)), arg_0.c.x, all(!(!global3.c.wy))), select(arg_0.c.xzz, select(arg_1.c.zyz, select(vec3<bool>(false, true, true), select(vec3<bool>(global3.c.x, false, arg_1.c.x), arg_0.c.zzw, arg_0.c.x), true), !(!global3.c.x)), !arg_1.c.zwz));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(round(791f))) - arg_0.a))), ~global3.b, vec4<bool>(!any(!vec2<bool>(arg_1.c.x, true)), arg_1.c.x, arg_0.c.x, var_2.x));
    return -_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, global2.x, -1i, global2.x), vec4<i32>(-1i, -1i, -1i, u_input.b))));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = u_input.c.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x - global3.a.x)), -278f);
    let var_2 = _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(1i, _wgslsmith_mod_i32(~u_input.c.x, func_3(Struct_2(vec2<f32>(1088f, var_1.x), vec2<u32>(1u, 14729u), vec4<bool>(arg_0.a, false, arg_0.a, global3.c.x)), Struct_2(global3.a, global3.b, vec4<bool>(arg_0.a, false, arg_0.a, false)), 122903u)), 1i, -u_input.c.x)), min(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c.x, -1i, 2147483647i, global2.x), reverseBits(vec4<i32>(26446i, u_input.c.x, 2147483647i, global2.x)), -vec4<i32>(global2.x, global2.x, u_input.c.x, 0i)), (vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.a, u_input.b, -53802i)) & (-vec4<i32>(34343i, 0i, 7044i, u_input.a) << (vec4<u32>(9u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b.x, 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 21u)], global0[_wgslsmith_index_u32(44679u, 21u)]) % vec4<u32>(32u)))));
    var_0 = 2147483647i;
    global2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, global2.x), _wgslsmith_add_vec2_i32(~(~vec2<i32>(0i, var_2.x)) >> (global3.b % vec2<u32>(32u)), u_input.c.yz), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(22596i | var_2.x, ~(-2147483647i)), -33878i), var_2.ww));
    return global3.a;
}

fn func_1() -> Struct_2 {
    let var_0 = -762f;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_2(Struct_1(global3.c.x, any(vec2<bool>(global3.c.x, global3.c.x)))));
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1138f, _wgslsmith_f_op_f32(step(-1000f, 477f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 - vec2<f32>(-1409f, var_0)) + var_1)) - var_1), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(global3.b.x, global1[_wgslsmith_index_u32(global3.b.x, 17u)]) & ~global3.b, _wgslsmith_add_vec2_u32(global3.b, global3.b)), vec2<u32>(~9452u | global3.b.x, firstTrailingBit(1u))), global3.c);
    let var_2 = _wgslsmith_add_vec4_u32(select(~(~abs(vec4<u32>(59740u, global1[_wgslsmith_index_u32(global3.b.x, 17u)], 26308u, 4294967295u))), vec4<u32>(~reverseBits(4294967295u), firstLeadingBit(global1[_wgslsmith_index_u32(global3.b.x & global0[_wgslsmith_index_u32(1506u, 21u)], 17u)]), min(23724u, ~1u), ~(~global0[_wgslsmith_index_u32(50255u, 21u)])), global3.c.x), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, 29479u, 18334u, global3.b.x) | vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(global3.b.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(global3.b.x, 21u)])), vec4<u32>(global0[_wgslsmith_index_u32(~17061u, 21u)], ~48246u, global0[_wgslsmith_index_u32(abs(4294967295u), 21u)], global3.b.x | 41929u)), _wgslsmith_mult_vec4_u32(abs(max(vec4<u32>(24851u, 4749u, global3.b.x, 4294967295u), vec4<u32>(95242u, global1[_wgslsmith_index_u32(global3.b.x, 17u)], 4313u, 115311u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global3.b.x, global0[_wgslsmith_index_u32(33658u, 21u)], 17201u, global0[_wgslsmith_index_u32(global3.b.x, 21u)]), vec4<u32>(58559u, global3.b.x, 4294967295u, global3.b.x)))));
    let var_3 = abs(17285u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-540f, 1106f), var_1)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global3.a, _wgslsmith_f_op_vec2_f32(global3.a * var_1))))), max(countOneBits(var_2.yz), vec2<u32>(~18306u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, 14452u, var_2.x, var_3), var_2))), select(vec4<bool>(true, select(global3.c.x, global3.c.x, any(vec2<bool>(global3.c.x, true))), all(global3.c.zx), global3.c.x), !(!vec4<bool>(global3.c.x, true, false, global3.c.x)), false | any(vec2<bool>(global3.c.x, false))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(170f, 1332f, global3.a.x, -1435f), vec4<f32>(824f, 168f, 356f, -2715f), false)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(591f, 221f, global3.a.x, arg_1) * vec4<f32>(-935f, arg_0.a.x, 1000f, global3.a.x))))))));
    global1 = array<u32, 17>();
    global0 = array<u32, 21>();
    var var_1 = max(max(countOneBits(~(~0u)), _wgslsmith_dot_vec4_u32(~arg_2, reverseBits(vec4<u32>(arg_2.x, global0[_wgslsmith_index_u32(936u, 21u)], global1[_wgslsmith_index_u32(1u, 17u)], 26383u))) >> (1u % 32u)), ~global3.b.x);
    let var_2 = 0u;
    return Struct_1(any(select(!(!global3.c), vec4<bool>(all(vec3<bool>(arg_0.c.x, false, false)), true, global0[_wgslsmith_index_u32(36762u, 21u)] == 19451u, func_1().c.x), arg_0.c)), true);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = global3.a;
    global3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * 867f)))), -849f), global3.b, !global3.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1020f - 923f)), _wgslsmith_f_op_f32(trunc(func_1().a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - global3.a.x) + var_0.x) + _wgslsmith_f_op_vec2_f32(func_2(arg_0)).x)));
    var_0 = _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global3.a, vec2<f32>(global3.a.x, -1177f)))))));
    let var_2 = arg_0;
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(func_1().a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, -1305f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1247f, var_1.x) - _wgslsmith_div_vec2_f32(vec2<f32>(848f, global3.a.x), vec2<f32>(var_1.x, var_0.x))))))), global3.b, func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec2<i32>(-(global2.x << (global1[_wgslsmith_index_u32(4294967295u, 17u)] % 32u)) << (global0[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global3.b.x, 17u)]), 21u)] % 32u), _wgslsmith_add_i32(u_input.a, u_input.a));
    global1 = array<u32, 17>();
    global2 = -vec2<i32>(reverseBits(-22925i), abs(_wgslsmith_mult_i32(u_input.c.x, i32(-1i) * -62578i)));
    global0 = array<u32, 21>();
    let var_0 = func_5(func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), vec4<u32>(2055u, global1[_wgslsmith_index_u32(global3.b.x, 17u)] & 1u, 632u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.b.x, 17u)], 17u)] | global3.b.x) | select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10707u, 17u)], 17u)], 1u, 16761u, 0u), vec4<u32>(50046u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41050u, 17u)], 21u)], 17u)], 13107u, global0[_wgslsmith_index_u32(52758u, 21u)]), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(vec3<u32>(0u, 1u, var_0.b.x), firstLeadingBit(vec3<u32>(global3.b.x, global3.b.x, 4294967295u)), !var_0.c.x)), firstTrailingBit(2147483647i));
}

