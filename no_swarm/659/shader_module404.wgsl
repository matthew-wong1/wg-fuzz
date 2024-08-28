struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f * 1000f)), arg_0.a.b);
    let var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(26540u, 1u), ~24237u, ~_wgslsmith_div_u32(0u, 23535u)) | (_wgslsmith_clamp_u32(4294967295u, 14916u, 111212u) << (_wgslsmith_clamp_u32(68518u, 0u >> (1u % 32u), ~1u) % 32u));
    global0 = _wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(-84463i, u_input.b, -58471i, -1i));
    let var_2 = select(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 23261u, 1u, var_1), vec4<u32>(39138u, 0u, 4294967295u, var_1)), ~vec4<u32>(var_1, 43895u, var_1, 0u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 28427u), vec2<u32>(1u, 1u)), max(vec2<u32>(18628u, 23711u), vec2<u32>(var_1, 15975u)))), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_1, var_1)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 48968u), countOneBits(vec2<u32>(var_1, var_1)))), false) ^ vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(47242u, var_1), vec2<u32>(32224u, 0u)), max(vec2<u32>(4294967295u, 1u), vec2<u32>(var_1, var_1)))), var_1);
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(var_0.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1371f * _wgslsmith_div_f32(var_0.b.x, 553f)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_div_f32(arg_3, arg_3)) - 584f) - _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_1, vec3<f32>(-1000f, 711f, arg_3)), vec4<f32>(-235f, -1840f, arg_1, -2465f)))), _wgslsmith_f_op_f32(round(arg_3)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 335f, -1035f) - vec3<f32>(arg_1, arg_1, 1076f)))) * vec3<f32>(506f, arg_3, -351f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, arg_3, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1145f, arg_1, -1539f) * vec3<f32>(954f, 317f, 1573f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1678f) + vec3<f32>(arg_1, -1239f, -1589f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1506f, arg_3, arg_3))))))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1370f, arg_1, arg_1, arg_1)))) * vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(var_0.b.x, vec3<f32>(1686f, -711f, -120f)), vec4<f32>(-457f, 1000f, -1974f, 1036f)))), 808f, _wgslsmith_f_op_f32(arg_3 * arg_3), 1f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.b.x, arg_3, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -109f), arg_3, 472f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, arg_3, 1000f, var_0.b.x)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    global1 = array<vec3<bool>, 20>();
    var var_0 = 937f;
    var var_1 = -839f > _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)))));
    let var_2 = arg_1;
    let var_3 = 1425f;
    return Struct_2(Struct_1(var_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.a, -1114f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(true, true, any(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -639f), vec3<i32>(~11490i, -4515i, arg_3.x ^ arg_3.x), 2162f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_3, 247f, -487f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_3, arg_1.b.x, 1020f) + vec4<f32>(-546f, var_2.a, var_2.a, -224f)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = arg_2;
    var var_1 = arg_2.b.x;
    var var_2 = firstTrailingBit(vec4<u32>(arg_3, ~56830u, ~4294967295u, 1u) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, arg_1.x, arg_1.x, 33360u), vec4<u32>(89883u, 101919u, arg_3, arg_1.x)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_mod_u32(arg_3, ~(~26258u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(arg_1), ~vec2<u32>(0u, 19557u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3, arg_1.x), arg_1) | arg_1), 4294967295u, countOneBits(~countOneBits(32439u))) % vec4<u32>(32u));
    var var_3 = select(global1[_wgslsmith_index_u32(var_2.x, 20u)], !global1[_wgslsmith_index_u32(var_2.x, 20u)], !(!(var_2.x == arg_3)));
    var var_4 = !select(select(select(vec4<bool>(false, var_3.x, var_3.x, false), select(vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<bool>(true, true, true, var_3.x), vec4<bool>(var_3.x, false, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(var_3.x, false, true, false), select(vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<bool>(var_3.x, var_3.x, true, false))), select(vec4<bool>(var_3.x, var_3.x, false, var_3.x), vec4<bool>(false, false, true, var_3.x), true)), select(vec4<bool>(false, var_3.x, arg_0.a.a >= -118f, false), !vec4<bool>(false, var_3.x, var_3.x, false), all(var_3.yx)), var_3.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a * arg_2.a), 160f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-240f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(vec2<u32>(4041u, 35543u), Struct_1(-327f, vec3<f32>(611f, 563f, -1441f)), u_input.e.x, vec3<i32>(2147483647i, u_input.d, u_input.c.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(22103u, 4294967295u), select(vec2<u32>(48149u, 47135u), vec2<u32>(4294967295u, 67459u), false)), Struct_1(_wgslsmith_f_op_f32(-113f + -2123f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(375f, -745f, 557f))), select(firstLeadingBit(133239u), ~0u, select(false, false, true)))) * 793f));
    global0 = vec4<i32>(-1i, _wgslsmith_div_i32(i32(-1i) * -1i, -2147483647i), max(~1i, ~32885i), _wgslsmith_sub_i32(~1i, 43479i));
    global0 = vec4<i32>(reverseBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(~(-44328i), _wgslsmith_add_i32(global0.x, 35809i)), i32(-1i) * -1i)), u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(~min(u_input.a, 0i), 0i), vec2<i32>(global0.x, ~63342i)), ~select(_wgslsmith_div_i32(global0.x, -2147483647i), u_input.a, true) & _wgslsmith_dot_vec3_i32(~u_input.e.zwy ^ _wgslsmith_add_vec3_i32(vec3<i32>(1i, 24628i, u_input.c.x), vec3<i32>(global0.x, u_input.c.x, 3491i)), vec3<i32>(global0.x, 0i, firstLeadingBit(-22274i))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)), -1129f, any(vec4<bool>(true, true, false, false)) | true)), -598f)), -647f);
    let var_2 = u_input.b;
    let var_3 = ~_wgslsmith_dot_vec4_u32(~select(~vec4<u32>(26104u, 4294967295u, 0u, 0u), vec4<u32>(0u, 1223u, 4294967295u, 55622u), vec4<bool>(true, true, true, true)), abs(~vec4<u32>(1u, 1u, 1u, 1u)));
    global0 = _wgslsmith_mod_vec4_i32(-u_input.e, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), 1833f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(573f, 258f, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1345f, 374f, -1000f)))), !select(global1[_wgslsmith_index_u32(var_3, 20u)], vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(var_3, 20u)]))), true)), 84545u);
}

