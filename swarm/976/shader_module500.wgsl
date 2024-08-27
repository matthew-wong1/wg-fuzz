struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = abs(-73640i);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(381f, 1410f, 1939f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(964f, -1681f)), 920f, -1755f))));
    var_0 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(1588f * var_1.x);
    let var_3 = abs(vec4<u32>(~(~0u), ~1u, 1u, 1u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(36050u, _wgslsmith_div_u32(4294967295u, 4294967295u), 1u, countOneBits(92736u)), firstTrailingBit(vec4<u32>(7213u, 87539u, 16860u, 94247u)), max(abs(vec4<u32>(15519u, 1u, 26338u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))));
    return u_input.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(arg_3.x, all(vec3<bool>(false, arg_3.x, false)), !arg_3.x), vec3<bool>(-2147483647i == u_input.b, arg_3.x, u_input.a == -9549i)));
    var var_1 = Struct_2(Struct_1(~abs(~arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 407f, -1000f, -948f), _wgslsmith_div_vec4_f32(vec4<f32>(-1269f, 323f, -1000f, 981f), vec4<f32>(1402f, 1000f, 666f, -1546f)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(870f, -1399f, -282f, -1228f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(567f, -692f, 415f, 3007f))))), ~arg_0, countOneBits(min(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1, arg_2, 63750u)), countOneBits(vec3<u32>(arg_2, arg_2, 60343u))))));
    let var_2 = reverseBits(vec4<i32>(-u_input.a, u_input.b, ~(~func_3()), u_input.a));
    var var_3 = true;
    var_3 = !select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - 687f) == var_1.a.b.x, var_0.x);
    return Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(-var_1.a.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~arg_2.a.a;
    var var_1 = ~78742i;
    let var_2 = vec4<u32>(select(arg_2.c >> (arg_1.c % 32u), var_0, true), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(reverseBits(arg_1.b.yw), ~vec2<u32>(arg_2.a.a, arg_2.b.x), true), vec2<u32>(0u, ~arg_1.b.x)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0, arg_2.a.a), ~arg_2.b.xx, all(vec3<bool>(true, false, false))), arg_1.b.xx)), 1u, reverseBits(_wgslsmith_dot_vec3_u32(arg_2.b.wzw, min(vec3<u32>(29290u, arg_0.a, arg_0.a), arg_2.b.xwy))));
    var var_3 = Struct_1(1u, vec4<f32>(arg_2.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.b.x, 183f), arg_1.a.b.x)), -493f), -565f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-556f - _wgslsmith_f_op_f32(-330f - arg_2.a.b.x)), 338f)));
    var var_4 = arg_1.c < var_2.x;
    return func_2(_wgslsmith_mult_vec4_u32(firstLeadingBit(~var_2 & firstLeadingBit(vec4<u32>(0u, arg_0.a, arg_1.b.x, 1u))), arg_2.b | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0, arg_1.c, arg_2.b.x), select(var_2, vec4<u32>(arg_0.a, 1u, arg_2.a.a, 0u), vec4<bool>(true, true, false, true)))), _wgslsmith_add_u32(arg_0.a, 35399u), _wgslsmith_mult_u32(firstLeadingBit(var_0), firstLeadingBit(_wgslsmith_div_u32(~arg_2.b.x, 1u))), !vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true));
}

