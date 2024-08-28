struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 22> = array<bool, 22>(false, false, false, false, false, true, false, false, false, true, true, true, true, false, false, false, false, true, false, false, false, false);

var<private> global3: array<f32, 8> = array<f32, 8>(2818f, 621f, 470f, -2226f, -141f, -1000f, -957f, -433f);

var<private> global4: array<i32, 16> = array<i32, 16>(2147483647i, i32(-2147483648), -1i, 2472i, 42398i, 5265i, i32(-2147483648), 2147483647i, 1690i, 59724i, -20996i, -54564i, 9788i, 1i, -7774i, -11963i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_2(global1.b, max(vec4<i32>(global0[_wgslsmith_index_u32((46158u & global1.a.x) ^ (global1.a.x >> (0u % 32u)), 24u)], i32(-1i) * -11641i, -3306i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d, -1i, global0[_wgslsmith_index_u32(global1.a.x, 24u)], -22747i), vec4<i32>(-47259i, global4[_wgslsmith_index_u32(global1.a.x, 16u)], global4[_wgslsmith_index_u32(arg_0.x, 16u)], 4331i)) >> ((u_input.b.x << (57249u % 32u)) % 32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(global1.a.x, 16u)], 29966i, global0[_wgslsmith_index_u32(6172u, 24u)]), vec4<i32>(global1.d, 44282i, global0[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(u_input.c, 16u)])), max(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(1i, global4[_wgslsmith_index_u32(arg_0.x, 16u)], -1i, -18768i))), (u_input.a.x >> (global1.a.x % 32u)) << (4294967295u % 32u), ~(-global4[_wgslsmith_index_u32(1u, 16u)]), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29378u, arg_0.x, global1.a.x), vec4<u32>(4294967295u, u_input.c, u_input.b.x, 18426u)), 24u)])), vec4<u32>(u_input.b.x, countOneBits(50178u), ~1u, 4294967295u));
    let var_1 = global3[_wgslsmith_index_u32(global1.a.x, 8u)];
    global3 = array<f32, 8>();
    global3 = array<f32, 8>();
    var var_2 = select(select(vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)], false, global2[_wgslsmith_index_u32(var_0.c.x, 22u)])), true), !select(select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.c.x, 22u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], false), global2[_wgslsmith_index_u32(4294967295u, 22u)]), !vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 22u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(7129u, 22u)])), any(select(!vec4<bool>(global2[_wgslsmith_index_u32(32887u, 22u)], global2[_wgslsmith_index_u32(global1.a.x, 22u)], false, global2[_wgslsmith_index_u32(71189u, 22u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_0.c.x, 22u)], global2[_wgslsmith_index_u32(arg_0.x, 22u)]), all(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 22u)], global2[_wgslsmith_index_u32(9954u, 22u)]))))), !select(vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.c.x, 22u)] & false), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]), global2[_wgslsmith_index_u32(u_input.c, 22u)]), true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), !(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)])))));
    return 0i;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = max(170980u, 1u | global1.a.x);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-552f, 318f) * vec2<f32>(arg_2.a.x, -1053f)))))), vec4<i32>(firstTrailingBit(-2147483647i), global4[_wgslsmith_index_u32(arg_3.c.x, 16u)] >> (u_input.c % 32u), 1i, ~func_3(arg_3.c.zzy)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, ~1u, arg_2.c.x, ~u_input.c), (reverseBits(arg_2.c) | vec4<u32>(arg_2.c.x, 0u, u_input.c, u_input.b.x)) >> (_wgslsmith_add_vec4_u32(arg_3.c, arg_2.c) % vec4<u32>(32u))));
    global4 = array<i32, 16>();
    let var_2 = Struct_1(abs(_wgslsmith_div_vec2_u32(reverseBits(arg_2.c.yw >> (vec2<u32>(arg_3.c.x, u_input.c) % vec2<u32>(32u))), var_1.c.yx)), vec2<f32>(_wgslsmith_div_f32(-1217f, var_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -505f) + -685f)))), _wgslsmith_f_op_vec4_f32(-global1.c), ~arg_3.b.x);
    var var_3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.a.x, -187f), vec2<f32>(-672f, -1364f), true))), _wgslsmith_f_op_vec2_f32(arg_3.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(arg_3.c.x, 8u)], arg_2.a.x)))), min(arg_3.b, arg_3.b), select(arg_3.c, vec4<u32>(~u_input.b.x, 243u, var_1.c.x, 37139u), min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, global0[_wgslsmith_index_u32(13264u, 24u)]), vec2<i32>(19795i, 0i)), u_input.a.x) == _wgslsmith_div_i32(-2147483647i, var_1.b.x)));
    return -1i;
}

