struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: bool, arg_3: f32) -> u32 {
    global0 = array<i32, 22>();
    let var_0 = Struct_1(max(~vec4<u32>(u_input.e.x, countOneBits(u_input.b.x), ~0u, u_input.e.x >> (1u % 32u)), reverseBits(firstTrailingBit(vec4<u32>(u_input.e.x, u_input.e.x, u_input.b.x, u_input.b.x))) & ~vec4<u32>(u_input.b.x, 25693u, 4294967295u, 4294967295u)), true, ~(-vec3<i32>(2147483647i, -2147483647i, u_input.c) | (vec3<i32>(53629i, global0[_wgslsmith_index_u32(31440u, 22u)], u_input.a.x) & vec3<i32>(-39864i, -12237i, 0i))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 0u, 33212u), vec4<u32>(4294967295u, 1u, u_input.e.x, 1u)) << (~u_input.e.x % 32u), ~u_input.e.x, _wgslsmith_sub_u32(max(4294967295u, u_input.b.x), reverseBits(71514u))) % vec3<u32>(32u)), min(u_input.e, select(vec2<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.e.x, 1u)), u_input.e, select(arg_2, false, arg_2) && any(vec2<bool>(arg_2, true)))));
    var var_1 = vec3<u32>(~u_input.b.x, u_input.e.x, max(_wgslsmith_dot_vec3_u32(var_0.a.xyw, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(var_0.a.yyz, vec3<u32>(2803u, var_0.a.x, var_0.a.x)), _wgslsmith_mod_vec3_u32(var_0.a.yww, var_0.a.yyy))), _wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x)));
    let var_2 = var_0.d;
    var var_3 = arg_0.zz;
    return _wgslsmith_dot_vec4_u32(max(~vec4<u32>(var_2.x, 4294967295u, 35841u, 4294967295u), select(var_0.a, vec4<u32>(u_input.e.x, u_input.e.x, 1u, 4294967295u), vec4<bool>(arg_1, false, true, true)) & min(var_0.a, vec4<u32>(var_0.d.x, 4294967295u, 482u, var_0.a.x))) ^ firstTrailingBit(var_0.a), ~var_0.a);
}

