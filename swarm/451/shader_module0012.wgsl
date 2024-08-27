struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 835f;

var<private> global1: array<u32, 28> = array<u32, 28>(32541u, 18283u, 1u, 8022u, 4294967295u, 24548u, 98679u, 15840u, 78823u, 24206u, 0u, 9414u, 0u, 1u, 1u, 9401u, 4294967295u, 32228u, 16717u, 14530u, 279u, 31840u, 42700u, 4294967295u, 48519u, 4294967295u, 0u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = ~(~abs(arg_0.a.a));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(362f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(454f, 1137f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1210f - 119f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -416f), -1553f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)));
    var var_2 = -273f;
    var var_3 = (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1306f + -410f), _wgslsmith_f_op_f32(ceil(-205f)))), 1f, true || any(vec4<bool>(true, false, false, false)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1337f, -1054f)) - 763f), 393f)) || true;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f - -995f))) * -1000f)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29508u, 28u)], 28u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1671f))));
    var var_1 = true | !(var_0 == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0));
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(~(~66734u), 1u), 1u));
    let var_3 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(select(u_input.a, 1i, false), ~u_input.a, _wgslsmith_add_i32(-27220i, u_input.a), -72561i & u_input.a), abs(vec4<i32>(u_input.a, -13786i, u_input.a, 0i)) >> (~vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a, 28u)], 28u)], 28u)], 4294967295u) % vec4<u32>(32u))) | -_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(21i, -29807i, 1i, -2147483647i), vec4<i32>(u_input.a, u_input.a, 10673i, -5152i), vec4<i32>(u_input.a, 1i, 0i, 1i)), abs(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(-644f, -644f), -330f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2251f, var_0, var_0)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -429f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2086f, var_0, var_0) - vec3<f32>(-1159f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, -433f), vec3<f32>(var_0, -546f, 1000f), false)))))));
    return Struct_2(Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.e.x, 28u)], abs(u_input.b), max(global1[_wgslsmith_index_u32(var_2.a, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)])), 28u)]));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -(~vec4<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.a), ~37655i), u_input.a, u_input.a));
    global1 = array<u32, 28>();
    var_0 = countOneBits(firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(37883i, u_input.a, u_input.a, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 2147483647i, -7144i, var_0.x), vec4<i32>(2147483647i, 2510i, 22013i, var_0.x))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-265f * -699f))), _wgslsmith_f_op_f32(469f * 982f))) + 859f));
    global1 = array<u32, 28>();
    return arg_0.a;
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a | 1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0, u_input.a), select(arg_0, -5767i, false))), -vec2<i32>(select(arg_0, u_input.a, true), _wgslsmith_mult_i32(arg_0, arg_0))));
    var var_1 = func_4(func_2(), func_2().a);
    var_1 = func_4(Struct_2(func_4(Struct_2(Struct_1(27884u)), Struct_1(func_2().a.a))), func_2().a);
    var var_2 = firstLeadingBit(u_input.e);
    var_0 = abs(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 2147483647i), (var_0.x ^ var_0.x) & u_input.a)));
    return abs(_wgslsmith_clamp_u32(max(1u, u_input.e.x), ~58957u, ~_wgslsmith_div_u32(11523u, var_2.x)) ^ ~var_2.x);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    var var_0 = ((~vec3<i32>(-2147483647i, -11688i, arg_2) ^ vec3<i32>(reverseBits(15466i), 2147483647i | u_input.a, _wgslsmith_div_i32(1i, arg_2))) ^ select(-(vec3<i32>(-11494i, arg_2, u_input.a) & vec3<i32>(-10247i, 0i, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, -57333i, arg_2), -vec3<i32>(arg_2, u_input.a, u_input.a)), vec3<bool>(true, false, true))) ^ (vec3<i32>(arg_2, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, arg_2), ~vec2<i32>(1i, arg_2)), u_input.a) & (vec3<i32>(35377i, 8012i, countOneBits(-44618i)) ^ _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_2, u_input.a, u_input.a), -vec3<i32>(u_input.a, 30883i, u_input.a))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(func_4(func_2(), Struct_1(0u))))), _wgslsmith_f_op_f32(f32(-1f) * -1849f));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec2_i32(min(countOneBits(var_0.yx), vec2<i32>(2147483647i, 48506i) << (_wgslsmith_sub_vec2_u32(u_input.c.yy, u_input.e.yx) % vec2<u32>(32u))), abs(~(-var_0.yz))));
    let var_2 = vec3<bool>((148703u | abs(_wgslsmith_div_u32(u_input.b, 104275u))) > global1[_wgslsmith_index_u32(func_1(_wgslsmith_clamp_i32(max(arg_2, var_0.x), u_input.a, i32(-1i) * -1i)), 28u)], !all(vec3<bool>(true, true, true)), all(!vec2<bool>(u_input.d >= u_input.d, true)));
    let var_3 = u_input.e.zx << (vec2<u32>(~max(reverseBits(global1[_wgslsmith_index_u32(arg_1.a, 28u)]), select(global1[_wgslsmith_index_u32(1u, 28u)], u_input.b, true)), arg_1.a) % vec2<u32>(32u));
    return Struct_3(~(_wgslsmith_mult_u32(var_3.x, ~u_input.b) << ((abs(6252u) ^ var_3.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 28>();
    var var_0 = u_input.e.wy;
    var_0 = ~vec2<u32>(1u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 0u, 273u), vec4<u32>(126950u, u_input.c.x, 4294967295u, 1u))));
    var_0 = vec2<u32>(0u, global1[_wgslsmith_index_u32(14472u, 28u)]);
    let var_1 = _wgslsmith_sub_i32(i32(-1i) * -select(32210i, u_input.a, true), u_input.a);
    var var_2 = func_5(~func_1(1i), Struct_3(abs(1u)), i32(-1i) * -7917i);
    var var_3 = vec4<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1365i, var_1) | ~min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, var_1)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(2147483647i, var_1)), ~vec2<i32>(var_1, u_input.a)) >> (vec2<u32>(1u, ~34059u) % vec2<u32>(32u))), countOneBits(_wgslsmith_div_i32(~(~u_input.a), abs(u_input.a))), u_input.a);
    var var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

