struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-620f, vec4<bool>(true, false, true, false), -5113i), Struct_2(1000f, vec4<bool>(true, true, false, false), -84955i), Struct_2(-1000f, vec4<bool>(false, true, true, true), i32(-2147483648)), Struct_2(-1595f, vec4<bool>(false, false, false, false), 4576i), Struct_2(1101f, vec4<bool>(false, false, false, false), i32(-2147483648)), Struct_2(-625f, vec4<bool>(true, true, true, true), -1i), Struct_2(727f, vec4<bool>(false, true, true, true), -1i), Struct_2(-281f, vec4<bool>(true, false, false, true), 73529i), Struct_2(994f, vec4<bool>(false, true, false, true), -2841i), Struct_2(-2013f, vec4<bool>(false, true, false, false), 0i), Struct_2(-360f, vec4<bool>(true, false, false, false), -1i), Struct_2(-184f, vec4<bool>(false, false, false, true), i32(-2147483648)), Struct_2(-195f, vec4<bool>(false, true, false, false), 0i), Struct_2(-251f, vec4<bool>(true, false, true, true), 0i), Struct_2(-1638f, vec4<bool>(false, false, true, false), -29609i), Struct_2(-315f, vec4<bool>(true, true, true, false), -3462i), Struct_2(-1277f, vec4<bool>(true, true, true, false), 27553i), Struct_2(501f, vec4<bool>(true, false, false, true), 2147483647i), Struct_2(717f, vec4<bool>(true, false, false, false), -76544i), Struct_2(-1108f, vec4<bool>(true, false, true, true), -25490i), Struct_2(-394f, vec4<bool>(false, false, true, true), 1i));

var<private> global1: array<f32, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global1 = array<f32, 25>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 21u)];
    var var_1 = vec4<bool>(true, false, var_0.b.x, _wgslsmith_f_op_f32(max(var_0.a, 1f)) != var_0.a);
    var var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 3368u, 0u << (_wgslsmith_dot_vec4_u32(vec4<u32>(75739u, 1u, 1u, 0u), vec4<u32>(0u, 31110u, 31042u, 53915u)) % 32u)), min(firstTrailingBit(vec3<u32>(11680u, 1u, 50156u)) ^ vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 1u, 1u)));
    var var_3 = Struct_3(2147483647i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, global1[_wgslsmith_index_u32(0u, 25u)])) * -138f), global1[_wgslsmith_index_u32(~4294967295u, 25u)]), vec3<f32>(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -404f)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(51478u), _wgslsmith_add_u32(76557u, 45225u)), 25u)], -2241f))));
    return u_input.a.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> f32 {
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global1 = array<f32, 25>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.b.zz;
    let var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(func_3(), ~arg_2.c, -2147483647i), vec3<i32>(arg_1.a, arg_1.a, arg_0)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.a, u_input.a), vec3<i32>(arg_0, ~arg_1.a, ~arg_2.c))), ~vec2<u32>(0u, _wgslsmith_div_u32(0u, 20663u)) ^ firstLeadingBit(firstLeadingBit(select(vec2<u32>(8588u, 4294967295u), vec2<u32>(55307u, 12121u), var_0))), select(select(select(vec2<bool>(true, true), select(arg_2.b.xw, vec2<bool>(true, true), arg_2.b.zw), vec2<bool>(true, true)), select(var_0, vec2<bool>(var_0.x, true), var_0.x == false), vec2<bool>(any(arg_2.b.yw), false)), arg_2.b.zx, !var_0), arg_1.b.xz));
    let var_2 = -2147483647i;
    let var_3 = select(select(select(select(vec2<bool>(false, var_0.x), var_0, true), select(vec2<bool>(false, arg_2.b.x), vec2<bool>(arg_2.b.x, arg_2.b.x), vec2<bool>(arg_2.b.x, false)), var_0), !(!arg_2.b.xy), arg_2.b.yw), var_0, !arg_2.b.xz);
    let var_4 = select(-u_input.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-18198i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 0i, -57720i), vec4<i32>(arg_0, 32155i, 1i, u_input.a.x)), 20889i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_2, var_2), vec3<i32>(var_2, var_2, -1i))), false);
    return Struct_1(-_wgslsmith_add_i32(-2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, arg_0), vec4<i32>(u_input.a.x, var_4, var_4, 0i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -920f, arg_2.a, 1189f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(913f, var_1, arg_2.a, global1[_wgslsmith_index_u32(0u, 25u)]) + vec4<f32>(var_1, global1[_wgslsmith_index_u32(4294967295u, 25u)], -1316f, -1009f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 25u)], -370f, 135f, arg_1.b.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-747f, -332f, -336f, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -747f, arg_1.b.x, 1602f)))))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(16169u, 25u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(6285u, 25u)], -541f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(588f, -1143f)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(627f, -515f)))), global1[_wgslsmith_index_u32(7170u, 25u)])), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(10780u, 25u)], -583f), vec2<f32>(545f, global1[_wgslsmith_index_u32(5678u, 25u)]))))))));
    let var_1 = func_2(2147483647i, Struct_3(_wgslsmith_sub_i32(2147483647i, ~(-1i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 30904u, 1u, 0u), vec4<u32>(24058u, 0u, 4294967295u, 7991u)), 25u)], _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(292f * var_0.x))))), global0[_wgslsmith_index_u32(1u, 21u)]);
    let var_2 = Struct_3(_wgslsmith_mod_i32(var_1.a, -countOneBits(reverseBits(-25861i))), var_1.b.wyw);
    global1 = array<f32, 25>();
    global0 = array<Struct_2, 21>();
    return var_1.a;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    return Struct_2(-458f, !arg_1.b, -56374i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(4294967295u, Struct_2(global1[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(20274u, 1u, 1u) << (_wgslsmith_add_u32(11318u, 0u) % 32u)), 25u)], vec4<bool>(false, true, all(vec3<bool>(false, true, false)) & false, true), i32(-1i) * -(~(-27143i))), Struct_1(func_1(), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(28792u, 25u)] - -301f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(62713u, 25u)], global1[_wgslsmith_index_u32(20026u, 25u)])), global1[_wgslsmith_index_u32(firstLeadingBit(15367u), 25u)], _wgslsmith_f_op_f32(237f + 1319f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1003f), global1[_wgslsmith_index_u32(97320u, 25u)], global1[_wgslsmith_index_u32(~11572u, 25u)], _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(13018u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]))), any(vec3<bool>(true, true, true))))), -250f);
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    let var_1 = var_0.b.xww;
    let var_2 = countOneBits(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(0u, 0u, 1u, 1u)), firstTrailingBit(vec4<u32>(161536u, 4294967295u, 0u, 0u)))) & ~firstTrailingBit(46683u));
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_mult_vec2_i32(u_input.a.zz, u_input.a.zx), ~vec2<i32>(34362i, -16479i)) | countOneBits(u_input.a.xx), min(_wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yz), max(u_input.a.yz >> (vec2<u32>(var_2, var_2) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-45895i, var_0.c), u_input.a.zx, u_input.a.xy))), var_0.c), vec3<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, u_input.a.x, 0i, -2147483647i), vec4<i32>(var_0.c, var_0.c, u_input.a.x, -53468i)), vec4<i32>(21529i, 2147483647i, 61658i, 5054i)), -(~(-2147483647i)), u_input.a.x) ^ abs(vec3<i32>(abs(-33944i), u_input.a.x, u_input.a.x)));
}

