struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28>;

var<private> global1: u32;

var<private> global2: vec2<f32>;

var<private> global3: array<f32, 8>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, true), true), any(vec4<bool>(false, true, false, false))));
    var var_1 = reverseBits(vec4<u32>(abs(arg_1), 66699u, 4294967295u, 96361u));
    var_1 = max(~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a.x, u_input.a.x, arg_1, u_input.a.x) >> (vec4<u32>(arg_1, 4294967295u, 1625u, 0u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, var_1.x, 4294967295u, 89785u)), ~vec4<u32>(var_1.x, 24644u, 4294967295u, 1u)), vec4<u32>(countOneBits(reverseBits(9999u)), ~var_1.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x | u_input.a.x, _wgslsmith_mult_u32(0u, 44046u)), 0u), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 8402u), var_1.x, ~u_input.a.x))));
    var var_2 = vec2<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 9555u), u_input.a) != _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(10948u, var_1.x, var_1.x, 43427u), vec4<u32>(var_1.x, arg_1, 47398u, u_input.a.x), vec4<u32>(40223u, 65705u, u_input.a.x, 4294967295u)), countOneBits(vec4<u32>(30633u, 1u, u_input.a.x, 11245u))), arg_1), var_0.x);
    global1 = 74885u;
    return var_1.wxw | ~select(vec3<u32>(var_1.x, max(arg_1, 4294967295u), ~var_1.x), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_1.x, 93214u), var_1.xxy)), var_2.x);
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = 6469u;
    let var_1 = ~(-arg_0.a.x);
    let var_2 = vec2<u32>(max(u_input.a.x, arg_0.b.x), _wgslsmith_clamp_u32(0u, u_input.a.x ^ _wgslsmith_div_u32(var_0, _wgslsmith_mod_u32(u_input.a.x, var_0)), ~0u));
    let var_3 = -u_input.b;
    global0 = array<vec2<u32>, 28>();
    return arg_0.a;
}

