struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), true, 108395u);

var<private> global1: Struct_5 = Struct_5(vec3<bool>(false, false, false), vec3<f32>(-2825f, 1145f, -1000f), -159f, 212f, Struct_3(-1000f, 75941u, 8284u));

var<private> global2: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(vec3<bool>(false, true, true), vec3<f32>(582f, 557f, -418f), -469f, -147f, Struct_3(494f, 42438u, 59104u)), Struct_5(vec3<bool>(false, true, false), vec3<f32>(799f, -810f, 292f), 171f, -828f, Struct_3(1000f, 42090u, 4294967295u)), Struct_5(vec3<bool>(false, false, false), vec3<f32>(-1500f, -1000f, -1406f), -221f, 226f, Struct_3(515f, 4294967295u, 1u)), Struct_5(vec3<bool>(true, false, false), vec3<f32>(-478f, -668f, 1615f), -927f, 119f, Struct_3(-1000f, 38987u, 0u)), Struct_5(vec3<bool>(true, false, true), vec3<f32>(410f, 488f, -764f), -1390f, -890f, Struct_3(1030f, 1u, 0u)), Struct_5(vec3<bool>(false, false, false), vec3<f32>(-1281f, -542f, 1699f), 162f, -1070f, Struct_3(-391f, 0u, 1u)), Struct_5(vec3<bool>(false, false, true), vec3<f32>(941f, 644f, 389f), -954f, 1558f, Struct_3(-793f, 0u, 1u)), Struct_5(vec3<bool>(false, true, true), vec3<f32>(643f, 1561f, 2000f), 1002f, -738f, Struct_3(197f, 0u, 22229u)));

var<private> global3: bool;

