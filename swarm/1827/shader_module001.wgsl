struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(-13823i, 0i), vec2<i32>(-9046i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-24964i, 35957i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(41953i, 50266i), vec2<i32>(0i, 0i), vec2<i32>(0i, -32945i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, -23831i), vec2<i32>(i32(-2147483648), 9697i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> u32 {
    global1 = array<vec2<i32>, 12>();
    global0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(global0.x, 2147483647i ^ u_input.b, u_input.b, u_input.c), vec4<i32>(u_input.d ^ _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global0.xxx, vec3<i32>(global0.x, 0i, u_input.c)), vec3<i32>(-1i, global0.x, 2147483647i)), reverseBits(u_input.d), -global0.x, -u_input.d));
    var var_0 = 19431u;
    global1 = array<vec2<i32>, 12>();
    global1 = array<vec2<i32>, 12>();
    return ~(~(~(~_wgslsmith_sub_u32(u_input.a, u_input.a))));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global1 = array<vec2<i32>, 12>();
    var var_0 = u_input.b << (0u % 32u);
    let var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.a, ~(~u_input.a)), 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(273f, 1199f, 1482f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(389f, 1062f, 397f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1966f, 1360f)), _wgslsmith_div_f32(-677f, _wgslsmith_f_op_f32(sign(640f))), _wgslsmith_f_op_f32(f32(-1f) * -1421f))), false);
    global1 = array<vec2<i32>, 12>();
    global1 = array<vec2<i32>, 12>();
    return vec4<u32>(firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 1u), vec2<u32>(u_input.a, 34740u))) >> (~abs(~arg_0.a) % 32u), 35987u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, arg_0.a) >> (vec3<u32>(77145u, var_1.a, var_1.a) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 4294967295u, var_1.a)) ^ (~var_1.a << (1u % 32u))), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(15874u, 4294967295u, 21214u, 59120u), vec4<u32>(arg_0.a, 1u, 24728u, 56384u)) << (10918u % 32u)));
}

fn func_2() -> Struct_2 {
    global0 = vec4<i32>(~_wgslsmith_mod_i32(u_input.d, abs(_wgslsmith_clamp_i32(-285i, 2147483647i, u_input.c))), abs(_wgslsmith_div_i32(-25152i, u_input.c)), ~41354i, global0.x);
    let var_0 = _wgslsmith_mult_vec4_u32(~func_3(Struct_2(27641u)), vec4<u32>(1u, 1u, max(77934u | u_input.a, 59752u) & reverseBits(~u_input.a), countOneBits(min(~u_input.a, select(u_input.a, 1u, true)))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(256f, 638f, 319f) + vec3<f32>(1470f, -1079f, -1227f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1030f, -404f, 847f) - vec3<f32>(1808f, 104f, -926f)), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1243f, 1132f, 1161f))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1230f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -564f))), _wgslsmith_f_op_f32(sign(-600f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1794f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(604f + 647f)))));
    let var_2 = var_1;
    global0 = vec4<i32>(-1i) * -(reverseBits(firstTrailingBit(vec4<i32>(0i, -14658i, global0.x, u_input.c))) >> (vec4<u32>(u_input.a, 51479u << (1u % 32u), 1u << (u_input.a % 32u), u_input.a << (var_0.x % 32u)) % vec4<u32>(32u)));
    return Struct_2(29738u << (reverseBits(~u_input.a) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_1;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(203f, 1000f, -1000f) * vec3<f32>(-332f, 1000f, -932f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, 2977f, 425f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1271f + 1494f), -1542f)), _wgslsmith_div_f32(-505f, _wgslsmith_f_op_f32(floor(1089f))))) * 1f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-845f, 1119f) - vec2<f32>(1396f, -505f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2231f, 529f) - vec2<f32>(-381f, -1127f)))))));
    var var_2 = Struct_1(firstTrailingBit(16591u), vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_div_f32(479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, var_1.b), _wgslsmith_f_op_f32(abs(326f))))), u_input.a != ((u_input.a >> ((68284u << (arg_1.a % 32u)) % 32u)) << (~arg_1.a % 32u)));
    let var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(abs(vec4<i32>(global0.x, global0.x, global0.x, 0i))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.d, 1i), vec4<i32>(u_input.d, -1i, global0.x, -18016i)), reverseBits(vec4<i32>(global0.x, global0.x, global0.x, global0.x))) << (~vec4<u32>(4294967295u, 1u, 1u, 35756u) % vec4<u32>(32u))), vec4<i32>(u_input.d, -_wgslsmith_clamp_i32(abs(global0.x), 1i, u_input.b), abs(~(~u_input.d)), u_input.b & -(~22344i)));
    var var_4 = any(vec2<bool>(var_2.c, !(!all(vec4<bool>(var_2.c, false, var_2.c, var_2.c)))));
    return Struct_3(vec3<f32>(936f, 199f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * var_1.b)), -602f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f - -3145f) * 1468f))), var_2.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~func_1()), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-602f, -1454f, -436f)))) * vec3<f32>(_wgslsmith_f_op_f32(-762f + -952f), -470f, _wgslsmith_f_op_f32(f32(-1f) * -1550f))))), false);
    let var_1 = func_4(~4294967295u, func_2());
    global0 = select(select(_wgslsmith_mod_vec4_i32(-vec4<i32>(-53889i, 2147483647i, -18228i, -2147483647i) & (vec4<i32>(-30630i, u_input.d, u_input.d, 29639i) << (vec4<u32>(u_input.a, 1u, var_0.a, u_input.a) % vec4<u32>(32u))), -(vec4<i32>(global0.x, u_input.b, -1i, -4442i) >> (vec4<u32>(4294967295u, 29059u, var_0.a, 0u) % vec4<u32>(32u)))), abs(vec4<i32>(_wgslsmith_mod_i32(global0.x, u_input.c), abs(u_input.c), global0.x, global0.x)), vec4<bool>(var_0.c, var_0.c, all(select(vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, true))), var_0.c)), reverseBits(-_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(32441i, 1i, -10414i, 45918i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 19390i, -25946i, u_input.d), vec4<i32>(-28002i, global0.x, -17457i, 2147483647i)))), !select(!vec4<bool>(var_0.c, var_0.c, false, false), vec4<bool>(all(vec4<bool>(var_0.c, var_0.c, false, true)), !var_0.c, !var_0.c, var_0.c), !vec4<bool>(true, var_0.c, true, var_0.c)));
    global0 = vec4<i32>(~max(global0.x, reverseBits(-2147483647i)) ^ select(-24544i, global0.x, -930f <= _wgslsmith_f_op_f32(-806f + var_1.b)), u_input.c, reverseBits(reverseBits(4398i)), 2147483647i);
    var var_2 = ~reverseBits(~abs(vec2<u32>(var_0.a, var_0.a))) & ~(~vec2<u32>(u_input.a, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.c.x, var_1.a.x, var_0.b.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-738f, var_1.a.x, var_1.c.x, var_0.b.x) * vec4<f32>(1835f, -1801f, var_0.b.x, -867f)))))), 4294967295u, ~(~(i32(-1i) * -1i)));
}

