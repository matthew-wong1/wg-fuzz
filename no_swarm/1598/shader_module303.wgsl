struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(18553i, 0i, -19098i, -19811i), vec4<i32>(9067i, 2147483647i, 0i, -38093i), vec4<i32>(0i, -43071i, i32(-2147483648), 43421i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 192i), vec4<i32>(-32136i, 1i, i32(-2147483648), 30151i), vec4<i32>(1i, 0i, 1i, 2147483647i), vec4<i32>(-1i, -1i, -15721i, 4946i));

var<private> global3: f32 = -1000f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(-vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(12206u, 7u)], vec4<i32>(16578i, -2147483647i, u_input.a.x, u_input.a.x)), -62515i), -u_input.a.x), Struct_1(vec3<bool>(false, true, false), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(439f, 620f) * vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, global1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1034f))))), !(-48916i <= (u_input.a.x | u_input.a.x)), vec3<u32>(~max(0u, 2975u), firstLeadingBit(1u), _wgslsmith_sub_u32(21024u << (1u % 32u), ~4294967295u)), min(4294967295u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4644u, 4294967295u)), vec2<u32>(6113u, 38513u)))), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-24719i, 2501i, u_input.a.x, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, 79366u, 27413u), vec4<u32>(1u, 4294967295u, 4294967295u, 48590u)) % vec4<u32>(32u))));
    global3 = _wgslsmith_f_op_f32(sign(670f));
    let var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.b.x - -1520f))))));
    let var_2 = vec2<f32>(-873f, _wgslsmith_f_op_f32(exp2(var_1.x)));
    var var_3 = vec2<bool>(var_0.b.a.x & !(-1i <= min(-1i, u_input.a.x)), all(select(select(var_0.b.a, var_0.b.a, vec3<bool>(true, true, true)), vec3<bool>(false, true, any(vec2<bool>(true, var_0.b.c))), var_0.b.a)));
    return _wgslsmith_sub_u32(27110u, var_0.b.d.x);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_1(vec3<bool>(any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(true, true, false))), true, _wgslsmith_f_op_f32(f32(-1f) * -664f) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x - global1.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(983f, global1.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))), any(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 24640u, arg_0), max(abs(vec3<u32>(1u, 42802u, arg_0)), ~vec3<u32>(0u, 0u, 1u) ^ abs(vec3<u32>(0u, 6446u, arg_0)))), ~0u ^ ~(func_3() & (arg_0 ^ arg_0)));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1202f, -168f))))) - vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.b.x)))))));
    let var_1 = var_0.c;
    global3 = _wgslsmith_f_op_f32(-930f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * var_0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -534f)))));
    var var_2 = !vec2<bool>(var_0.c, any(vec2<bool>(true, var_0.a.x | var_0.a.x)));
    return abs(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(var_0.d, vec3<u32>(var_0.d.x, 0u, 0u)), vec3<u32>(var_0.d.x, 1u, 0u), true && var_1), countOneBits(vec3<u32>(4294967295u, 21676u, 46561u)))));
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-884f - global1.x);
    let var_1 = u_input.a.xzy;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, global1.x), vec2<f32>(-1000f, global1.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1033f, -1268f)))), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), vec2<f32>(2189f, global1.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(-1149f, 496f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0))) + vec2<f32>(global1.x, 1906f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -546f) - vec2<f32>(var_0, var_0)), vec2<f32>(var_0, global1.x)))));
    var var_2 = 1u;
    var_2 = 4294967295u;
    return _wgslsmith_add_vec4_i32(min(~global2[_wgslsmith_index_u32(func_2(1u, -vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2147483647i)), 7u)], ~u_input.a), vec4<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), -18344i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~select(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(26748u, 7u)]), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 20462u), vec3<u32>(0u, 46965u, 0u))), 7u)], select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), func_1());
    global3 = global1.x;
    global0 = any(!vec3<bool>(_wgslsmith_f_op_f32(global1.x + 1030f) >= global1.x, any(vec2<bool>(true, true)), !select(true, false, true)));
    var var_1 = Struct_1(select(vec3<bool>(true, false, !all(vec2<bool>(true, false))), vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), true, true), true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(230f - _wgslsmith_f_op_f32(min(858f, 1814f))), _wgslsmith_f_op_f32(floor(226f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), !(abs(58665i) <= _wgslsmith_mult_i32(-49401i, abs(u_input.a.x))), firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1873u, 0u), ~vec3<u32>(81112u, 59893u, 997u), ~vec3<u32>(14064u, 93702u, 19447u))), 72906u & (12532u ^ func_3()));
    global2 = array<vec4<i32>, 7>();
    let var_2 = var_1.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_sub_u32(var_1.e, ~(~70885u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, 2524f, 104f, global1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(382f, global1.x, -1000f, var_1.b.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1507f, 902f, global1.x, -1194f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, -1561f))))));
}

