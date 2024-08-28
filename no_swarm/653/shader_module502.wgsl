struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<f32> {
    global0 = array<Struct_3, 1>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(~vec4<u32>(26323u, u_input.b.x, 6298u, arg_0.a), vec4<u32>(1u, arg_0.a, u_input.e.x, u_input.e.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.a, u_input.b.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(61564u, 33375u, 0u, 48365u), vec4<u32>(1u, arg_0.a, 43974u, u_input.b.x))), ~vec4<u32>(~49231u, ~54778u, ~11429u, arg_0.a)), vec4<u32>(~u_input.e.x, ~(arg_0.a | 1615u), u_input.b.x, firstTrailingBit(firstTrailingBit(30171u)))), 1u)];
    let var_1 = vec4<u32>(4294967295u & countOneBits(select(~41779u, ~73508u, all(vec2<bool>(false, false)))), 1u, arg_0.a, ~_wgslsmith_div_u32(select(4294967295u, arg_0.a, all(vec2<bool>(false, var_0.e.x))), firstLeadingBit(_wgslsmith_div_u32(46774u, var_0.a.a))));
    var_0 = Struct_3(Struct_1(abs(_wgslsmith_dot_vec2_u32(~var_0.d.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a, 0u), var_0.d.zz, vec2<u32>(var_1.x, 88540u)))), arg_1, vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(arg_0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1551f), -305f, _wgslsmith_f_op_f32(round(arg_2))), any(vec4<bool>(var_0.a.b < var_0.a.b, true, true, select(false, true, arg_0.d))), var_0.b), arg_0.e, _wgslsmith_div_vec2_u32(reverseBits(u_input.e.xx >> (abs(vec2<u32>(arg_0.a, 85778u)) % vec2<u32>(32u))), ~var_1.xz), abs(firstLeadingBit(firstTrailingBit(reverseBits(var_0.d)))), !var_0.e);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.d.x, min(arg_0.a, ~arg_0.a)), 1u)];
    return _wgslsmith_f_op_vec3_f32(-arg_0.c.xzy);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1054f, -1157f)) - _wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.b.x, 8629i, vec4<f32>(257f, -437f, 1467f, -1200f), true, vec3<bool>(false, false, false)), u_input.a, -121f))), vec3<f32>(-488f, _wgslsmith_f_op_f32(970f - -352f), _wgslsmith_f_op_f32(ceil(-104f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-262f, -847f, -1629f)))))))), true));
    global0 = array<Struct_3, 1>();
    var var_1 = -_wgslsmith_sub_vec4_i32(countOneBits(~(~vec4<i32>(-2147483647i, u_input.c.x, u_input.d.x, -3159i))), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.d.x, u_input.d.x), min(vec4<i32>(0i, 0i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.d.x))));
    let var_2 = vec4<i32>(_wgslsmith_div_i32(1i, i32(-1i) * -2147483647i), 2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(33996i, u_input.d.x, var_1.x, var_1.x) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.a, 0i, u_input.c.x, u_input.c.x)), select(-vec4<i32>(2147483647i, var_1.x, var_1.x, -35317i), ~vec4<i32>(u_input.c.x, -17688i, 1i, 30810i), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true))), -(-1i & countOneBits(var_1.x))) & -abs((vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a) << (vec4<u32>(u_input.e.x, u_input.e.x, u_input.b.x, 0u) % vec4<u32>(32u))) | ~vec4<i32>(var_1.x, -1i, var_1.x, var_1.x));
    let var_3 = Struct_2(!(u_input.d.x > -max(-31582i, 1i)), Struct_1(~u_input.b.x, var_2.x, vec4<f32>(864f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 551f), var_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_f_op_f32(-var_0.x)), false, vec3<bool>(true, any(vec4<bool>(true, false, true, true)) & true, !any(vec4<bool>(true, true, false, true)))), Struct_1(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 16565u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.xy))), var_2.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-295f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(round(var_0.x)), -1985f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1246f, var_0.x, 517f, var_0.x))))), any(vec3<bool>(true, true, true)))), !(var_2.x >= _wgslsmith_clamp_i32(-1096i, var_2.x, var_2.x)), !vec3<bool>(all(vec4<bool>(true, true, false, true)), true, false)), Struct_1(1u, _wgslsmith_clamp_i32(max(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(9498i, -16481i), var_1.wx)), i32(-1i) * -var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, _wgslsmith_f_op_f32(var_0.x + -2025f), -847f, _wgslsmith_f_op_f32(f32(-1f) * -559f))), !(u_input.b.x <= u_input.e.x) != (countOneBits(0u) > (u_input.b.x & u_input.b.x)), vec3<bool>(true, true, true)));
    return ~_wgslsmith_mod_i32(var_2.x, min(u_input.a, 1i));
}

