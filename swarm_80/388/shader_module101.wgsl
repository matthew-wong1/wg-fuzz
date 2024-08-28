struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 33873i;

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(22159u, 43104u), vec2<u32>(110446u, 1u), vec2<u32>(4294967295u, 21272u), vec2<u32>(67879u, 0u), vec2<u32>(4294967295u, 50536u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(61365u, 3614u), vec2<u32>(29612u, 0u));

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(4294967295u | (countOneBits(4294967295u) ^ min(3163u, u_input.c.x)), true, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -876f) - _wgslsmith_f_op_f32(min(-1209f, -776f))), true), Struct_1(~_wgslsmith_mult_u32(4294967295u, 1u), !(!any(vec4<bool>(false, false, false, true))), 1u, -865f, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1187f) + _wgslsmith_f_op_f32(1234f * 157f)), _wgslsmith_f_op_f32(-184f + _wgslsmith_f_op_f32(f32(-1f) * -1138f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2437f)) - _wgslsmith_f_op_f32(sign(-827f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 29u)] * vec3<f32>(152f, -643f, 1000f)) + _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(10275u, 29u)])) + global1[_wgslsmith_index_u32(u_input.a, 29u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1642f, -117f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1377f, -505f), vec2<f32>(508f, -907f))))))), vec2<u32>(_wgslsmith_mod_u32(72259u, u_input.a), u_input.c.x));
    let var_1 = -vec4<i32>(min(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, 1i), countOneBits(u_input.d)), global3.x), (1i >> (var_0.a.c % 32u)) | (abs(1i) & -global3.x), _wgslsmith_mod_i32(~(21508i >> (var_0.e.x % 32u)), 1i), u_input.d);
    let var_2 = Struct_1(u_input.a, all(vec4<bool>(true, false, !any(vec2<bool>(var_0.a.b, false)), all(vec4<bool>(var_0.b.e, var_0.a.e, false, var_0.b.e)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0.a.a), ~vec2<u32>(4294967295u, 0u)) >> (_wgslsmith_sub_u32((1u >> (u_input.b % 32u)) ^ firstLeadingBit(0u), select(var_0.e.x, u_input.b << (u_input.a % 32u), true)) % 32u), var_0.a.d, !(!((var_0.b.b && false) || any(vec3<bool>(true, false, var_0.a.e)))));
    let var_3 = Struct_4(vec2<i32>(1i, 72161i), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.a, ~abs(u_input.e), ~var_2.c, var_0.b.c), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), max(global2[_wgslsmith_index_u32(var_0.b.c, 8u)], u_input.c.xx)), ~(~0u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_0.e.x), vec2<u32>(4294967295u, var_2.a)), ~var_0.b.c))), vec2<u32>(var_0.b.c, countOneBits(~9450u)));
    var var_4 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(firstTrailingBit(firstLeadingBit(vec2<u32>(33074u, 30623u)))), var_0.e, u_input.c.yz), ~vec2<u32>(var_0.e.x | max(var_2.a, 0u), 42725u));
    return 3886u;
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> vec2<i32> {
    global2 = array<vec2<u32>, 8>();
    global2 = array<vec2<u32>, 8>();
    let var_0 = vec2<bool>(all(vec4<bool>(true, (0u ^ arg_1.a.c.x) == 1u, true, _wgslsmith_f_op_f32(-arg_1.b.x) == -1259f)), any(vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), true)));
    global3 = countOneBits(_wgslsmith_sub_vec2_i32(select(abs(arg_1.a.a), abs(arg_1.a.a), vec2<bool>(var_0.x & false, false)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_1.a.a, arg_1.a.a), arg_1.a.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.d), ~vec2<i32>(u_input.d, u_input.d)))));
    global3 = arg_1.a.a;
    return min(arg_1.a.a, ~vec2<i32>(-global3.x, -58916i) << (max(vec2<u32>(53590u >> (0u % 32u), reverseBits(u_input.a)), ~global2[_wgslsmith_index_u32(~arg_0, 8u)]) % vec2<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = u_input.c;
    global0 = ~arg_0;
    var var_1 = ~min(_wgslsmith_mult_vec2_i32(~arg_1.ww, func_4(func_3(), Struct_5(Struct_4(vec2<i32>(global3.x, arg_1.x), vec4<u32>(arg_3.x, 27442u, 32143u, 19258u), var_0.xz), global1[_wgslsmith_index_u32(var_0.x, 29u)]))), vec2<i32>(u_input.d, global3.x));
    var var_2 = arg_1.x;
    let var_3 = vec2<f32>(-320f, _wgslsmith_f_op_f32(1750f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f) * _wgslsmith_f_op_f32(ceil(-891f)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_3))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3, var_3) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, var_3.x) + var_3))) - vec2<f32>(_wgslsmith_f_op_f32(abs(1393f)), var_3.x)));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    var var_0 = vec4<u32>(u_input.e, u_input.b, _wgslsmith_mod_u32(u_input.e, u_input.e), ~4294967295u) ^ ~(~(~vec4<u32>(u_input.a, 1u, u_input.b, u_input.e) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 50173u, u_input.c.x), vec4<u32>(u_input.e, u_input.e, u_input.a, 15655u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(-2147483647i, vec4<i32>(69012i, -1i, -17399i, global3.x), any(vec3<bool>(false, false, false)), ~vec4<u32>(1381u, var_0.x, var_0.x, u_input.b))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(541f, arg_0))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0, -574f, true)), -1000f), _wgslsmith_f_op_f32(ceil(arg_0))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 811f))), 317f, _wgslsmith_f_op_f32(abs(-2381f)), arg_0) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1519f, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(var_1.x - arg_0), true)), 2359f, -1000f))));
    let var_3 = Struct_2(Struct_1(func_3(), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), select(u_input.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(55279u, 1u), 56343u), all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(trunc(-829f)), all(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))), Struct_1(firstLeadingBit(u_input.e), true, select(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.a, 14739u, u_input.c.x)), 1u), (global3.x & u_input.d) >= firstTrailingBit(u_input.d)), 1000f, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 946f, _wgslsmith_f_op_f32(f32(-1f) * -903f)), vec2<f32>(var_1.x, arg_0), var_0.xz);
    let var_4 = Struct_4(-vec2<i32>(u_input.d, max(abs(global3.x), -2810i)), vec4<u32>(_wgslsmith_mod_u32(u_input.e, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.zy, vec2<u32>(u_input.b, 0u)), _wgslsmith_sub_vec2_u32(var_3.e, global2[_wgslsmith_index_u32(1567u, 8u)]))), u_input.c.x, _wgslsmith_clamp_u32(u_input.b, var_0.x, abs(var_3.a.a)), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, 4294967295u) << ((0u ^ u_input.e) % 32u), ~_wgslsmith_clamp_u32(2724u, var_3.e.x, 0u))), firstLeadingBit(~(max(vec2<u32>(13980u, 1u), vec2<u32>(var_0.x, var_0.x)) | _wgslsmith_clamp_vec2_u32(var_3.e, vec2<u32>(80261u, var_3.a.a), u_input.c.yy))));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(320f, _wgslsmith_f_op_f32(floor(-2314f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + _wgslsmith_f_op_f32(sign(-871f)))));
    global0 = ~(-48059i);
    global3 = ~_wgslsmith_div_vec2_i32(-func_1(var_0), select(_wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, -2147483647i), abs(vec2<i32>(u_input.d, 1i))), vec2<i32>(firstLeadingBit(u_input.d), func_1(var_0).x), any(vec2<bool>(false, false)) || true));
    let x = u_input.a;
    s_output = StorageBuffer(967f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, var_0)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1265f) - vec2<f32>(-304f, var_0)) * vec2<f32>(_wgslsmith_f_op_f32(var_0 * 1171f), _wgslsmith_f_op_vec2_f32(func_2(-2147483647i, vec4<i32>(global3.x, u_input.d, u_input.d, global3.x), false, vec4<u32>(u_input.e, u_input.b, u_input.e, 0u))).x))), reverseBits(~(vec4<u32>(u_input.e, 31171u, u_input.b, 4294967295u) >> (vec4<u32>(u_input.b, 43942u, 79991u, u_input.e) % vec4<u32>(32u)))));
}

