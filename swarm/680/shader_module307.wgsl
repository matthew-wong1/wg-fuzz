struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: bool = false;

var<private> global2: f32;

var<private> global3: array<f32, 13>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(16319u, 13u)])), _wgslsmith_f_op_f32(trunc(139f)), _wgslsmith_f_op_f32(f32(-1f) * -1075f));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 32295u), vec2<u32>(u_input.a, 28593u)), 33388u, ~(u_input.a | u_input.a)), vec4<u32>(abs(u_input.a), min(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_add_u32(u_input.a, 48665u)), (1u & u_input.a) & firstLeadingBit(39758u), ~select(20399u, 1u, false)))), 29u)];
    return global3[_wgslsmith_index_u32(8739u, 13u)];
}

fn func_2() -> f32 {
    global2 = global3[_wgslsmith_index_u32(~select(~1u, _wgslsmith_add_u32(0u, ~88078u) ^ _wgslsmith_clamp_u32(36057u ^ u_input.a, 50572u, _wgslsmith_sub_u32(u_input.a, 0u)), any(vec4<bool>(false, true, true, true))), 13u)];
    let var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1374f - global3[_wgslsmith_index_u32(u_input.a, 13u)]) + _wgslsmith_div_f32(-705f, global3[_wgslsmith_index_u32(u_input.a, 13u)])) < _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(42300u, 13u)])));
    global1 = true;
    let var_2 = _wgslsmith_sub_vec3_i32(max(firstLeadingBit(vec3<i32>(firstLeadingBit(-4598i), 10991i, -2147483647i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(62894i, 2147483647i, 59817i), vec3<i32>(16074i, 1i, 2147483647i)), vec3<i32>(55440i, 1i, 1i)), vec3<i32>(-14694i, ~2147483647i, 0i), max(vec3<i32>(-53721i, 33863i, 2147483647i), vec3<i32>(46937i, 2147483647i, 1i)))), vec3<i32>(_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(-17991i, -31473i)), vec2<i32>(-13926i, 2688i) >> (~vec2<u32>(u_input.a, 2687u) % vec2<u32>(32u))), ~_wgslsmith_mult_i32(-1i, 46603i) << (countOneBits(u_input.a) % 32u), abs(~18185i)));
    return var_0;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 13u)]), global3[_wgslsmith_index_u32(~97690u, 13u)], any(vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_0 = _wgslsmith_div_vec2_u32(~select(vec2<u32>(58684u, u_input.a), vec2<u32>(0u, u_input.a), vec2<bool>(true, true)) & select(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), max(vec2<u32>(u_input.a, 16353u), vec2<u32>(u_input.a, u_input.a))), vec2<u32>(0u, _wgslsmith_sub_u32(u_input.a, u_input.a)), select(any(vec3<bool>(true, false, true)), true, true)), ~_wgslsmith_clamp_vec2_u32(~(vec2<u32>(u_input.a, 65831u) & vec2<u32>(4294967295u, u_input.a)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(15543u, u_input.a)), reverseBits(vec2<u32>(u_input.a, u_input.a))), select(vec2<u32>(62524u, 63107u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(80335u, 0u)), vec2<bool>(false, false))));
    global3 = array<f32, 13>();
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0.x, u_input.a, 32459u, 0u) << (vec4<u32>(1u, u_input.a, 20835u, 98722u) % vec4<u32>(32u))), select(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.x, u_input.a, var_0.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(2239u, u_input.a, var_0.x, 0u), vec4<u32>(u_input.a, var_0.x, var_0.x, 4294967295u)), abs(vec4<u32>(4294967295u, 103889u, u_input.a, u_input.a))), firstTrailingBit(~vec4<u32>(42344u, u_input.a, 8024u, 7733u)), true)), ~vec4<u32>(~(~0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0, var_0), ~0u), _wgslsmith_sub_u32(1u, var_0.x), ~(60825u | var_0.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-117f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 13u)])))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_1(~(-vec3<i32>(-1i, -38981i, -29855i))), all(vec2<bool>(true, all(vec3<bool>(true, true, true)))), false, !any(vec2<bool>(true, all(vec3<bool>(false, false, true)))));
    let var_1 = vec3<bool>(any(var_0.xy), func_1(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-1i, -22144i, 12852i), vec3<i32>(-44006i, 10641i, -10911i), vec3<bool>(true, false, var_0.x)), -vec3<i32>(1i, -1i, -17733i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -5706i, 0i), vec3<i32>(28581i, 17829i, 1i)))), true);
    global1 = false;
    var var_2 = vec3<u32>(u_input.a & _wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_div_u32(u_input.a, ~0u)), ~abs(49701u) | max(~u_input.a, firstTrailingBit(~0u)), ~(68774u | ~_wgslsmith_sub_u32(u_input.a, 6868u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 13u)] - _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(reverseBits(u_input.a ^ u_input.a), 13u)], -213f))));
    let var_4 = u_input.a;
    let var_5 = Struct_2(global3[_wgslsmith_index_u32(~4294967295u, 13u)], max(~(~reverseBits(vec3<u32>(var_4, 4294967295u, u_input.a))), select(max(vec3<u32>(4294967295u, var_4, 1u) & vec3<u32>(var_2.x, 48498u, var_2.x), vec3<u32>(4294967295u, var_4, 0u)), abs(abs(vec3<u32>(9301u, 5522u, var_4))), true)), 1i, var_1, 1257f);
    global2 = var_3;
    global2 = _wgslsmith_f_op_f32(-var_5.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(647f, var_5.a, var_3), max(var_5.c, firstLeadingBit(~1i)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-164f, var_5.e)), -1584f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_4, 13u)] + -976f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(89958u, 13u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
}