fn func_1() -> bool {
    global0 = array<Struct_3, 1>();
    var var_0 = ~(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, 5569i))) & -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a), -vec3<i32>(0i, u_input.a, 0i)), ~39780i, -61669i, min(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -1i, 41439i), vec3<i32>(-13979i, u_input.d.x, u_input.c.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(abs(376f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -728f))))));
    var_0 = ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, func_2(), u_input.c.x, u_input.d.x) | max(vec4<i32>(0i, -2147483647i, 32805i, u_input.c.x) << (vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x) % vec4<u32>(32u)), ~vec4<i32>(29488i, 0i, 3770i, u_input.d.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_0.x, 1i, var_0.x) << (vec4<u32>(u_input.e.x, 4294967295u, 31478u, u_input.e.x) % vec4<u32>(32u)), max(vec4<i32>(-1i, 1i, var_0.x, u_input.c.x), vec4<i32>(2147483647i, u_input.d.x, 2580i, 1i)), countOneBits(vec4<i32>(u_input.d.x, var_0.x, 28888i, 2147483647i))), vec4<i32>(-2147483647i, ~var_0.x, min(u_input.a, var_0.x), 13345i)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-761f, 703f, var_1.x, -1293f), vec4<f32>(var_1.x, var_1.x, 417f, 277f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1682f, 1463f, var_1.x, var_1.x) * vec4<f32>(var_1.x, 276f, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, -1828f, var_1.x, -512f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, var_1.x, 267f)))))));
    return true & select(false, !all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), all(vec4<bool>(true, true, u_input.b.x <= 25068u, all(vec3<bool>(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true)), true, all(vec4<bool>(true, false, true, true))))), func_1(), 2297i == u_input.d.x, false);
    var var_1 = firstTrailingBit(abs(vec4<u32>(u_input.e.x >> (u_input.e.x % 32u), u_input.b.x, ~u_input.b.x, _wgslsmith_add_u32(27483u, u_input.e.x)))) << ((vec4<u32>(~select(0u, u_input.b.x, var_0.x), u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 54935u, u_input.e.x) << (u_input.e % vec3<u32>(32u)), ~u_input.e), u_input.b.x) | vec4<u32>(u_input.e.x, _wgslsmith_mult_u32(0u, 1313u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.e.x, u_input.e.x), u_input.e) % 32u), _wgslsmith_mult_u32(u_input.e.x, 8746u) ^ (u_input.b.x & u_input.e.x), 4294967295u)) % vec4<u32>(32u));
    var var_2 = Struct_1(~var_1.x, u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(425f, 162f, -1071f, 410f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1296f, -202f, 1111f, 953f))))), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), select(true, all(vec4<bool>(false, false, true, var_0.x)), var_1.x != 1u))), select(vec3<bool>(false, true, false), var_0.wyx, vec3<bool>(true, var_0.x, _wgslsmith_clamp_u32(u_input.b.x, var_1.x, 1u) > ~1u)));
    var var_3 = reverseBits(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 0u, u_input.b.x, u_input.e.x), vec4<u32>(var_2.a, 0u, var_2.a, 11185u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(22998u, var_2.a), var_1.wx), u_input.b.x), var_1.x));
    let var_4 = var_0.zx;
    var var_5 = Struct_1(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_3.x, firstTrailingBit(var_3.x), ~8345u), vec4<u32>(~4294967295u, firstTrailingBit(var_1.x), ~13123u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, var_2.a), var_1.wzx))), u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -431f, var_2.c.x, var_2.c.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(165f, -673f, 1595f, var_2.c.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1565f, -1773f, 277f, 1898f))))), all(select(select(!vec4<bool>(var_4.x, true, var_4.x, var_2.e.x), !vec4<bool>(true, true, var_4.x, true), true), select(!vec4<bool>(true, var_2.d, true, var_0.x), vec4<bool>(var_0.x, true, false, true), var_4.x), select(!vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, var_2.e.x, var_2.d, true), !vec4<bool>(false, var_4.x, var_0.x, false)))), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(1123f * -1827f), firstLeadingBit(~vec2<i32>(var_2.b & 40067i, var_2.b)));
}