fn func_2() -> vec3<i32> {
    global0 = array<i32, 22>();
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(min(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(22442u, 22u)] >> (u_input.b.x % 32u)), countOneBits(countOneBits(0i)), -global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<i32>(39747i, -_wgslsmith_sub_i32(-1i, u_input.d.x), -22046i)), ~(-8962i ^ global0[_wgslsmith_index_u32(u_input.b.x, 22u)]));
    let var_1 = _wgslsmith_div_u32(u_input.b.x, u_input.b.x);
    let var_2 = ~u_input.e.x;
    let var_3 = Struct_1(~vec4<u32>(87074u, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1498f, -770f, -1168f, -2439f)), true, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(-286f, 1989f, true))), 1u << (var_1 % 32u), ~(~u_input.b.x)), (_wgslsmith_sub_u32(u_input.e.x, 49261u) | u_input.b.x) > abs(func_3(vec4<f32>(1825f, 872f, 1045f, -478f), true, true, _wgslsmith_f_op_f32(-713f - -146f))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.a.x, var_0.x, u_input.d.x), vec3<i32>(17543i, global0[_wgslsmith_index_u32(var_2, 22u)], var_0.x)) ^ ~vec3<i32>(-8569i, 2147483647i, u_input.a.x), vec3<i32>(-9964i, 1i, 34562i) ^ (vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_2, 22u)], var_0.x) >> (vec3<u32>(1u, var_1, u_input.b.x) % vec3<u32>(32u)))) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_2, 1u, 58595u), vec3<u32>(105148u, var_1, u_input.e.x) & vec3<u32>(var_1, var_2, 1u)), vec3<u32>(reverseBits(0u), var_1, var_2)) % vec3<u32>(32u)), vec2<u32>(reverseBits(_wgslsmith_mult_u32(~27852u, 0u)), 4294967295u));
    return var_3.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<i32, 22>();
    var var_0 = vec4<i32>(u_input.d.x, -11050i, firstTrailingBit(max(71059i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(55636u, firstLeadingBit(u_input.b.x)), 22u)])), abs(15467i));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 918u), u_input.b.x, ~(~u_input.b.x), firstLeadingBit(_wgslsmith_sub_u32(~u_input.e.x, 33243u)));
    var var_2 = Struct_1(~var_1, all(vec3<bool>(true, u_input.e.x != _wgslsmith_add_u32(u_input.e.x, 4294967295u), true)), func_2(), vec2<u32>(~firstTrailingBit(u_input.b.x), u_input.b.x));
    var var_3 = Struct_1(vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(var_1.x, 2238u)), 39690u, u_input.b.x, 4294967295u), all(vec3<bool>(true, true, false)), _wgslsmith_mod_vec3_i32(-var_0.yyx, vec3<i32>(~(-var_0.x), i32(-1i) * -var_0.x, -15487i)), min(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(8829u, 13228u)), firstLeadingBit(var_2.d), max(var_1.yz, var_1.ww)), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.d.x, 28049u), countOneBits(vec2<u32>(0u, var_1.x)))) ^ var_1.wx);
    return Struct_1(~(~(~vec4<u32>(1u, var_3.d.x, var_3.a.x, 42378u))), true, vec3<i32>(2147483647i, var_0.x, var_2.c.x), select(var_3.a.xz, abs(vec2<u32>(0u, ~var_2.a.x)), var_2.b));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = !select(!vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)] > u_input.a.x, false, true), select(vec4<bool>(all(vec2<bool>(arg_0.b, arg_0.b)), true, any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), false), vec4<bool>(arg_0.b, select(false, arg_0.b, true), any(vec2<bool>(arg_0.b, arg_0.b)), !arg_0.b), true));
    let var_1 = any(select(!(!var_0.zzz), vec3<bool>(any(select(vec2<bool>(var_0.x, arg_0.b), var_0.ww, vec2<bool>(var_0.x, arg_0.b))), false, true), arg_0.b));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-741f, 1000f), _wgslsmith_div_f32(-2700f, 1931f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1211f - -149f), _wgslsmith_f_op_f32(-1124f + 1215f))) * _wgslsmith_div_f32(-173f, _wgslsmith_f_op_f32(trunc(-162f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)), ((all(vec3<bool>(false, false, true)) | true) && true) | true, ~u_input.b.x == (~(~u_input.e.x) >> (~0u % 32u)), !(!any(vec4<bool>(true, true, true, true))));
    var var_1 = firstLeadingBit(~(~(~select(0u, 70708u, true))));
    var var_2 = Struct_1(vec4<u32>(49048u & ~u_input.e.x, 55734u, ~u_input.b.x, abs(50758u)), true, ~abs(firstTrailingBit(vec3<i32>(u_input.d.x, 88114i, global0[_wgslsmith_index_u32(33251u, 22u)]))) ^ select(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 13195i, 13382i), vec3<i32>(-1867i, 0i, -506i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 22u)], -2147483647i, u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], u_input.c, u_input.a.x)), vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], u_input.a.x), vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.e.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])), false), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 115385u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.e.x, u_input.e.x), vec3<u32>(29620u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 3142u, u_input.b.x))), 32514u), vec2<u32>(func_4(func_1(vec2<f32>(1177f, 482f), vec3<f32>(1343f, 1384f, -1204f))), 1u)));
    var_2 = func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1309f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<f32>(-1014f, -686f, _wgslsmith_div_f32(1196f, -683f)));
    var_0 = vec4<bool>(true, !all(vec2<bool>(func_1(vec2<f32>(141f, 471f), vec3<f32>(227f, -903f, -456f)).b, any(var_0.wy))), true, var_2.b);
    var var_3 = var_0.yx;
    let var_4 = var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(36384i, ~var_2.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1389f, -731f, 197f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1085f, -645f, 2516f, -404f) - vec4<f32>(-890f, 1000f, -1263f, 770f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(453f, 1118f, 554f, 1411f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2130f, -1684f, 503f, -462f) + vec4<f32>(-477f, -1000f, 1247f, 549f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1324f, 218f, -811f, -164f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-350f, 2027f, 982f, 667f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1554f, 289f, 754f, 282f)))))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1160f)), _wgslsmith_f_op_f32(floor(-396f))), _wgslsmith_f_op_f32(min(1521f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -141f), 198f)))), _wgslsmith_f_op_f32(trunc(582f))), 17333i);
}

