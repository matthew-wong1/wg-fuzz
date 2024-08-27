struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(813f, 1000f, -1026f, 442f), vec4<f32>(598f, -329f, -1006f, -1517f), vec4<f32>(913f, 273f, 1125f, 2629f), vec4<f32>(-1207f, -1063f, -467f, -1000f), vec4<f32>(214f, 105f, 106f, -1070f), vec4<f32>(1356f, 1003f, -1398f, 617f), vec4<f32>(790f, 1000f, -1102f, 1915f), vec4<f32>(1056f, 941f, -1084f, -1295f));

var<private> global2: array<i32, 7>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1588f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(294f, 619f) + -220f)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-386f, 779f))), vec2<f32>(532f, -1833f)))));
    let var_1 = abs(vec4<u32>(4294967295u, 48482u, 77333u, 4294967295u));
    var var_2 = _wgslsmith_add_vec3_u32(~vec3<u32>(~firstTrailingBit(var_1.x), ~var_1.x, _wgslsmith_mod_u32(~var_1.x, 1u)), abs(_wgslsmith_sub_vec3_u32(~var_1.yzz, _wgslsmith_div_vec3_u32(~var_1.yyz, var_1.wzw))));
    let var_3 = Struct_1(59854i, vec3<i32>(2147483647i, reverseBits(-2060i), _wgslsmith_div_i32(u_input.a, firstTrailingBit(u_input.a))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, 1172f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1272f, var_0.x) * vec3<f32>(1112f, -1000f, 888f))))))), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 7u)], 5015i << (~(var_1.x >> (var_1.x % 32u)) % 32u)));
    global0 = array<vec4<u32>, 28>();
    return var_2.yx;
}

fn func_2() -> u32 {
    global0 = array<vec4<u32>, 28>();
    let var_0 = Struct_1(_wgslsmith_mult_i32(u_input.a, 5958i), vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(u_input.a, 6360i), ~(19044i | u_input.a)), u_input.a, global2[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(666f, 1000f, -1435f))))), ~(-1i));
    global1 = array<vec4<f32>, 8>();
    global1 = array<vec4<f32>, 8>();
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(74106u, 75157u, 9407u, 1u), global0[_wgslsmith_index_u32(1206u, 28u)])), select(func_3(), ~vec2<u32>(0u, 1u), vec2<bool>(false, false))), firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(18694u, 4294967295u), vec2<u32>(24451u, 19490u)))), ~_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), any(vec4<bool>(true, false, false, true))), _wgslsmith_mod_vec2_u32(min(vec2<u32>(1u, 4294967295u), vec2<u32>(12289u, 0u)), vec2<u32>(1u, 74144u))));
    return abs(0u);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    global1 = array<vec4<f32>, 8>();
    var var_0 = -1i;
    var var_1 = ~func_2();
    global1 = array<vec4<f32>, 8>();
    let var_2 = arg_2;
    return _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(54127u, 0u, 17361u), 67406u), ~_wgslsmith_clamp_u32(38748u, 4294967295u, 1u)), vec2<u32>(_wgslsmith_sub_u32(max(1u, 0u), 1u), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(266u, 7445u)))) ^ max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, _wgslsmith_clamp_u32(0u, 52891u, 4294967295u)), ~min(vec2<u32>(0u, 0u), vec2<u32>(1u, 24420u))), ~(~vec2<u32>(7954u, 7549u) >> (abs(vec2<u32>(0u, 1u)) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global2 = array<i32, 7>();
    return _wgslsmith_sub_vec2_u32(~(~_wgslsmith_add_vec2_u32(firstTrailingBit(arg_0), vec2<u32>(0u, arg_0.x))), select(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(6737u, 31935u, 65213u, 68295u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), 4294967295u), _wgslsmith_clamp_vec2_u32(func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-1000f - arg_1.c.x), Struct_1(-1i, vec3<i32>(arg_2.a, arg_2.b.x, 1i), arg_1.c, -54046i)), _wgslsmith_mult_vec2_u32(min(arg_0, arg_0), firstLeadingBit(arg_0)), ~vec2<u32>(arg_0.x, arg_0.x)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(any(vec3<bool>(false, true, true)), select(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 7>();
    var var_0 = true;
    let var_1 = vec2<bool>(true, !(true && !select(true, true, true)));
    global1 = array<vec4<f32>, 8>();
    let var_2 = func_4(~(~func_1(vec2<bool>(true, var_1.x), -1249f, Struct_1(u_input.a, vec3<i32>(12468i, global2[_wgslsmith_index_u32(35114u, 7u)], global2[_wgslsmith_index_u32(55464u, 7u)]), vec3<f32>(1648f, -195f, 418f), 32653i))) >> (max(select(~vec2<u32>(39883u, 35323u), vec2<u32>(1u, 1u), true), abs(func_3())) % vec2<u32>(32u)), Struct_1(_wgslsmith_div_i32(26865i, 7425i), vec3<i32>(_wgslsmith_mult_i32(-11162i, global2[_wgslsmith_index_u32(21433u, 7u)]) << (min(17268u, 5923u) % 32u), global2[_wgslsmith_index_u32(~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(33747u, 1u, 36817u), vec3<u32>(4294967295u, 37367u, 1u)) % 32u), 7u)], ~(global2[_wgslsmith_index_u32(4294967295u, 7u)] | global2[_wgslsmith_index_u32(35166u, 7u)])), vec3<f32>(-1734f, _wgslsmith_f_op_f32(trunc(-560f)), _wgslsmith_f_op_f32(sign(-690f))), u_input.a), Struct_1(~85175i, vec3<i32>(global2[_wgslsmith_index_u32(func_1(select(vec2<bool>(false, var_1.x), var_1, var_1), -411f, Struct_1(4322i, vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(0u, 7u)], -1i), vec3<f32>(-334f, 294f, -877f), -1i)).x, 7u)], ~max(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), -52385i), vec3<f32>(_wgslsmith_f_op_f32(abs(-1446f)), 354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-702f, 655f)))), ~(-2147483647i)));
    let var_3 = Struct_1(u_input.a, firstTrailingBit(reverseBits(vec3<i32>(-34233i, global2[_wgslsmith_index_u32(6242u, 7u)], global2[_wgslsmith_index_u32(2002u, 7u)]) >> (vec3<u32>(0u, var_2.x, 4294967295u) % vec3<u32>(32u)))) | _wgslsmith_add_vec3_i32(vec3<i32>(1i, max(4276i, 15033i), u_input.a), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, -12739i, u_input.a), max(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), vec3<i32>(1i, 44227i, 0i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1249f, 225f, 499f))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1182f, -1000f, -1942f)))))), _wgslsmith_mult_i32(min(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, 2147483647i), i32(-1i) * -33509i), _wgslsmith_mod_i32(1i, -44039i)), global2[_wgslsmith_index_u32(func_3().x, 7u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-125f, -493f, var_3.c.x, 233f))))), ~(12794u & (abs(var_2.x) ^ firstTrailingBit(var_2.x))), -742f, 22798u, func_1(!var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_3.c.x, _wgslsmith_f_op_f32(515f - 1133f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x * 1743f) + _wgslsmith_f_op_f32(f32(-1f) * -556f)))), Struct_1(firstLeadingBit(abs(35681i)), vec3<i32>(u_input.a, 1i, _wgslsmith_clamp_i32(var_3.a, -1i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.c.x, var_3.c.x, -965f), var_3.c)), 2147483647i)).x);
}

