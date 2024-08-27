struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(1000f, 771f));

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: i32;

var<private> global3: vec3<f32> = vec3<f32>(-265f, 2794f, -165f);

var<private> global4: i32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: vec2<i32>) -> i32 {
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), 1394f);
    return 38380i;
}

fn func_2() -> i32 {
    var var_0 = all(vec4<bool>(true, !(u_input.a.x != _wgslsmith_add_u32(u_input.a.x, 2989u)), true | (all(vec4<bool>(true, false, true, false)) | (global3.x == global3.x)), true));
    var var_1 = Struct_1(vec4<i32>(reverseBits(1i), 1i, 1i, 0i), u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-812f + _wgslsmith_f_op_f32(round(-1136f))), global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, _wgslsmith_f_op_f32(floor(global3.x)), global3.x) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(125f, global3.x, -857f))))), _wgslsmith_mod_u32(u_input.a.x & ~u_input.a.x, u_input.a.x & u_input.a.x));
    global1 = array<vec3<i32>, 5>();
    var var_2 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(22762i, 1i, 0i, var_1.a.x), abs(var_1.a)), vec4<i32>(-1i) * -vec4<i32>(66779i, var_1.a.x, 2147483647i, var_1.a.x)), vec4<i32>(-func_3(var_1.a, 0u, 55325u, var_1.a.zx), _wgslsmith_dot_vec3_i32(reverseBits(global1[_wgslsmith_index_u32(38127u, 5u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.x, 1722i, var_1.a.x), global1[_wgslsmith_index_u32(var_1.e, 5u)])), firstLeadingBit(abs(1i)), _wgslsmith_sub_i32(var_1.a.x, var_1.a.x))), abs(~1959u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(min(var_1.d.x, var_1.c.x)), _wgslsmith_f_op_f32(trunc(807f)), _wgslsmith_f_op_f32(select(var_1.d.x, global3.x, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, global3.x, 161f, global3.x) + vec4<f32>(var_1.d.x, global3.x, var_1.c.x, 1117f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 115f, -1507f, -1000f) * _wgslsmith_f_op_vec4_f32(select(var_1.c, var_1.c, vec4<bool>(false, true, true, true))))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-2140f)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * var_1.d.x), _wgslsmith_f_op_f32(global3.x + var_1.d.x))), _wgslsmith_mod_u32(~5356u, 4294967295u));
    global4 = abs(_wgslsmith_dot_vec4_i32(abs(~var_2.a), vec4<i32>(2147483647i, 1i, var_1.a.x, var_2.a.x) | -vec4<i32>(var_2.a.x, var_1.a.x, var_1.a.x, var_2.a.x))) << (_wgslsmith_add_u32(~var_1.e | firstLeadingBit(min(var_2.b, 33783u)), 0u) % 32u);
    return max(1i, -_wgslsmith_div_i32(7893i, var_1.a.x));
}