fn func_1() -> i32 {
    var var_0 = func_4(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(~22946u, ~4294967295u, 1u, 593u), vec4<u32>(1u, 1u, 1u, 1u)), 0u ^ _wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 0u), vec2<u32>(0u, 13683u)), reverseBits(vec2<u32>(27238u, 21968u))), ~1u, vec2<bool>(true, true)), Struct_2(func_2(vec4<u32>(1u, 1u, 1u, 1u), 32427u, func_2(~vec4<u32>(62420u, 4294967295u, 1u, 30753u), 95749u, reverseBits(12427u), vec2<bool>(true, true)).a, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~(~vec4<u32>(1u, 1u, 1u, 1u)), 66814u & _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(60122u, 53829u))), Struct_2(Struct_1(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1067f, 1980f, 360f, 2573f), vec4<f32>(1227f, 478f, 1826f, -1670f)))), _wgslsmith_clamp_vec4_u32(abs(firstTrailingBit(vec4<u32>(0u, 1u, 11527u, 1u))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 4294967295u, 61402u, 0u), vec4<u32>(0u, 0u, 32020u, 127533u), vec4<bool>(false, true, true, false)), abs(vec4<u32>(0u, 1u, 27859u, 4294967295u))), ~min(vec4<u32>(0u, 36860u, 85711u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u))), 4294967295u));
    var var_1 = vec2<u32>(var_0.a, max(var_0.a, ~16131u));
    var var_2 = func_4(func_4(func_2(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(63623u, 4294967295u, var_1.x, var_0.a), vec4<u32>(var_0.a, 9227u, var_0.a, 23590u)), _wgslsmith_sub_vec4_u32(vec4<u32>(6015u, 4294967295u, var_0.a, var_0.a), vec4<u32>(55513u, var_0.a, var_0.a, 0u))), max(0u, var_1.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_1.x, var_0.a), vec4<u32>(var_0.a, 1u, 11730u, 4294967295u)) % 32u), reverseBits(var_0.a), vec2<bool>(false, true)), Struct_2(Struct_1(~26867u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -227f, -1638f, var_0.b.x))), vec4<u32>(4294967295u, var_0.a, ~var_0.a, _wgslsmith_clamp_u32(27366u, var_1.x, 10421u)), reverseBits(73458u)), Struct_2(func_2(~vec4<u32>(var_1.x, var_0.a, 0u, var_1.x), select(var_0.a, var_0.a, true), ~var_1.x, vec2<bool>(true, true)), countOneBits(vec4<u32>(9281u, 0u, 49063u, var_0.a)) | (vec4<u32>(var_1.x, 10689u, 2726u, var_0.a) & vec4<u32>(16372u, var_1.x, var_0.a, 841u)), ~var_0.a ^ var_1.x)), Struct_2(func_4(Struct_1(~15357u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, 272f, var_0.b.x, var_0.b.x), var_0.b, vec4<bool>(true, false, true, false)))), Struct_2(Struct_1(var_0.a, var_0.b), _wgslsmith_div_vec4_u32(vec4<u32>(16770u, 4294967295u, var_0.a, var_0.a), vec4<u32>(5129u, 38082u, var_1.x, 76257u)), ~78353u), Struct_2(Struct_1(24243u, vec4<f32>(-1000f, var_0.b.x, var_0.b.x, 1842f)), abs(vec4<u32>(var_1.x, 0u, 1u, var_0.a)), var_0.a >> (var_1.x % 32u))), vec4<u32>(~0u | (var_1.x << (37789u % 32u)), var_0.a, ~_wgslsmith_mult_u32(var_1.x, 26044u), ~var_1.x), var_0.a), Struct_2(Struct_1(4294967295u, var_0.b), vec4<u32>(282u, abs(_wgslsmith_mod_u32(4294967295u, 36133u)), 24330u, 4294967295u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(firstTrailingBit(0u), ~4294967295u), var_0.a)));
    var_0 = Struct_1(var_2.a, vec4<f32>(-335f, var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), var_2.b.x));
    var_2 = func_2(vec4<u32>(~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(min(15459u, 23173u), max(var_2.a, var_2.a), 4294967295u, abs(4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, var_2.a, var_2.a), vec4<u32>(var_2.a, 13594u, 57603u, var_1.x))), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.a, 1u), vec2<u32>(var_0.a, 4294967295u)), select(vec2<u32>(var_0.a, var_1.x), vec2<u32>(0u, 40597u), vec2<bool>(true, true)), any(vec3<bool>(false, true, true))), abs(firstLeadingBit(vec2<u32>(var_1.x, 62457u)))), ~(_wgslsmith_sub_u32(var_0.a, var_1.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 0u, 1u), vec4<u32>(37860u, var_1.x, var_1.x, var_1.x)))), ~min(~var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, var_1.x, 1902u, 88511u), vec4<u32>(56340u, var_2.a, 0u, 1u))), _wgslsmith_clamp_u32(38680u, _wgslsmith_mult_u32(select(~1u, firstTrailingBit(0u), false), ~(~62599u)), var_0.a), select(vec2<bool>(true, false), vec2<bool>(any(vec2<bool>(true, true)), func_4(Struct_1(0u, var_0.b), Struct_2(Struct_1(0u, var_2.b), vec4<u32>(var_0.a, 12661u, 1144u, 12336u), 4294967295u), Struct_2(Struct_1(27148u, vec4<f32>(var_0.b.x, var_0.b.x, -242f, var_0.b.x)), vec4<u32>(65497u, 1u, 100352u, var_0.a), 1u)).a >= ~var_1.x), true));
    return ~(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(-u_input.a <= min(~0i, -_wgslsmith_div_i32(-1i, u_input.a)), true, !all(vec2<bool>(true, any(vec4<bool>(false, false, true, false)))));
    let var_1 = _wgslsmith_mult_vec3_i32(~select(firstTrailingBit(vec3<i32>(u_input.b, u_input.a, u_input.b)), ~vec3<i32>(u_input.a, -22417i, u_input.b), !vec3<bool>(false, var_0.x, var_0.x)), vec3<i32>(~(-u_input.a), -1i, ~(-2147483647i))) | vec3<i32>(~u_input.b, -_wgslsmith_clamp_i32(u_input.a | -2147483647i, func_1(), u_input.a), u_input.a);
    var var_2 = true;
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

