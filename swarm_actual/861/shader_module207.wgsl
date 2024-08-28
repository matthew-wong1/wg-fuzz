struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(1i, 9248i, i32(-2147483648), -9983i, i32(-2147483648), 34616i, -1i, 31826i, -34687i, 51569i, -1i, -1i, i32(-2147483648), i32(-2147483648), 12299i);

var<private> global1: u32;

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 9>;

var<private> global4: array<u32, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    var var_0 = ~vec2<i32>(-2147483647i, select(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(4670u, 17u)], 1u), 17u)], 15u)], ~u_input.b.x), 1i, true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 290f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1324f, -676f))), true)), 1f));
    let var_2 = vec4<i32>(firstTrailingBit(~(i32(-1i) * -6191i)) >> (~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~74847u), 17u)], 17u)], 17u)] % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.xwz, vec3<i32>(2147483647i, 1i, var_0.x)), u_input.b.xyx) >> ((6985u | ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]) % 32u), ~(-global0[_wgslsmith_index_u32(~118533u, 15u)])), _wgslsmith_add_i32(-var_0.x, _wgslsmith_dot_vec3_i32(u_input.b.xyz, _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 17u)], 15u)], -2147483647i, 2147483647i), u_input.b.wzw))), _wgslsmith_mod_i32(u_input.a, -62767i));
    let var_3 = countOneBits(vec4<u32>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, max(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 17u)], 17u)], 1u)), 17u)] ^ ~1u, 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12127u, 17u)], 17u)], 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)], 17u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)]), vec3<u32>(4294967295u, 100058u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18030u, 17u)], 17u)], 17u)]))) & max(global4[_wgslsmith_index_u32(0u, 17u)], 33202u), global4[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3598u, 17u)], 17u)], ~0u), max(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21777u, 17u)], 17u)], 17u)], 17u)], 17u)], 1u), global4[_wgslsmith_index_u32(4294967295u, 17u)] >> (1u % 32u))), 17u)]));
    global0 = array<i32, 15>();
    return reverseBits(~countOneBits(firstTrailingBit(var_2.x)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, min(-1i, -2147483647i), global0[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 17u)], 17u)]), 15u)], ~u_input.b.x), firstLeadingBit(u_input.b)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = func_3();
    let var_1 = arg_3;
    var var_2 = u_input.b;
    let var_3 = arg_3;
    var_2 = u_input.b ^ -(vec4<i32>(20331i, ~global0[_wgslsmith_index_u32(arg_3.a.x, 15u)], ~17610i, countOneBits(u_input.b.x)) & ~vec4<i32>(-1i, 1i, 1i, 26277i));
    return !var_3.d.x;
}

fn func_1() -> Struct_1 {
    global4 = array<u32, 17>();
    global3 = array<vec2<f32>, 9>();
    let var_0 = 0u;
    global0 = array<i32, 15>();
    let var_1 = Struct_1(~(vec4<u32>(reverseBits(var_0), var_0 >> (36298u % 32u), ~6183u, 4294967295u) & vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(97819u, global4[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 57325u, 59708u, 0u), vec4<u32>(global4[_wgslsmith_index_u32(var_0, 17u)], var_0, global4[_wgslsmith_index_u32(0u, 17u)], 4294967295u)), ~var_0, 1u)), ~((~var_0 | global4[_wgslsmith_index_u32(var_0, 17u)]) >> (28574u % 32u)), max(firstLeadingBit(vec2<u32>(0u, abs(global4[_wgslsmith_index_u32(4294967295u, 17u)]))), firstTrailingBit(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 17u)], 17u)], var_0)), ~vec2<u32>(var_0, 4294967295u)))), select(vec3<bool>((global4[_wgslsmith_index_u32(var_0, 17u)] & var_0) <= global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(var_0, 17u)], var_0, var_0), 17u)], !func_2(-2147483647i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 17u)], 9u)], var_0, Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(var_0, 17u)], 19932u, global4[_wgslsmith_index_u32(8842u, 17u)]), 0u, vec2<u32>(var_0, global4[_wgslsmith_index_u32(1204u, 17u)]), vec3<bool>(true, false, true))), true), vec3<bool>(true & (4294967295u <= global4[_wgslsmith_index_u32(1u, 17u)]), true, func_2(-10464i, _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(var_0, 9u)]), ~1u, Struct_1(vec4<u32>(var_0, var_0, 40611u, 5932u), 52928u, vec2<u32>(35177u, var_0), vec3<bool>(true, true, false)))), select(vec3<bool>(true, any(vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(30376u, 15u)] < -2147483647i), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), true)));
    return Struct_1(abs(~var_1.a), _wgslsmith_mult_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(65619u, var_1.b, var_1.b, 1u), var_1.a)), ~select(~var_0, var_0, var_1.d.x && var_1.d.x)), vec2<u32>(abs(firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 17u)])), ~(~49483u)) & var_1.a.wx, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global4[_wgslsmith_index_u32(103554u, 17u)];
    global2 = var_0.a.x;
    global0 = array<i32, 15>();
    let var_2 = Struct_1(vec4<u32>(~1u, ~1u & (0u << (var_0.b % 32u)), 43675u, ~(~var_0.a.x)) & ~_wgslsmith_div_vec4_u32(var_0.a | vec4<u32>(1u, global4[_wgslsmith_index_u32(1602u, 17u)], 4294967295u, global4[_wgslsmith_index_u32(43363u, 17u)]), var_0.a), 57445u, func_1().a.yw, func_1().d);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(-38085i), 2147483647i, var_2.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(396f - _wgslsmith_div_f32(-1802f, _wgslsmith_f_op_f32(ceil(1929f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(491f)))), all(var_2.d) & all(vec2<bool>(var_2.d.x, false)))), u_input.a, min(76799u, 1u), _wgslsmith_mod_vec4_u32(~(~reverseBits(var_0.a)), vec4<u32>(var_0.a.x, 4294967295u, (global4[_wgslsmith_index_u32(93159u, 17u)] & 1u) | (var_0.b ^ 1u), global4[_wgslsmith_index_u32(~8218u, 17u)])));
}

