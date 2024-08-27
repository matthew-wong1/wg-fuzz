struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: vec4<u32>;

var<private> global2: vec2<f32> = vec2<f32>(426f, 2173f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)) * _wgslsmith_f_op_f32(select(299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_div_f32(global2.x, -589f)), all(vec2<bool>(arg_1.x, arg_1.x))))), u_input.a | (u_input.a | (u_input.a | min(vec3<i32>(-4907i, -34501i, u_input.a.x), u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - 956f) - global2.x);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -188f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1552f, 712f)), vec2<f32>(_wgslsmith_f_op_f32(round(356f)), _wgslsmith_f_op_f32(global2.x * global2.x))))));
    global0 = array<u32, 24>();
    return _wgslsmith_add_vec4_u32(~vec4<u32>(~89274u, 35615u, 6241u, max(20937u << (global0[_wgslsmith_index_u32(global1.x, 24u)] % 32u), ~1u)), vec4<u32>(0u, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1.x, 70067u), 24u)], _wgslsmith_dot_vec3_u32(~global1.zyz, _wgslsmith_add_vec3_u32(global1.wyy & global1.wxw, ~global1.wwx)), reverseBits(~global1.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = select(~vec4<u32>((global1.x & 4294967295u) | ~74567u, ~global0[_wgslsmith_index_u32(89588u, 24u)], 0u, reverseBits(~global0[_wgslsmith_index_u32(16829u, 24u)])), ~abs(max(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 24u)], 24u)], 4294967295u, 19895u, 51812u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 24u)], 24u)], 0u, 1579u, global1.x))), vec4<bool>(false, !(!(arg_0 != 2147483647i)), true, !(true || (arg_1.c.x > 16262i))));
    global1 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, global1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 24u)], 24u)], 20280u), ~vec4<u32>(global0[_wgslsmith_index_u32(29144u, 24u)], var_0.x, global1.x, 3549u)), func_3(true, select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), 560f), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1335u, global1.x, global0[_wgslsmith_index_u32(global1.x, 24u)], global1.x), vec4<u32>(23528u, var_0.x, 0u, 30123u))), _wgslsmith_add_vec4_u32(~vec4<u32>(55836u, global0[_wgslsmith_index_u32(29576u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], 0u), vec4<u32>(~0u, ~var_0.x, ~global0[_wgslsmith_index_u32(15796u, 24u)], abs(3251u)))) & ((vec4<u32>(16340u, firstLeadingBit(global0[_wgslsmith_index_u32(var_0.x, 24u)]), _wgslsmith_dot_vec2_u32(global1.xz, global1.yw), global0[_wgslsmith_index_u32(12287u, 24u)] & var_0.x) ^ ~abs(vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 24u)], 111828u, 45221u, global0[_wgslsmith_index_u32(var_0.x, 24u)]))) << ((firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, global0[_wgslsmith_index_u32(global1.x, 24u)], 14307u, 4294967295u), vec4<u32>(var_0.x, 0u, global0[_wgslsmith_index_u32(var_0.x, 24u)], var_0.x))) | vec4<u32>(1u, 1u, 0u, 1u)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-global2.x);
    let var_2 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, arg_1.d.a, _wgslsmith_f_op_f32(-arg_1.b)), arg_1.a), global2.x, ~(-firstTrailingBit(vec2<i32>(u_input.b, u_input.b))), Struct_1(_wgslsmith_div_f32(-727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), arg_1.d.b));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.d.a, var_2.a.x))), -2953f, any(!vec3<bool>(true, all(vec4<bool>(false, true, true, true)), -416f >= arg_1.d.a))));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    global0 = array<u32, 24>();
    var var_0 = !vec3<bool>(select(arg_1, _wgslsmith_mod_i32(arg_0.b.x, 1i) < ~arg_0.b.x, func_2(reverseBits(arg_0.b.x), Struct_2(vec3<f32>(arg_0.a, -793f, 757f), -728f, vec2<i32>(0i, -2147483647i), arg_0), u_input.b)), select(!arg_1 | all(vec3<bool>(false, arg_1, false)), true, !any(vec3<bool>(arg_1, false, false))), any(vec3<bool>(arg_1 && false, arg_1, false)));
    global0 = array<u32, 24>();
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(select(-149f, global2.x, arg_1)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1699f, global2.x) + vec2<f32>(arg_0.a, -1045f)) * vec2<f32>(-969f, global2.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, arg_0.a) * vec2<f32>(arg_0.a, arg_0.a)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1952f, arg_0.a) - _wgslsmith_f_op_f32(ceil(1432f)))))), vec2<i32>(-_wgslsmith_mult_i32(-16031i, firstLeadingBit(arg_0.b.x)), select(arg_0.b.x, u_input.b, (false && var_0.x) || (global1.x < global1.x))), arg_0);
    return _wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(sign(373f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(615f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1704f), _wgslsmith_f_op_f32(-231f - _wgslsmith_div_f32(411f, global2.x)), false)), 2852f)));
    global0 = array<u32, 24>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-832f * -1120f), -261f, true))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, var_0) + vec3<f32>(-746f, global2.x, var_0)))))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(var_0, u_input.a), u_input.a.x <= 17619i))))), -min(vec2<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), vec2<i32>(_wgslsmith_sub_i32(4889i, -22345i), 1i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), vec3<i32>(u_input.a.x, u_input.b, u_input.a.x) & (countOneBits(vec3<i32>(-57267i, 2147483647i, u_input.b)) << (~global1.wyx % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.b);
    global0 = array<u32, 24>();
    var var_3 = true | (all(vec2<bool>(true, true)) & any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)))));
    global1 = ~vec4<u32>(~15157u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 1u) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 24u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 4294967295u), vec4<u32>(0u, global1.x, global1.x, global0[_wgslsmith_index_u32(global1.x, 24u)])), 24u)], 24u)], global1.x, global0[_wgslsmith_index_u32(4294967295u, 24u)]);
    let var_4 = select(!(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true))), vec4<bool>(var_1.d.b.x <= _wgslsmith_dot_vec2_i32(max(vec2<i32>(21623i, var_1.d.b.x), vec2<i32>(6070i, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, var_1.c.x), var_1.d.b.yy)), all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), any(vec3<bool>(true, false, false)))), all(vec2<bool>(true, false)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), select(vec4<bool>(false, !(10007u > global1.x), true, global2.x > _wgslsmith_f_op_f32(-global2.x)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), vec4<bool>(false, true, true, true)), select(vec4<bool>(func_2(u_input.a.x, Struct_2(vec3<f32>(var_1.a.x, -1990f, -1262f), var_0, vec2<i32>(var_1.d.b.x, u_input.b), Struct_1(-308f, vec3<i32>(u_input.a.x, 6838i, -25353i))), u_input.a.x), true, -325f == global2.x, any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), !(1661f <= var_1.d.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, -vec4<i32>(-1i, firstLeadingBit(u_input.a.x ^ 19386i), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, var_1.d.b.x), 1i), ~(~var_1.c.x)), 406f, vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1457f) + _wgslsmith_f_op_f32(ceil(-156f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1428f * -440f), var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -266f))), var_0, -1729f));
}

