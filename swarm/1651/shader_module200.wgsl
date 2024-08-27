struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: f32 = 291f;

var<private> global2: Struct_3;

var<private> global3: array<vec3<u32>, 3>;

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec3<bool>(false, false, false), 1000f, vec3<u32>(150313u, 45765u, 3147u), vec2<f32>(-1629f, -540f)), Struct_3(vec3<bool>(true, true, true), 205f, vec3<u32>(0u, 20315u, 37312u), vec2<f32>(502f, 469f)), Struct_3(vec3<bool>(false, true, false), 1000f, vec3<u32>(1u, 4294967295u, 1u), vec2<f32>(625f, -172f)), Struct_3(vec3<bool>(true, true, true), 1000f, vec3<u32>(0u, 15569u, 4294967295u), vec2<f32>(542f, -358f)), Struct_3(vec3<bool>(true, false, false), 251f, vec3<u32>(10247u, 43500u, 1u), vec2<f32>(-1288f, 1299f)), Struct_3(vec3<bool>(true, true, true), 382f, vec3<u32>(38943u, 26079u, 35072u), vec2<f32>(-948f, 180f)), Struct_3(vec3<bool>(true, false, false), -576f, vec3<u32>(33213u, 2465u, 1u), vec2<f32>(-301f, 1209f)), Struct_3(vec3<bool>(true, true, true), -349f, vec3<u32>(110873u, 1u, 2396u), vec2<f32>(589f, -1606f)), Struct_3(vec3<bool>(false, false, false), 952f, vec3<u32>(0u, 58738u, 4294967295u), vec2<f32>(-1251f, 1668f)), Struct_3(vec3<bool>(false, false, false), 756f, vec3<u32>(39961u, 76858u, 1u), vec2<f32>(-2159f, 1642f)), Struct_3(vec3<bool>(true, false, false), 237f, vec3<u32>(47672u, 0u, 24674u), vec2<f32>(675f, 1501f)), Struct_3(vec3<bool>(false, true, false), 1234f, vec3<u32>(0u, 8196u, 1u), vec2<f32>(1255f, -396f)), Struct_3(vec3<bool>(true, false, false), -107f, vec3<u32>(73727u, 55645u, 21768u), vec2<f32>(811f, 1393f)), Struct_3(vec3<bool>(false, true, false), -824f, vec3<u32>(50601u, 4294967295u, 4294967295u), vec2<f32>(-735f, -367f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global0 = array<Struct_3, 2>();
    var var_0 = vec4<u32>(~(_wgslsmith_clamp_u32(countOneBits(u_input.a), u_input.a, ~u_input.a) | global2.c.x), 41353u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u >> (0u % 32u), u_input.a << (u_input.b % 32u), u_input.b << (global2.c.x % 32u), select(u_input.a, global2.c.x, true)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, 39751u, u_input.b), vec4<u32>(14654u, 15052u, u_input.b, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4279u, global2.c.x, 0u, global2.c.x), vec4<u32>(55427u, 0u, 38661u, 46078u), vec4<u32>(u_input.b, 0u, 1u, global2.c.x)))), firstLeadingBit(~vec4<u32>(global2.c.x, 1u, 1u, 19967u))), abs(abs(_wgslsmith_mod_u32(~u_input.b, ~global2.c.x))));
    let var_1 = ~(-_wgslsmith_mod_vec3_i32(abs(select(vec3<i32>(27393i, arg_0, -1i), vec3<i32>(arg_0, -4759i, -1i), global2.a.x)), -_wgslsmith_sub_vec3_i32(vec3<i32>(33255i, arg_0, arg_0), vec3<i32>(-40654i, arg_0, arg_0))));
    var var_2 = Struct_2(select(select(vec4<bool>(global2.a.x, true, true, any(vec4<bool>(true, global2.a.x, true, global2.a.x))), vec4<bool>(global2.a.x, true, global2.a.x, false), !select(global2.a.x, global2.a.x, global2.a.x)), select(vec4<bool>(!global2.a.x, true, global2.a.x, all(global2.a.xx)), !select(vec4<bool>(true, global2.a.x, true, global2.a.x), vec4<bool>(false, global2.a.x, true, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), global2.a.x), true));
    let var_3 = Struct_1(vec4<i32>(reverseBits(-1857i), arg_0, -1i, -18323i), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(23910i, ~7367i, arg_0 >> (var_0.x % 32u), _wgslsmith_mod_i32(arg_0, var_1.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0, 0i, arg_0, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -6553i, arg_0, var_1.x), vec4<i32>(var_1.x, arg_0, -2147483647i, 0i))))), abs(~69297u));
    return vec4<u32>(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, global2.c.x), ~var_0.wxz)), global2.c.x, 0u, 29610u);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1435f, arg_3.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_3.x) + arg_3)) - vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(step(-762f, 1830f))))), _wgslsmith_f_op_vec2_f32(-arg_3), vec2<bool>(global2.a.x, _wgslsmith_dot_vec4_u32(func_3(arg_1), vec4<u32>(u_input.a, 10764u, global2.c.x, 31865u) << (vec4<u32>(u_input.a, global2.c.x, u_input.b, 15758u) % vec4<u32>(32u))) < ((global2.c.x | 4294967295u) & u_input.b))));
    var var_1 = Struct_2(!(!vec4<bool>(global2.a.x, global2.a.x, any(global2.a.xx), arg_2)));
    global2 = Struct_3(vec3<bool>(arg_2, arg_2, reverseBits(15482i) < (select(arg_1, arg_1, true) << (12457u % 32u))), -2291f, vec3<u32>(~(u_input.a & 4294967295u) << (4294967295u % 32u), reverseBits(u_input.a), ~(~_wgslsmith_div_u32(u_input.a, 1u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1000f), vec2<f32>(250f, global2.b), vec2<bool>(arg_2, false))), arg_3))), global2.d)));
    var var_2 = !select(!(!var_1.a.yw), vec2<bool>(false, any(!var_1.a.xz)), vec2<bool>(any(vec2<bool>(arg_2, var_1.a.x)), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -1172f, _wgslsmith_f_op_f32(global2.b - 908f))))));
    return Struct_2(var_1.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> vec4<i32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.d.x))), -firstLeadingBit(~select(5544i, 46852i, true)), any(!vec2<bool>(true, u_input.a >= 8784u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global2.b)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1883f, global2.d.x)))))) + global2.d));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.d.x, global2.d.x) + vec3<f32>(global2.b, global2.b, global2.b)) * vec3<f32>(global2.b, 2839f, global2.d.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.b, -367f, 1530f), vec3<f32>(1219f, global2.b, 357f)))))), vec3<bool>(any(!vec2<bool>(global2.a.x, true)), true, false))));
    var var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(~(vec3<u32>(u_input.a, 1u, 0u) ^ vec3<u32>(global2.c.x, 33871u, u_input.a))), ~_wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(1u, 3u)], global3[_wgslsmith_index_u32(global2.c.x, 3u)]) & countOneBits(global3[_wgslsmith_index_u32(0u, 3u)]), _wgslsmith_div_vec3_u32(abs(vec3<u32>(61995u, 18013u, u_input.b)), global2.c)), vec3<u32>(50972u, ~_wgslsmith_sub_u32(global2.c.x, global2.c.x), reverseBits(max(45053u, global2.c.x))));
    var_2 = max(vec3<u32>(~(~4294967295u), abs(u_input.b), 1u), global3[_wgslsmith_index_u32(countOneBits(1u), 3u)]) | ~max(global2.c, _wgslsmith_add_vec3_u32(~vec3<u32>(38062u, u_input.b, 31481u), vec3<u32>(0u, var_2.x, 4277u)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x))));
    return firstLeadingBit(abs(reverseBits(-vec4<i32>(-2147483647i, arg_0.x, -2147483647i, arg_1))) & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 20311i), select(vec2<i32>(arg_0.x, arg_1), arg_0.xx, var_0.a.wz)), abs(3647i), 2147483647i, abs(arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_mult_vec4_i32(countOneBits(-func_1(vec3<i32>(-6469i, 5742i, 2147483647i), 0i)), vec4<i32>(-(~(-73508i)), _wgslsmith_mult_i32(35193i, firstLeadingBit(8509i)), 1i & (46805i << (global2.c.x % 32u)), 0i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(1i, 1i, 1i, 1i), ~(-vec4<i32>(-1i, 0i, 0i, 16976i))), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(36627i, 1i, 43375i, -7697i), firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, -1i, -1i)))), vec4<bool>(true, true, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)) >= min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -22634i, -1i), vec4<i32>(0i, 26455i, 0i, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(58020i, -19503i, 19220i), vec3<i32>(0i, -4202i, 13079i))), _wgslsmith_clamp_i32(1i, -1i, -2147483647i) >= _wgslsmith_mult_i32(~(-13277i), 4882i)));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), u_input.a ^ _wgslsmith_clamp_u32(~76043u, u_input.a, ~88517u)) ^ ~1u, 14u)];
    global0 = array<Struct_3, 2>();
    let var_2 = Struct_2(select(vec4<bool>(true, !(global2.c.x < u_input.b), any(select(var_1.a, global2.a, vec3<bool>(true, false, var_1.a.x))), true), func_2(-319f, var_0.x, global2.a.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_1.d, global2.d)))).a, var_1.a.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(597f, global2.d.x, var_1.a.x))), true)))));
    let var_4 = true;
    var var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(step(global2.b, _wgslsmith_f_op_f32(global2.b + global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_f32(global2.d.x - global2.b))), 3298f);
}

