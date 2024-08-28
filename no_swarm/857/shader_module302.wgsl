struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(7389i, Struct_1(2147483647i)), Struct_4(44374i, Struct_1(2147483647i)), Struct_4(3680i, Struct_1(32393i)), Struct_4(-10450i, Struct_1(-16640i)), Struct_4(i32(-2147483648), Struct_1(27857i)), Struct_4(0i, Struct_1(2147483647i)), Struct_4(47966i, Struct_1(15724i)), Struct_4(57987i, Struct_1(-23985i)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> bool {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_div_f32(2198f, 867f), true)) != 1271f;
    let var_0 = arg_0;
    let var_1 = global1[_wgslsmith_index_u32((~(1u | _wgslsmith_mod_u32(6010u, u_input.e.x)) ^ u_input.a) >> (~_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(1u, u_input.e.x, 9982u)), ~vec3<u32>(4294967295u, u_input.c, u_input.a) << (~vec3<u32>(28320u, 1u, u_input.b.x) % vec3<u32>(32u))) % 32u), 8u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1105f * _wgslsmith_div_f32(230f, 228f)))), 713f, !(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(6559u, 1u, 9134u)) > firstTrailingBit(27633u)))));
    global1 = array<Struct_4, 8>();
    return !all(!(!vec4<bool>(arg_0, var_0, var_0, var_0))) || false;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    global0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1554f)) * _wgslsmith_f_op_f32(abs(890f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))) < _wgslsmith_f_op_f32(ceil(1465f)));
    var var_0 = Struct_3(select(!select(arg_0.d.c, vec4<bool>(false, arg_0.d.c.x, arg_0.c, true), !vec4<bool>(false, arg_2, arg_0.a.x, true)), !(!select(arg_0.a, arg_0.a, arg_0.d.c)), arg_0.d.c), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.d, _wgslsmith_mod_i32(-2147483647i, 2147483647i), arg_0.b.x) | firstLeadingBit(vec3<i32>(19206i, arg_0.d.b.a, u_input.d) ^ vec3<i32>(arg_0.b.x, u_input.d, u_input.d)), _wgslsmith_sub_vec3_i32(~(~arg_0.b), ~vec3<i32>(u_input.d, 19331i, -2147483647i))), arg_2, arg_0.d, arg_0.d.e);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.d, ~1752u, 1u), ~vec3<u32>(arg_0.d.d, var_0.d.d, arg_3.x)), 20681u), 2810u, ~(~_wgslsmith_clamp_u32(abs(31107u), 17467u, _wgslsmith_add_u32(u_input.c, arg_0.d.d))));
    let var_2 = var_0.b.x;
    var var_3 = firstTrailingBit(firstLeadingBit(1i));
    return -22435i;
}

fn func_3() -> bool {
    var var_0 = abs(u_input.d);
    global0 = true;
    var var_1 = Struct_1(-2147483647i);
    var var_2 = ~(vec3<i32>(~(0i & var_1.a), u_input.d & -27487i, 2147483647i) >> (vec3<u32>(countOneBits(35407u), 0u, firstLeadingBit(u_input.c)) % vec3<u32>(32u)));
    var var_3 = 1662f;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> vec3<bool> {
    var var_0 = ~(~select(max(vec3<u32>(51u, u_input.c, u_input.e.x), vec3<u32>(4294967295u, u_input.e.x, u_input.b.x)), ~vec3<u32>(u_input.e.x, 4294967295u, 34271u), vec3<bool>(arg_0.x, arg_1, false)) | _wgslsmith_mult_vec3_u32(abs(min(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.a, 19438u, 1u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.e.x, 75586u), vec3<u32>(4294967295u, 16462u, 95448u), vec3<u32>(u_input.b.x, u_input.a, u_input.e.x))));
    let var_1 = arg_0.yx;
    global1 = array<Struct_4, 8>();
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(u_input.d, 0i) << (firstLeadingBit(vec2<u32>(1u, var_0.x) | u_input.b) % vec2<u32>(32u))) > _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d ^ abs(u_input.d), -1i), reverseBits(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-18648i, 0i, -42332i, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, -2147483647i)), 46826i, !arg_0.x)));
    global1 = array<Struct_4, 8>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(_wgslsmith_div_i32(u_input.d, u_input.d << (_wgslsmith_add_u32(1u, u_input.b.x) % 32u)) ^ _wgslsmith_sub_i32(~func_1(Struct_3(vec4<bool>(false, false, true, false), vec3<i32>(u_input.d, u_input.d, 0i), true, Struct_2(vec3<f32>(-560f, -1468f, 1528f), Struct_1(-35084i), vec4<bool>(false, false, true, false), u_input.e.x, vec4<f32>(-449f, -191f, 903f, -1961f)), vec4<f32>(-1186f, 225f, 1004f, -527f)), 1855f, true, vec3<u32>(0u, 4294967295u, 15497u)), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(20423i, -2147483647i), vec2<i32>(0i, 54747i)))));
    global0 = all(func_4(vec3<bool>(true, false, func_3()), !all(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_3(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))), true), ~firstTrailingBit(min(~vec3<i32>(u_input.d, u_input.d, u_input.d), -vec3<i32>(u_input.d, u_input.d, u_input.d))), false, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(703f, 777f, -1103f))) - vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(floor(-231f)))), Struct_1(firstTrailingBit(u_input.d) ^ 44223i), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.e, u_input.e), u_input.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, 495f, -1178f, -1541f) * vec4<f32>(525f, -1374f, 462f, -1315f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-402f, 181f, 280f, 142f), vec4<f32>(-2706f, 597f, 470f, 962f))))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(426f, -2950f, -872f, -1000f)))))))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.d), 0i, ~countOneBits(-2147483647i), 21428i), vec4<i32>(_wgslsmith_mod_i32(u_input.d, -44885i) & u_input.d, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_1.b, vec3<i32>(var_1.b.x, -6360i, var_1.b.x)), var_1.b), _wgslsmith_clamp_i32(i32(-1i) * -2872i, _wgslsmith_div_i32(1i, -1i), -u_input.d)), ~(~(-2147483647i)), 25590i));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1975f);
    var_3 = _wgslsmith_f_op_f32(-885f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.e.x + -610f), _wgslsmith_f_op_f32(trunc(var_1.e.x)))))));
    let var_4 = vec3<bool>(var_1.a.x, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(var_2, var_1.d.b.a & var_1.d.b.a, u_input.d, ~var_2)) << (~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 0u, u_input.e.x, var_1.d.d)), firstTrailingBit(vec4<u32>(0u, u_input.c, u_input.a, 1u))) % vec4<u32>(32u)));
}

