struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 2>;

var<private> global2: f32;

var<private> global3: u32;

var<private> global4: vec2<i32> = vec2<i32>(31249i, 27224i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_4(Struct_3(Struct_1(false, ~31624i, -global4.x), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))), Struct_1(false, _wgslsmith_div_i32(-32718i, max(global4.x, 29783i)), -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-494f + -201f))), -1190f, true & any(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-177f, 793f)))), Struct_1(true, global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 8162u), 2u)]));
    var var_1 = var_0;
    let var_2 = var_1.a.a.c;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x * 559f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.x, -1684f)) - var_1.c.x))))));
    global3 = ~u_input.a;
    return _wgslsmith_dot_vec3_u32(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(66825u, u_input.a, 0u) << (vec3<u32>(1190u, 4294967295u, u_input.a) % vec3<u32>(32u)), vec3<u32>(0u, 1u, u_input.a) & vec3<u32>(u_input.a, 114590u, u_input.a))), (vec3<u32>(max(4294967295u, u_input.a), u_input.a, ~4294967295u) << (min(vec3<u32>(u_input.a, 55647u, u_input.a), vec3<u32>(u_input.a, 80945u, 59830u) | vec3<u32>(1u, u_input.a, 4294967295u)) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_div_u32(5624u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 14165u), vec3<u32>(u_input.a, 12312u, 485u))), reverseBits(u_input.a), u_input.a) % vec3<u32>(32u)));
}

fn func_2() -> vec2<i32> {
    global3 = func_3();
    let var_0 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, 13520u), select(max(u_input.a, 27566u), ~31647u, any(vec2<bool>(false, false))), _wgslsmith_mod_u32(_wgslsmith_div_u32(2451u, u_input.a), u_input.a << (u_input.a % 32u)), u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 3499u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 37887u, u_input.a)), 4294967295u, 66477u, reverseBits(u_input.a << (0u % 32u)))), countOneBits(-25897i), Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), global1[_wgslsmith_index_u32(~max(~u_input.a, u_input.a), 2u)], ~min(global4.x, global1[_wgslsmith_index_u32(u_input.a, 2u)]) & 2147483647i));
    let var_1 = true;
    let var_2 = Struct_3(Struct_1(true, ~8763i, global4.x), !vec4<bool>(any(select(vec4<bool>(var_0.c.a, var_0.c.a, var_1, var_0.c.a), vec4<bool>(false, true, var_1, var_0.c.a), vec4<bool>(var_0.c.a, false, var_1, true))), all(vec2<bool>(true, true)) & var_0.c.a, false, all(vec2<bool>(false, false))));
    global4 = select(vec2<i32>(var_0.b, _wgslsmith_mod_i32(select(3867i, global4.x, false) | 1i, global4.x)), _wgslsmith_add_vec2_i32(select(-(vec2<i32>(-1i, 35070i) << (vec2<u32>(u_input.a, 23774u) % vec2<u32>(32u))), firstLeadingBit(firstLeadingBit(vec2<i32>(global4.x, global1[_wgslsmith_index_u32(1u, 2u)]))), var_2.b.xw), countOneBits(-vec2<i32>(var_0.c.c, 2147483647i) | vec2<i32>(global4.x, 19867i))), true);
    return _wgslsmith_sub_vec2_i32(abs(vec2<i32>(_wgslsmith_add_i32(22772i, global1[_wgslsmith_index_u32(abs(1u), 2u)]), -1i)), vec2<i32>(_wgslsmith_clamp_i32(var_0.c.c | global4.x, ~var_0.c.c, var_0.b), ~34365i));
}

