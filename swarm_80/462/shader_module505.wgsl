struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-377f, -209f, 183f, 618f), vec4<f32>(-227f, 1413f, -511f, -1655f));

var<private> global1: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_3 {
    global0 = array<vec4<f32>, 2>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, global1.x, global1.x), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a)), 2u)]))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.a.x)), -415f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1424f + var_0.a.x)))), arg_1.x)), _wgslsmith_f_op_f32(sign(-750f)));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, 46271u), 2u)]);
    let var_3 = true;
    return var_0;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec2<f32> {
    var var_0 = (u_input.c & u_input.c) == firstLeadingBit(_wgslsmith_clamp_i32(33924i, countOneBits(u_input.c >> (1880u % 32u)), u_input.c));
    let var_1 = true;
    var var_2 = arg_0;
    var_2 = !var_1 | (arg_0 && true);
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(699f, -1236f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1272f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(402f, 350f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2373f, -460f))))), arg_1));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_3.c;
    return select(vec3<bool>(arg_3.c, arg_3.c, arg_3.c || false), vec3<bool>(var_0, arg_3.c & var_0, !arg_3.c), !(!vec3<bool>(any(vec4<bool>(var_0, true, arg_3.c, false)), false, var_0)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3) -> u32 {
    global1 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, global1.x, 1u, global1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.b, global1.x, global1.x), vec4<u32>(global1.x, global1.x, u_input.b, global1.x), vec4<u32>(10903u, u_input.a, u_input.a, 0u))), ~vec4<u32>(u_input.a, u_input.b, u_input.a, 1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(u_input.a, u_input.b)), ~(~global1.zz)), 1u, abs(~33042u | min(global1.x, u_input.a)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)))))));
    var var_1 = Struct_1(false, vec4<bool>(!all(arg_0), any(arg_0.xy), (true & arg_0.x) || arg_0.x, !all(!vec2<bool>(arg_0.x, arg_0.x))), -667f, min(vec2<u32>(global1.x, global1.x), ~_wgslsmith_add_vec2_u32(global1.yz ^ vec2<u32>(0u, 23193u), ~vec2<u32>(44390u, 4294967295u))));
    var var_2 = ~select(16496u, global1.x, _wgslsmith_f_op_f32(min(782f, 1000f)) > arg_1.a.x);
    global1 = ~vec4<u32>(var_1.d.x, ~(~u_input.b), _wgslsmith_dot_vec3_u32(global1.yzz, reverseBits(_wgslsmith_div_vec3_u32(global1.wyx, global1.zzz))), global1.x);
    return 0u;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec4<u32> {
    global1 = vec4<u32>(func_5(func_4(func_2(select(true, arg_0, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-508f, 1209f))), 35409i, func_2(!arg_0, _wgslsmith_f_op_vec2_f32(func_3(arg_0, vec2<bool>(arg_0, arg_0)))), Struct_2(arg_1, vec4<i32>(u_input.c, 1i, -6625i, u_input.c), true, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 29107i), vec2<i32>(u_input.c, u_input.c)))), func_2(arg_0, vec2<f32>(680f, arg_1))), global1.x, ~(u_input.a >> (0u % 32u)), u_input.a);
    var var_0 = -13182i;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1829f, -1988f, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(global1.x, 2u)])))))));
    var var_2 = func_2(_wgslsmith_div_i32(-3833i | min(u_input.c, u_input.c), max(~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-39594i, u_input.c, u_input.c), vec3<i32>(0i, 1924i, u_input.c)))) == ~(~abs(u_input.c)), vec2<f32>(arg_1, 1368f));
    let var_3 = global1.wxz;
    return _wgslsmith_div_vec4_u32(select(~vec4<u32>(var_3.x, 25651u, _wgslsmith_sub_u32(4294967295u, 825u), global1.x), abs(abs(vec4<u32>(14447u, u_input.a, global1.x, 66692u))) >> (vec4<u32>(4294967295u, global1.x, ~global1.x, ~u_input.a) % vec4<u32>(32u)), all(vec4<bool>(false, true, true, false))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(99148u << (var_3.x % 32u), _wgslsmith_div_u32(39757u, 29096u), ~u_input.a), vec3<u32>(u_input.a, _wgslsmith_mult_u32(global1.x, var_3.x), ~30473u)), max(firstLeadingBit(var_3.x), func_5(!vec3<bool>(false, arg_0, true), func_2(arg_0, var_1.a.xw))), firstTrailingBit(firstTrailingBit(min(u_input.b, 60081u))), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(vec4<u32>(abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(global1.xyw, global1.zyx))), global1.x, 22932u, 34149u | global1.x));
    global1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(func_1(true, -834f), vec4<u32>(10816u, 4294967295u, 1u, global1.x) & vec4<u32>(22226u, u_input.b, 1u, 1u), vec4<bool>(true, true, true, true)), vec4<u32>(u_input.b, 4294967295u, abs(21377u), min(u_input.a, u_input.a))), vec4<u32>(47080u, 1u, global1.x, _wgslsmith_dot_vec2_u32(reverseBits(global1.wy), abs(vec2<u32>(1u, global1.x)))), ~select(select(vec4<u32>(4294967295u, 42564u, global1.x, 4294967295u), vec4<u32>(1u, global1.x, 60263u, global1.x), vec4<bool>(false, true, false, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.b, 36435u, global1.x), vec4<u32>(global1.x, u_input.a, global1.x, 22810u), vec4<u32>(9844u, 1u, 4294967295u, 97733u)), true)) & ~firstTrailingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, global1.x, u_input.b, global1.x)), vec4<u32>(1u, 33408u, 8134u, global1.x)));
    global1 = reverseBits(vec4<u32>(global1.x, func_5(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, false))), func_2(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1736f, 303f) - vec2<f32>(818f, 1032f)))), global1.x, _wgslsmith_add_u32(countOneBits(global1.x), 1u) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(29605u, u_input.a), reverseBits(47682u)) % 32u)));
    var var_0 = Struct_2(-1000f, abs(_wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, -28924i, u_input.c), vec4<i32>(u_input.c, u_input.c, -9994i, 24919i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 22924i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<i32>(_wgslsmith_mult_i32(1i, u_input.c), -u_input.c, u_input.c, u_input.c))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-226f))) != _wgslsmith_f_op_f32(f32(-1f) * -519f)), vec2<i32>(u_input.c, -2147483647i));
    var var_1 = func_4(func_2(all(!func_4(Struct_3(vec4<f32>(2299f, var_0.a, -523f, 474f)), 30276i, Struct_3(vec4<f32>(-1684f, var_0.a, var_0.a, var_0.a)), Struct_2(var_0.a, var_0.b, true, vec2<i32>(u_input.c, u_input.c))).xx), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.a)), _wgslsmith_f_op_f32(1479f - _wgslsmith_f_op_f32(f32(-1f) * -600f)))), u_input.c, func_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(var_0.c, vec2<bool>(var_0.c, true))).x, _wgslsmith_f_op_f32(-612f + var_0.a)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_vec2_f32(func_3(var_0.c, vec2<bool>(false, true))).x)) + _wgslsmith_f_op_f32(var_0.a * var_0.a)), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(20751i, var_0.d.x, var_0.b.x, var_0.b.x), var_0.b, vec4<i32>(-1i, -1i, var_0.d.x, u_input.c))), var_0.c, (~var_0.b.wy ^ firstTrailingBit(vec2<i32>(var_0.d.x, var_0.b.x))) << (global1.yz % vec2<u32>(32u))));
    let var_2 = ~(~(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.ww ^ vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, -5307i), var_0.b.zxy) << (_wgslsmith_mult_u32(0u, global1.x) % 32u)), ~global1.zx);
}

