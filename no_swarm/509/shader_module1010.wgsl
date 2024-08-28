struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: Struct_1 = Struct_1(1u, vec3<u32>(1u, 0u, 4294967295u), -14955i, vec2<u32>(0u, 35029u));

var<private> global2: array<vec2<bool>, 15>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 10518u);

var<private> global4: array<vec2<u32>, 32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> u32 {
    global1 = arg_0;
    global2 = array<vec2<bool>, 15>();
    global3 = firstLeadingBit(global1.d);
    global3 = abs(vec2<u32>(~global1.a, ~23622u));
    global2 = array<vec2<bool>, 15>();
    return global3.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    var var_0 = !(!select(vec3<bool>(all(vec3<bool>(true, false, true)), true, all(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true), vec3<bool>(false, true, true)));
    var var_1 = Struct_1(_wgslsmith_sub_u32(25591u, global1.d.x) & _wgslsmith_clamp_u32(4294967295u, func_2(Struct_1(global1.a, arg_0, arg_1.x, arg_0.yz), vec3<bool>(true, var_0.x, true), -global1.c, Struct_2(1i)), ~1u), vec3<u32>(_wgslsmith_mod_u32(1u, 61738u), _wgslsmith_clamp_u32(global1.b.x, ~(~75473u), firstLeadingBit(949u)), global3.x), global1.c | _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~arg_0.x, 6u)], arg_1), vec2<u32>(_wgslsmith_sub_u32(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 0u, 20512u, 1u), ~vec4<u32>(global3.x, 1u, 93077u, 15422u))), min(~firstLeadingBit(12940u), _wgslsmith_dot_vec3_u32(arg_0, reverseBits(vec3<u32>(0u, global1.b.x, 7395u))))));
    var_0 = vec3<bool>(var_0.x, true, any(vec3<bool>(all(vec3<bool>(true, var_0.x, var_0.x)), true, true)) & all(!(!var_0.yz)));
    global0 = array<vec3<i32>, 6>();
    global2 = array<vec2<bool>, 15>();
    return ~_wgslsmith_div_u32(~countOneBits(~37308u), _wgslsmith_clamp_u32(~1u, var_1.a, ~global1.d.x));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    global1 = Struct_1(func_2(Struct_1(~19177u, select(_wgslsmith_sub_vec3_u32(arg_2.b, global1.b), ~vec3<u32>(59162u, arg_2.d.x, 1u), vec3<bool>(true, true, true)), arg_1, abs(vec2<u32>(57980u, 8427u))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(any(global2[_wgslsmith_index_u32(global3.x, 15u)]), true, true)), ~u_input.b, arg_0), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(27050u, 26445u, arg_2.d.x), vec3<u32>(0u, 9333u, arg_2.b.x)) ^ arg_2.b, _wgslsmith_add_vec3_u32(vec3<u32>(global1.b.x, arg_2.b.x, arg_2.b.x), vec3<u32>(global3.x, 37231u, 26781u)) >> (vec3<u32>(0u, global1.d.x, arg_2.a) % vec3<u32>(32u)), select(vec3<u32>(1u, 0u | global3.x, arg_2.a), vec3<u32>(1u, global1.b.x, func_3(arg_2.b, u_input.a, 147f, vec4<f32>(1363f, -318f, 357f, -767f))), true)), _wgslsmith_sub_i32(2147483647i, arg_2.c), global1.b.zy);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(abs(arg_0.a)), 58634i), _wgslsmith_sub_vec2_i32(u_input.a.zy, vec2<i32>(global1.c, countOneBits(~(-1i)))));
    global3 = global1.d;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-122f, -479f))), vec2<f32>(-1067f, 512f), all(global2[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(631f, -1386f))), all(global2[_wgslsmith_index_u32(67963u, 15u)]) & false)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(103f, 757f) + vec2<f32>(906f, 156f)), vec2<f32>(-1267f, 973f), all(vec4<bool>(true, true, false, false)))) * vec2<f32>(-1725f, _wgslsmith_f_op_f32(f32(-1f) * -2837f)))));
    return select(firstLeadingBit(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.a, global3.x & global1.b.x, global3.x), 32u)]), _wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, global3.x), ~vec2<u32>(arg_2.b.x, 31912u), all(vec3<bool>(true, true, true))), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global1.b.x), vec2<u32>(arg_2.d.x, global3.x)))), global2[_wgslsmith_index_u32(global3.x, 15u)]) << (global1.d % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.d.x, global1.b, 1i, global1.d & _wgslsmith_div_vec2_u32(global1.d, _wgslsmith_add_vec2_u32(global1.d, global4[_wgslsmith_index_u32(global1.a, 32u)]) >> (func_1(Struct_2(-25585i), u_input.a.x, Struct_1(264u, global1.b, 2147483647i, global1.d)) % vec2<u32>(32u))));
    let var_0 = vec4<bool>(false, false, !(any(vec4<bool>(true, true, true, true)) & select(false, true, true)), 1i != _wgslsmith_clamp_i32(1956i, global1.c, global1.c));
    global4 = array<vec2<u32>, 32>();
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.c, _wgslsmith_clamp_i32(min(global1.c, 4894i), abs(_wgslsmith_mod_i32(9754i, 41827i)), reverseBits(_wgslsmith_sub_i32(4405i, u_input.a.x))), ~(-(i32(-1i) * -35401i)), max(_wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.a.x & u_input.a.x), u_input.b)), vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -1i, 25031i, u_input.a.x), -vec4<i32>(u_input.a.x, global1.c, -2147483647i, u_input.b))), _wgslsmith_mod_i32(u_input.a.x, -(~1i)), _wgslsmith_mod_i32(-countOneBits(global1.c), _wgslsmith_add_i32(global1.c, abs(global1.c))), _wgslsmith_mod_i32(-abs(u_input.a.x), _wgslsmith_mod_i32(select(2147483647i, global1.c, var_0.x), -1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -global1.c, firstTrailingBit(u_input.a.x), ~(~u_input.a.x)), select(vec4<i32>(abs(global1.c), global1.c ^ 0i, global1.c & global1.c, abs(6961i)), vec4<i32>(firstLeadingBit(0i), _wgslsmith_mult_i32(global1.c, 24760i), 2147483647i, -8679i & global1.c), false)));
    let var_2 = Struct_2(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.c << (56058u % 32u), _wgslsmith_add_i32(-2147483647i, u_input.b), -global1.c), ~_wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(33387i, var_1.x, global1.c), vec3<i32>(0i, var_1.x, u_input.a.x), vec3<i32>(var_1.x, 24715i, 12700i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(779f - -221f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-639f, _wgslsmith_f_op_f32(f32(-1f) * -1408f), !var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-507f * 1250f))))));
}