fn func_1() -> vec3<bool> {
    global1 = array<i32, 2>();
    global4 = _wgslsmith_sub_vec2_i32(-vec2<i32>(global4.x, ~(i32(-1i) * -19977i)), select(vec2<i32>(1i, _wgslsmith_add_i32(-38917i, -20940i)), func_2(), false));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-247f + 305f), _wgslsmith_f_op_f32(f32(-1f) * -156f), 1500f, _wgslsmith_div_f32(-452f, -732f)) - vec4<f32>(-149f, _wgslsmith_f_op_f32(min(1151f, 243f)), _wgslsmith_f_op_f32(select(-1000f, -2174f, true)), _wgslsmith_f_op_f32(min(1000f, 402f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(323f, 908f, 633f, 391f))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-855f, _wgslsmith_f_op_f32(max(1000f, -365f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_div_f32(2037f, _wgslsmith_f_op_f32(-1000f + 800f)))));
    global3 = func_3();
    global4 = countOneBits(vec2<i32>(36652i, 58294i));
    return vec3<bool>(!(!all(vec4<bool>(false, true, false, true))) || false, true, select(true & any(vec4<bool>(true, true, true, true)), true, ~_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a) < ~(u_input.a & 11459u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec2<bool>(all(vec4<bool>(true, false, false, true)), global1[_wgslsmith_index_u32(19397u, 2u)] > global1[_wgslsmith_index_u32(u_input.a, 2u)])), !vec2<bool>(any(vec4<bool>(true, true, true, true)), true), all(func_1()));
    var var_1 = Struct_3(Struct_1(true, global1[_wgslsmith_index_u32(~(~(~u_input.a)), 2u)], abs(firstTrailingBit(1i))), select(vec4<bool>(var_0.x, var_0.x, any(vec3<bool>(true, var_0.x, var_0.x)), var_0.x), vec4<bool>(var_0.x, !(!var_0.x), select(var_0.x, var_0.x, var_0.x) || (4294967295u > u_input.a), ~global1[_wgslsmith_index_u32(u_input.a, 2u)] <= _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a, 2u)], global4.x), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], 4447i, -13217i))), ~_wgslsmith_add_u32(u_input.a, u_input.a) == _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(87421u, 54839u))));
    var_1 = Struct_3(Struct_1(all(vec3<bool>(false, all(var_1.b), var_0.x)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 20797i), _wgslsmith_add_vec3_i32(vec3<i32>(global4.x, global1[_wgslsmith_index_u32(51813u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), vec3<i32>(52170i, var_1.a.b, global4.x))), global1[_wgslsmith_index_u32(85566u, 2u)]), select(select(!(!vec4<bool>(var_1.a.a, false, var_0.x, true)), vec4<bool>(true, true, select(true, true, false), !var_1.a.a), var_1.b.x), select(select(var_1.b, select(vec4<bool>(var_0.x, false, var_0.x, true), var_1.b, var_1.b), vec4<bool>(false, false, var_1.a.a, var_1.b.x)), select(vec4<bool>(var_0.x, true, true, var_0.x), select(var_1.b, var_1.b, var_1.b), var_1.b), true), !var_1.a.a));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(132f - 1205f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(325f * -473f) - _wgslsmith_f_op_f32(ceil(-320f)))))), -625f);
    let var_3 = -(abs(abs(vec3<i32>(-32583i, 1i, global1[_wgslsmith_index_u32(1u, 2u)]))) << (~vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(25897u, u_input.a, 30360u), vec3<u32>(u_input.a, 1u, u_input.a)), ~1u) % vec3<u32>(32u)));
    let var_4 = Struct_2(select(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), max(vec4<u32>(u_input.a, 33295u, u_input.a, u_input.a), vec4<u32>(0u, 4294967295u, 0u, u_input.a))), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 50748u, u_input.a, 0u)), select(vec4<u32>(u_input.a, u_input.a, 1u, 127428u), vec4<u32>(u_input.a, u_input.a, u_input.a, 35267u), var_1.b)), all(var_1.b.yxx)) ^ reverseBits(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), _wgslsmith_dot_vec4_i32(select(-countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(48109u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], var_1.a.c, var_1.a.c)), vec4<i32>(var_1.a.c, -27894i, -25589i, var_3.x) | -vec4<i32>(var_3.x, 44285i, -40169i, global4.x), false), countOneBits(abs(reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], var_3.x, -34136i, global1[_wgslsmith_index_u32(u_input.a, 2u)]))))), Struct_1(var_0.x, reverseBits(-(~11922i)), _wgslsmith_clamp_i32(-31680i, countOneBits(-9045i), ~_wgslsmith_add_i32(-1i, -35607i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-157f, 1000f, var_2.x, -1117f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_2.x, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(109f * _wgslsmith_f_op_f32(min(-101f, 911f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1722f, var_2.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1041f, -2114f) + vec2<f32>(var_2.x, var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-282f)), -211f))));
}