var<private> global4: array<vec4<bool>, 21>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_2(_wgslsmith_add_i32(-14234i, arg_1), _wgslsmith_add_vec3_i32(arg_2.b, max(_wgslsmith_div_vec3_i32(arg_2.b, vec3<i32>(-7807i, arg_2.b.x, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(-63978i, -923i, 41527i), arg_2.b))) >> ((_wgslsmith_mult_vec3_u32(select(u_input.b.zxz, vec3<u32>(global1.e.c, arg_3.c.x, 0u), global0.a), select(vec3<u32>(global0.d, u_input.b.x, arg_2.c.x), vec3<u32>(global0.d, 4294967295u, arg_2.c.x), global1.a.x)) | ~(u_input.b.xwx >> (u_input.b.wzw % vec3<u32>(32u)))) % vec3<u32>(32u)), vec2<u32>(~(~67185u), select(_wgslsmith_mod_u32(firstTrailingBit(52245u), max(4294967295u, global0.d)), ~arg_3.c.x ^ global0.d, true)));
    global0 = Struct_4(global0.a, select(select(!global4[_wgslsmith_index_u32(arg_3.c.x & u_input.b.x, 21u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 22665u & u_input.b.x), 21u)], select(select(global0.b, global4[_wgslsmith_index_u32(29515u, 21u)], arg_0), vec4<bool>(false, global1.a.x, true, global0.a.x), false)), select(select(global0.b, global0.b, vec4<bool>(false, false, arg_0, false)), vec4<bool>(true, u_input.a < var_0.b.x, select(global1.a.x, global1.a.x, arg_0), !arg_0), false), global1.a.x), global0.c, _wgslsmith_div_u32(~_wgslsmith_add_u32(1u, global1.e.c), global1.e.c));
    var var_1 = vec2<i32>(~(~(-24649i)), 15140i);
    global2 = array<Struct_5, 8>();
    return _wgslsmith_f_op_f32(f32(-1f) * -778f);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!arg_0, -arg_1.x << ((global0.d >> (53274u % 32u)) % 32u), Struct_2(u_input.a, max(arg_1.xyy, vec3<i32>(1i, 2147483647i, -1697i)), vec2<u32>(93814u, arg_2.c)), Struct_2(arg_1.x, select(vec3<i32>(-66481i, arg_1.x, arg_1.x), vec3<i32>(-1i, 90925i, arg_1.x), vec3<bool>(false, global0.c, false)), u_input.b.yy)))), ~u_input.b.x, _wgslsmith_mult_u32(global1.e.b >> ((~44558u ^ _wgslsmith_mult_u32(46444u, arg_2.c)) % 32u), _wgslsmith_mult_u32(35263u, firstLeadingBit(_wgslsmith_add_u32(15847u, 1u)))));
    let var_1 = abs(u_input.b.wwz);
    global2 = array<Struct_5, 8>();
    global3 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-920f)) - global1.d), 406f)) * -2273f));
    return -518f >= arg_2.a;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global4 = array<vec4<bool>, 21>();
    global4 = array<vec4<bool>, 21>();
    let var_0 = select(!global0.b.yy, !vec2<bool>(all(global1.a.xx), func_2(true, vec4<i32>(-50978i, u_input.a, u_input.a, u_input.a), Struct_3(global1.d, global1.e.b, global1.e.c))), true);
    var var_1 = 520f;
    global4 = array<vec4<bool>, 21>();
    return abs(firstTrailingBit(~abs(global0.d)));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_i32(abs(-arg_3.xxz), vec3<i32>(~(~(-878i)), arg_3.x, _wgslsmith_mod_i32(~u_input.a, _wgslsmith_mod_i32(8045i, -arg_3.x))));
    var var_1 = Struct_4(!global1.a, !vec4<bool>(global0.a.x, global1.a.x, any(!global0.b.xz), true), true, select(0u, _wgslsmith_sub_u32(~max(4716u, global0.d), 1u), any(select(select(vec2<bool>(true, global0.c), global1.a.xz, false), select(vec2<bool>(false, false), global1.a.xx, true), select(global1.a.yy, vec2<bool>(global1.a.x, global1.a.x), true)))));
    var var_2 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, abs(38696u), 4294967295u), vec4<u32>(32141u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.yzx, vec3<u32>(0u, 0u, var_1.d)), ~u_input.b.xwz), 0u, ~0u));
    global2 = array<Struct_5, 8>();
    let var_3 = false;
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(select(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, var_2.x, 11832u, 0u)) & (u_input.b.x << (arg_2 % 32u)), _wgslsmith_add_u32(u_input.b.x, 4294967295u) >> ((arg_1 & 1u) % 32u), (arg_3.x > u_input.a) || !var_1.c), ~global1.e.c, _wgslsmith_div_u32(global0.d, ~abs(35859u))), ~arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 6942i;
    let var_1 = Struct_2(u_input.a, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~2147483647i, 0i, _wgslsmith_div_i32(-2147483647i, 944i)), -(~vec3<i32>(u_input.a, u_input.a, 2147483647i))), ~abs(vec3<i32>(-1i, u_input.a, u_input.a))), vec2<u32>(select(4294967295u, 1u, true), 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-477f)))))));
    let var_3 = abs(20503u) | _wgslsmith_sub_u32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-839f, -117f, global1.e.a) + vec3<f32>(-746f, global1.b.x, 1693f)) - _wgslsmith_div_vec3_f32(global1.b, global1.b)), ~1u, func_1(global0.b.wxx) ^ global1.e.c, ~firstLeadingBit(vec4<i32>(u_input.a, 1i, -1i, 6219i))), ~(var_1.c.x & global0.d) & ~(~8266u));
    global3 = func_2(global1.a.x, reverseBits(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_1.a, 2147483647i), vec4<i32>(u_input.a, var_1.a, 50217i, var_1.b.x), vec4<i32>(u_input.a, var_1.a, u_input.a, -1i)) << (~vec4<u32>(u_input.b.x, 0u, 4294967295u, global1.e.c) % vec4<u32>(32u)))), global1.e);
    var var_4 = -_wgslsmith_clamp_i32(max(abs(-2147483647i), 26309i), ~12917i, -4319i);
    let var_5 = var_1.b.yz;
    var var_6 = abs(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x, 51540u), vec2<u32>(u_input.b.x, global0.d)), u_input.b.zz)) ^ _wgslsmith_mult_vec2_u32(countOneBits(var_1.c), ~(~var_1.c));
    var_4 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(28899i, ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.xyy, u_input.b.zxy), firstTrailingBit(u_input.b.yxx))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-915f + _wgslsmith_f_op_f32(select(352f, -1794f, global0.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.d)), var_2)))), _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.e.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), vec4<i32>(1i, 2147483647i, ~34765i, 30111i));
}