fn func_1() -> vec4<f32> {
    global2 = _wgslsmith_mod_i32(0i, func_2());
    var var_0 = _wgslsmith_f_op_f32(step(-105f, _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))), ~(u_input.a.x | u_input.a.x) >= (u_input.a.x ^ abs(8190u))))));
    global4 = ~abs(1i);
    var var_1 = -394f;
    let var_2 = Struct_1(vec4<i32>(-max(1i, 7087i), ~1i << ((58097u ^ u_input.a.x) % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -46767i), -vec2<i32>(-1i, -2147483647i)), select(1i, -12003i, true) >> (select(u_input.a.x, 30019u, true) % 32u)) ^ vec4<i32>(-24068i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, 1i), select(0i, -1i, true), 0i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-50601i, -35241i, 0i, 44750i), vec4<i32>(-10574i, 1i, 24339i, -1i)), ~0i), min(~(~u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 873u, u_input.a.x), vec3<u32>(123217u, 34619u, u_input.a.x))), ~(~(~u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(193f * 267f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))))), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -964f))), -456f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) - vec3<f32>(global3.x, global3.x, global3.x)))))), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 112827u, 81211u, 36586u), ~vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x)), u_input.a)));
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, var_2.d.x, _wgslsmith_f_op_f32(trunc(-1691f)), 1f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1741f, -186f, var_2.d.x, -1573f), var_2.c))) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, -502f, var_2.c.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.d.x, -114f, -621f, 295f)))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1.c;
    var var_1 = true;
    var var_2 = var_0.x;
    let var_3 = Struct_1(vec4<i32>(arg_1.a.x, ~((arg_1.a.x & -10175i) >> ((12807u << (u_input.a.x % 32u)) % 32u)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, 1i, 57395i)), select(vec3<i32>(arg_0.a.x, arg_0.a.x, 2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 5u)], vec3<bool>(true, true, true))) >> (_wgslsmith_mod_u32(1u, select(1u, u_input.a.x, false)) % 32u), 24185i | arg_0.a.x), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(38611u, 23232u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_1.b, 42242u), _wgslsmith_div_vec3_u32(u_input.a.zyw, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1556f, 187f, arg_1.c.x, arg_0.d.x), arg_1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -621f, 1737f, arg_0.d.x)), any(vec2<bool>(true, true)))) - arg_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, 1217f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(383f, -819f, -1181f), var_0.zzy, true))))), 1u);
    var_1 = arg_0.e <= max(u_input.a.x, abs(arg_1.b >> (84020u % 32u)));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(-_wgslsmith_mod_i32(11667i, var_3.a.x)), arg_1.a.x, -(abs(arg_0.a.x) | (arg_1.a.x | 49912i)), arg_0.a.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_0.a.x, -1i, var_3.a.x) | min(vec4<i32>(-1i, 0i, arg_0.a.x, arg_1.a.x), arg_1.a), abs(vec4<i32>(1i, 0i, var_3.a.x, var_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), u_input.a.x << (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(func_1()), vec3<f32>(global3.x, global3.x, global3.x), u_input.a.x), Struct_1(-vec4<i32>(-409i, -7463i, -26669i, 2147483647i), ~4294967295u, vec4<f32>(-148f, global3.x, global3.x, global3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) + vec3<f32>(global3.x, 711f, -612f)), ~68497u)) << (_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(4294967295u, u_input.a.x, firstTrailingBit(0u), 12574u)) % vec4<u32>(32u)), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, 45521u, u_input.a.x), u_input.a.x) | max(~(~u_input.a.x), firstLeadingBit(u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x))))), vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global3.x)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1617f))))), u_input.a.x);
    global2 = _wgslsmith_sub_i32(-func_4(var_0, Struct_1(var_0.a, 0u >> (u_input.a.x % 32u), var_0.c, _wgslsmith_f_op_vec3_f32(-var_0.c.zwz), ~u_input.a.x)).x, 2147483647i);
    global0 = array<vec2<f32>, 1>();
    let var_1 = var_0;
    let var_2 = Struct_1(vec4<i32>(~(-_wgslsmith_mod_i32(var_0.a.x, var_0.a.x)), -(~var_1.a.x), 28241i, 24160i), ~(~reverseBits(var_1.b)), _wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1027f, _wgslsmith_f_op_f32(333f - global3.x), _wgslsmith_f_op_f32(355f + var_1.c.x), -1272f)))), _wgslsmith_f_op_vec3_f32(-var_1.d), var_1.b ^ ~_wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_mod_u32(58141u, var_0.e)));
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(((var_0.a | vec4<i32>(var_1.a.x, var_1.a.x, var_2.a.x, var_1.a.x)) << (~vec4<u32>(26992u, var_1.e, var_1.e, var_2.e) % vec4<u32>(32u))) | ~var_0.a, vec4<i32>(var_1.a.x, 48905i, 0i, 1i | func_2())), 0u, var_2.c, _wgslsmith_f_op_vec3_f32(abs(var_0.c.wzy)), reverseBits(var_1.b));
    var var_4 = vec2<u32>(0u, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

