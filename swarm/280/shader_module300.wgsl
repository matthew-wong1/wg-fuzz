struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: u32 = 19376u;

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(55070u, arg_0.x, 68811u) ^ vec3<u32>(arg_0.x, 4294967295u, 34705u), ~arg_0) & _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(arg_0.x), u_input.c, _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zz)), u_input.a));
    global1 = _wgslsmith_mult_u32(firstTrailingBit(0u), 73432u);
    let var_1 = true;
    let var_2 = Struct_4(true, Struct_1(~u_input.a.x & 88188u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-933f, -710f, 1000f, -182f) + vec4<f32>(1218f, -803f, 1000f, 272f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1559f, 1000f, -817f, -342f)))), vec4<bool>(u_input.e.x == u_input.b.x, var_1, all(vec2<bool>(var_1, false)), false))), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-2147483647i, -1i)), vec2<i32>(min(34651i, -7704i), u_input.d.x)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(arg_0.x, 4294967295u, 19462u)), abs(~vec3<u32>(arg_0.x, 44486u, 34775u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1734f), _wgslsmith_div_f32(1129f, 2126f)) - -873f)));
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = func_3(~_wgslsmith_add_vec3_u32(~u_input.a, countOneBits(abs(u_input.a))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(636f, -364f)), _wgslsmith_f_op_f32(max(-659f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1432f, _wgslsmith_f_op_f32(round(479f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-284f))))))));
    global1 = abs(~((0u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), vec3<u32>(u_input.a.x, 59625u, u_input.c))) & 6788u));
    var var_2 = u_input.e.xz;
    let var_3 = arg_1;
    return Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, -1394f)))), vec4<f32>(var_1.x, -1840f, 1240f, _wgslsmith_f_op_f32(sign(-469f))), var_3)), var_2.x, u_input.a, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-212f))) + _wgslsmith_f_op_f32(-var_1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    global0 = array<Struct_2, 7>();
    var var_0 = Struct_3(arg_0.b.x);
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1128f)) * _wgslsmith_f_op_f32(step(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a))))));
    let var_1 = ~countOneBits(20626u);
    var var_2 = firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(countOneBits(u_input.a.x)), 1u, var_1), vec3<u32>(~abs(36721u), countOneBits(arg_0.a << (35080u % 32u)), 5900u)));
    return var_1;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32) -> Struct_2 {
    global0 = array<Struct_2, 7>();
    var var_0 = vec4<u32>(~func_4(func_2(arg_0 != 839f, vec4<bool>(true, true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), ~(~(u_input.c & 1u)) & 1u, _wgslsmith_mult_u32(arg_1, ~0u), ~(~(~(u_input.a.x >> (1u % 32u)))));
    var var_1 = Struct_4(true, Struct_1(reverseBits(~_wgslsmith_mod_u32(14995u, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, 247f, arg_0, 859f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, arg_2, arg_2, 348f)))), 13215i, vec3<u32>(~5585u, ~52585u, ~1u) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 346u, u_input.c), vec3<u32>(29567u, u_input.c, 0u), ~vec3<u32>(var_0.x, var_0.x, 19804u)), -673f));
    global1 = abs(0u << (u_input.a.x % 32u));
    var_0 = vec4<u32>(~func_4(func_2(!var_1.a, select(vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(true, var_1.a, false, false), vec4<bool>(false, var_1.a, false, true))), !vec3<bool>(var_1.a, false, true)), arg_1, _wgslsmith_mod_u32(49438u ^ arg_1, abs(41942u)), ~68451u);
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(21605u, var_1.b.a, 11565u), var_1.b.d), ~u_input.c)), reverseBits(0u)), 7u)];
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> vec4<f32> {
    global1 = ~98549u;
    let var_0 = Struct_4(arg_0, arg_2.a);
    global1 = countOneBits(80826u);
    var var_1 = vec2<f32>(var_0.b.e, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(exp2(func_1(1403f, 1u ^ arg_2.a.a, _wgslsmith_f_op_f32(f32(-1f) * -452f)).a.b.x))));
    let var_2 = arg_2.a.b.wwx;
    return _wgslsmith_f_op_vec4_f32(-var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_u32(20395u, min(u_input.a.x, ~2391u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1268f, 185f, 972f, -601f)))), _wgslsmith_f_op_vec4_f32(func_5(true, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), u_input.b.zx), func_1(-1000f, u_input.c, -854f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-526f, -164f, 301f, 1070f)))), _wgslsmith_mod_i32(0i, -38514i), u_input.a, _wgslsmith_f_op_f32(1f - 614f));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_5(true, u_input.b.x, Struct_2(Struct_1(28491u, var_0.b, -22055i, var_0.d, var_0.e), vec4<bool>(false, true, false, true)))).x, _wgslsmith_f_op_f32(-var_0.e), select(false, false, true))) + func_2(true, vec4<bool>(true, true, true, true)).e)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(946f))) - var_1.a))));
    global2 = true;
    var var_2 = false || any(vec2<bool>(all(func_1(-1765f, 1u, -1401f).b.zyw), func_1(1000f, _wgslsmith_div_u32(0u, 4294967295u), -135f).b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(func_2(false, select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true)).d, ~func_1(-748f, u_input.c, var_0.b.x).a.d), countOneBits(abs(abs(u_input.e))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(var_0.b)))));
}

