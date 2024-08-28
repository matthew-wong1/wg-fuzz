struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<u32, 19>();
    let var_0 = !(!vec3<bool>(_wgslsmith_sub_u32(39899u, global0[_wgslsmith_index_u32(21184u, 19u)]) >= u_input.e.x, true, arg_0.b));
    let var_1 = min(~u_input.e.zw, ~(~u_input.e.zw));
    var var_2 = abs(max((u_input.a ^ -vec2<i32>(u_input.b.x, 1730i)) | ~firstTrailingBit(vec2<i32>(arg_0.a, arg_0.a)), ~vec2<i32>(abs(u_input.c.x), 21755i)));
    var var_3 = _wgslsmith_mod_i32(u_input.b.x, var_2.x);
    return false;
}

fn func_4(arg_0: vec4<i32>) -> vec4<i32> {
    global0 = array<u32, 19>();
    var var_0 = u_input.e.x;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-303f)), 510f));
    var_0 = firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(u_input.e.x, 19u)], global0[_wgslsmith_index_u32(27571u, 19u)]), u_input.e), ~global0[_wgslsmith_index_u32(15378u, 19u)]) >> (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 5030u), u_input.e.wy)) % 32u)) ^ 26777u;
    var var_2 = Struct_1(select(vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 19u)] <= 4294967295u, false), select(func_3(Struct_2(arg_0.x, false, -455f)), true, select(true, false, true) & (u_input.e.x <= global0[_wgslsmith_index_u32(u_input.e.x, 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1566f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-459f)))), -103f, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, ~(~(-12635i)), _wgslsmith_clamp_i32(-32742i, u_input.a.x >> (8390u % 32u), reverseBits(0i))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 23658i, u_input.c.x, 7453i), vec4<i32>(10254i, 1i, -2147483647i, u_input.b.x)) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, arg_0.x, u_input.d, u_input.a.x), arg_0), vec4<i32>(arg_0.x, u_input.c.x, arg_0.x, arg_0.x) | -vec4<i32>(arg_0.x, -2147483647i, -2147483647i, u_input.c.x), func_3(Struct_2(-6715i, false, -217f))), u_input.b));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.d.wzz, -(vec3<i32>(arg_0.x, u_input.b.x, 2147483647i) & firstTrailingBit(vec3<i32>(u_input.c.x, 26461i, var_2.d.x)))), var_2.d.x, _wgslsmith_add_i32(-22481i, ~37524i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(1636i), -58410i), ~arg_0.zw), _wgslsmith_mult_i32(arg_0.x << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 19u)], 19u)] % 32u), 11732i)));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    global0 = array<u32, 19>();
    var var_0 = _wgslsmith_add_u32(1u, _wgslsmith_div_u32(~1u, 4294967295u));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(209f + -221f) - -629f))) >= -361f, !(!any(vec2<bool>(true, true))), all(vec2<bool>(false, false)) & true, countOneBits(~(u_input.b.x & -1i)) <= 0i);
    global0 = array<u32, 19>();
    var var_2 = Struct_3(u_input.b.x);
    return Struct_1(var_1.zw, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2085f)) * _wgslsmith_f_op_f32(1221f + -900f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1854f, -351f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1424f, -835f))) + -1662f), func_4(vec4<i32>(~(~u_input.c.x), u_input.a.x, select(1i, 1i, func_3(Struct_2(arg_0.a, var_1.x, -625f))), var_2.a)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> bool {
    global0 = array<u32, 19>();
    let var_0 = 1u;
    let var_1 = func_2(Struct_3(-abs(_wgslsmith_add_i32(u_input.a.x, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(var_1.b, -173f), 848f)));
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-var_2.x)))) >= _wgslsmith_f_op_f32(-154f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-891f)) * var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<u32>(~global0[_wgslsmith_index_u32(~13619u, 19u)], firstLeadingBit(global0[_wgslsmith_index_u32(47702u, 19u)]) | (u_input.e.x << (global0[_wgslsmith_index_u32(1u, 19u)] % 32u)), _wgslsmith_sub_u32(72981u, 23351u) & _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(1u, 19u)]))) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(~1u, ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14353u, 19u)], 19u)]), 19u)]), 19u)], 19u)], max(_wgslsmith_mult_u32(~8135u, u_input.e.x), reverseBits(global0[_wgslsmith_index_u32(1u, 19u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)])), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, ~4294967295u), _wgslsmith_dot_vec3_u32(u_input.e.xzy, u_input.e.xxz))) % vec3<u32>(32u));
    global0 = array<u32, 19>();
    var_0 = u_input.e.wzx ^ vec3<u32>(u_input.e.x, ~1u, ~firstLeadingBit(global0[_wgslsmith_index_u32(var_0.x, 19u)]));
    var_0 = max(vec3<u32>((4900u ^ u_input.e.x) ^ global0[_wgslsmith_index_u32(1u, 19u)], ~6194u, countOneBits(u_input.e.x)), vec3<u32>(select(0u ^ var_0.x, 105447u, func_1(true, vec3<u32>(0u, 4294967295u, var_0.x))), ~51031u, var_0.x) | ~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 19u)], 73664u, global0[_wgslsmith_index_u32(var_0.x, 19u)])));
    var var_1 = u_input.e.yyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(303f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-822f, 1692f)) * -169f))))));
}

