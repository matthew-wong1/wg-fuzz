struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(15299u, 47600u), vec2<u32>(20270u, 1u), vec2<u32>(69189u, 62012u), vec2<u32>(15504u, 16621u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(39835u, 0u), vec2<u32>(0u, 26857u), vec2<u32>(1u, 77222u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4031u), vec2<u32>(24846u, 4294967295u), vec2<u32>(0u, 39928u), vec2<u32>(1u, 0u), vec2<u32>(21260u, 4294967295u), vec2<u32>(64986u, 4294967295u), vec2<u32>(1u, 26433u), vec2<u32>(1u, 4294967295u), vec2<u32>(7074u, 4294967295u), vec2<u32>(4913u, 1u), vec2<u32>(2795u, 33510u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 51431u), vec2<u32>(938u, 76457u), vec2<u32>(22528u, 5722u), vec2<u32>(27576u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 3341u), vec2<u32>(44670u, 36938u));

var<private> global1: vec2<f32> = vec2<f32>(-1468f, 374f);

var<private> global2: array<bool, 29>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> bool {
    var var_0 = global1.x;
    let var_1 = Struct_3(arg_1.wwz, ~_wgslsmith_mod_vec4_i32(~select(vec4<i32>(-1i, 0i, u_input.b, -77883i), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 29u)], true, global2[_wgslsmith_index_u32(arg_1.x, 29u)])), vec4<i32>(-1i) * -vec4<i32>(58028i, u_input.a, -1i, u_input.b)));
    global2 = array<bool, 29>();
    let var_2 = ~var_1.b;
    var var_3 = _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_2.yyw, select(-var_1.b.wxx, min(var_2.xyw, vec3<i32>(1i, var_1.b.x, 2859i)), global2[_wgslsmith_index_u32(var_1.a.x, 29u)]), var_2.wxy), abs(var_1.b.yzx));
    return select(false, _wgslsmith_add_u32(var_1.a.x >> (53765u % 32u), 4294967295u) < var_1.a.x, all(!(!vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 29u)], false)))) & (false && !(any(vec4<bool>(global2[_wgslsmith_index_u32(117049u, 29u)], true, true, true)) && all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 29u)], true))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<u32>, 31>();
    let var_0 = vec2<i32>(-u_input.a, _wgslsmith_mult_i32(~67314i, ~1i));
    global0 = array<vec2<u32>, 31>();
    let var_1 = Struct_1(u_input.a, ~(~(~vec3<u32>(0u, 4294967295u, 4294967295u))), func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f + global1.x)), 1436f), ~(~reverseBits(vec4<u32>(0u, 0u, 6925u, 22122u)))), vec3<f32>(_wgslsmith_f_op_f32(-1769f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), 642f, 131f));
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.d.yy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1550f + 1110f), _wgslsmith_f_op_f32(min(var_1.d.x, -358f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_1.d.xz, var_1.d.zy), vec2<f32>(var_1.d.x, -1564f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -934f), var_1.d.yz))), any(select(vec4<bool>(true, false || var_1.c, true, false), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(130390u, 29u)], true, true), select(vec4<bool>(false, false, false, var_1.c), vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.b.x, 29u)], false, global2[_wgslsmith_index_u32(var_1.b.x, 29u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_1.b.x, 29u)], true, true, var_1.c)), !vec4<bool>(true, var_1.c, true, var_1.c)), u_input.a != -9653i))));
    return var_1;
}

fn func_4(arg_0: Struct_1) -> u32 {
    global0 = array<vec2<u32>, 31>();
    let var_0 = select(vec3<i32>(arg_0.a, 1i, 0i), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a, u_input.a, max(-33341i, 0i)), vec3<i32>(_wgslsmith_add_i32(45837i, arg_0.a), _wgslsmith_sub_i32(61416i, u_input.a), 30858i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1777f)) + _wgslsmith_f_op_f32(-arg_0.d.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1008f - 868f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-960f, _wgslsmith_f_op_f32(global1.x * global1.x)))));
    var var_1 = arg_0.b;
    var_1 = _wgslsmith_mult_vec3_u32(countOneBits(select(arg_0.b, vec3<u32>(0u, arg_0.b.x, ~49132u), select(!vec3<bool>(true, arg_0.c, false), !vec3<bool>(global2[_wgslsmith_index_u32(63921u, 29u)], false, global2[_wgslsmith_index_u32(arg_0.b.x, 29u)]), global2[_wgslsmith_index_u32(4294967295u, 29u)]))), vec3<u32>(_wgslsmith_div_u32(var_1.x, 1u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.x, var_1.x), vec2<u32>(1u, var_1.x)), reverseBits(var_1.zy)), var_1.x), 1u));
    global1 = _wgslsmith_f_op_vec2_f32(floor(arg_0.d.zz));
    return min(1u, var_1.x);
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_4(func_2());
    var_0 = _wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(50107u, _wgslsmith_clamp_u32(1u, countOneBits(35079u), 18956u)));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-func_2().d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(func_2().d.x, -2607f)))));
    var var_1 = vec4<bool>(!arg_0, select(func_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global1.x))))), vec4<u32>(~4294967295u, ~0u, 1u, ~0u)), !global2[_wgslsmith_index_u32(~1u, 29u)] | !(!global2[_wgslsmith_index_u32(4294967295u, 29u)]), global2[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mult_u32(1u, 1u)), 29u)]), global2[_wgslsmith_index_u32(53374u, 29u)], !(select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(0u, 22258u, 18437u, 4294967295u)), ~0u, global2[_wgslsmith_index_u32(18466u, 29u)]) != abs(~0u)));
    global0 = array<vec2<u32>, 31>();
    return ~abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~8023u, 31u)], vec2<u32>(34968u, 4294967295u)), ~(27099u >> (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = Struct_5(vec2<bool>(!(~1u <= _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(38630u, 31u)])), true), global0[_wgslsmith_index_u32(0u, 31u)], vec3<i32>(firstTrailingBit(reverseBits(-u_input.a)), -45440i, _wgslsmith_clamp_i32(-(u_input.b << (51189u % 32u)), u_input.a, -1i)));
    global2 = array<bool, 29>();
    var var_2 = Struct_2(~(~vec2<u32>(func_1(var_1.a.x), ~0u)), Struct_1((_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.c.x, u_input.b, u_input.b), vec4<i32>(19011i, -9698i, u_input.a, 10147i)) >> (~72174u % 32u)) | 1i, ~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_1.b.x, 1u), vec3<u32>(45277u, var_1.b.x, var_1.b.x))), !(u_input.b > abs(var_1.c.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-func_2().d)))), func_2(), Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-1i, var_1.c.x, 55963i)), vec3<i32>(firstTrailingBit(var_1.c.x), i32(-1i) * -1i, ~38076i)), vec3<u32>(~(var_1.b.x | 43192u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 19158u, 1u), vec3<u32>(10931u, var_1.b.x, var_1.b.x)), 0u), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(191f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1274f, 2418f, -123f), vec3<f32>(global1.x, -124f, global1.x)))))));
    let var_3 = global2[_wgslsmith_index_u32(1u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.d.d.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_2().d.x), _wgslsmith_f_op_f32(f32(-1f) * -2347f), true))), vec4<u32>(var_2.b.b.x, firstLeadingBit(_wgslsmith_mult_u32(1u, ~42836u)), 68762u, func_2().b.x), ~0u);
}

