struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = select(select(vec4<bool>(all(select(vec3<bool>(arg_0, arg_1.b.a.a, true), vec3<bool>(true, true, arg_0), vec3<bool>(true, true, arg_2))), true, true, false), !vec4<bool>(false, arg_2, false, u_input.a < 55708i), !select(vec4<bool>(arg_1.b.a.a, arg_2, false, arg_0), select(vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_1.e.a, false, arg_1.e.a, arg_1.c.d.a), vec4<bool>(false, true, false, arg_0)), select(vec4<bool>(arg_1.a, false, arg_1.c.d.a, true), vec4<bool>(false, arg_1.c.d.a, true, arg_2), false))), select(vec4<bool>(true, arg_1.b.a.a, !arg_2, false), select(vec4<bool>(true, any(vec2<bool>(arg_0, arg_1.b.d.a)), false != arg_2, -708f >= arg_1.c.a.b), select(select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(true, arg_1.a, arg_0, arg_2), arg_0), select(vec4<bool>(true, arg_2, arg_1.e.a, true), vec4<bool>(false, true, true, arg_2), arg_0), vec4<bool>(arg_0, true, false, false)), arg_2), all(select(!vec3<bool>(arg_0, arg_1.a, arg_0), vec3<bool>(arg_2, arg_1.e.a, arg_1.a), select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2), true)))), (all(vec2<bool>(arg_0, arg_2)) & ((arg_1.b.e.x | 34442u) <= arg_1.e.c.x)) == false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.b.b)), _wgslsmith_f_op_f32(exp2(arg_1.b.b)), _wgslsmith_f_op_f32(arg_1.c.a.b - arg_1.e.b), _wgslsmith_f_op_f32(round(1520f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.b, -1241f, arg_1.c.d.b, 1252f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.b, arg_1.b.d.b, -1369f, 1982f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.d.b, arg_1.c.b, -678f, 1224f))))))));
    global1 = arg_1.c.e.x;
    let var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(41626i, 10329i), vec2<i32>(1i, 14702i))), _wgslsmith_add_vec2_i32(vec2<i32>(38307i, 0i) >> (arg_1.e.c.ww % vec2<u32>(32u)), vec2<i32>(-2147483647i, 0i))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-45941i, u_input.a)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-61443i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(2147483647i, -16699i)), vec2<i32>(-3537i, -1i)), vec2<i32>(select(0i, u_input.a, false), 1i)), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, u_input.a))), -max(countOneBits(~vec2<i32>(0i, u_input.a)), _wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 62106i)), vec2<i32>(u_input.a, -19019i))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.e.b), arg_1.b.b, -248f, 1000f)), vec4<f32>(-336f, arg_1.c.b, arg_1.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), -1197f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, arg_1.c.b))), -479f, 789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c.d.b)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -296f, 337f) + vec4<f32>(-266f, -124f, -718f, arg_1.b.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.b, arg_1.c.b, 140f, -991f))))))));
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: i32) -> vec2<bool> {
    let var_0 = Struct_3(!(!(arg_1.x & arg_0)), Struct_2(Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1338f - 935f) * _wgslsmith_f_op_f32(min(2030f, 1000f))), countOneBits(vec4<u32>(0u, 53903u, 8219u, 17986u))), _wgslsmith_f_op_f32(ceil(-805f)), _wgslsmith_div_u32(4294967295u, abs(select(63714u, 0u, false))), Struct_1(!(!arg_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(383f, -334f), _wgslsmith_f_op_f32(f32(-1f) * -311f))), vec4<u32>(1u, 1u, 1u, 1u)), firstTrailingBit(abs(vec3<u32>(0u, 4294967295u, 0u)))), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1292f), _wgslsmith_f_op_f32(f32(-1f) * -765f), true)), vec4<u32>(34896u, 1u, 0u, ~119010u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, Struct_3(arg_0, Struct_2(Struct_1(arg_1.x, 552f, vec4<u32>(4294967295u, 56881u, 4294967295u, 0u)), -2667f, 15187u, Struct_1(arg_1.x, -1549f, vec4<u32>(0u, 47994u, 18845u, 45181u)), vec3<u32>(4294967295u, 4184u, 4294967295u)), Struct_2(Struct_1(false, 1335f, vec4<u32>(1u, 4294967295u, 0u, 1u)), 530f, 10491u, Struct_1(arg_1.x, -1560f, vec4<u32>(61386u, 0u, 4294967295u, 47918u)), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec2<u32>(4716u, 0u), Struct_1(false, -1173f, vec4<u32>(27071u, 1u, 0u, 4294967295u))), arg_0))), 4294967295u, Struct_1(!(!arg_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-222f + -1000f), 1f)), vec4<u32>(reverseBits(34425u), ~5299u, 14774u, 0u)), vec3<u32>(15720u, reverseBits(~46794u), 54967u)), vec2<u32>(1u, max(~firstLeadingBit(32905u), 9423u)), Struct_1(!arg_1.x || !(!arg_0), -232f, vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u)), (18369u << (1u % 32u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(38611u, 4294967295u, 16727u)), ~29618u, 1u)));
    var var_1 = !(!(!select(arg_1, select(arg_1, vec4<bool>(true, arg_0, arg_1.x, false), vec4<bool>(true, true, true, arg_1.x)), false)));
    var var_2 = ~(~max(arg_2 >> (4294967295u % 32u), ~(~u_input.a)));
    var var_3 = arg_1.xy;
    let var_4 = vec3<bool>(true, var_0.b.a.a | true, arg_1.x & !(arg_1.x | any(arg_1.wwx)));
    return var_4.zy;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = ~abs(arg_1.x);
    let var_1 = Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-105f)) + _wgslsmith_div_f32(-2412f, 597f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1398f))))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(68713u, 27343u, 4294967295u, 101203u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), ~vec4<u32>(4294967295u, 20768u, 62630u, arg_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 19057u, arg_1.x), vec4<u32>(arg_1.x, 1u, arg_1.x, arg_1.x)) | vec4<u32>(arg_1.x, 1u, arg_1.x, 4278u)));
    var_0 = ~(~21357u | (~var_1.c.x ^ var_1.c.x)) & abs(arg_1.x);
    global0 = _wgslsmith_dot_vec3_i32(abs(-(~vec3<i32>(u_input.a, u_input.a, u_input.a))), ~(~select(vec3<i32>(29884i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 17762i), vec3<bool>(var_1.a, true, true)) >> (_wgslsmith_mod_vec3_u32(~var_1.c.zzx, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, 62030u, var_1.c.x), vec3<u32>(var_1.c.x, var_1.c.x, arg_1.x))) % vec3<u32>(32u))));
    var var_2 = Struct_3(!(arg_0 | all(vec2<bool>(true, true))), Struct_2(var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.b)))))), 4294967295u & (~4294967295u | select(arg_1.x, 0u, var_1.a)), Struct_1(true, _wgslsmith_f_op_f32(exp2(var_1.b)), var_1.c), ~reverseBits(~vec3<u32>(1u, arg_1.x, var_1.c.x))), Struct_2(var_1, _wgslsmith_f_op_f32(round(-562f)), 4294967295u, var_1, abs(~vec3<u32>(0u, 4294967295u, arg_1.x)) & vec3<u32>(arg_1.x, var_1.c.x, _wgslsmith_mult_u32(var_1.c.x, arg_1.x))), vec2<u32>(countOneBits(24320u << (var_1.c.x % 32u)), 31535u), Struct_1(!((56824u ^ arg_1.x) <= var_1.c.x), var_1.b, var_1.c));
    return var_2.c;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global0 = select(-(~1i), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, -17607i), vec4<i32>(-1i, 0i, 11493i, 2147483647i)), vec4<i32>(1i, u_input.a, -1i, u_input.a)), true) | 86472i;
    var var_0 = ~46958i;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -475f), arg_0.a.b, true));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(~vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(-745i, u_input.a, 0i, 32347i), !vec4<bool>(arg_0.a.a, arg_0.d.a, true, true)), -(~vec4<i32>(-2147483647i, u_input.a, -39080i, u_input.a))) & _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 41869i), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)) | ~vec4<i32>(-60011i, -1i, -2147483647i, u_input.a), ~vec4<i32>(u_input.a, 21347i, 1i, u_input.a)), vec4<i32>(38327i, ~u_input.a, ~(~u_input.a), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a | 1i, u_input.a), u_input.a)));
    let var_3 = true;
    return Struct_3(false, func_4(arg_0.d.a, arg_0.d.c.zx >> (countOneBits(~arg_0.d.c.zw) % vec2<u32>(32u))), arg_0, ~vec2<u32>(arg_0.c ^ arg_0.e.x, ~arg_0.a.c.x << (4829u % 32u)), arg_0.a);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    var var_0 = func_5(func_4(!(!arg_2) | !arg_0.c.d.a, _wgslsmith_mult_vec2_u32(arg_0.b.e.zz, select(arg_0.b.d.c.xz, arg_0.c.e.zy, func_2(true, vec4<bool>(true, arg_2, arg_2, arg_2), 0i)))));
    var_0 = arg_0;
    var var_1 = select(!vec3<bool>(true, false, select(true, var_0.e.b < -373f, arg_0.c.d.a)), select(select(!(!vec3<bool>(var_0.b.d.a, false, true)), vec3<bool>(true, true, true), !arg_2), select(vec3<bool>(all(vec3<bool>(true, arg_2, true)), true, true), !select(vec3<bool>(true, arg_2, arg_0.c.a.a), vec3<bool>(true, arg_2, var_0.a), true), vec3<bool>(true, arg_0.a, true)), arg_0.b.d.a), !(!(!arg_2) && any(vec3<bool>(arg_2, arg_0.c.a.a, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_1.xyy);
    let var_3 = Struct_3(false == !select(true, true, true), Struct_2(var_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1481f, arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x)) - 306f), ~(4294967295u << (_wgslsmith_div_u32(arg_0.d.x, arg_0.e.c.x) % 32u)), func_4(var_1.x, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(32881u, arg_0.c.e.x), var_0.e.c.zz), ~vec2<u32>(var_0.b.e.x, 1u))).d, vec3<u32>(var_0.e.c.x, ~var_0.c.c << (31773u % 32u), ~(~4294967295u))), func_4(select(!(!arg_0.b.d.a), false, true), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.b.e.x, 9343u)) & vec2<u32>(28467u, arg_0.e.c.x), vec2<u32>(arg_0.c.d.c.x, arg_0.b.c) >> (vec2<u32>(90535u, arg_0.d.x) % vec2<u32>(32u)))), ~var_0.d, var_0.b.a);
    return ~var_3.e.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(select(vec4<u32>(66607u, 92887u, 61158u, 1u), vec4<u32>(0u, 0u, 0u, 38723u), vec4<bool>(true, false, false, true)), vec4<u32>(2064u, 14503u, 33877u, 21267u)) | func_1(Struct_3(false, Struct_2(Struct_1(true, 1661f, vec4<u32>(33569u, 69407u, 1u, 4294967295u)), 2421f, 52105u, Struct_1(true, -628f, vec4<u32>(4294967295u, 0u, 4294967295u, 1u)), vec3<u32>(0u, 72844u, 1u)), Struct_2(Struct_1(true, 120f, vec4<u32>(4294967295u, 51818u, 37729u, 0u)), 1141f, 0u, Struct_1(false, 1848f, vec4<u32>(0u, 77105u, 0u, 24174u)), vec3<u32>(0u, 55278u, 26355u)), vec2<u32>(21522u, 1u), Struct_1(true, 1360f, vec4<u32>(9148u, 36679u, 54841u, 4294967295u))), vec4<f32>(139f, -259f, 380f, 229f), false)), ~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 0u), _wgslsmith_div_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_add_u32(4407u, 15661u), max(43752u, 4294967295u)))));
    global0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(~(-(vec2<i32>(u_input.a, -11692i) << (vec2<u32>(16014u, 29223u) % vec2<u32>(32u))))), vec2<i32>(max(select(u_input.a, u_input.a, true), 1i), u_input.a));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) - _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = func_4(func_5(func_5(Struct_2(func_5(Struct_2(Struct_1(false, -260f, vec4<u32>(3054u, 4294967295u, 37363u, 0u)), 1000f, 46020u, Struct_1(true, 960f, vec4<u32>(0u, 1u, 1u, 4294967295u)), vec3<u32>(3539u, 4294967295u, 28498u))).e, -559f, _wgslsmith_mult_u32(1u, 3498u), Struct_1(true, var_1, vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), ~vec3<u32>(4294967295u, 14908u, 7607u))).c).a, ~((func_4(true, vec2<u32>(0u, 1u)).d.c.ww << (~vec2<u32>(20541u, 44280u) % vec2<u32>(32u))) >> (vec2<u32>(58103u, ~1u) % vec2<u32>(32u))));
    global1 = ~((0u << (var_2.e.x % 32u)) >> (~firstLeadingBit(var_2.a.c.x) % 32u)) ^ 44071u;
    var var_3 = !(!(!vec4<bool>(true, var_2.b < var_1, var_2.a.a, var_2.a.a == var_2.d.a)));
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_2.a.c.x), vec2<u32>(64251u, var_2.c)), ~func_5(Struct_2(var_2.a, -1015f, var_2.d.c.x, Struct_1(var_2.a.a, 754f, vec4<u32>(0u, var_2.d.c.x, 1u, var_2.c)), var_2.e)).c.e.xx), var_2.e.x) >> (~var_2.c % 32u);
    var_4 = var_2.e.x;
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, 1066f, var_1, 484f) * vec4<f32>(161f, 633f, -1078f, var_2.a.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b, var_2.a.b, 137f, var_1) - vec4<f32>(-2240f, -826f, -407f, var_1)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-405f)), _wgslsmith_f_op_f32(-var_2.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(var_1 * 730f), true)), 1925f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(~(-1i), _wgslsmith_add_i32(u_input.a, u_input.a) << (~1u % 32u)), min(_wgslsmith_mod_i32(u_input.a & -2147483647i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(46099i, -44685i)))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, i32(-1i) * -2147483647i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, -1i) & vec4<i32>(u_input.a, 0i, 16780i, u_input.a)), vec4<i32>(u_input.a, 0i, -min(u_input.a, 0i), u_input.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_5.yyw - vec3<f32>(741f, 2016f, var_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.b, 201f, var_2.a.b) - var_5.ywx) - _wgslsmith_f_op_vec3_f32(-var_5.zxx)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(var_5.www)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_5.x, 799f))))), var_2.d.a)), abs(vec2<u32>(1u & var_2.a.c.x, var_2.d.c.x)) | var_2.a.c.yz, _wgslsmith_dot_vec3_i32(abs(min(vec3<i32>(-24955i, -2147483647i, u_input.a), vec3<i32>(0i, u_input.a, -2671i))) << (vec3<u32>(var_2.e.x, var_2.d.c.x << (0u % 32u), var_2.c) % vec3<u32>(32u)), abs(vec3<i32>(0i, u_input.a, u_input.a) & max(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(62754i, 2147483647i, 43273i)))));
}

