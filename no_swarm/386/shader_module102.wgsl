struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, true, true, false, true, false, false, true, false, false, true, true, false, true, false, false, true, true, false, false, false);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(-1598f), vec2<u32>(8200u, 1u), vec3<bool>(false, true, true), Struct_1(1183f)));

var<private> global2: array<vec3<f32>, 26>;

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = abs(~(4294967295u ^ _wgslsmith_sub_u32(u_input.b.x, 0u))) & ~(~(~max(u_input.b.x, u_input.a.x)));
    var var_1 = -52185i;
    var_1 = _wgslsmith_clamp_i32(u_input.c, u_input.c, 3538i);
    let var_2 = global1[_wgslsmith_index_u32(14156u, 1u)];
    global1 = array<Struct_2, 1>();
    return select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 21u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.b, select(vec4<u32>(var_2.b.x, 0u, var_2.b.x, 4294967295u), u_input.b, var_2.c.x)), ~min(vec4<u32>(38976u, 44583u, 87955u, 22254u), u_input.b))), 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]);
}

fn func_2() -> vec3<bool> {
    let var_0 = -2865i;
    var var_1 = vec4<bool>(any(select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)], true)), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(20248u, 21u)], global0[_wgslsmith_index_u32(20499u, 21u)])), false)), true, any(select(vec3<bool>(func_3(), any(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(57167u, 21u)]), vec3<bool>(func_3(), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.a.x), 21u)], true), vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(select(vec4<u32>(36759u, u_input.b.x, u_input.b.x, 3564u), vec4<u32>(27777u, u_input.b.x, 4294967295u, 0u), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), u_input.b), vec4<u32>(firstLeadingBit(23185u), ~u_input.b.x, 4294967295u >> (u_input.b.x % 32u), select(u_input.a.x, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), 21u)]);
    let var_2 = var_1.x;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2056f + 1598f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(654f, 2592f)) * _wgslsmith_f_op_f32(sign(-2323f)))))), vec2<u32>(~1u, countOneBits(36938u)), !var_1.xzz, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-571f, 1008f, var_1.x)))));
    let var_4 = firstTrailingBit(_wgslsmith_mult_vec4_i32(~(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 10515i, var_0, u_input.c), vec4<i32>(-51936i, 24743i, -1i, var_0)) << ((u_input.b & u_input.b) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-8280i, u_input.c, 0i, u_input.c), vec4<i32>(var_0, 1i, var_0, 2147483647i)), abs(select(vec4<i32>(var_0, -6942i, u_input.c, var_0), vec4<i32>(-35597i, u_input.c, var_0, 1i), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, var_3.c.x))))));
    return vec3<bool>(var_1.x, true, _wgslsmith_dot_vec2_i32(vec2<i32>(min(2147483647i, var_0), 10105i), vec2<i32>(u_input.c, -17012i)) >= -var_0);
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = arg_0.a.x;
    var var_1 = vec4<bool>(!(false && all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(18076u, 21u)]))) & all(func_2()), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, select(~vec2<u32>(arg_0.a.x, 61726u), vec2<u32>(arg_0.a.x, u_input.b.x) << (vec2<u32>(0u, arg_0.a.x) % vec2<u32>(32u)), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 21u)])) ^ u_input.a.yy), 21u)], !(!global0[_wgslsmith_index_u32(countOneBits(24848u), 21u)]), !(global0[_wgslsmith_index_u32(countOneBits(select(u_input.b.x, 1u, false)), 21u)] || false));
    var var_2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(5149i, -30287i, -19422i, -48577i), vec4<i32>(21689i, u_input.c, -40788i, 1i), vec4<i32>(0i, u_input.c, u_input.c, u_input.c))), vec4<i32>(1i, 52299i, 45551i, u_input.c)), ~firstLeadingBit(vec4<i32>(-49597i, 1i, -39235i, 2147483647i) << (u_input.b % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(416f)))))));
    var var_4 = abs(vec3<i32>(abs(select(~663i, u_input.c, !global0[_wgslsmith_index_u32(arg_0.a.x, 21u)])), _wgslsmith_div_i32(-u_input.c, _wgslsmith_dot_vec3_i32(min(vec3<i32>(-11721i, u_input.c, 1i), vec3<i32>(1i, u_input.c, 0i)), firstLeadingBit(vec3<i32>(u_input.c, u_input.c, -79108i)))), (u_input.c | (u_input.c << (arg_0.a.x % 32u))) ^ -reverseBits(-44909i)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(func_1(Struct_3(~vec2<u32>(4294967295u, u_input.b.x))), max(2147483647i, ~u_input.c), ~u_input.c | ~countOneBits(44882i), -(~1i));
    global1 = array<Struct_2, 1>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(108f, 749f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(413f * -463f), -1220f, any(vec4<bool>(true, false, false, false))))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-667f)) * _wgslsmith_f_op_f32(abs(827f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 767f, -1286f, -138f), vec4<f32>(-1913f, -895f, 1712f, -1037f), vec4<bool>(false, var_1, true, global0[_wgslsmith_index_u32(u_input.b.x, 21u)])))))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(205f + -233f), _wgslsmith_f_op_f32(select(1297f, -1225f, false)))), 1324f, _wgslsmith_f_op_f32(-649f + 1f), 1143f)));
    let var_3 = ~(~max(_wgslsmith_sub_vec3_i32(var_0.xyy, vec3<i32>(u_input.c, 1i, var_0.x)), _wgslsmith_mod_vec3_i32(var_0.yxz, vec3<i32>(35106i, 1i, 1i)))) | ~(-(vec3<i32>(u_input.c, -1i, 65687i) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x) % vec3<u32>(32u))) & -(~vec3<i32>(-2147483647i, u_input.c, u_input.c)));
    let var_4 = vec4<bool>((false & global0[_wgslsmith_index_u32(48260u, 21u)]) != true, var_1, var_1, true);
    global2 = array<vec3<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.a.x), vec2<u32>(0u, 62116u >> (u_input.b.x % 32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.zy * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1947f, 1930f) * vec2<f32>(var_2.x, -632f))), var_2.xy))));
}

