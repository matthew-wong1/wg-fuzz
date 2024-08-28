struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<u32, 31> = array<u32, 31>(10740u, 0u, 0u, 4294967295u, 1u, 1u, 26176u, 4910u, 1u, 6752u, 4294967295u, 0u, 1u, 1u, 0u, 1u, 19136u, 4294967295u, 0u, 0u, 3879u, 37824u, 4294967295u, 89215u, 0u, 8012u, 0u, 6341u, 4294967295u, 0u, 74713u);

var<private> global2: f32;

var<private> global3: vec2<i32>;

var<private> global4: array<f32, 6> = array<f32, 6>(703f, -621f, 736f, 1358f, -736f, 1794f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_3(vec3<u32>(abs(abs(global1[_wgslsmith_index_u32(12447u, 31u)])), 14754u, 3959u), Struct_1(min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), select(vec4<u32>(u_input.a, 0u, global1[_wgslsmith_index_u32(70667u, 31u)], 1u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 31u)], 4294967295u, 59387u, 36919u), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], true, false, false))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 31u)], 31u)], u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, global1[_wgslsmith_index_u32(u_input.a, 31u)], u_input.a)), vec4<u32>(global1[_wgslsmith_index_u32(1u, 31u)], 45528u, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]))), false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4[_wgslsmith_index_u32(0u, 6u)], -1013f), vec2<f32>(1079f, -864f))) * vec2<f32>(global4[_wgslsmith_index_u32(3404u, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(208f, -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(861f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3926u, 31u)], 31u)], 31u)], 6u)]) + vec2<f32>(global4[_wgslsmith_index_u32(21172u, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(74115u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 31u)], 31u)]), ~vec2<u32>(8231u, global1[_wgslsmith_index_u32(17349u, 31u)])), 2u)]))), Struct_3(firstTrailingBit(vec3<u32>(~38031u, 12904u, 17271u)), Struct_1(select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(77602u, 31u)], u_input.a, u_input.a), vec4<u32>(1u, 56077u, 4294967295u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, global1[_wgslsmith_index_u32(14726u, 31u)], 70521u), vec4<u32>(global1[_wgslsmith_index_u32(44449u, 31u)], 1u, 0u, 7032u)), !vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20810u, 31u)], 2u)], false, global0[_wgslsmith_index_u32(28786u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])), u_input.a), false, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-816f * global4[_wgslsmith_index_u32(u_input.a, 6u)]), _wgslsmith_f_op_f32(max(557f, global4[_wgslsmith_index_u32(3935u, 6u)]))), vec2<f32>(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(44910u, 6u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 6u)])), global4[_wgslsmith_index_u32(~16303u, 6u)])))));
    global4 = array<f32, 6>();
    global2 = var_0.b.d.x;
    var var_1 = !var_0.b.c;
    let var_2 = Struct_2(vec3<i32>(1i, -1i, _wgslsmith_clamp_i32(global3.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, 10405i), vec4<i32>(global3.x, 7614i, global3.x, global3.x)), ~(global3.x << (global1[_wgslsmith_index_u32(u_input.a, 31u)] % 32u)))));
    return abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(32497i, -1i), -var_2.a.x, ~30452i), 1i), countOneBits(-1i)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    var var_0 = ~_wgslsmith_sub_i32(func_3(), -50820i << (u_input.a % 32u));
    global4 = array<f32, 6>();
    global3 = ~arg_2.yy;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(1277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(33332u, 6u)] + global4[_wgslsmith_index_u32(0u, 6u)])) + -918f), false)), arg_3);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -624f);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1, arg_1), (~arg_1 & ~arg_1) | ~_wgslsmith_mod_vec2_u32(arg_1, vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(16933u, 31u)])), _wgslsmith_add_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(arg_1.x, 31u)], global1[_wgslsmith_index_u32(arg_1.x, 31u)]), arg_1)), vec2<u32>(arg_1.x, arg_1.x))), max(countOneBits((arg_1 ^ arg_1) << (vec2<u32>(arg_1.x, 4294967295u) % vec2<u32>(32u))), arg_1));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec4<u32> {
    let var_0 = select(vec3<bool>(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 31u)], 2u)], global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~u_input.a, 31u)], 2u)], all(vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 2u)])) & !any(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(24355u, 2u)], false))), !vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], true)), arg_0.a.x <= (-10523i << (global1[_wgslsmith_index_u32(u_input.a, 31u)] % 32u)), false), vec3<bool>(true, true, true));
    global4 = array<f32, 6>();
    let var_1 = 4751u;
    let var_2 = ~arg_0.a.x;
    let var_3 = -1000f;
    return _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, _wgslsmith_add_u32(~var_1, 0u), firstTrailingBit(var_1) & ~0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~35813u, 31u)], 31u)])), ~vec4<u32>(func_2(false, vec2<u32>(var_1, 1u), vec3<i32>(17463i, arg_0.a.x, arg_0.a.x), 677f) >> (u_input.a % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, 38308u, 21760u)), ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 17812u, var_1, 0u)), _wgslsmith_mult_u32(~u_input.a, global1[_wgslsmith_index_u32(4294967295u, 31u)]), reverseBits(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 60003u, _wgslsmith_mult_u32(45574u, u_input.a), countOneBits(9926u)), reverseBits(countOneBits(func_1(Struct_2(vec3<i32>(-48780i, -1i, global3.x)), -32447i)))), ~max(u_input.a, 12977u) ^ u_input.a);
    let var_1 = var_0;
    let var_2 = 0i >> (var_0.b % 32u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(~var_0.a.x, 6u)], _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(~1u, 6u)], -493f)), all(vec2<bool>(false, global0[_wgslsmith_index_u32(108305u, 2u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) + -655f), 1358f);
    global3 = ~firstTrailingBit((vec2<i32>(var_2, 2147483647i) >> (var_1.a.xx % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(vec2<i32>(-7043i, -24369i) << (vec2<u32>(60781u, var_0.b) % vec2<u32>(32u)), vec2<i32>(global3.x, -1i) ^ vec2<i32>(-145378i, global3.x)));
    var var_4 = _wgslsmith_mult_i32(-global3.x << (var_1.b % 32u), global3.x) ^ abs(_wgslsmith_dot_vec2_i32(countOneBits(min(vec2<i32>(39779i, var_2), vec2<i32>(var_2, -17906i))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(global3.x, 2147483647i), vec2<i32>(var_2, 11582i))));
    var var_5 = Struct_3(_wgslsmith_mult_vec3_u32(abs(abs(vec3<u32>(145706u, 0u, 27690u))), abs(max(vec3<u32>(17204u, 0u, var_0.b), func_1(Struct_2(vec3<i32>(global3.x, global3.x, var_2)), -11476i).xxz))), Struct_1(vec4<u32>(~(4294967295u << (var_1.b % 32u)), ~var_0.a.x & u_input.a, firstTrailingBit(4294967295u), global1[_wgslsmith_index_u32(1u, 31u)]), ~4294967295u), true, var_3.xy);
    let var_6 = ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 22621i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(global3.x, 0i))), -(~select(vec3<i32>(var_2, -1i, -1i), vec3<i32>(var_2, global3.x, var_2), vec3<bool>(false, false, false))));
    var var_7 = vec2<u32>(_wgslsmith_mult_u32(var_1.a.x | ~global1[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_clamp_u32(var_0.a.x, func_1(Struct_2(vec3<i32>(var_6.x, global3.x, var_2)), var_2).x, firstLeadingBit(func_1(Struct_2(var_6), global3.x).x))), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(~4294967295u, var_5.a.x & 43968u, ~29298u), _wgslsmith_div_u32(select(abs(u_input.a), var_1.b, true), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(40159u, 31u)], ~var_5.b.a.x)), firstLeadingBit(46594u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.x, ~max(global3.x ^ 0i, _wgslsmith_div_i32(var_2, var_6.x)) | var_6.x, _wgslsmith_div_vec4_f32(vec4<f32>(-519f, 196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(1u, 6u)]))), 373f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(9964u, 6u)], var_5.d.x, global4[_wgslsmith_index_u32(var_5.b.a.x, 6u)], var_3.x)), vec4<f32>(_wgslsmith_f_op_f32(-1242f - -833f), var_5.d.x, _wgslsmith_f_op_f32(-var_5.d.x), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(var_5.b.a.x, 6u)], -479f))))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, firstLeadingBit(u_input.a)), max(~max(vec2<u32>(var_5.b.a.x, 0u), vec2<u32>(var_7.x, var_1.a.x)), var_1.a.yw)), ~(-vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-41688i, 68218i, var_6.x), var_6))));
}

