struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<vec2<f32>, 13>;

var<private> global2: array<u32, 14>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    global2 = array<u32, 14>();
    global1 = array<vec2<f32>, 13>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, -1372f)))), global1[_wgslsmith_index_u32(13826u, 13u)])) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zwz, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(u_input.a.ywx, u_input.a.zwz, vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 16u)])), ~vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 0u, 10081u)), vec3<u32>(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 35877u), global2[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_sub_u32(1u, u_input.a.x)))), 13u)]);
    global0 = array<bool, 16>();
    let var_1 = Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(~1u, 16u)], global0[_wgslsmith_index_u32(~0u, 16u)]), -287f, ~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(10113u, 1u), ~0u << (global2[_wgslsmith_index_u32(1u, 14u)] % 32u)), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(39380u, 1u), 16u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 21831u), 16u)], false));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~1u, u_input.a.x >> (var_1.c % 32u)), 13u)], _wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(11941u, 14u)]), 13u)])), !(!global0[_wgslsmith_index_u32(38208u, 16u)]) | var_1.a.x)), vec2<f32>(var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 947f))), vec2<bool>(all(!(!vec4<bool>(var_1.d.x, false, false, global0[_wgslsmith_index_u32(1u, 16u)]))), var_1.d.x)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1570f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))))));
    var var_1 = Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(8658i, -2147483647i, -32572i, u_input.b), vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, 2147483647i)), (vec4<i32>(arg_0, -21441i, 0i, 2147483647i) ^ vec4<i32>(1i, u_input.d.x, -5296i, -6544i)) << (reverseBits(u_input.a) % vec4<u32>(32u))))).x, select(~firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~_wgslsmith_dot_vec3_u32(u_input.a.zzw & u_input.a.ywz, firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(61866u, 14u)], u_input.c.x, 0u))), true), !(!vec3<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(16412u, 16u)], false)), var_0.x != var_0.x)));
    var var_2 = countOneBits(abs(_wgslsmith_sub_i32(1i, u_input.d.x)));
    var var_3 = ~4294967295u;
    var var_4 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(~global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 72996u, max(1u, var_1.c), 4294967295u), vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 80584u), 0u | u_input.c.x, 1u, var_1.c)), u_input.a), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c, var_1.c, u_input.c.x, var_1.c), _wgslsmith_div_vec4_u32(vec4<u32>(42127u, global2[_wgslsmith_index_u32(0u, 14u)], 4294967295u, global2[_wgslsmith_index_u32(4930u, 14u)]), u_input.a)), firstTrailingBit(var_1.c)), countOneBits(37007u));
    return u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, arg_1), _wgslsmith_div_i32(countOneBits(-1i), 0i << (~min(arg_0.c, 0u) % 32u)));
    let var_1 = u_input.d.x;
    global2 = array<u32, 14>();
    let var_2 = arg_3;
    var var_3 = vec2<bool>(true, false);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, countOneBits(arg_1), var_0 ^ var_1), vec3<i32>(_wgslsmith_clamp_i32(var_1, -2147483647i, u_input.d.x), -1i, var_0))), func_4(var_0, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(arg_1))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = u_input.d.yz;
    let var_1 = vec4<i32>(37014i, u_input.b, max(countOneBits(reverseBits(9770i)), firstTrailingBit(-1i) ^ 1i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~var_0.x, 2147483647i), min(func_2(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(48076u, 16u)]), -893f, u_input.a.x, vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 16u)], false, true)), 1i, true, Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)], 16u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)], 16u)]), 1305f, 0u, vec3<bool>(true, global0[_wgslsmith_index_u32(46807u, 16u)], true))), max(u_input.b, -29761i)))) | -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -2147483647i, u_input.d.x, u_input.d.x) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(0i, var_0.x, u_input.d.x, 4184i)), countOneBits(-vec4<i32>(u_input.d.x, var_0.x, -9717i, -45249i)));
    var var_2 = min(~(-(~select(vec3<i32>(-33501i, u_input.d.x, -21730i), vec3<i32>(var_0.x, var_0.x, -41720i), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, true)))), countOneBits(vec3<i32>(reverseBits(~var_1.x), reverseBits(~(-21837i)), -39923i)));
    var_2 = ~u_input.d;
    var_0 = ~vec2<i32>(0i, firstTrailingBit(var_0.x));
    return select(select(vec2<bool>(!(!global0[_wgslsmith_index_u32(u_input.c.x, 16u)]), all(vec2<bool>(true, true))), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)] || !global0[_wgslsmith_index_u32(31092u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c.x, 14u)]) >> (4294967295u % 32u), 16u)])), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(1376u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), true), global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.c.x), 16u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 16u)], global0[_wgslsmith_index_u32(1u, 16u)])), !select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(42213u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false), true)), true);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = u_input.b | -47693i;
    let var_1 = arg_0;
    var var_2 = vec4<bool>(true, !all(select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], false, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 16u)], true, global0[_wgslsmith_index_u32(81015u, 16u)], true), vec4<bool>(true, arg_2.d.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], arg_2.d.x), arg_2.d.x), true)), ~arg_3 < 1u, arg_2.d.x & select(!(arg_2.a.x | false), all(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(39089u, 16u)], true)), all(select(vec3<bool>(false, arg_2.d.x, true), arg_2.d, true))));
    var var_3 = true;
    var var_4 = arg_2;
    return select(var_2.zyw, !var_2.yzy, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-25866i, u_input.b, u_input.b, u_input.d.x | u_input.b)), vec4<i32>(-u_input.b, ~(~(~u_input.d.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, u_input.d.x, u_input.b, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-51112i, -15453i, u_input.d.x, 25583i), vec4<i32>(2147483647i, 2147483647i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.d.x)), ~vec4<i32>(2147483647i, u_input.b, 33756i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(60877i, 2147483647i, u_input.b, 1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b)) << ((u_input.a ^ u_input.a) % vec4<u32>(32u))), ~(-_wgslsmith_add_i32(38800i, 29687i))));
    var var_1 = Struct_1(vec2<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24171u, 14u)], 16u)], global0[_wgslsmith_index_u32(26180u, 16u)]), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true), true))), 13696u != ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(17827u, 14u)], 14u)]), 1f, abs(0u) | ~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(46893u, 14u)] >> (u_input.a.x % 32u), 43499u), 14u)], select(func_5(vec3<f32>(-385f, -1198f, _wgslsmith_f_op_f32(f32(-1f) * -555f)), u_input.a.wzy ^ vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 1u, 0u), Struct_1(func_1(), _wgslsmith_f_op_f32(step(331f, -188f)), firstTrailingBit(u_input.c.x), vec3<bool>(true, true, true)), 35202u), vec3<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 16u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 16u)])), true == all(vec2<bool>(false, true))), select(select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 16u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38166u, 14u)], 16u)], false), vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 16u)], false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 16u)])), vec3<bool>(true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], false, false), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], false), func_5(vec3<f32>(1126f, 357f, -409f), u_input.a.yyw, Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(47396u, 16u)]), -413f, 4294967295u, vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, false)), 0u)), global0[_wgslsmith_index_u32(select(34932u, ~0u, false), 16u)])));
    global2 = array<u32, 14>();
    let var_2 = Struct_1(!select(vec2<bool>(var_1.b <= var_1.b, select(global0[_wgslsmith_index_u32(4294967295u, 16u)], var_1.a.x, var_1.a.x)), select(select(var_1.d.yx, var_1.d.xy, true), var_1.d.yy, global0[_wgslsmith_index_u32(1u, 16u)]), var_1.a), var_1.b, ~(~(~(59923u >> (u_input.a.x % 32u)))), !var_1.d);
    let var_3 = false;
    let var_4 = (firstLeadingBit(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(33697u, var_2.c, 0u, var_2.c), vec4<u32>(0u, 4294967295u, 0u, var_1.c))) >> (select(~(~15426u), 13711u, true) % 32u)) > abs(~20787u);
    let var_5 = vec2<u32>(~_wgslsmith_dot_vec4_u32(max(~u_input.a, u_input.a), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(global2[_wgslsmith_index_u32(var_1.c, 14u)], var_1.c, 48158u, u_input.c.x))), _wgslsmith_clamp_u32(56660u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(u_input.a.yz), abs(u_input.a.yw)), _wgslsmith_dot_vec3_u32(u_input.a.yyz, vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(var_2.c, 14u)], 0u)) >> (~4294967295u % 32u)), _wgslsmith_dot_vec4_u32(~abs(u_input.a), max(vec4<u32>(var_1.c, 1u, u_input.a.x, 1u) >> (vec4<u32>(var_2.c, 95201u, 4294967295u, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(var_2.c, 1u, u_input.c.x, 4294967295u)))));
    let var_6 = u_input.a.ywx & _wgslsmith_add_vec3_u32(vec3<u32>(var_5.x, ~firstLeadingBit(71162u), ~var_2.c), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, var_2.c, var_2.c), vec3<u32>(0u, global2[_wgslsmith_index_u32(13800u, 14u)], var_2.c)), 53432u, _wgslsmith_sub_u32(4294967295u, 1u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_5.x, 4294967295u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 715u), vec3<u32>(var_2.c, 4294967295u, 4294967295u))) % vec3<u32>(32u)));
    global0 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a) & u_input.a, ~(~u_input.a)), u_input.a.x, var_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b, -339f, var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_2.b, -785f) + vec3<f32>(var_1.b, var_2.b, var_1.b)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1347f)), 639f, 1000f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(214f, 271f, var_1.b, 1108f)) - vec4<f32>(-858f, var_2.b, var_1.b, var_2.b))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-var_1.b));
}

