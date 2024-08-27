struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 9>;

var<private> global2: f32;

var<private> global3: vec3<f32>;

var<private> global4: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-796f, -1216f)) * _wgslsmith_f_op_vec2_f32(-global3.yy))));
    let var_1 = u_input.a.x;
    global0 = countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-59619i, 31102i, -19446i), -vec3<i32>(26944i, -2147483647i, 1i)), -min(vec3<i32>(-1i, 0i, -8869i), vec3<i32>(1i, -20041i, 0i))) ^ ~reverseBits(-47491i));
    let var_2 = -_wgslsmith_clamp_vec4_i32(reverseBits(-vec4<i32>(44176i, 2147483647i, 2147483647i, -37494i)), vec4<i32>((i32(-1i) * -34883i) << (1u % 32u), ~max(-1i, 2147483647i), -(26024i >> (u_input.a.x % 32u)), abs(-3933i) << (var_1 % 32u)), -abs(vec4<i32>(0i, 2147483647i, 48585i, -31469i)) << (vec4<u32>(56964u, ~21662u, u_input.a.x << (4294967295u % 32u), 2031u) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + global1[_wgslsmith_index_u32(var_1, 9u)]) * var_0.x));
    return ~(~(~(~var_1)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_3(max(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -27228i) << (u_input.a % vec2<u32>(32u)), vec2<i32>(32343i, 9706i)), ~vec2<i32>(71426i, -8644i))));
    global3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2022f, -539f, -509f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 217f, -418f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1643f, 225f) * vec3<f32>(-1493f, -174f, global1[_wgslsmith_index_u32(4294967295u, 9u)])))))))));
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(reverseBits(29885u & u_input.a.x), ~0u), u_input.a.x, 1u, 10870u), Struct_1(~(u_input.a.x << (_wgslsmith_add_u32(u_input.a.x, 1u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.yy)), ~u_input.a.x, _wgslsmith_f_op_f32(1361f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1314f)) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)] - global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))), select(vec2<i32>(_wgslsmith_div_i32(29056i, 1i), max(var_0.a, 0i)), (vec2<i32>(var_0.a, -37312i) & vec2<i32>(9822i, var_0.a)) >> (reverseBits(u_input.a) % vec2<u32>(32u)), vec2<bool>(select(false, false, false), any(global4[_wgslsmith_index_u32(4294967295u, 24u)])))), u_input.a, Struct_1(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), 3257f))), 57427u | u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(sign(-1386f)), all(global4[_wgslsmith_index_u32(1u, 24u)])))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_0.a), vec2<i32>(~2147483647i, 1i), vec2<i32>(var_0.a, -58212i))), Struct_1(min(97084u, abs(u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(764f, 416f), global3.zx))), 1u ^ ~(u_input.a.x << (43926u % 32u)), global3.x, vec2<i32>(1i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 5782i, i32(-1i) * -1i))));
    var_0 = Struct_3(-min(-max(var_1.d.e.x, 12781i), -(~24389i)));
    var var_2 = !(~var_0.a < -var_1.d.e.x);
    return vec3<i32>(i32(-1i) * -64809i, var_0.a, var_0.a) >> (var_1.a.zzz % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> vec3<f32> {
    global0 = -arg_0.x | _wgslsmith_add_i32(-1i, arg_3.x >> (_wgslsmith_dot_vec2_u32(arg_2, _wgslsmith_mult_vec2_u32(vec2<u32>(31843u, arg_1.x), vec2<u32>(arg_1.x, arg_2.x))) % 32u));
    var var_0 = ~(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, 1u, arg_1.x), arg_1), arg_1), ~(~arg_1)) >> (min(arg_1, arg_1) % vec4<u32>(32u)));
    var var_1 = Struct_2(abs(countOneBits(~_wgslsmith_clamp_vec4_u32(arg_1, vec4<u32>(arg_1.x, var_0.x, 103493u, arg_2.x), vec4<u32>(1u, arg_2.x, var_0.x, 4294967295u)))), Struct_1(40219u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.x, 9u)], global3.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-569f, 209f) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 9u)], 378f)), all(vec2<bool>(true, false)))))), var_0.x, global1[_wgslsmith_index_u32(0u, 9u)], arg_3.yy), firstTrailingBit(min(~_wgslsmith_mod_vec2_u32(vec2<u32>(50105u, var_0.x), arg_2), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(4294967295u, 41324u)))), Struct_1(arg_2.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global3.xy - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1076f, -534f), global3.yz, vec2<bool>(true, true)))), global3.yx)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.zw, u_input.a), ~arg_1.xy), ~arg_1.x), global3.x, ~_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_3.x, arg_3.x), arg_0.xx)), Struct_1(~u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, global1[_wgslsmith_index_u32(12976u, 9u)])) + 843f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(891f * -256f) + -353f)), _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(81784u)) ^ _wgslsmith_add_u32(firstLeadingBit(arg_1.x), 1u), global3.x, _wgslsmith_div_vec2_i32(vec2<i32>(~0i, firstTrailingBit(arg_3.x)), -(~vec2<i32>(0i, -1i)))));
    var var_2 = arg_2.x;
    global1 = array<f32, 9>();
    return vec3<f32>(var_1.e.d, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(abs(abs(1u)), ~(arg_1.x >> (4294967295u % 32u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(41681u, var_0.x), var_0.x, 41017u))), 9u)], _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~(~78767u), 9u)])));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(270f, global3.x, global3.x) - vec3<f32>(global1[_wgslsmith_index_u32(48476u, 9u)], -1257f, 1061f)) * vec3<f32>(_wgslsmith_f_op_f32(-315f + -117f), _wgslsmith_f_op_f32(global3.x - -538f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 9u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_4(func_3(), vec4<u32>(arg_0, arg_0, 86501u, 4294967295u), vec2<u32>(4294967295u, arg_0) | vec2<u32>(0u, arg_0), min(vec3<i32>(-2147483647i, 2147483647i, 1i), vec3<i32>(-20516i, 1i, 1i))))))));
    let var_0 = Struct_3(-max(1i, ~_wgslsmith_mod_i32(-4478i, -38947i)));
    return Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-global3.zz), 13226u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(13256u, 9u)])))))), (firstTrailingBit(vec2<i32>(var_0.a, var_0.a)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(18901u, 1u, 49771u, u_input.a.x), vec4<u32>(u_input.a.x, 47993u, arg_0, arg_0)), arg_0) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(countOneBits(~vec2<i32>(-1i, -1i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_0.a, 1i))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    var var_0 = true;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 9u)] - 1300f)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 319f;
    let var_0 = ~4294967295u;
    var var_1 = func_5(func_2(~func_1()), Struct_4(Struct_2(vec4<u32>(var_0 & u_input.a.x, min(var_0, u_input.a.x), 44383u, _wgslsmith_add_u32(var_0, 24922u)), func_2(u_input.a.x | 46145u), select(vec2<u32>(var_0, var_0), reverseBits(vec2<u32>(3663u, var_0)), true), Struct_1(~var_0, global3.xy, u_input.a.x, 1000f, min(vec2<i32>(-2147483647i, 43794i), vec2<i32>(-1832i, 19577i))), func_2(2835u & u_input.a.x)), Struct_3(0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-615f, global3.x, 1456f), vec3<f32>(global3.x, 1345f, 358f)))), Struct_2(max(reverseBits(vec4<u32>(85416u, var_0, 0u, var_0)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, u_input.a.x, var_0, var_0), vec4<u32>(var_0, var_0, 94210u, 149u))), Struct_1(var_0, _wgslsmith_f_op_vec2_f32(-global3.yy), var_0, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0, 9u)], 408f), vec2<i32>(-2147483647i, -10475i)), vec2<u32>(u_input.a.x, ~85071u), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(34737u, 4294967295u), u_input.a)), func_2(var_0 & 9949u)), func_2(~var_0)));
    let var_2 = var_1.b;
    global2 = global3.x;
    global3 = var_1.c;
    let var_3 = var_1.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, -359f, -203f, -518f)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(501f, 1000f)), _wgslsmith_f_op_f32(floor(global3.x))), _wgslsmith_f_op_f32(-var_3.d), 2022f, _wgslsmith_f_op_vec3_f32(func_4(vec3<i32>(1i, 18018i, var_1.e.e.x), abs(var_1.a.a), vec2<u32>(var_3.c, 14181u), _wgslsmith_div_vec3_i32(vec3<i32>(-26474i, var_3.e.x, var_3.e.x), vec3<i32>(var_3.e.x, var_2.a, 23860i)))).x)));
}

