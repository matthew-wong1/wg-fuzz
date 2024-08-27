struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(709u, 1u, 26239u, 0u, 21849u, 0u, 4294967295u, 4294967295u, 41044u);

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -4742i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-22593i, -37788i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-24156i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -18376i), vec2<i32>(-8628i, -1i), vec2<i32>(2205i, 0i), vec2<i32>(509i, 2147483647i), vec2<i32>(15388i, 7891i), vec2<i32>(1i, 48103i), vec2<i32>(-1i, 2147483647i));

var<private> global3: f32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = ~max(firstLeadingBit(-u_input.a & ~u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, i32(-1i) * -2147483647i, ~13268i, _wgslsmith_div_i32(-28910i, u_input.a.x)), -select(u_input.a, vec4<i32>(53271i, u_input.a.x, -1i, u_input.a.x), false)));
    var var_1 = Struct_1(-u_input.a.x, min(firstLeadingBit(-2147483647i), -55555i), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 35198u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71302u, 9u)], 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)]), vec4<u32>(17625u, global0[_wgslsmith_index_u32(4294967295u, 9u)], 1u, global0[_wgslsmith_index_u32(0u, 9u)])), abs(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(111196u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)]))), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(55463u, 9u)]), _wgslsmith_mult_u32(3510u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)])), 9u)], countOneBits(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)])), global0[_wgslsmith_index_u32(0u, 9u)], ~_wgslsmith_sub_u32(11206u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6478u, 9u)], 9u)], 9u)]))), u_input.a.x, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 30507u, global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(1u, 9u)]), 9u)], min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 47302u, global0[_wgslsmith_index_u32(67638u, 9u)]), vec4<u32>(global0[_wgslsmith_index_u32(78021u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38919u, 9u)], 9u)], 9u)], 9u)], 9u)], 16394u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16621u, 9u)], 9u)])), 33899u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35337u, 9u)], 9u)])) >> (~(~abs(vec4<u32>(1u, 6553u, global0[_wgslsmith_index_u32(35092u, 9u)], 22476u))) % vec4<u32>(32u)));
    global2 = array<vec2<i32>, 14>();
    global1 = -1i;
    var var_2 = true;
    return ~var_1.c;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: bool) -> vec2<bool> {
    var var_0 = Struct_1(u_input.a.x ^ (-2147483647i & u_input.a.x), u_input.a.x, func_3(), -(~max(1i, 1i | u_input.a.x)), vec4<u32>(~(~min(14525u, 3851u)), 0u | ~global0[_wgslsmith_index_u32(1u, 9u)], countOneBits(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, arg_0.c, 0u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], arg_1, 17298u, 4294967295u))), 9u)]), 4294967295u));
    var var_1 = Struct_2(Struct_1(-2147483647i, 8148i, vec4<u32>(0u, var_0.e.x, 1281u, ~arg_0.c), var_0.a, firstTrailingBit(~(~vec4<u32>(8488u, var_0.c.x, var_0.e.x, 0u)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -841f))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(select(828f, _wgslsmith_f_op_f32(-377f - arg_2), !arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))) - arg_0.b.x)));
    let var_3 = ~max(~min(min(vec2<u32>(2502u, 1u), vec2<u32>(1u, 826u)), var_0.e.zy), vec2<u32>(~(~arg_0.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.c, arg_0.c, 1u, 1u), var_0.e >> (vec4<u32>(16043u, arg_1, 7607u, 127676u) % vec4<u32>(32u)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -190f, arg_0.b.x, -1985f), vec4<f32>(var_2.x, arg_2, arg_0.a, 1000f))))) * vec4<f32>(arg_0.a, var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), arg_2, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
    return select(!select(vec2<bool>(false, arg_3), vec2<bool>(!arg_3, arg_3), all(vec3<bool>(arg_3, false, arg_3))), vec2<bool>(!arg_3, true), var_1.a.a != _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(-1i, 1i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = vec2<u32>(~arg_0.x, _wgslsmith_add_u32(~abs(arg_0.x), ~abs(122270u)) & 0u);
    var var_1 = vec4<bool>(!(105f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(148f, -1988f, false)))), !all(!func_2(Struct_3(-815f, vec3<f32>(931f, -2460f, 714f), 1u), arg_1.a.c.x, 1000f, true)), all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    let var_2 = arg_0.yyw;
    var var_3 = var_0;
    let var_4 = Struct_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)), _wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1315f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-418f, 1695f))))), Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_1.a.a, arg_1.a.b), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(u_input.a.x, 22988i), abs(vec4<u32>(1u, var_0.x, 14614u, arg_1.a.c.x)), -u_input.a.x, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 9u)], 9u)], 41678u, arg_0.x, arg_1.a.c.x))), 1687f, firstTrailingBit(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, arg_1.a.d), vec2<i32>(-2147483647i, 52978i)))), var_1.xw, 0i != _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, 0i, u_input.a.x), vec3<i32>(-11783i, 2147483647i, u_input.a.x), all(vec3<bool>(false, false, var_1.x))), vec3<i32>(4191i >> (0u % 32u), u_input.a.x, u_input.a.x)), 0u, _wgslsmith_sub_u32(~reverseBits(1u) | ~_wgslsmith_mult_u32(0u, arg_0.x), ~firstLeadingBit(countOneBits(var_0.x))));
    return 2072f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1716f, -915f, 868f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(941f, 1030f, 234f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(2376f, 1644f, 1120f) * _wgslsmith_div_vec3_f32(vec3<f32>(-861f, 1006f, 564f), vec3<f32>(-412f, 1391f, 1000f)))))));
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, u_input.a) & ~vec4<i32>(u_input.a.x, 41546i, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(select(u_input.a, u_input.a, false), max(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a))), ~(-u_input.a), -(~u_input.a)), _wgslsmith_div_vec4_i32(max(-u_input.a, countOneBits(vec4<i32>(39408i, u_input.a.x, -17805i, -26407i))), -(-u_input.a ^ u_input.a)));
    let var_2 = any(vec2<bool>(false, !(var_0.x > var_0.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-360f)), _wgslsmith_div_f32(-1092f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-659f * 936f) + _wgslsmith_f_op_f32(func_1(vec4<u32>(36729u, global0[_wgslsmith_index_u32(87698u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2090u, 9u)], 9u)], 79826u), Struct_2(Struct_1(-1i, -1i, vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57259u, 9u)], 9u)], 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 4294967295u), u_input.a.x, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35722u, 9u)], 9u)], 9u)], 9u)], 0u, 12649u, global0[_wgslsmith_index_u32(27463u, 9u)]))))))), 1230f));
    let var_3 = abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)]), ~54996u), 9u)] << (_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19678u, 9u)], 9u)], 9u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)]) & select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 4294967295u, 52787u, 15759u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8275u, 9u)], 9u)], global0[_wgslsmith_index_u32(59143u, 9u)], 1u), var_2), vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16084u, 9u)], 9u)], 1u, 1u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, -2147483647i)) & _wgslsmith_add_vec2_i32(vec2<i32>(~var_1.x, 37860i), vec2<i32>(u_input.a.x, ~(-15221i))));
}