fn func_2() -> Struct_1 {
    let var_0 = ~_wgslsmith_div_i32(~u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b) & ~12760i) > u_input.b;
    var var_1 = Struct_1(func_4(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(1575i, 38730i)) & -vec2<i32>(u_input.b, -1i), func_3(reverseBits(-1i), ~u_input.a.x, vec3<i32>(u_input.b, 13213i, 34722i) << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))), global2.x, !(!vec4<bool>(var_0, var_0, true, var_0)))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(68991u, 0u, 1u), vec3<u32>(69421u, 1u, u_input.a.x)) & firstLeadingBit(vec3<u32>(u_input.a.x, 38798u, 53885u)), ~(~vec3<u32>(33916u, u_input.a.x, u_input.a.x))) << (countOneBits(vec3<u32>(~1u, ~2646u, 41428u & u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -947f)))) + -387f), select(select(!vec4<bool>(true, var_0, var_0, false), vec4<bool>(false, any(vec3<bool>(true, false, false)), true, !var_0), true || !var_0), !(!(!vec4<bool>(var_0, true, true, false))), var_0));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1250f + global3[_wgslsmith_index_u32(4294967295u, 8u)]))), var_1.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-628f, 483f, global3[_wgslsmith_index_u32(var_1.b.x, 8u)]) - vec3<f32>(-1664f, 346f, global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_1.b.x, 8u)], 2213f, global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c, 1000f, 659f)))), _wgslsmith_f_op_f32(floor(792f)) < var_1.c)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(119f, -148f, global2.x)) * vec3<f32>(-984f, var_1.c, var_1.c))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(11786u, 8u)], 307f, global2.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(400f, var_1.c, global3[_wgslsmith_index_u32(u_input.a.x, 8u)]))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c, global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(75829u, 8u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -790f, 809f) + vec3<f32>(-1208f, var_1.c, -698f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - -508f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, 2364f))), _wgslsmith_f_op_f32(-1000f + global3[_wgslsmith_index_u32(var_1.b.x, 8u)]))));
    let var_3 = _wgslsmith_mult_vec2_i32(var_1.a, min(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -2147483647i), var_1.a) ^ var_1.a), vec2<i32>(var_1.a.x, -u_input.b)));
    return Struct_1(var_1.a, vec3<u32>(~(_wgslsmith_add_u32(var_1.b.x, var_1.b.x) >> (43927u % 32u)), _wgslsmith_dot_vec2_u32(u_input.a, reverseBits(~vec2<u32>(30750u, 15782u))), ~20417u | ~u_input.a.x), -826f, !(!select(select(var_1.d, vec4<bool>(false, false, var_0, var_1.d.x), var_1.d.x), select(var_1.d, vec4<bool>(var_1.d.x, var_1.d.x, var_0, false), var_1.d.x), var_1.d)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_i32(abs(u_input.b | (i32(-1i) * -2147483647i)) << (u_input.a.x % 32u), _wgslsmith_add_i32(~arg_2.a.x, -1i));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~(-45823i), 0i), min(-vec2<i32>(10069i, -23157i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -28584i), vec2<i32>(u_input.b, -21173i), arg_1.a))), -vec2<i32>(arg_1.a.x, 12782i) | vec2<i32>(max(-21945i, -1i), -46899i)), vec3<u32>(abs(_wgslsmith_sub_u32(u_input.a.x, 1u)) >> (42457u % 32u), ~1u, arg_2.b.x), global2.x, vec4<bool>(false, arg_2.d.x, (~arg_1.b.x == _wgslsmith_mult_u32(arg_2.b.x, arg_1.b.x)) | arg_1.d.x, true));
    var_1 = func_2();
    var var_2 = func_2();
    global1 = 1u >> ((_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x, 4294967295u, 25929u, u_input.a.x), vec4<u32>(u_input.a.x, var_1.b.x, 0u, var_1.b.x)), ~vec4<u32>(4294967295u, arg_2.b.x, 1u, 33083u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, u_input.a.x, 54287u), vec4<u32>(arg_1.b.x, arg_0.x, 78106u, u_input.a.x))) >> ((~29908u & func_3(1i, u_input.a.x, vec3<i32>(-57172i, var_0, 1i)).x) % 32u)) % 32u);
    return _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_2.b.x, 8u)] + _wgslsmith_f_op_f32(round(-264f)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = false;
    let var_1 = !(all(select(vec3<bool>(arg_1.d.x, false, arg_1.d.x), !vec3<bool>(true, arg_1.d.x, true), arg_1.d.x && false)) || true);
    var var_2 = arg_1;
    var var_3 = !(arg_1.b.x == ~u_input.a.x);
    let var_4 = reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-48048i, -1i, ~(i32(-1i) * -14007i)), _wgslsmith_add_vec3_i32(max(countOneBits(vec3<i32>(0i, var_2.a.x, 37760i)), vec3<i32>(17453i, u_input.b, u_input.b) & vec3<i32>(var_2.a.x, -2147483647i, -1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -31354i, -14312i), vec3<i32>(u_input.b, var_2.a.x, arg_1.a.x)), vec3<i32>(var_2.a.x, arg_1.a.x, u_input.b) & vec3<i32>(arg_1.a.x, 0i, arg_1.a.x)))));
    return Struct_1(var_2.a, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-662f, -1203f, arg_1.d.x)), _wgslsmith_f_op_f32(exp2(arg_1.c)), var_1)))), vec4<bool>(firstLeadingBit(39268u) > u_input.a.x, var_2.d.x, var_2.d.x, !var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(~u_input.a.x, 0u), ~(~(~29104u)), u_input.a.x);
    let var_1 = func_5(38062u, Struct_1(firstTrailingBit(vec2<i32>(~1i, 0i)), ~(vec3<u32>(16371u, 1u, u_input.a.x) ^ ~vec3<u32>(var_0, 53380u, var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(0u, var_0), Struct_1(vec2<i32>(u_input.b, -2147483647i), vec3<u32>(47257u, u_input.a.x, var_0), -2415f, vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(2147483647i, -6018i), vec3<u32>(u_input.a.x, u_input.a.x, 35807u), -335f, vec4<bool>(true, false, false, false))))))), vec4<bool>(any(vec2<bool>(true, true)), true, false, false)), firstTrailingBit(~select(vec4<u32>(u_input.a.x, var_0, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 20226u, u_input.a.x, var_0) % vec4<u32>(32u)), vec4<u32>(4294967295u, 52667u, u_input.a.x, 1u), func_2().d.x)), _wgslsmith_f_op_f32(func_1(vec2<u32>(var_0, 0u), func_2(), Struct_1(vec2<i32>(u_input.b, ~u_input.b), select(vec3<u32>(1u, u_input.a.x, var_0), ~vec3<u32>(var_0, var_0, u_input.a.x), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(func_1(u_input.a, Struct_1(vec2<i32>(2147483647i, -81845i), vec3<u32>(u_input.a.x, var_0, 4294967295u), -1000f, vec4<bool>(true, false, false, true)), func_2())), vec4<bool>(true, true, true, true)))));
    var var_2 = Struct_1(var_1.a & (countOneBits(select(var_1.a, vec2<i32>(-7785i, u_input.b), var_1.d.x)) | var_1.a), vec3<u32>(4294967295u, 72651u, ~_wgslsmith_div_u32(~var_0, 28964u)), 1308f, !vec4<bool>(_wgslsmith_dot_vec2_u32(var_1.b.zz, vec2<u32>(var_0, 6493u)) > var_0, true, !(!var_1.d.x), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_2.c, global3[_wgslsmith_index_u32(57777u, 8u)])), 508f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_div_f32(var_2.c, var_2.c))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1256f)) * -1995f), var_1.c, 515f, 1146f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(step(var_1.c, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -654f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(27450u, 8u)], var_2.c, 832f, global2.x), vec4<f32>(var_1.c, -2450f, -773f, 488f))), vec4<f32>(-197f, global2.x, -908f, global2.x))))));
    global1 = ~var_0;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-1588f * _wgslsmith_f_op_f32(f32(-1f) * -275f)))) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(47163u, 8u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(782f, var_2.c)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1362f - 119f))))));
    global1 = 3988u;
    let var_5 = func_5(1u, var_1, abs(~(~vec4<u32>(u_input.a.x, var_1.b.x, u_input.a.x, var_0))), _wgslsmith_f_op_f32(-1275f * -2319f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.a, vec2<i32>(var_2.a.x, min(3381i, var_5.a.x))), vec2<i32>(select(-11847i, func_2().a.x, true), _wgslsmith_div_i32(u_input.b >> (1u % 32u), var_5.a.x))), _wgslsmith_mult_i32(min(1i, var_1.a.x ^ -30646i), firstTrailingBit(2147483647i)), abs(firstLeadingBit(~79108u | min(var_2.b.x, 0u))));
}

