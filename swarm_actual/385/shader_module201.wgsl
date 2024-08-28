struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-897f, 1943f, 2222f, 965f, -989f, -395f, -600f, -403f, -880f, -644f, -841f, -772f, 989f, 1687f, 822f, 1666f, -1615f, -799f, 1183f, -351f, -107f, -1000f, 1998f, 1125f, -987f, 355f, -513f, -1840f, 132f);

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(!all(vec4<bool>(true, false, true, true)), ~1u);
    var var_1 = max(vec2<u32>(~40029u, ~1u), ~(firstTrailingBit(vec2<u32>(11404u, u_input.b)) >> (~abs(vec2<u32>(u_input.d, 6327u)) % vec2<u32>(32u))));
    let var_2 = Struct_3((_wgslsmith_add_i32(~(-1i), -10720i) >> (var_1.x % 32u)) | select(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1874i), vec2<i32>(2147483647i, -22763i))), -(~1i), true), ~_wgslsmith_div_vec3_u32(vec3<u32>(32110u, var_1.x, 1u), vec3<u32>(49155u, var_0.b, var_1.x) << (vec3<u32>(23260u, 4294967295u, var_1.x) % vec3<u32>(32u))) & countOneBits(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(10944u, 0u, u_input.c), vec3<u32>(3613u, var_1.x, 53594u)))));
    let var_3 = _wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(3076u, _wgslsmith_sub_u32(var_2.b.x, 26811u), 1u, var_0.b))), ~select(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(39543u, 35609u, 64813u, 0u)), vec4<u32>(u_input.c, u_input.a, u_input.b, 29770u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(6691u, 30381u, u_input.a, var_2.b.x), vec4<u32>(4294967295u, 0u, u_input.c, 37u) | vec4<u32>(4294967295u, 10896u, var_0.b, var_2.b.x)), !select(vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(true, false, true, var_0.a))));
    let var_4 = Struct_1((global0[_wgslsmith_index_u32(var_1.x, 29u)] == -283f) || true, 67574u);
    return var_2.a;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = vec4<bool>((1i >= func_3()) & !all(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, true), vec4<bool>(true, arg_0, arg_0, true))), true, arg_0, all(vec4<bool>(!arg_0, arg_0, true, arg_0 && arg_0)) && arg_0);
    var var_1 = Struct_1(arg_0, 4294967295u);
    var var_2 = Struct_3(~(-(~(-2147483647i))) ^ (-countOneBits(1i) & _wgslsmith_dot_vec3_i32(~vec3<i32>(-32090i, 45753i, -1i), vec3<i32>(-2147483647i, 22515i, -1i))), vec3<u32>(~u_input.d, _wgslsmith_clamp_u32(_wgslsmith_div_u32(45738u, u_input.a), ~arg_1, var_1.b), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, u_input.c), arg_1, arg_1)) >> (select(abs(min(vec3<u32>(var_1.b, 0u, 0u), vec3<u32>(1u, arg_1, 77594u))), ~countOneBits(vec3<u32>(52380u, 52355u, arg_1)), !arg_0) % vec3<u32>(32u)));
    var var_3 = Struct_2(vec2<u32>(6643u, min(_wgslsmith_dot_vec2_u32(var_2.b.zy, ~var_2.b.zx), 1u)));
    let var_4 = countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~1u, 19483u, 1u) & _wgslsmith_sub_vec4_u32(~vec4<u32>(45429u, 20005u, var_1.b, 27715u), abs(vec4<u32>(var_1.b, 4294967295u, var_1.b, 1u))), abs(vec4<u32>(var_2.b.x, var_1.b, 0u, var_1.b)) >> ((vec4<u32>(12301u, var_2.b.x, arg_1, 4294967295u) & vec4<u32>(var_1.b, 0u, 0u, var_2.b.x)) % vec4<u32>(32u)), ~vec4<u32>(var_2.b.x | var_2.b.x, var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(55595u, 1u, 0u)), var_3.a.x)));
    return Struct_2(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_2.b, var_2.b) & _wgslsmith_mod_u32(19066u, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, arg_1, var_1.b) & var_4.wzw, vec3<u32>(var_2.b.x, u_input.a, u_input.d)), 4294967295u), 4294967295u));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = func_2(!(!arg_1), u_input.c);
    var_0 = Struct_2(var_0.a);
    global1 = -4465i;
    global1 = -_wgslsmith_clamp_i32(2147483647i << ((0u & countOneBits(u_input.d)) % 32u), countOneBits(min(arg_0.x, ~arg_0.x)), -arg_0.x);
    global1 = _wgslsmith_add_i32(~arg_0.x, 33445i);
    return Struct_1(true || any(!(!vec2<bool>(arg_1, false))), 32377u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(vec3<i32>(13085i, 1i, 1i)), true);
    var_0 = func_1(countOneBits(~reverseBits(vec3<i32>(-2147483647i, -18645i, 1i))), true);
    var_0 = func_1(~firstLeadingBit(abs(vec3<i32>(0i, -1i, -1i))), any(select(select(vec4<bool>(var_0.a, true, true, false), select(vec4<bool>(true, var_0.a, false, false), vec4<bool>(false, var_0.a, false, true), true), select(var_0.a, false, false)), select(vec4<bool>(var_0.a, true, false, var_0.a), select(vec4<bool>(false, true, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, false, false, var_0.a)), select(vec4<bool>(true, true, false, var_0.a), vec4<bool>(true, false, true, false), false)), var_0.a)));
    var var_1 = func_1(select(~(~vec3<i32>(1i, 1i, 1i)), ~(-select(vec3<i32>(1i, -11309i, 7448i), vec3<i32>(2147483647i, -2147483647i, 26472i), vec3<bool>(true, true, var_0.a))), vec3<bool>(!any(vec3<bool>(false, false, var_0.a)), all(vec3<bool>(var_0.a, var_0.a, var_0.a)), false)), !(firstLeadingBit(~u_input.b) < abs(~var_0.b)));
    var var_2 = Struct_3(_wgslsmith_div_i32(_wgslsmith_mod_i32(6655i, _wgslsmith_sub_i32(-1i, -2147483647i)), -countOneBits(23825i)) << (~firstLeadingBit(var_1.b) % 32u), ~vec3<u32>(select(reverseBits(u_input.c), var_1.b, true), var_1.b, u_input.d ^ ~0u));
    let var_3 = Struct_3(abs(-2147483647i), ~vec3<u32>(u_input.d ^ 56835u, 0u >> (var_0.b % 32u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.b, var_0.b, 1482u), 78052u, 1u)));
    let var_4 = Struct_3(firstTrailingBit(-1397i), var_3.b);
    var var_5 = Struct_1(!var_0.a, func_2(all(select(!vec2<bool>(var_1.a, var_0.a), vec2<bool>(false, var_1.a), all(vec4<bool>(true, false, true, var_0.a)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(11065u, var_4.b.x), var_2.b.zy), _wgslsmith_add_u32(0u, var_4.b.x)), ~(~1u))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -471f), global0[_wgslsmith_index_u32(var_2.b.x | u_input.d, 29u)], var_0.a | (var_5.a && false))), global0[_wgslsmith_index_u32(~(~(~1u)), 29u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1625f, global0[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1087f, 1000f, global0[_wgslsmith_index_u32(4252u, 29u)])), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(89740u, 29u)]), vec3<f32>(660f, -504f, 1447f), var_5.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_3.b.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(42576u, 29u)])))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(var_2.b.x, 29u)], global0[_wgslsmith_index_u32(var_5.b, 29u)], 1181f), vec3<f32>(global0[_wgslsmith_index_u32(35481u, 29u)], 111f, -407f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_3.b.x, 29u)], 362f, global0[_wgslsmith_index_u32(0u, 29u)]) * vec3<f32>(786f, global0[_wgslsmith_index_u32(0u, 29u)], -1000f))), vec3<f32>(_wgslsmith_f_op_f32(174f - global0[_wgslsmith_index_u32(var_3.b.x, 29u)]), _wgslsmith_div_f32(1560f, global0[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_f_op_f32(f32(-1f) * -506f)))), vec3<bool>(any(vec3<bool>(false, var_1.a, var_5.a)), false, ~var_2.a < ~var_3.a))), ~firstTrailingBit(~(~vec4<u32>(1u, 0u, 4294967295u, var_1.b))));
}

