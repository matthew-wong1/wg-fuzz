struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(-12763i, 1i, 1i), vec3<i32>(2147483647i, -84671i, 2147483647i), vec3<i32>(-1i, 1i, 15787i), vec3<i32>(0i, 1i, 20580i), vec3<i32>(-37638i, 19074i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, -45538i), vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(-3120i, -57243i, 18703i), vec3<i32>(7242i, 2147483647i, -2591i), vec3<i32>(-41496i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -9849i), vec3<i32>(2147483647i, -1i, -2961i), vec3<i32>(14815i, -22131i, 1i), vec3<i32>(76364i, 0i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -21903i), vec3<i32>(1i, -19311i, 0i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, arg_0, 11334u, 1u))), firstTrailingBit(~(~vec4<u32>(15766u, 1u, arg_0, 15049u)))), arg_0 & abs(5011u), countOneBits(4457u));
    var var_1 = Struct_2(Struct_1(true, 4294967295u, u_input.d.x, 1f, min(firstTrailingBit(vec3<u32>(arg_0, 4294967295u, var_0.x)), vec3<u32>(_wgslsmith_clamp_u32(arg_0, 4294967295u, 62843u), ~39783u, ~39392u))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1420f * -700f), _wgslsmith_f_op_f32(min(152f, 314f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(642f * -661f)))), Struct_1(true, 0u, ~(~(~u_input.a.x)), _wgslsmith_f_op_f32(round(-1048f)), countOneBits(vec3<u32>(var_0.x, reverseBits(var_0.x), ~1u))));
    var_1 = Struct_2(var_1.a, vec2<f32>(2701f, 1055f), var_1.a);
    var_0 = _wgslsmith_div_vec3_u32(firstTrailingBit(var_1.a.e), var_1.c.e & var_1.c.e);
    var var_2 = any(vec3<bool>(all(select(select(vec3<bool>(var_1.c.a, false, true), vec3<bool>(false, var_1.a.a, true), true), !vec3<bool>(false, var_1.c.a, true), true)), true, var_1.c.a));
    return 28185u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global1 = array<vec3<i32>, 17>();
    global1 = array<vec3<i32>, 17>();
    var var_0 = Struct_3(~func_3(21160u), !any(vec4<bool>(true, true, true, true)), 1u > _wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_0.x, 46070u, arg_0.x), vec3<u32>(91136u, arg_0.x, 0u), true), ~(vec3<u32>(arg_0.x, 1u, arg_0.x) >> (vec3<u32>(26642u, 0u, 50629u) % vec3<u32>(32u)))), vec3<bool>(true, true, true));
    var_0 = Struct_3(abs(func_3(var_0.a) | arg_0.x), -1i == reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, 645i), global0[_wgslsmith_index_u32(var_0.a, 9u)]), ~u_input.a)), (abs(arg_0.x) | 4294967295u) == (arg_0.x << (~countOneBits(42311u) % 32u)), var_0.d);
    let var_1 = Struct_3(arg_0.x, all(!(!select(vec4<bool>(var_0.b, false, false, var_0.d.x), vec4<bool>(var_0.b, false, true, var_0.c), false))), var_0.b, vec3<bool>(true, all(vec4<bool>(false, !var_0.b, true, !var_0.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-500f * -1025f), _wgslsmith_f_op_f32(floor(414f)), true)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-861f - -1159f), _wgslsmith_div_f32(160f, -841f))));
    return Struct_2(Struct_1(true, ~_wgslsmith_clamp_u32(~72961u, var_1.a, ~65788u), reverseBits(15145i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1347f)), _wgslsmith_div_f32(-689f, 552f)))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a >> (var_0.a % 32u), _wgslsmith_add_u32(1u, 1u), var_0.a), reverseBits(~vec3<u32>(arg_0.x, 0u, 38855u)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1983f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f - 442f) + _wgslsmith_f_op_f32(sign(2259f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1541f, 1208f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1848f, 776f) - vec2<f32>(1082f, 988f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -262f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, -806f)), !var_0.d.x)))), Struct_1(var_1.c, 1u, -_wgslsmith_div_i32(u_input.b.x << (1u % 32u), -13988i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)), vec3<u32>(_wgslsmith_clamp_u32(var_1.a, 0u, select(62473u, 60889u, var_1.c)), _wgslsmith_div_u32(var_1.a, min(1u, 40354u)), select(~67342u, ~92203u, var_1.b))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<f32> {
    global1 = array<vec3<i32>, 17>();
    var var_0 = 2147483647i;
    var_0 = _wgslsmith_add_i32(~arg_1.c.c, 20546i);
    var var_1 = abs(arg_2.a.e.xy);
    global0 = array<vec2<i32>, 9>();
    return vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.d + _wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(836f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.d))) * -787f));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(true, arg_1, u_input.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1275f + 1017f)))))), _wgslsmith_div_vec3_u32(~max(select(vec3<u32>(4294967295u, 3816u, arg_0.x), vec3<u32>(arg_1, 90375u, 1u), vec3<bool>(true, true, false)), vec3<u32>(1u, 1u, 1u)), abs(~vec3<u32>(arg_0.x, arg_0.x, 43068u)) ^ max(vec3<u32>(4294967295u, 20350u, 1u), ~vec3<u32>(arg_0.x, 4294967295u, 73815u))));
    var var_1 = Struct_2(Struct_1(true, 1u, -34118i << (~var_0.e.x % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d * -1000f), -177f))), ~var_0.e), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d, -1334f), vec2<f32>(1093f, var_0.d), !var_0.a)), vec2<f32>(var_0.d, -1000f), select(vec2<bool>(var_0.a, false), !vec2<bool>(var_0.a, false), !vec2<bool>(var_0.a, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -1480f)))), _wgslsmith_f_op_vec2_f32(func_4(!vec2<bool>(var_0.a, false), Struct_2(Struct_1(var_0.a, var_0.e.x, 0i, var_0.d, vec3<u32>(4294967295u, 53275u, 1u)), vec2<f32>(var_0.d, var_0.d), Struct_1(var_0.a, arg_0.x, u_input.a.x, var_0.d, vec3<u32>(arg_0.x, var_0.e.x, 0u))), func_2(arg_0))))), func_2(vec2<u32>(arg_1 | 46851u, ~var_0.e.x) | ~(~arg_0)).a);
    let var_2 = _wgslsmith_div_vec4_u32(~max(vec4<u32>(arg_0.x, arg_1, 36321u, arg_1), ~vec4<u32>(arg_1, var_1.a.e.x, 35067u, 46891u)), ~firstTrailingBit(max(vec4<u32>(arg_0.x, 34905u, 160465u, 45874u), vec4<u32>(10834u, var_1.c.e.x, 10549u, var_0.e.x)))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(29142u, 113030u, 38343u, 4294967295u), _wgslsmith_div_vec4_u32(min(vec4<u32>(var_1.c.b, arg_1, var_0.e.x, 4294967295u), vec4<u32>(arg_1, 21536u, 1u, 4294967295u) & vec4<u32>(arg_1, 1u, 12230u, 51630u)), vec4<u32>(4294967295u, var_1.a.e.x ^ 58308u, arg_1, ~11416u)));
    var var_3 = 1687f;
    let var_4 = Struct_2(Struct_1(var_0.a, ~var_1.c.b, _wgslsmith_add_i32(min(firstLeadingBit(var_0.c), ~(-22218i)), select(-u_input.a.x, var_1.a.c, !var_1.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(var_1.a.d)))), ~(~(~vec3<u32>(var_1.c.b, 58228u, var_2.x)))), var_1.b, var_1.a);
    return 0u;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3.c;
    global1 = array<vec3<i32>, 17>();
    global1 = array<vec3<i32>, 17>();
    global0 = array<vec2<i32>, 9>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(1u), ~(~(~8640u)), arg_0) | min(38926u, 0u), 9u)];
    return Struct_1(arg_3.d.x, _wgslsmith_mod_u32(arg_3.a, select(arg_3.a, _wgslsmith_mod_u32(arg_0, arg_0), true)), 57757i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f)), _wgslsmith_f_op_f32(f32(-1f) * -838f)), ~(~(~(vec3<u32>(8885u, arg_0, 68969u) & vec3<u32>(1u, arg_3.a, 23414u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(4294967295u, 0u), 4294967295u, func_1(vec2<u32>(62092u, 11747u), 48453u), 1u), max(vec4<u32>(~4450u, 1u, 4294967295u, ~27267u), vec4<u32>(68392u, ~62587u, reverseBits(0u), 1u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-766f, 837f, -1272f, 304f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, 1000f, -488f, 193f))))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), Struct_3(~1u, any(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)) | (1i <= u_input.a.x), select(vec3<bool>(true, func_2(vec2<u32>(20385u, 1u)).c.a, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    global0 = array<vec2<i32>, 9>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_div_f32(-153f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(798f, var_0.d, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f + 859f))) + vec3<f32>(748f, -403f, _wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(true, true), Struct_2(Struct_1(var_0.a, 42516u, 23089i, -775f, vec3<u32>(51847u, 2765u, var_0.e.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(604f, -1308f), vec2<f32>(-3199f, 745f), var_0.a)), func_2(var_0.e.xx).c), Struct_2(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1013f)), Struct_1(true, var_0.b, var_0.c, var_0.d, vec3<u32>(1u, var_0.b, var_0.e.x))))).x));
    global1 = array<vec3<i32>, 17>();
    let var_2 = Struct_2(var_0, var_1.xy, var_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-901f, _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x)), var_0.d)) + vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(func_5(var_2.a.e.x, vec4<f32>(-427f, var_1.x, 768f, 208f), vec4<bool>(true, false, var_2.a.a, var_0.a), Struct_3(1u, false, var_2.c.a, vec3<bool>(true, var_2.a.a, var_0.a))).d, -1092f))), 2322f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1509f)) - var_0.d)));
    let var_4 = ((firstTrailingBit(~u_input.d.x) & 1089i) >= (i32(-1i) * -17888i)) | var_0.a;
    let var_5 = ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d, reverseBits(u_input.b), abs(vec4<i32>(var_2.c.c, 1i, var_2.a.c, -1i))), u_input.b), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.c, 0i, 1042i, var_0.c), u_input.b), u_input.b), -firstTrailingBit(vec4<i32>(16408i, 1i, var_0.c, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 1000f, var_3.x) + var_3.zzz) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -580f, 736f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -651f, -415f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(var_3.wyw))))))), var_0.e.xx, var_1.x, var_5.x);
}

