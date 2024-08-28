struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 16> = array<bool, 16>(true, true, true, true, false, true, false, true, false, false, false, true, true, true, false, true);

var<private> global2: array<vec3<i32>, 29>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec4<u32> {
    global2 = array<vec3<i32>, 29>();
    global2 = array<vec3<i32>, 29>();
    var var_0 = vec4<bool>(_wgslsmith_clamp_i32(1i, -2147483647i, ~(-2147483647i ^ u_input.a.x)) <= (select(1i, -2147483647i << (u_input.b.x % 32u), true) >> (u_input.b.x % 32u)), false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(~u_input.b), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)) ^ 4294967295u, 16u)], all(vec3<bool>(global1[_wgslsmith_index_u32(~(~u_input.b.x), 16u)], false, arg_0.x | !arg_0.x)));
    var var_1 = u_input.a.xx;
    var var_2 = vec2<u32>(1u, abs(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, u_input.b.x)))));
    return vec4<u32>(_wgslsmith_mod_u32(11448u, _wgslsmith_clamp_u32(firstTrailingBit(50786u), var_2.x, ~var_2.x)), ~abs(u_input.b.x | 59151u) ^ u_input.b.x, max(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), abs(0u)), var_2.x), 4294967295u);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(657f, arg_2.x)) + _wgslsmith_f_op_f32(-214f + 1000f))));
    global2 = array<vec3<i32>, 29>();
    var var_1 = Struct_1(0u & ~(~u_input.b.x), countOneBits(~func_3(select(vec3<bool>(arg_3, global1[_wgslsmith_index_u32(arg_1.x, 16u)], arg_3), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 16u)], false), vec3<bool>(arg_3, false, true)), false)));
    var var_2 = _wgslsmith_mod_u32(~(~_wgslsmith_add_u32(arg_0, ~var_1.a)), 4294967295u);
    global2 = array<vec3<i32>, 29>();
    return var_1.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<bool, 16>();
    let var_0 = -29489i;
    var var_1 = arg_2.a;
    var var_2 = ~(~(0u << (~func_2(1u, vec3<u32>(u_input.b.x, 0u, 0u), vec2<f32>(1000f, -1435f), arg_0.x) % 32u)));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-410f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1158f)) * -291f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1115f, -523f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-468f - -1332f) + _wgslsmith_f_op_f32(1350f - 257f)))));
    var var_1 = ~(-countOneBits(abs(vec4<i32>(-2147483647i, -1i, 1i, u_input.a.x))));
    var var_2 = arg_0;
    var var_3 = (-1317i >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(78330u, arg_0.b.x), countOneBits(~0u)) % 32u)) > ~(-1i);
    var_3 = !(reverseBits(~arg_1) == ~reverseBits(1u)) == all(select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 16u)], false), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_2.b.x, 16u)], global1[_wgslsmith_index_u32(64006u, 16u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(50137u, 16u)]), false), any(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 16u)], false, global1[_wgslsmith_index_u32(var_2.a, 16u)]))), !(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 16u)], true)), vec2<bool>(u_input.b.x != arg_0.a, false)));
    return Struct_1(arg_1, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1, ~(var_2.a & u_input.b.x), arg_0.b.x >> (4294967295u % 32u)), ~vec4<u32>(abs(79615u), _wgslsmith_dot_vec4_u32(u_input.b, arg_0.b), u_input.b.x, _wgslsmith_clamp_u32(43700u, 1u, arg_2.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a, 16u)], -abs(firstTrailingBit(u_input.a.x)) == u_input.a.x, true && global1[_wgslsmith_index_u32(110527u >> (1u % 32u), 16u)], global1[_wgslsmith_index_u32(arg_0.b.x, 16u)]);
    let var_1 = var_0.x;
    global0 = _wgslsmith_clamp_u32(u_input.b.x, ~min(firstTrailingBit(arg_2.a), arg_0.b.x), select(1u, 1u << (_wgslsmith_div_u32(arg_2.b.x, 19892u) % 32u), select(70111u, 227u, var_1) != ~arg_2.b.x)) > func_4(Struct_1(arg_2.b.x, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 12375u, 4294967295u, 5829u), ~arg_0.b)), abs(0u), arg_2).b.x;
    let var_2 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0.a, arg_2.a), arg_0.b.x, ~1u), vec3<u32>(countOneBits(0u), firstTrailingBit(0u), arg_2.b.x)), 0u), ~vec4<u32>(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(47604u, 0u), vec2<u32>(arg_2.a, arg_2.b.x)), vec3<u32>(arg_2.a, arg_2.b.x, 2336u), _wgslsmith_f_op_vec2_f32(arg_1.xx + vec2<f32>(769f, arg_1.x)), !var_0.x), arg_0.a, ~_wgslsmith_mod_u32(arg_0.a, arg_2.b.x), (arg_0.b.x | 1u) >> (func_2(arg_0.b.x, u_input.b.yyy, arg_1.xw, true) % 32u)));
    var var_3 = any(vec2<bool>(all(!var_0.zyz), any(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.a, 16u)], true, true)))));
    return func_1(select(select(vec3<bool>(false, any(vec4<bool>(var_0.x, var_0.x, false, var_1)), any(vec3<bool>(true, var_1, false))), select(!vec3<bool>(var_0.x, false, var_1), var_0.yww, false), global1[_wgslsmith_index_u32(~func_3(vec3<bool>(var_1, true, false), false).x, 16u)]), vec3<bool>(!global1[_wgslsmith_index_u32(arg_2.a, 16u)] || (var_1 || false), true, 1216f > _wgslsmith_f_op_f32(trunc(652f))), true), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, 2147483647i)), u_input.a.x, u_input.a.x), arg_2);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(825f + 1841f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-639f, -1206f)), _wgslsmith_f_op_f32(f32(-1f) * -549f), false))))));
    var_0 = _wgslsmith_f_op_f32(step(-1556f, -320f));
    let var_1 = u_input.a.x;
    global2 = array<vec3<i32>, 29>();
    global2 = array<vec3<i32>, 29>();
    return Struct_1(arg_0.a, func_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(arg_0.b.x, 16u)], false), any(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.a, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]))), ~var_1 == abs(u_input.a.x)), global1[_wgslsmith_index_u32(31245u, 16u)] && any(select(vec2<bool>(global1[_wgslsmith_index_u32(14754u, 16u)], global1[_wgslsmith_index_u32(arg_0.b.x, 16u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.b.x, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(21678u, 16u)], false)))));
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = -firstTrailingBit(0i);
    let var_1 = arg_1;
    var var_2 = vec3<bool>(any(vec3<bool>(select(false, any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)], false, global1[_wgslsmith_index_u32(7168u, 16u)])), true), !all(vec3<bool>(global1[_wgslsmith_index_u32(arg_3.b.x, 16u)], true, global1[_wgslsmith_index_u32(4294967295u, 16u)])), !select(true, global1[_wgslsmith_index_u32(arg_0.b.x, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)]))), true, global1[_wgslsmith_index_u32(arg_0.b.x, 16u)]);
    global1 = array<bool, 16>();
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1)) + -468f), 1f));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, -1689f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -338f), -317f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_7(Struct_1(~(_wgslsmith_sub_u32(4294967295u, 1871u) << (u_input.b.x % 32u)), u_input.b), -1000f, ~countOneBits(vec4<i32>(u_input.a.x, -7901i, -24967i, i32(-1i) * -23902i)), func_6(func_5(func_4(func_1(vec3<bool>(false, false, true), u_input.a.x, Struct_1(u_input.b.x, u_input.b)), 4294967295u << (u_input.b.x % 32u), func_1(vec3<bool>(global1[_wgslsmith_index_u32(8269u, 16u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), 0i, Struct_1(u_input.b.x, vec4<u32>(0u, u_input.b.x, 1u, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1880f, 260f, 1538f, 280f)))), func_1(vec3<bool>(false, global1[_wgslsmith_index_u32(4925u, 16u)], true), ~1i, Struct_1(17336u, vec4<u32>(u_input.b.x, 0u, 45079u, 1u)))))));
    let var_1 = Struct_1(~_wgslsmith_add_u32(76490u, select(u_input.b.x, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 16u)])) >> ((~u_input.b.x << (~func_1(vec3<bool>(false, global1[_wgslsmith_index_u32(31817u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]), 2147483647i, Struct_1(u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, 45195u, u_input.b.x))).a % 32u)) % 32u), ~firstLeadingBit(_wgslsmith_mod_vec4_u32(u_input.b & u_input.b, ~u_input.b)));
    global1 = array<bool, 16>();
    global2 = array<vec3<i32>, 29>();
    var var_2 = ~(~vec2<u32>(70649u, _wgslsmith_add_u32(32422u, 6228u)));
    var_2 = u_input.b.xw;
    let var_3 = select(firstTrailingBit(abs(countOneBits(func_5(var_1, vec4<f32>(var_0.x, 1000f, var_0.x, -1888f), var_1).b.x))), firstLeadingBit(~var_2.x), any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.a, 16u)], true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_1.b.x, 16u)])), select(vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], true, false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<bool>(false, true, true)), vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 16u)] && true, all(vec3<bool>(global1[_wgslsmith_index_u32(var_1.a, 16u)], false, false)), select(true, global1[_wgslsmith_index_u32(4294967295u, 16u)], false)), false)));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_4(var_1, ~var_3, Struct_1(0u, ~vec4<u32>(var_1.b.x, u_input.b.x, u_input.b.x, var_3))), func_2(func_6(func_5(var_1, vec4<f32>(var_0.x, -1294f, var_0.x, 505f), var_1)).b.x, u_input.b.zwz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1133f)), (var_0.x > 1000f) | true), Struct_1(0u, vec4<u32>(var_1.a, 32424u, 4294967295u, var_3 ^ var_2.x))).b.xz, _wgslsmith_f_op_f32(-672f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1370f)))))), _wgslsmith_clamp_i32(~u_input.a.x, ~(-1i ^ -u_input.a.x), u_input.a.x));
}

