struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: array<f32, 12>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>) -> i32 {
    global1 = array<f32, 12>();
    let var_0 = 230f;
    var var_1 = !any(arg_0);
    let var_2 = _wgslsmith_div_f32(1915f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(975f, arg_2.x)), _wgslsmith_f_op_f32(abs(1161f))), arg_1.e.x)));
    global0 = array<Struct_2, 11>();
    return ~(-_wgslsmith_add_i32(arg_1.b.x, i32(-1i) * -2147483647i) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(-38790i, arg_1.b.x, 0i, arg_1.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_1.b.x, 9750i, -24671i), vec4<i32>(10380i, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<i32>(0i, -1i, -1i, arg_1.b.x))) >> (_wgslsmith_clamp_u32(40921u, 4294967295u, ~17094u) % 32u)));
}

fn func_2() -> Struct_2 {
    let var_0 = 4294967295u;
    global0 = array<Struct_2, 11>();
    global1 = array<f32, 12>();
    var var_1 = Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(var_0, 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(5317u, 12u)])))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~(~27796u), 12u)])))), false);
    let var_2 = firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(abs(1i), firstTrailingBit(5604i)), 1i), 1i, func_3(vec2<bool>(select(var_1.d, false, false), false), Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.a), select(vec2<i32>(1i, 1i), vec2<i32>(0i, 22264i), vec2<bool>(var_1.d, true)), Struct_1(vec2<f32>(var_1.c, -1862f), 116f, 256f, var_1.d), 29584u | var_0, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], var_1.c)), vec3<f32>(_wgslsmith_f_op_f32(var_1.c - -1386f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(-var_1.c))), ~firstTrailingBit(abs(-1i))));
    return Struct_2(select(select(!(!vec3<bool>(var_1.d, false, true)), select(!vec3<bool>(false, false, var_1.d), vec3<bool>(false, false, var_1.d), vec3<bool>(false, var_1.d, true)), false), vec3<bool>(true, true, true), min(i32(-1i) * -2147483647i, var_2.x) <= 2147483647i), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(var_1.a, vec2<f32>(1214f, global1[_wgslsmith_index_u32(var_0, 12u)]))), _wgslsmith_f_op_vec2_f32(min(var_1.a, var_1.a)))) + vec2<f32>(-749f, -1539f)), _wgslsmith_f_op_f32(ceil(337f)), 900f, false), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), var_1.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-443f - 1011f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(916f * global1[_wgslsmith_index_u32(2750u, 12u)]), 1117f)), !(var_1.d & true)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = (-(reverseBits(-26857i) ^ reverseBits(arg_1)) < ~(~abs(-46733i))) | !arg_2.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(max(arg_0 | 60104u, _wgslsmith_mult_u32(22907u, u_input.d.x)), 12u)], func_2().b.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -356f))), global1[_wgslsmith_index_u32(~50632u, 12u)])));
    let var_2 = global0[_wgslsmith_index_u32(max(arg_0, arg_0), 11u)];
    var var_3 = func_2();
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-407f)))), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.d.x, 12u)], -486f))), vec4<f32>(var_3.b.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.a.x, 379f) - _wgslsmith_f_op_f32(select(var_2.c.c, global1[_wgslsmith_index_u32(52892u, 12u)], false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.c), _wgslsmith_f_op_f32(1832f + 738f), var_0)))), -301f));
    return var_2.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = -791f;
    global1 = array<f32, 12>();
    let var_1 = func_4(_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(~25761u & max(4294967295u, arg_2), ~arg_2)), 79247i, func_2());
    let var_2 = all(func_2().a) || var_1.d;
    global0 = array<Struct_2, 11>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 12u)])) - global1[_wgslsmith_index_u32(countOneBits(min(select(u_input.a, u_input.b.x, false), 43421u)), 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(674f, -879f))), global1[_wgslsmith_index_u32(u_input.b.x | func_1(_wgslsmith_div_vec4_i32(vec4<i32>(-40863i, -2147483647i, -37992i, 1i), vec4<i32>(31922i, 2147483647i, -12086i, -68180i)) >> (~vec4<u32>(17769u, 2108u, u_input.c, u_input.d.x) % vec4<u32>(32u)), firstTrailingBit(1i) << (firstTrailingBit(37022u) % 32u), ~select(u_input.c, 36506u, false), 0i), 12u)], -1000f);
    var var_1 = !vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, false))));
    global1 = array<f32, 12>();
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(58795u, u_input.a), ~(~(~(~u_input.c))), _wgslsmith_add_u32(~(~10647u), u_input.b.x));
    let var_3 = countOneBits(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, ~0i), ~(vec2<i32>(-1i, 2147483647i) >> (u_input.d.zz % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, var_2.x, 1u, _wgslsmith_mod_u32(var_2.x, 6845u)), vec4<u32>(5694u ^ var_2.x, u_input.d.x, 1u, 20144u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), -518f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1308f + var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 12u)] * -661f) - global1[_wgslsmith_index_u32(_wgslsmith_add_u32(12330u, var_2.x), 12u)])), var_0, true)), _wgslsmith_f_op_f32(236f + -1007f));
}

