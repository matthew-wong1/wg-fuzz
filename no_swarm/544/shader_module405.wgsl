struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 1>;

var<private> global2: i32 = -1i;

var<private> global3: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(46816u, 8899u), vec2<u32>(67882u, 1u), vec2<u32>(29394u, 0u), vec2<u32>(20545u, 13494u), vec2<u32>(37670u, 42221u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 56871u), vec2<u32>(11820u, 34341u), vec2<u32>(1u, 11829u), vec2<u32>(13376u, 3201u), vec2<u32>(90897u, 1u), vec2<u32>(76146u, 14321u), vec2<u32>(4294967295u, 1u), vec2<u32>(25396u, 54349u), vec2<u32>(58872u, 4294967295u), vec2<u32>(14835u, 35127u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1352f + arg_0.c.x) - 1028f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), 879f)), _wgslsmith_f_op_f32(select(arg_0.d.a, _wgslsmith_f_op_f32(floor(490f)), any(vec4<bool>(true, true, false, true)))), arg_0.d.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1125f, arg_0.b.e.x, -377f, arg_0.c.x), vec4<f32>(arg_0.b.e.x, arg_0.b.e.x, arg_0.b.a, 835f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a, arg_0.d.a, 2000f, -950f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1325f, -352f, 690f, -1138f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-686f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f + var_0.x) + _wgslsmith_f_op_f32(-arg_0.b.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(1018f, 131f)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))))), abs(-vec2<i32>(~(-1i), ~arg_0.b.d.x)), max(_wgslsmith_mult_vec3_i32(select(arg_0.b.c, arg_0.b.d.xyz, select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), -arg_0.d.c), min(_wgslsmith_div_vec3_i32(arg_0.b.d.xyz, firstLeadingBit(vec3<i32>(arg_0.a.x, -15311i, arg_0.a.x))), select(vec3<i32>(u_input.a, 1i, 13581i), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 1u)], 2147483647i), true))), arg_0.b.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.d.a))) - arg_0.b.a), arg_0.c.x));
    return _wgslsmith_f_op_vec2_f32(-var_1.e);
}

