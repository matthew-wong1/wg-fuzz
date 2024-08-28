struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(i32(-2147483648), vec4<u32>(1u, 0u, 41792u, 4294967295u), false), Struct_1(0i, vec4<u32>(0u, 33610u, 0u, 35424u), true), Struct_1(51861i, vec4<u32>(1u, 43270u, 57862u, 4294967295u), false), Struct_1(2147483647i, vec4<u32>(72642u, 15542u, 7101u, 19355u), true), Struct_1(-13168i, vec4<u32>(130377u, 81529u, 1u, 1u), false), Struct_1(-1i, vec4<u32>(12583u, 4294967295u, 20761u, 1u), false), Struct_1(i32(-2147483648), vec4<u32>(0u, 0u, 11317u, 4294967295u), true), Struct_1(1i, vec4<u32>(29762u, 1u, 0u, 0u), true), Struct_1(-35615i, vec4<u32>(23739u, 18856u, 21486u, 23845u), true), Struct_1(2147483647i, vec4<u32>(4294967295u, 1u, 67281u, 1u), false), Struct_1(-19201i, vec4<u32>(1u, 1u, 1u, 4294967295u), true), Struct_1(-1i, vec4<u32>(32252u, 4294967295u, 22462u, 127311u), false), Struct_1(1i, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), true), Struct_1(2147483647i, vec4<u32>(12555u, 4294967295u, 22571u, 0u), false), Struct_1(12464i, vec4<u32>(33364u, 4294967295u, 43474u, 18141u), true), Struct_1(-5703i, vec4<u32>(0u, 9005u, 37431u, 23481u), true), Struct_1(-39646i, vec4<u32>(42434u, 14752u, 1u, 4294967295u), true), Struct_1(63044i, vec4<u32>(0u, 3891u, 66175u, 23892u), false), Struct_1(57476i, vec4<u32>(35995u, 4294967295u, 4294967295u, 0u), true), Struct_1(2248i, vec4<u32>(37693u, 18738u, 0u, 20624u), true), Struct_1(i32(-2147483648), vec4<u32>(1u, 1u, 3698u, 4294967295u), true), Struct_1(0i, vec4<u32>(4294967295u, 0u, 11930u, 0u), false), Struct_1(-8780i, vec4<u32>(58161u, 71910u, 56105u, 24427u), false), Struct_1(-15898i, vec4<u32>(13190u, 41256u, 0u, 5766u), true), Struct_1(-13188i, vec4<u32>(4294967295u, 22914u, 1u, 5190u), false), Struct_1(9609i, vec4<u32>(35486u, 4294967295u, 2657u, 19735u), true), Struct_1(2147483647i, vec4<u32>(54802u, 0u, 19971u, 78261u), false), Struct_1(725i, vec4<u32>(4294967295u, 68157u, 1u, 25781u), false), Struct_1(i32(-2147483648), vec4<u32>(139074u, 35388u, 29032u, 63123u), false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(958f + -709f)), -949f, -1383f), arg_1.a.a.xxz)));
    global0 = arg_3.x;
    global0 = _wgslsmith_f_op_f32(-1f);
    global0 = 334f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-868f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(var_0.x)))), 361f))));
    return arg_1.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(-655f - -1978f))), Struct_1(52073i, firstTrailingBit(arg_0.b.b), any(arg_1))), func_3(arg_0.b, Struct_4(arg_0, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a)), _wgslsmith_mod_vec3_u32(arg_0.b.b.wyy, vec3<u32>(u_input.a, 2542u, arg_0.b.b.x))), -(~vec2<i32>(arg_0.b.a, -24094i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-342f, 496f, arg_0.a.x, arg_0.a.x), vec4<f32>(-1000f, arg_0.a.x, -1471f, arg_0.a.x)) - _wgslsmith_f_op_vec4_f32(-arg_0.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, arg_0.a.x, -755f, -1119f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, arg_0.a.x, arg_0.a.x, 1036f)), false))))), arg_0.a, max(abs(~firstTrailingBit(vec3<u32>(arg_0.b.b.x, u_input.a, u_input.a))), ~(~(vec3<u32>(27879u, 1u, 0u) & arg_0.b.b.xwz))));
    let var_1 = vec2<i32>(var_0.a.b.a, 1i);
    var var_2 = _wgslsmith_dot_vec4_i32(~vec4<i32>(-25477i, 19243i, -2772i, _wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, arg_0.b.a), -2147483647i)), vec4<i32>(28196i, 23433i, 1i, 2147483647i));
    let var_3 = Struct_2(56594u, ~countOneBits(select(_wgslsmith_add_vec4_u32(var_0.a.b.b, var_0.a.b.b), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, arg_0.b.b.x, 2842u), vec4<u32>(u_input.a, 46934u, 44391u, u_input.a)), arg_1)));
    let var_4 = vec3<i32>(~var_1.x, 1i, 2147483647i);
    return var_0.b;
}