fn func_1() -> bool {
    global2 = array<bool, 22>();
    var var_0 = _wgslsmith_mult_i32(func_2(!any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 22u)], global2[_wgslsmith_index_u32(21990u, 22u)])), true, Struct_2(vec2<f32>(global1.b.x, -1000f), ~vec4<i32>(-11989i, 47755i, 2147483647i, 53121i), ~firstTrailingBit(vec4<u32>(u_input.c, global1.a.x, u_input.b.x, global1.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global4[_wgslsmith_index_u32(global1.a.x, 16u)], u_input.a.x, u_input.a.x), vec4<i32>(1i, global4[_wgslsmith_index_u32(u_input.b.x, 16u)], global1.d, global4[_wgslsmith_index_u32(u_input.c, 16u)]))), ~vec4<u32>(u_input.b.x, 22171u, u_input.b.x, u_input.b.x))), global1.d | _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -4038i, _wgslsmith_add_i32(-2147483647i, 0i)), vec2<i32>(max(global4[_wgslsmith_index_u32(13622u, 16u)], 5655i), global1.d)));
    global2 = array<bool, 22>();
    var var_1 = Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(~(~u_input.b.x), 8u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 8u)] + global3[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], -44113i, -37080i, u_input.a.x)) | vec4<i32>(-2147483647i, func_3(vec3<u32>(49008u, u_input.c, 2347u)), ~0i, max(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global4[_wgslsmith_index_u32(40517u, 16u)])), firstLeadingBit(vec4<i32>(global4[_wgslsmith_index_u32(global1.a.x & 40844u, 16u)], _wgslsmith_clamp_i32(2147483647i, global1.d, u_input.a.x), global1.d, -52500i))), ~vec4<u32>(u_input.b.x, 1u, global1.a.x, global1.a.x));
    global3 = array<f32, 8>();
    return select(false, global2[_wgslsmith_index_u32(29393u | var_1.c.x, 22u)] != all(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(1u, 22u)]) || true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~vec4<u32>(~abs(global1.a.x), countOneBits(_wgslsmith_add_u32(4294967295u, u_input.b.x)), min(3223u, ~3422u), u_input.c >> (reverseBits(46432u) % 32u)), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(18346u, u_input.c, 0u, 4294967295u)), vec4<u32>(global1.a.x, 1u, 0u, global1.a.x)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 29223u, 19667u, 10351u), vec4<u32>(global1.a.x, u_input.b.x, 42210u, u_input.c)) << (vec4<u32>(u_input.c, u_input.b.x, global1.a.x, 1u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 28398u, 30469u, 1u)), ~vec4<u32>(global1.a.x, 4294967295u, u_input.c, 4294967295u))), vec4<bool>(false, func_1(), !(all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(58428u, 22u)])) != (false & global2[_wgslsmith_index_u32(global1.a.x, 22u)])), true));
    global2 = array<bool, 22>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), -346f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(var_0.x, 8u)], global1.b.x))))), min(vec4<i32>(func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.x, 25702u, global1.a.x), var_0.wyw)), _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 10473u), 16u)], func_2(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], Struct_2(vec2<f32>(global1.c.x, 400f), vec4<i32>(global0[_wgslsmith_index_u32(59540u, 24u)], -10996i, 2147483647i, global4[_wgslsmith_index_u32(20438u, 16u)]), vec4<u32>(76466u, 26712u, var_0.x, global1.a.x)), Struct_2(global1.b, vec4<i32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global1.a.x, 24u)], -58237i, global1.d), vec4<u32>(u_input.c, 1u, 11256u, u_input.c))), firstLeadingBit(u_input.a.x)), _wgslsmith_mult_i32(19693i << (1u % 32u), countOneBits(global4[_wgslsmith_index_u32(0u, 16u)])), u_input.a.x), (_wgslsmith_clamp_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(global1.a.x, 16u)], -27922i, global0[_wgslsmith_index_u32(34103u, 24u)], 2147483647i), vec4<i32>(-48500i, 48145i, -31324i, -4018i), vec4<i32>(2147483647i, -2147483647i, global1.d, 14697i)) & -vec4<i32>(global4[_wgslsmith_index_u32(1u, 16u)], global1.d, u_input.a.x, global4[_wgslsmith_index_u32(0u, 16u)])) & select(-vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), abs(vec4<i32>(global4[_wgslsmith_index_u32(global1.a.x, 16u)], -1i, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 17119i)), false)), vec4<u32>(abs(~4294967295u), select(_wgslsmith_clamp_u32(50952u | var_0.x, max(global1.a.x, 21212u), ~u_input.c), ~1u, 42375u != (global1.a.x | 4294967295u)), abs(~4294967295u), u_input.b.x | 79013u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global3[_wgslsmith_index_u32(~(~4294967295u), 8u)]) + _wgslsmith_f_op_vec2_f32(abs(global1.b))), var_1.b, vec4<u32>(_wgslsmith_mult_u32(~0u, var_0.x), abs(4294967295u), 1u, _wgslsmith_clamp_u32(~u_input.b.x | 46228u, ~(~4294967295u), ~_wgslsmith_dot_vec2_u32(var_0.wz, var_0.zx))));
    let var_3 = vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(var_0.x, 22018u)) >> (1u % 32u), 8u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_div_f32(-559f, 422f)), var_1.a.x)))), 481f, -108f);
    var var_4 = -352f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(-1348f * _wgslsmith_f_op_f32(-global1.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-245f, 1325f) * _wgslsmith_f_op_f32(-1601f + 1528f)) * global1.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, _wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(1000f * var_1.a.x), _wgslsmith_div_f32(396f, var_1.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(-1196f * -666f), -173f, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.b.x, 8u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.x + global1.b.x))))), _wgslsmith_f_op_vec4_f32(-global1.c));
}

