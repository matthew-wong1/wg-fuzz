struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 8>;

var<private> global2: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global3: vec3<u32> = vec3<u32>(23896u, 50329u, 4294967295u);

var<private> global4: f32 = -1254f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec4<u32> {
    return ~firstLeadingBit(vec4<u32>(~arg_3, u_input.d & 0u, arg_2.b.b, _wgslsmith_mod_u32(0u, 1u)) ^ arg_2.c);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(global3.x & ~u_input.d, _wgslsmith_dot_vec4_u32(func_3(471f, Struct_1(global0.yz, u_input.e.x, vec4<i32>(-16384i, u_input.c, -11818i, global0.x), vec4<i32>(-710i, global0.x, global0.x, 2147483647i)), Struct_2(vec4<u32>(arg_0.x, global3.x, u_input.a, 34655u), Struct_1(vec2<i32>(21182i, u_input.b), u_input.e.x, vec4<i32>(38540i, -2147483647i, global0.x, 1i), vec4<i32>(u_input.c, 0i, 2147483647i, 0i)), vec4<u32>(37554u, 77219u, global3.x, u_input.d), 275f), global3.x), abs(vec4<u32>(82514u, global3.x, 4294967295u, global3.x))), 4294967295u, global3.x), min(countOneBits(~vec4<u32>(0u, 7429u, 0u, arg_0.x)), ~(~vec4<u32>(4294967295u, 17315u, arg_0.x, 73883u)))), Struct_1(global0.wz, 12513u << (~firstLeadingBit(arg_0.x) % 32u), _wgslsmith_add_vec4_i32(vec4<i32>(78657i, global0.x, global0.x, 1i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, -6844i, 2147483647i), vec4<i32>(u_input.b, -2147483647i, -1i, -2147483647i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 2147483647i, 12049i) & vec4<i32>(-21634i, 9166i, 1i, u_input.c), vec4<i32>(global0.x, u_input.c, global0.x, u_input.b) << (vec4<u32>(arg_0.x, 4294967295u, u_input.a, 4294967295u) % vec4<u32>(32u)))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(14702u, u_input.d, global3.x, arg_0.x), vec4<u32>(u_input.d, 0u, 1u, 8180u)), ~vec4<u32>(19161u, global3.x, global3.x, u_input.d)), 4294967295u, 1u, 52405u), _wgslsmith_div_f32(441f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 8u)]), _wgslsmith_f_op_f32(-206f * global1[_wgslsmith_index_u32(66535u, 8u)]))))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(var_0.d * 1288f))) + 756f), -1132f)));
    global3 = vec3<u32>(~arg_0.x, max(_wgslsmith_add_u32(var_0.c.x, 0u >> (u_input.d % 32u)) << (_wgslsmith_dot_vec2_u32(global3.zy, select(vec2<u32>(85807u, global3.x), global3.zz, var_1)) % 32u), var_0.b.b), global3.x);
    let var_3 = u_input.d;
    return Struct_1(global0.wz | vec2<i32>(u_input.c, -45173i), ~var_3, max(abs(_wgslsmith_mod_vec4_i32(-var_0.b.c, vec4<i32>(u_input.b, var_0.b.d.x, global0.x, u_input.c) ^ vec4<i32>(global0.x, -30651i, u_input.c, 0i))), var_0.b.c), var_0.b.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~44823u, global3.x), 31u)];
    var var_1 = (1u << (u_input.e.x % 32u)) | arg_2.b;
    let var_2 = Struct_2(~vec4<u32>(~abs(arg_2.b), u_input.d, firstTrailingBit(~u_input.e.x), 0u), func_2(vec3<u32>(~_wgslsmith_mult_u32(13660u, 1u), max(firstLeadingBit(arg_0.b), 6536u), ~1u)), ~select(select(reverseBits(vec4<u32>(arg_2.b, 95700u, 1u, 4629u)), vec4<u32>(u_input.d, 0u, arg_0.b, global3.x), vec4<bool>(var_0.x, false, false, var_0.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 43977u, global3.x, 2612u), vec4<u32>(arg_0.b, 0u, arg_0.b, global3.x)), func_3(arg_1.x, arg_0, Struct_2(vec4<u32>(1u, u_input.e.x, 4294967295u, 9235u), arg_0, vec4<u32>(4294967295u, 85465u, global3.x, u_input.a), -708f), 31300u), ~vec4<u32>(31054u, 2304u, global3.x, arg_2.b)), !vec4<bool>(var_0.x, true, var_0.x, var_0.x)), _wgslsmith_f_op_f32(min(-2548f, arg_1.x)));
    var_1 = _wgslsmith_sub_u32(reverseBits(firstTrailingBit(35802u)), ~(~reverseBits(1u)));
    var var_3 = all(vec4<bool>(false, !(u_input.a > global3.x), any(global2[_wgslsmith_index_u32(firstLeadingBit(18598u), 31u)]), var_0.x));
    return 30046u;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>) -> vec3<u32> {
    global1 = array<f32, 8>();
    return vec3<u32>(29974u, abs(_wgslsmith_mult_u32(0u, 21604u)) & (arg_0 << (19802u % 32u)), ~(~10467u));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec3<u32> {
    var var_0 = Struct_1(vec2<i32>(arg_1, 1i), _wgslsmith_mod_u32(35416u, _wgslsmith_add_u32(global3.x, ~(~global3.x))), ~vec4<i32>(-2147483647i & ~u_input.c, arg_1, global0.x, ~1i), vec4<i32>(arg_1 | ~u_input.b, -2147483647i, _wgslsmith_add_i32(-_wgslsmith_add_i32(2147483647i, u_input.b), u_input.b & ~10167i), u_input.b));
    let var_1 = var_0.a;
    return _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, u_input.d), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(51579u, 1u, u_input.e.x), vec3<u32>(global3.x, 15535u, u_input.d))), min(u_input.d, u_input.a)), func_5(u_input.d ^ func_4(Struct_1(global0.yy, 45523u, vec4<i32>(global0.x, 2147483647i, arg_1, global0.x), vec4<i32>(arg_1, global0.x, global0.x, u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], 1954f, global1[_wgslsmith_index_u32(1u, 8u)], -742f)), func_2(vec3<u32>(global3.x, 36791u, 4294967295u))), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x;
    global1 = array<f32, 8>();
    global3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 8u)]), -1573f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(11979u ^ u_input.d, 8u)], -524f) - _wgslsmith_f_op_f32(f32(-1f) * -545f))), -_wgslsmith_sub_i32(-37109i, -10734i));
    var var_1 = Struct_2(_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, 84410u, u_input.d, 4294967295u)) << (~vec4<u32>(u_input.e.x, var_0, 4294967295u, var_0) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(45429u, 9902u, global3.x), u_input.a, global3.x, u_input.a), ~abs(vec4<u32>(4294967295u, 4294967295u, 56194u, 1u)))), func_2(max(func_1(_wgslsmith_f_op_f32(542f + 569f), -1i), u_input.e)), vec4<u32>(59847u, ~reverseBits(0u), _wgslsmith_mult_u32((global3.x ^ global3.x) << (_wgslsmith_mod_u32(27494u, u_input.e.x) % 32u), max(global3.x, u_input.a)), 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1075f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_0), 8u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 8u)] + global1[_wgslsmith_index_u32(9259u, 8u)]))), global1[_wgslsmith_index_u32(global3.x, 8u)], true)));
    global4 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(815f * _wgslsmith_f_op_f32(200f - global1[_wgslsmith_index_u32(23021u, 8u)])))), 966f), -368f, !select(var_0 > ~0u, true, true)));
    var var_2 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.x, select(~18050u, 22230u, true), ~_wgslsmith_add_u32(global3.x, var_1.b.b), 0u), vec4<u32>(var_1.b.b, ~_wgslsmith_div_u32(var_0, var_1.c.x), _wgslsmith_div_u32(global3.x, firstLeadingBit(21065u)), u_input.d)), func_2(~u_input.e), vec4<u32>(global3.x, 86983u, _wgslsmith_sub_u32(var_1.c.x, global3.x), var_1.a.x), global1[_wgslsmith_index_u32(~abs(_wgslsmith_div_u32(var_1.b.b, var_0)) | global3.x, 8u)]);
    var var_3 = ~func_5(~0u, vec3<bool>(all(vec2<bool>(true, true)), true, any(vec2<bool>(true, true)))).x;
    var_3 = ~u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.a.x, 8u)] - 1377f), var_1.b, Struct_2(~(var_1.a ^ vec4<u32>(1u, 1u, 4294967295u, 97126u)), var_2.b, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, 4294967295u, 4294967295u), var_2.c), 615f), 1u).wz, global0.zzy, _wgslsmith_sub_i32(var_1.b.c.x << (u_input.d % 32u), -(_wgslsmith_sub_i32(var_1.b.c.x, u_input.c) | _wgslsmith_dot_vec4_i32(var_1.b.c, vec4<i32>(1i, u_input.b, global0.x, var_2.b.d.x)))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(328f - -1495f) * var_1.d) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-973f, var_2.d)))), _wgslsmith_div_i32(var_2.b.d.x, var_1.b.d.x)).x, firstTrailingBit(global0.wzx));
}

