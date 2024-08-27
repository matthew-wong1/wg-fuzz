struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<Struct_2, 11>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(31749i, 14460i), vec3<u32>(16272u, 0u, 7367u)), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(31905i, 56847i), vec3<u32>(1u, 58629u, 0u)), 9434u, 1u, vec2<i32>(-14086i, 2147483647i));

var<private> global3: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = ~global2.a.c.x;
    var var_1 = select(global2.b.a.zx, !(!(!global2.b.a.wy)), arg_1 && select(any(global2.a.a), true, true | !arg_1));
    global1 = array<Struct_2, 11>();
    global0 = array<f32, 25>();
    var var_2 = Struct_3(Struct_1(global2.a.a, u_input.c.zx, global2.b.c), global2.b, ~u_input.d.x, global2.a.c.x, _wgslsmith_div_vec2_i32(vec2<i32>(global2.a.b.x & arg_0.x, select(-27489i, u_input.c.x << (u_input.b % 32u), true)), arg_0));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, arg_2), arg_2), 25u)], -1849f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1137f - arg_3.x), arg_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(72675u, 25u)])), global0[_wgslsmith_index_u32(1u, 25u)])))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, -547f, global0[_wgslsmith_index_u32(u_input.d.x, 25u)], -1850f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 942f, 545f, global0[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(1i, 0i), arg_1, 1871u, vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 25u)], -406f, 1060f))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 25u)]), global0[_wgslsmith_index_u32(~4294967295u, 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(33420u, 25u)])), global0[_wgslsmith_index_u32(abs(~global2.a.c.x), 25u)], -796f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(arg_3.x, 25u)], -387f, 370f, global0[_wgslsmith_index_u32(1u, 25u)]))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1633f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 25u)] - global0[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_div_f32(-163f, -949f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(2211u, 25u)] - global0[_wgslsmith_index_u32(arg_3.x, 25u)]))))));
    global1 = array<Struct_2, 11>();
    var var_1 = countOneBits(global2.b.c.yx) | select((u_input.d << (~global2.a.c.yz % vec2<u32>(32u))) ^ ~(~vec2<u32>(arg_3.x, arg_3.x)), ~(~global2.a.c.zy), true);
    let var_2 = !vec4<bool>(false, (true & any(global2.a.a.yz)) || true, true | all(select(global2.b.a, global2.b.a, vec4<bool>(arg_2, true, arg_2, true))), true);
    var var_3 = global0[_wgslsmith_index_u32(~arg_0, 25u)] > _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(-(u_input.c.yy >> (vec2<u32>(global2.b.c.x, arg_3.x) % vec2<u32>(32u))), (var_1.x >> (global2.d % 32u)) == u_input.b, max(51167u, abs(u_input.d.x)), vec3<f32>(2366f, 164f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 25u)])))).x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1329f)) * -116f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, global0[_wgslsmith_index_u32(var_1.x, 25u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2092f, var_0.x)) + _wgslsmith_f_op_f32(sign(var_0.x)))) * _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2037f, _wgslsmith_f_op_f32(-338f * 1559f), global0[_wgslsmith_index_u32(~global2.c, 25u)])) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-445f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 25u)], 192f, global2.a.a.x)), _wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(global2.b.c.x, 25u)])), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.b.c.x, 25u)] + -130f), -203f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.b.c.x, 25u)] * 850f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], -1208f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(func_2(55131u, false, false, u_input.a))) - vec3<f32>(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 25u)], _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(u_input.c.x, 23446i), global2.b.a.x, global2.a.c.x, vec3<f32>(967f, global0[_wgslsmith_index_u32(global2.c, 25u)], global0[_wgslsmith_index_u32(global2.a.c.x, 25u)]))).x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.b.c.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])))));
    let var_1 = -global2.a.b.x != _wgslsmith_add_i32(reverseBits(u_input.c.x) << (global2.c % 32u), min(-firstLeadingBit(-1i), -abs(global2.a.b.x)));
    global1 = array<Struct_2, 11>();
    var var_2 = vec2<u32>(~reverseBits(~(~u_input.d.x)), 61611u);
    let var_3 = Struct_5(Struct_4(global2.b, global2.a.a.yx, Struct_3(Struct_1(!global2.b.a, ~vec2<i32>(global2.a.b.x, u_input.c.x), global2.b.c | global2.a.c), global2.b, global2.c, var_2.x ^ global2.a.c.x, vec2<i32>(33852i, 2147483647i) >> (vec2<u32>(u_input.b, 64263u) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(abs(u_input.d.x), 11u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, -439f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.a.c.x, 25u)]), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 25u)]))))), ~2147483647i, _wgslsmith_f_op_f32(sign(2313f)));
    return Struct_1(var_3.a.a.a, firstTrailingBit(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, -31636i), ~vec2<i32>(15892i, -2147483647i))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.a.a.c, vec3<u32>(var_2.x, var_3.a.a.c.x, 0u)) << (var_3.a.c.b.c % vec3<u32>(32u)), global2.a.c, var_3.a.d.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(Struct_1(global2.b.a, u_input.c.yx, ~global2.b.c), func_1(), global2.b.c.x, _wgslsmith_add_u32(func_1().c.x, ~u_input.d.x), ~_wgslsmith_add_vec2_i32(func_1().b, select(u_input.c.zy, ~vec2<i32>(-8036i, 18569i), vec2<bool>(true, true))));
    global1 = array<Struct_2, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)], 820f, global0[_wgslsmith_index_u32(global2.c, 25u)])))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-707f, global0[_wgslsmith_index_u32(35760u, 25u)], 453f, global0[_wgslsmith_index_u32(1u, 25u)])))))));
    let var_1 = 16563i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 2261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 25u)])) * var_0.x))));
    global0 = array<f32, 25>();
    let var_3 = Struct_5(Struct_4(global2.a, global2.a.a.zw, Struct_3(Struct_1(!global2.b.a, max(u_input.c.zx, vec2<i32>(u_input.c.x, 70096i)), vec3<u32>(0u, 1u, u_input.d.x)), func_1(), _wgslsmith_dot_vec3_u32(max(global2.a.c, global2.b.c), ~global2.b.c), 13727u, vec2<i32>(i32(-1i) * -24956i, global2.b.b.x)), global1[_wgslsmith_index_u32(func_1().c.x, 11u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(585f, 168f, _wgslsmith_f_op_f32(-var_2.x), var_0.x))), u_input.c.x, 952f);
    let var_4 = max(vec2<u32>(var_3.a.c.a.c.x, _wgslsmith_sub_u32(~15827u, 63689u) | ~global2.d), ~(~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(global2.b.c.zz, vec2<u32>(0u, global2.d)), reverseBits(global2.b.c.xx))));
    let var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_3.a.c.a.c, max(vec2<u32>(firstLeadingBit(37669u), global2.c), firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 1u), var_4))), ~_wgslsmith_mod_u32(~0u, ~global2.b.c.x) >> (44049u % 32u));
}