fn func_1() -> f32 {
    var var_0 = countOneBits(1i);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -191f);
    let var_1 = Struct_5(false != !select(true, true, select(false, false, true)), func_2(Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(-882f, -1085f, 411f, 796f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2338f, -2310f, -857f, -872f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 12107u, 63834u), abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), 29u)]), !vec4<bool>(true, any(vec3<bool>(true, true, false)), true, true)), _wgslsmith_mult_vec2_i32(firstTrailingBit(select(abs(vec2<i32>(0i, 0i)), abs(vec2<i32>(475i, 1i)), any(vec2<bool>(true, false)))), vec2<i32>(~_wgslsmith_clamp_i32(0i, -6648i, -1i), firstTrailingBit(~2147483647i))));
    global1 = array<Struct_1, 29>();
    var var_2 = vec2<f32>(-591f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -359f))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(reverseBits(_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(34269u, u_input.a))) ^ _wgslsmith_add_u32(_wgslsmith_add_u32(~15836u, abs(u_input.a)), u_input.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 1683f));
    let var_1 = ~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 64671u, var_0, var_0), vec4<u32>(u_input.a, 25420u, u_input.a, 0u))), ~(~(~vec2<u32>(28259u, 0u))));
    global0 = 257f;
    var var_2 = Struct_2(reverseBits(1u), ~(~(~(vec4<u32>(var_0, 13394u, 1u, 5881u) >> (vec4<u32>(1u, 1u, 13895u, 0u) % vec4<u32>(32u))))));
    var var_3 = abs(-2147483647i);
    var_2 = Struct_2(var_0, firstLeadingBit(select(max(~var_2.b, min(vec4<u32>(var_1.x, var_1.x, var_1.x, var_2.a), vec4<u32>(4273u, 43292u, 0u, var_2.a))), firstLeadingBit(firstLeadingBit(var_2.b)), any(func_2(Struct_3(vec4<f32>(1009f, 384f, 696f, 1089f), Struct_1(-32598i, var_2.b, false)), vec4<bool>(true, true, false, true))))));
    global0 = 505f;
    let var_4 = Struct_2(~countOneBits(var_2.b.x) | 1u, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1029f, 112f, 804f, 1165f), vec4<f32>(-395f, 1498f, -595f, 533f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(418f, 145f, -2786f, -1042f) - vec4<f32>(668f, 1038f, 1210f, 951f))))), vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(var_0, 1u)) << (93644u % 32u), max(13433u, ~(~49965u)), ~_wgslsmith_div_u32(u_input.a << (1812u % 32u), ~25497u), var_2.a), ~countOneBits(vec3<i32>(i32(-1i) * -2147483647i, select(-1i, 2147483647i, false), countOneBits(1i))), vec3<i32>(_wgslsmith_mod_i32(25891i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 23288i), vec2<i32>(0i, 12893i) >> (vec2<u32>(var_4.a, 4294967295u) % vec2<u32>(32u)))), min(~(-47633i), _wgslsmith_mult_i32(max(-26320i, 57013i), 18503i)), 1i), ~(~_wgslsmith_dot_vec3_u32(firstTrailingBit(var_4.b.yzx), vec3<u32>(var_2.b.x, 0u, u_input.a))));
}

