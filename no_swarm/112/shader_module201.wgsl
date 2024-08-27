struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: array<Struct_4, 19>;

var<private> global3: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(0i, Struct_2(true), 0i, Struct_2(true)), Struct_5(-25425i, Struct_2(true), -8888i, Struct_2(false)), Struct_5(4174i, Struct_2(false), i32(-2147483648), Struct_2(false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32) -> vec2<bool> {
    global0 = false;
    global2 = array<Struct_4, 19>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) <= arg_0;
    global1 = true;
    let var_0 = min(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 59732u, 58474u, 57521u), vec4<u32>(1u, 1u, 1u, 1u)) << (0u % 32u), ~(abs(1u) >> (1u % 32u))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(22906u, 1u, 6071u, 19278u), _wgslsmith_add_vec4_u32(vec4<u32>(43106u, 15116u, 0u, 58037u), vec4<u32>(23607u, 0u, 85721u, 94314u))) & ~(~4294967295u), 4294967295u));
    return vec2<bool>((1u == ~_wgslsmith_mult_u32(var_0, var_0)) || any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true);
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = ~(~vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(1u, 14659u)), 1u));
    var var_1 = true;
    var var_2 = select(select(vec3<i32>(_wgslsmith_div_i32(-1i, arg_0), max(~arg_0, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, arg_1)), 1i), min(_wgslsmith_add_vec3_i32(min(vec3<i32>(11374i, 2147483647i, 17085i), vec3<i32>(58685i, arg_0, -49085i)), abs(vec3<i32>(4436i, -36563i, u_input.a.x))), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 0i, 37619i)), true), -abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(-10338i, 1i, -27016i), firstTrailingBit(vec3<i32>(-28975i, -1586i, arg_1)))), !vec3<bool>(select(false, all(vec2<bool>(false, true)), true), true, select(true, true, true)));
    let var_3 = _wgslsmith_mod_i32((arg_1 & u_input.a.x) << (var_0.x % 32u), -12731i);
    var var_4 = vec3<f32>(-100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2072f - -724f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f))))), _wgslsmith_f_op_f32(f32(-1f) * -485f));
    return !(!func_1(-823f).x);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<i32> {
    global2 = array<Struct_4, 19>();
    let var_0 = arg_2.c.x;
    let var_1 = Struct_3(countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.c, arg_2.a), arg_2.c.x, arg_2.c.x, abs(1u)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(arg_2.c.x, 37008u, 20053u)), ~4294967295u, arg_2.c.x, select(var_0, arg_2.a.x, false)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - 496f), _wgslsmith_mult_i32(10511i, u_input.a.x), Struct_2(func_3(_wgslsmith_dot_vec2_i32(-u_input.a, u_input.a), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
    let var_2 = arg_3.x;
    return countOneBits(vec3<i32>(reverseBits(1i), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 35261i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, 10028i, var_1.c, 23712i))), firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, var_1.c))));
}

fn func_4(arg_0: vec3<i32>) -> Struct_3 {
    global1 = true;
    global0 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true)))));
    var var_0 = true;
    var var_1 = ~firstTrailingBit(arg_0.x);
    let var_2 = Struct_1(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 42316u), vec2<u32>(19744u, 0u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39118u), vec2<u32>(0u, 4294967295u)), abs(1u)), max(1u, _wgslsmith_clamp_u32(4414u, 10946u, 105534u)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f * -212f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-830f)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(-901f)))), func_1(_wgslsmith_f_op_f32(383f + -874f)).x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-520f, _wgslsmith_f_op_f32(-1075f - 144f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(782f, _wgslsmith_f_op_f32(-982f - -429f))), _wgslsmith_f_op_f32(max(-102f, -1154f))))), select(vec3<u32>(~(~89717u), 5031u, 1u), min(~min(vec3<u32>(1u, 73370u, 4294967295u), vec3<u32>(1u, 1u, 5643u)), ~abs(vec3<u32>(11614u, 1u, 4294967295u))), vec3<bool>(false, false | all(vec4<bool>(false, true, true, false)), true)));
    return Struct_3(countOneBits(vec4<u32>(~0u, ~1u, ~25903u >> (0u % 32u), ~(~var_2.c.x))), 1118f, -2147483647i, Struct_2(false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(-select(u_input.a.x, u_input.a.x, true) <= ~u_input.a.x), true, all(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.a.x < _wgslsmith_mod_i32(u_input.a.x, -31767i))), true);
    global0 = true;
    var var_1 = func_4(~_wgslsmith_div_vec3_i32(-func_2(vec3<bool>(var_0.x, true, false), var_0.x, Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec4<f32>(308f, -510f, 765f, 538f), vec3<u32>(14836u, 4294967295u, 3779u)), var_0.xx), ~(-vec3<i32>(-2147483647i, u_input.a.x, 0i))));
    var var_2 = var_0.yw;
    var var_3 = !vec3<bool>(true, all(vec3<bool>(true, true, true)), var_0.x);
    let var_4 = -121f;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(firstTrailingBit(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, 0i, 1i)), vec3<i32>(u_input.a.x, var_1.c, var_1.c)))).a.wy, -vec2<i32>(0i, var_1.c & (var_1.c >> (var_1.a.x % 32u))));
}