fn func_2() -> i32 {
    let var_0 = Struct_2(~countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(56843u, 12408u), 1u)], max(u_input.a, u_input.a), u_input.a, _wgslsmith_mod_i32(-44747i, u_input.a))), Struct_1(-431f, vec2<i32>(~u_input.a, 4200i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(13978u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<i32>(1i, u_input.a, 1i), ~vec3<i32>(u_input.a, -1i, 0i)), vec4<i32>(2147483647i, u_input.a, global1[_wgslsmith_index_u32(21972u, 1u)] | -18801i, 2147483647i) & _wgslsmith_div_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(36657u, 1u)], 31379i, global1[_wgslsmith_index_u32(41882u, 1u)], 6772i), vec4<i32>(-71040i, -1i, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(54262u, 1u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(946f, -492f) + _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<i32>(-18462i, u_input.a, global1[_wgslsmith_index_u32(19708u, 1u)], u_input.a), Struct_1(-694f, vec2<i32>(2147483647i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec4<i32>(4104i, -2147483647i, 29500i, global1[_wgslsmith_index_u32(0u, 1u)]), vec2<f32>(-923f, -1863f)), vec2<f32>(1783f, -1561f), Struct_1(-1188f, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), vec3<i32>(global1[_wgslsmith_index_u32(43600u, 1u)], u_input.a, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(18331u, 1u)], u_input.a, global1[_wgslsmith_index_u32(53476u, 1u)], u_input.a), vec2<f32>(-268f, 1524f)))))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1682f, _wgslsmith_f_op_f32(-336f + -1000f)))), Struct_1(2161f, -vec2<i32>(global1[_wgslsmith_index_u32(45320u, 1u)] << (20783u % 32u), ~u_input.a), _wgslsmith_mod_vec3_i32(min(-vec3<i32>(-17949i, u_input.a, 60029i), -vec3<i32>(-41917i, u_input.a, 47925i)), ~max(vec3<i32>(global1[_wgslsmith_index_u32(42969u, 1u)], u_input.a, 69630i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 1u)], -28516i, 1i))), select(-vec4<i32>(u_input.a, -1i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, u_input.a, 21132i, global1[_wgslsmith_index_u32(1u, 1u)]), vec4<i32>(1i, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 1u)], 1i)), select(select(false, true, false), true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    global3 = array<vec2<u32>, 16>();
    global0 = all(select(!vec2<bool>(1i == u_input.a, true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), false), vec2<bool>(true, any(vec3<bool>(true, false, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true || any(vec2<bool>(true, true)), false)));
    global0 = true;
    var var_1 = var_0.b.e.x;
    return u_input.a;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~reverseBits(~vec4<u32>(14330u, 46094u, 4294967295u, 87510u))) | ~(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(2093u, 0u, 85085u, 63074u), vec4<u32>(8788u, 4294967295u, 4294967295u, 4212u)), firstTrailingBit(vec4<u32>(6379u, 4294967295u, 28813u, 55137u))));
    var_0 = vec4<u32>(~_wgslsmith_div_u32(4294967295u, 19591u), 4792u, abs(var_0.x ^ (var_0.x << ((var_0.x ^ 5093u) % 32u))), 1u);
    let var_1 = true;
    var var_2 = Struct_2(-vec4<i32>(func_2(), global1[_wgslsmith_index_u32(~36289u & var_0.x, 1u)], _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(15182u, 1u)])), -vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 1u)], 1i)), u_input.a), Struct_1(_wgslsmith_f_op_f32(-1749f + _wgslsmith_div_f32(-435f, _wgslsmith_f_op_f32(floor(-653f)))), max(~select(vec2<i32>(global1[_wgslsmith_index_u32(1u, 1u)], -2147483647i), vec2<i32>(2147483647i, 53406i), vec2<bool>(false, true)), vec2<i32>(select(global1[_wgslsmith_index_u32(4294967295u, 1u)], u_input.a, var_1), abs(u_input.a))), _wgslsmith_mult_vec3_i32(-(vec3<i32>(2147483647i, -25667i, -41031i) << (vec3<u32>(var_0.x, 1u, var_0.x) % vec3<u32>(32u))), ~firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 0i))), (_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 27269i, -1i), vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 1u)], global1[_wgslsmith_index_u32(var_0.x, 1u)], 38511i, -2147483647i), vec4<i32>(-40951i, u_input.a, global1[_wgslsmith_index_u32(4251u, 1u)], -27483i)) & max(vec4<i32>(13455i, 0i, 15798i, -15210i), vec4<i32>(-41740i, 26950i, 7059i, -41701i))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(23226u, var_0.x, var_0.x, 29824u), vec4<u32>(1u, var_0.x, 20294u, 49601u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-258f, _wgslsmith_f_op_f32(sign(549f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(543f, -490f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1248f, -344f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), 1000f))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1148f + -146f) - -554f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2319f))), -(~_wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(31127u, 1u)], u_input.a), vec2<i32>(-1i, global1[_wgslsmith_index_u32(52448u, 1u)]))), vec3<i32>(-680i, min(-2147483647i, 58687i) ^ u_input.a, global1[_wgslsmith_index_u32(var_0.x, 1u)]), firstTrailingBit(~(vec4<i32>(1i, 2147483647i, u_input.a, 2147483647i) | vec4<i32>(u_input.a, 2147483647i, u_input.a, global1[_wgslsmith_index_u32(var_0.x, 1u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1012f, 1675f), vec2<f32>(-1474f, 514f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1013f, 1420f), vec2<f32>(649f, -421f), false))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(801f * _wgslsmith_div_f32(-211f, 183f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b.a, 603f)) + var_2.b.e.x)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_2.d.d, var_2.d, var_2.d.e, var_2.d))).x - -1723f) + var_2.d.e.x), -vec2<i32>(abs(u_input.a) & _wgslsmith_dot_vec2_i32(var_2.d.b, vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(var_0.x, 1u)])), _wgslsmith_sub_i32(~0i, -3671i)), var_2.a.xwy, min(vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 1u)], 0i, select(u_input.a, 1i, false), var_2.a.x << (select(0u, var_0.x, var_1) % 32u)), ~(~(-vec4<i32>(1i, 6553i, var_2.d.b.x, -12589i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(450f, var_2.c.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1557f, 1716f))), true)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.b.e), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b.a, var_2.d.e.x), vec2<f32>(-452f, var_2.d.a), vec2<bool>(false, true))), true)) + vec2<f32>(var_2.c.x, var_2.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1();
    var var_2 = var_1.b;
    var var_3 = Struct_1(var_1.e.x, _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, var_2.x), vec2<i32>(~global1[_wgslsmith_index_u32(countOneBits(4294967295u), 1u)], firstTrailingBit(3188i))), var_1.d.wxy, func_1().d, _wgslsmith_f_op_vec2_f32(step(var_1.e, var_1.e)));
    global0 = !var_0;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-225f + _wgslsmith_div_f32(var_3.e.x, var_1.a))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(var_1.e.x + -925f)))))));
    var var_5 = var_1;
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_5.a))), -454f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.e.x, 767f, var_5.e.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(621f, 1000f, -1051f) + vec3<f32>(619f, -261f, 1291f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-855f, var_1.a, 348f), vec3<f32>(var_1.e.x, var_4, var_3.e.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_4, var_5.e.x, var_5.a), vec3<f32>(-1308f, var_1.a, var_3.e.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_6.x, var_1.e.x, var_1.e.x, -989f))), vec4<f32>(_wgslsmith_f_op_f32(round(var_3.e.x)), _wgslsmith_f_op_f32(2201f + var_6.x), _wgslsmith_f_op_f32(132f * -1000f), _wgslsmith_f_op_f32(748f * -2479f)), false)) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.x, var_4, -391f, 272f) * vec4<f32>(-1206f, 1036f, -110f, 2085f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_3.e.x, var_6.x, -445f) + vec4<f32>(-760f, -268f, var_6.x, var_3.e.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(569f, var_6.x, var_1.e.x, var_1.e.x), vec4<f32>(164f, var_1.e.x, var_6.x, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(434f, -1276f, 1494f, var_3.e.x) - vec4<f32>(var_6.x, var_3.e.x, -378f, -1019f)), any(vec2<bool>(var_0, var_0)))))), vec4<u32>(~firstLeadingBit(~4294967295u), 92890u, abs(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(0u, 16u)] | global3[_wgslsmith_index_u32(1u, 16u)], ~vec2<u32>(4136u, 1u))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 45967u, 74210u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 22400u, 4294967295u, 1u)))), ~(-vec4<i32>(0i, _wgslsmith_mod_i32(2147483647i, var_2.x), abs(var_1.c.x), -2147483647i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1477f, 411f, var_6.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a, var_4, var_1.a), vec3<f32>(178f, -293f, -647f), false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(929f, var_6.x, var_1.a))))))));
}

