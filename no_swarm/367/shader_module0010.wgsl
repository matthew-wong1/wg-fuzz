struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-7835i, 19344i), vec2<i32>(-4385i, 5916i), vec2<i32>(2147483647i, 466i), vec2<i32>(2147483647i, -54938i), vec2<i32>(26127i, 17366i), vec2<i32>(42537i, 156i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, 26546i), vec2<i32>(20910i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(22493i, 1i), vec2<i32>(-1i, 9393i), vec2<i32>(15986i, -31851i), vec2<i32>(0i, -18319i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-12245i, 51654i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, -26296i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-40327i, 2147483647i));

var<private> global1: i32 = 24283i;

var<private> global2: Struct_3;

var<private> global3: array<vec3<i32>, 24>;

var<private> global4: array<i32, 32> = array<i32, 32>(0i, 2147483647i, 1i, 0i, 0i, 2147483647i, 1i, 16176i, i32(-2147483648), 1i, -5588i, -1i, 57813i, 8139i, 2147483647i, 2147483647i, 1i, -1i, 0i, 1i, i32(-2147483648), -21698i, 0i, -1i, -20819i, -1i, 3478i, 4131i, 1i, 5932i, -1i, 1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = arg_3.c.b;
    let var_1 = arg_3;
    var var_2 = var_1.c.b;
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(~2575u, ~u_input.b), 1u), vec2<u32>(arg_0.c, _wgslsmith_clamp_u32(~1602u, _wgslsmith_mod_u32(reverseBits(global2.c), 4294967295u), max(_wgslsmith_mult_u32(arg_0.c, arg_0.c), min(1u, u_input.b)))));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.c.c.x)) + global2.e)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2463f), _wgslsmith_f_op_f32(-arg_1))))), !vec4<bool>(!(!var_0.x), !(4294967295u > u_input.b), arg_0.a.x > -29080i, any(vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e)), arg_3.a.x, arg_1), arg_3.c.c)), vec2<i32>(2147483647i, ~firstLeadingBit(_wgslsmith_mod_i32(arg_3.b.x, global4[_wgslsmith_index_u32(global2.c, 32u)]))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_3.c.e + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-712f, -1527f, arg_3.c.c.x), vec3<f32>(859f, arg_3.a.x, var_1.c.a))) + vec3<f32>(var_1.c.a, 871f, var_1.c.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c.e.x, arg_1, arg_0.d.x)) + var_1.c.c))));
    return max(global2.a, _wgslsmith_add_vec3_i32(vec3<i32>(var_1.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.a.x, arg_0.a.x, arg_3.b.x), vec4<i32>(-2147483647i, 3059i, arg_0.a.x, var_1.c.d.x)), -34645i), ~(-vec3<i32>(var_1.b.x, arg_0.a.x, 1i))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = false;
    var var_1 = -countOneBits(~(func_3(Struct_3(vec3<i32>(arg_1.x, -24729i, -2147483647i), arg_2.wx, u_input.a, global2.d, -849f), arg_0.c.x, false, Struct_2(vec2<f32>(global2.d.x, 348f), global0[_wgslsmith_index_u32(global2.c, 22u)], Struct_1(1000f, arg_0.b, arg_0.c, vec2<i32>(arg_0.d.x, 2147483647i), arg_0.c), true, true)) | (vec3<i32>(global4[_wgslsmith_index_u32(global2.c, 32u)], 2147483647i, arg_1.x) >> (vec3<u32>(40530u, 67432u, global2.c) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-34674i, _wgslsmith_dot_vec3_i32(global2.a, firstTrailingBit(vec3<i32>(27634i, arg_1.x, arg_1.x)) & global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.c, global2.c, 0u), 24u)])), vec2<i32>(1i, ~global4[_wgslsmith_index_u32(u_input.a, 32u)]) ^ vec2<i32>(-(global2.a.x | arg_1.x), min(-2147483647i, reverseBits(global4[_wgslsmith_index_u32(48280u, 32u)]))));
    var_1 = vec3<i32>(-1i) * -vec3<i32>(-arg_0.d.x, ~arg_0.d.x, var_1.x);
    global4 = array<i32, 32>();
    return arg_2.yy;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    global4 = array<i32, 32>();
    let var_0 = select(select(!(!select(vec4<bool>(global2.b.x, global2.b.x, true, true), vec4<bool>(global2.b.x, false, global2.b.x, global2.b.x), vec4<bool>(global2.b.x, true, true, global2.b.x))), vec4<bool>(true, global2.b.x, false, false), true), select(!vec4<bool>(any(vec3<bool>(global2.b.x, global2.b.x, global2.b.x)), global2.b.x, false, any(vec4<bool>(false, false, global2.b.x, global2.b.x))), select(vec4<bool>(true, any(global2.b), global2.b.x, any(vec3<bool>(global2.b.x, false, true))), !select(vec4<bool>(global2.b.x, global2.b.x, global2.b.x, true), vec4<bool>(true, false, true, true), vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global2.b.x)), select(false, false, false)), vec4<bool>(global2.d.x < _wgslsmith_f_op_f32(-250f * -500f), all(!vec4<bool>(false, global2.b.x, true, true)), global2.b.x & true, all(vec2<bool>(true, false)))), !(global2.d.x < _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1245f, 615f), _wgslsmith_f_op_f32(global2.e * 622f)))));
    global2 = Struct_3(_wgslsmith_mod_vec3_i32(-(vec3<i32>(global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(arg_0.x, 32u)], 37649i) >> (~vec3<u32>(1u, arg_1, 0u) % vec3<u32>(32u))), global3[_wgslsmith_index_u32(4294967295u, 24u)]), select(!(!global2.b), var_0.xx, !select(select(var_0.yy, global2.b, false), vec2<bool>(var_0.x, false), func_2(Struct_1(339f, var_0, vec3<f32>(-288f, global2.e, global2.d.x), global2.a.yy, vec3<f32>(2658f, -701f, 444f)), vec2<i32>(-1i, -1i), var_0))), global2.c ^ select(_wgslsmith_add_u32(~arg_0.x, reverseBits(global2.c)), ~11398u, true), vec2<f32>(-765f, -260f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global2.d.x, 268f)), _wgslsmith_f_op_f32(global2.e - global2.e))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-977f, global2.d.x), _wgslsmith_f_op_f32(519f * 838f)))))));
    let var_1 = Struct_3(vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global2.a.x), vec2<i32>(global4[_wgslsmith_index_u32(50261u, 32u)], 0i), global0[_wgslsmith_index_u32(u_input.b, 22u)])), vec2<i32>(-3003i, countOneBits(global2.a.x))), _wgslsmith_clamp_i32(~global4[_wgslsmith_index_u32(firstLeadingBit(global2.c), 32u)], 0i, global2.a.x), -17239i), vec2<bool>(!all(var_0.yyz), true), _wgslsmith_mult_u32(firstLeadingBit(~(~54386u)), arg_0.x), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global2.e - 1773f)), all(vec2<bool>(var_0.x, global2.b.x))))));
    global1 = reverseBits(-9054i >> (1u % 32u));
    return Struct_1(global2.e, !select(select(var_0, vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, global2.b.x), true), !vec4<bool>(true, false, true, global2.b.x), vec4<bool>(true, false, true, global2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, -402f, var_1.d.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1143f, 501f, var_1.d.x)), vec3<f32>(-1060f, -231f, var_1.d.x))))), select(-(~(vec2<i32>(2147483647i, 2147483647i) ^ global0[_wgslsmith_index_u32(4294967295u, 22u)])), global0[_wgslsmith_index_u32(418u, 22u)], any(vec2<bool>(var_1.e == global2.e, true))), vec3<f32>(499f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(-var_1.e)) - _wgslsmith_f_op_f32(global2.d.x * _wgslsmith_div_f32(var_1.e, global2.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(938f, _wgslsmith_f_op_f32(-var_1.e), !var_1.b.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = vec2<u32>(arg_0.c, _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.c, arg_1) ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 50042u), vec2<u32>(4294967295u, arg_1)), vec2<u32>(~u_input.b, arg_1), select(global2.b, !arg_2.b.yw, arg_0.b)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(47341u, u_input.b) << (vec2<u32>(arg_0.c, arg_0.c) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, 62819u)))));
    let var_1 = Struct_2(arg_0.d, ~vec2<i32>(global2.a.x, _wgslsmith_mod_i32(0i, global2.a.x) << (~arg_0.c % 32u)), Struct_1(_wgslsmith_f_op_f32(min(arg_0.d.x, 1f)), !vec4<bool>(all(arg_2.b.ww), arg_2.b.x, !arg_0.b.x, arg_2.b.x), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.c.x)))), -(~(-vec2<i32>(-3891i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1038f, global2.d.x, 1488f), _wgslsmith_f_op_vec3_f32(max(arg_2.e, vec3<f32>(622f, arg_2.a, 714f))))))), false, select(global2.a.x, arg_0.a.x >> (0u % 32u), -global4[_wgslsmith_index_u32(global2.c, 32u)] > global2.a.x) != _wgslsmith_clamp_i32(arg_0.a.x, 1i, arg_2.d.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)) - _wgslsmith_f_op_f32(trunc(-1218f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(682f - -521f)))))));
    let var_3 = vec2<u32>(var_0.x | var_0.x, 1u);
    global3 = array<vec3<i32>, 24>();
    return reverseBits(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(56918u, 4294967295u, 0u, 10232u), vec4<u32>(global2.c, var_0.x, 49770u, arg_0.c))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(9281u, 70908u), 0u), ~firstTrailingBit(149440u), 4294967295u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32((firstTrailingBit(vec4<i32>(52041i, 39174i, global4[_wgslsmith_index_u32(global2.c, 32u)], 79604i)) >> (vec4<u32>(u_input.b, 22730u, 0u, 1u) % vec4<u32>(32u))) ^ ((vec4<i32>(-53671i, global2.a.x, -2147483647i, global2.a.x) | vec4<i32>(-54938i, global4[_wgslsmith_index_u32(global2.c, 32u)], 31789i, 2147483647i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(10880u, global2.c, u_input.a, 1u), vec4<u32>(u_input.b, global2.c, global2.c, 14908u)) % vec4<u32>(32u))), ~(vec4<i32>(-40834i, global2.a.x, 0i, global4[_wgslsmith_index_u32(global2.c, 32u)]) & vec4<i32>(-39814i, 14099i, global4[_wgslsmith_index_u32(u_input.b, 32u)], 2147483647i)) | vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 32u)], _wgslsmith_sub_i32(1i, 1i), countOneBits(-1i), global4[_wgslsmith_index_u32(1u, 32u)] ^ -2147483647i)) >> (func_4(Struct_3(global2.a, global2.b, 88074u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e, 630f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e))), _wgslsmith_sub_u32(global2.c, ~(~u_input.b)), func_1(~vec2<u32>(86720u, global2.c) ^ min(vec2<u32>(0u, global2.c), vec2<u32>(u_input.a, global2.c)), (74969u << (global2.c % 32u)) & (global2.c ^ u_input.a))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1186f, 186f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), 1000f), _wgslsmith_f_op_f32(trunc(-1115f))))));
    let var_2 = abs(~min(vec4<u32>(43147u, max(39493u, 0u), 4294967295u, 5960u), vec4<u32>(20118u, 1u, reverseBits(28114u), ~global2.c)));
    global4 = array<i32, 32>();
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, abs(~select(vec2<u32>(global2.c, 71061u), var_2.ww, global2.b) & ~(~var_2.xw)));
}

