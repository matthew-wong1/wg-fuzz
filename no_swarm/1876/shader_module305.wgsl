struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(2667f, 802f, -1435f), vec2<bool>(false, false), vec4<bool>(false, false, true, false), vec2<i32>(1i, -23934i)), Struct_1(vec2<i32>(1i, 2147483647i), vec3<f32>(-165f, -587f, -240f), vec2<bool>(true, true), vec4<bool>(false, true, false, true), vec2<i32>(55823i, 0i)), Struct_1(vec2<i32>(1i, 1i), vec3<f32>(-1072f, 113f, 113f), vec2<bool>(true, false), vec4<bool>(false, true, false, true), vec2<i32>(3026i, 2147483647i)), Struct_1(vec2<i32>(10499i, 1591i), vec3<f32>(2779f, 1243f, -1306f), vec2<bool>(false, false), vec4<bool>(false, true, true, false), vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(8244i, 30520i), vec3<f32>(-1238f, 716f, 395f), vec2<bool>(true, true), vec4<bool>(true, true, false, true), vec2<i32>(4744i, -10403i)), Struct_1(vec2<i32>(1i, 2147483647i), vec3<f32>(-731f, -347f, 374f), vec2<bool>(false, false), vec4<bool>(false, true, true, true), vec2<i32>(-58573i, -60758i)), Struct_1(vec2<i32>(30539i, i32(-2147483648)), vec3<f32>(-769f, -398f, -1000f), vec2<bool>(true, false), vec4<bool>(true, false, true, true), vec2<i32>(0i, -1i)), Struct_1(vec2<i32>(966i, i32(-2147483648)), vec3<f32>(-1000f, -258f, -782f), vec2<bool>(false, true), vec4<bool>(false, false, false, true), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, 10093i), vec3<f32>(361f, 184f, 1539f), vec2<bool>(true, true), vec4<bool>(false, true, false, true), vec2<i32>(9790i, 1i)), Struct_1(vec2<i32>(-16862i, 18222i), vec3<f32>(1978f, -522f, 294f), vec2<bool>(false, false), vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, -7397i)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<f32>(710f, -610f, -1394f), vec2<bool>(true, false), vec4<bool>(true, true, true, true), vec2<i32>(-1i, -27608i)), Struct_1(vec2<i32>(0i, -12498i), vec3<f32>(-201f, 398f, 332f), vec2<bool>(true, false), vec4<bool>(false, false, true, false), vec2<i32>(0i, -53445i)), Struct_1(vec2<i32>(37128i, 0i), vec3<f32>(1107f, -684f, -1282f), vec2<bool>(true, false), vec4<bool>(false, true, false, false), vec2<i32>(-11880i, -20926i)), Struct_1(vec2<i32>(1i, 24988i), vec3<f32>(-428f, -1000f, 1442f), vec2<bool>(false, true), vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, 29200i)), Struct_1(vec2<i32>(44284i, -43257i), vec3<f32>(1557f, 1159f, -1316f), vec2<bool>(true, true), vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, -10881i)), Struct_1(vec2<i32>(46520i, i32(-2147483648)), vec3<f32>(404f, 1230f, 1000f), vec2<bool>(true, false), vec4<bool>(true, true, true, true), vec2<i32>(10102i, 20178i)), Struct_1(vec2<i32>(0i, 53745i), vec3<f32>(1417f, -695f, -481f), vec2<bool>(true, false), vec4<bool>(false, true, true, true), vec2<i32>(-43677i, 14574i)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<f32>(-287f, -763f, 1377f), vec2<bool>(false, true), vec4<bool>(true, false, true, true), vec2<i32>(-22404i, -1i)), Struct_1(vec2<i32>(958i, 54292i), vec3<f32>(-629f, -890f, 858f), vec2<bool>(true, false), vec4<bool>(true, true, false, false), vec2<i32>(1i, 2147483647i)));

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<bool> {
    global0 = array<Struct_1, 19>();
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>(4489u, 44147u, max(var_0, 0u), _wgslsmith_add_u32(10380u, ~u_input.d.x)), vec4<u32>(var_0, abs(_wgslsmith_clamp_u32(~global1.b.x, global1.b.x, firstTrailingBit(58752u))), _wgslsmith_mod_u32(~(~1u), var_0), ~var_0));
    var var_2 = max(vec2<u32>(_wgslsmith_mod_u32(var_0, 63208u), u_input.d.x), select(reverseBits(var_1.ww), u_input.d, arg_0.d.xy));
    let var_3 = !vec4<bool>(false, !arg_0.d.x, select(arg_0.c.x, global1.a.c.x, arg_0.d.x) || true, global1.a.c.x);
    return select(select(select(select(vec2<bool>(true, global1.a.d.x), !global1.a.c, vec2<bool>(false, global1.a.c.x)), vec2<bool>(global1.a.e.x != 1i, u_input.d.x != 14701u), any(arg_0.d.zwx)), vec2<bool>(true, arg_0.d.x), !var_3.yy), global1.a.d.xz, true);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(global1.a.b.x - 1000f)), -771f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))))));
    var var_1 = 3459u;
    var var_2 = Struct_1(vec2<i32>(firstTrailingBit(max(countOneBits(-1361i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global1.c.x), vec2<i32>(-2147483647i, global1.c.x)))), ~36717i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-563f, var_0.x, _wgslsmith_f_op_f32(-758f * -109f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.a.b)), vec3<f32>(global1.a.b.x, arg_0.b.x, -812f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(311f - var_0.x), _wgslsmith_f_op_f32(global1.a.b.x + var_0.x), global1.a.b.x) - var_0.wyx)), func_3(Struct_1(select(_wgslsmith_add_vec2_i32(arg_0.a, vec2<i32>(0i, -49434i)), _wgslsmith_add_vec2_i32(global1.a.a, global1.a.a), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b * arg_0.b) * _wgslsmith_f_op_vec3_f32(ceil(arg_0.b))), !global1.a.c, arg_0.d, vec2<i32>(0i, u_input.a.x)), var_0), vec4<bool>(all(global1.a.d.ywx), func_3(Struct_1(_wgslsmith_clamp_vec2_i32(global1.a.a, vec2<i32>(u_input.a.x, arg_0.e.x), global1.c.yz), _wgslsmith_f_op_vec3_f32(vec3<f32>(704f, -284f, global1.a.b.x) * arg_0.b), select(vec2<bool>(true, false), global1.a.d.yz, vec2<bool>(false, global1.a.d.x)), arg_0.d, firstLeadingBit(u_input.a.xy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 304f, 441f) - vec4<f32>(var_0.x, var_0.x, -123f, -541f)))).x, true, !((arg_0.e.x ^ global1.a.a.x) <= arg_0.a.x)), reverseBits(vec2<i32>(abs(global1.c.x << (global1.b.x % 32u)), firstLeadingBit(~(-33898i)))));
    let var_3 = Struct_1(countOneBits(global1.c.zw), var_0.wyy, select(!func_3(global0[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -1163f, -638f)))), select(vec2<bool>(true, true), !arg_0.d.xw, arg_0.d.x), !vec2<bool>(!global1.a.d.x, func_3(Struct_1(arg_0.e, vec3<f32>(arg_0.b.x, var_2.b.x, 413f), arg_0.c, arg_0.d, global1.a.e), var_0).x)), vec4<bool>(all(select(global1.a.d.zzy, vec3<bool>(var_2.c.x, arg_0.c.x, true), var_2.d.x)), false, (~4294967295u == u_input.d.x) && true, any(arg_0.c) || true), vec2<i32>(_wgslsmith_mult_i32(arg_0.e.x, 48702i), arg_0.e.x));
    let var_4 = ~(abs(~u_input.d.x) & ~_wgslsmith_mod_u32(4294967295u, u_input.d.x >> (10597u % 32u)));
    return vec3<i32>(~(-68185i), arg_0.e.x, global1.c.x ^ ~3120i);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = ~(firstLeadingBit((vec4<u32>(u_input.d.x, u_input.d.x, 12732u, u_input.d.x) ^ vec4<u32>(4294967295u, arg_1.x, global1.b.x, arg_1.x)) << (firstLeadingBit(vec4<u32>(arg_1.x, global1.b.x, 56976u, 0u)) % vec4<u32>(32u))) << (abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, u_input.d.x, 5897u, 1u), vec4<u32>(u_input.d.x, arg_1.x, global1.b.x, 4900u) | vec4<u32>(u_input.d.x, 0u, global1.b.x, 4294967295u))) % vec4<u32>(32u)));
    var var_1 = -272f == global1.a.b.x;
    global0 = array<Struct_1, 19>();
    let var_2 = ~_wgslsmith_mod_i32(~select(countOneBits(global1.c.x), _wgslsmith_div_i32(arg_0.x, u_input.b), false), -select(arg_2.x, -2147483647i, true));
    global1 = Struct_2(Struct_1(max(vec2<i32>(abs(-14995i), _wgslsmith_div_i32(2147483647i, arg_2.x)), vec2<i32>(global1.c.x, ~u_input.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, global1.a.b.x, global1.a.b.x)), global1.a.b)))), global1.a.d.yy, global1.a.d, ~firstLeadingBit(vec2<i32>(15906i, -28472i) << (vec2<u32>(u_input.d.x, arg_1.x) % vec2<u32>(32u)))), arg_1.xz, vec4<i32>(global1.a.e.x, arg_2.x, ~(u_input.a.x | _wgslsmith_div_i32(2147483647i, var_2)), _wgslsmith_div_i32(-arg_0.x, ~(-5439i))));
    return Struct_2(global0[_wgslsmith_index_u32(abs(1u), 19u)], global1.b, select(firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(arg_0.x, global1.c.x), i32(-1i) * -40363i, u_input.c, max(arg_2.x, u_input.a.x))), vec4<i32>(min(1i, ~1i), -global1.a.e.x, firstTrailingBit(arg_2.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 36562i), u_input.a.zy), max(vec2<i32>(0i, 1i), vec2<i32>(58661i, 2147483647i)))), (_wgslsmith_dot_vec4_u32(var_0, var_0) >> (~arg_1.x % 32u)) < global1.b.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(vec2<i32>(~global1.c.x, global1.a.e.x), arg_1, select(global1.a.d.ww, vec2<bool>(any(vec2<bool>(false, true)) | arg_2.c.x, arg_2.d.x), !(!select(arg_2.d.xx, arg_2.d.zx, true))), !global1.a.d, ~(-u_input.a.zx));
    let var_1 = func_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~u_input.d.x), arg_0.x), 19u)], true), ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, global1.b.x, 59766u), arg_0.yxz), ~arg_0.zyx)), countOneBits(firstLeadingBit(u_input.a)));
    let var_2 = 277f;
    var var_3 = all(select(!vec2<bool>(!global1.a.d.x, true), vec2<bool>(true, !func_3(arg_2, vec4<f32>(var_0.b.x, arg_1.x, -1360f, -1611f)).x), all(vec3<bool>(!var_1.a.c.x, true, true))));
    var var_4 = vec3<f32>(-268f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)))), -322f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-159f)) - _wgslsmith_f_op_f32(-268f - arg_1.x)));
    return -1i;
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = -427f;
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let var_1 = Struct_2(global1.a, ~firstTrailingBit(max(firstLeadingBit(vec2<u32>(1u, u_input.d.x)), vec2<u32>(28015u, global1.b.x) & u_input.d)), global1.c);
    return Struct_1(_wgslsmith_add_vec2_i32(abs(global1.c.xx), global1.c.zz), _wgslsmith_f_op_vec3_f32(ceil(var_1.a.b)), !(!select(func_3(var_1.a, vec4<f32>(var_1.a.b.x, -1000f, var_1.a.b.x, -373f)), vec2<bool>(true, true), select(global1.a.d.yy, global1.a.c, true))), select(!(!select(global1.a.d, global1.a.d, global1.a.d)), select(!vec4<bool>(arg_0, true, true, true), func_4(vec3<i32>(var_1.a.a.x, var_1.a.a.x, u_input.c) ^ vec3<i32>(15880i, global1.a.a.x, 1i), select(vec3<u32>(0u, var_1.b.x, 1u), vec3<u32>(u_input.d.x, 0u, 4294967295u), var_1.a.d.wxy), _wgslsmith_mult_vec3_i32(var_1.c.yyx, vec3<i32>(global1.a.a.x, 36640i, global1.c.x))).a.d, var_1.a.d), true), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.c, 10246i), var_1.c) >> (firstLeadingBit(4294967295u) % 32u), ~2147483647i) | func_4(min(~vec3<i32>(36197i, global1.c.x, -6339i), vec3<i32>(var_1.a.a.x, global1.a.a.x, -1i)), min(~vec3<u32>(global1.b.x, global1.b.x, u_input.d.x), ~vec3<u32>(var_1.b.x, 42203u, 84834u)), u_input.a << (vec3<u32>(var_1.b.x, 47904u, 80803u) % vec3<u32>(32u))).c.xw);
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_4(vec3<i32>(-(~global1.c.x), global1.c.x, firstLeadingBit(abs(2147483647i)) & (_wgslsmith_sub_i32(global1.a.a.x, 0i) >> (~55597u % 32u))), firstLeadingBit(select(firstLeadingBit(vec3<u32>(u_input.d.x, global1.b.x, global1.b.x) | vec3<u32>(0u, global1.b.x, global1.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(26039u, 3749u, 1u), vec3<u32>(global1.b.x, 4294967295u, global1.b.x)) >> (~vec3<u32>(global1.b.x, u_input.d.x, 51909u) % vec3<u32>(32u)), any(vec4<bool>(global1.a.c.x, true, arg_0.d.x, true)))), abs(~(~vec3<i32>(global1.c.x, -27809i, global1.a.e.x)))).a;
    let var_1 = 1i;
    var var_2 = vec3<i32>(~(~abs(abs(1i))), -26773i, _wgslsmith_div_i32(-(~_wgslsmith_add_i32(-2147483647i, global1.a.e.x)), _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, -1i, u_input.a.x, var_1), vec4<i32>(-2147483647i, global1.c.x, u_input.c, global1.a.a.x))) << (global1.b.x % 32u)));
    global0 = array<Struct_1, 19>();
    let var_3 = vec3<bool>(!any(func_5(true).d), func_3(func_4(select(~global1.c.zxw, _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, -2780i, 2147483647i), u_input.a), false), vec3<u32>(u_input.d.x, 1u, ~4294967295u), vec3<i32>(func_1(vec4<u32>(global1.b.x, u_input.d.x, u_input.d.x, 40917u), vec3<f32>(global1.a.b.x, var_0.b.x, global1.a.b.x), var_0), global1.c.x, func_4(u_input.a, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.a).a.e.x)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, 1000f, arg_0.b.x, -1541f)))).x, false);
    return func_4(min(global1.c.zwy, -vec3<i32>(_wgslsmith_div_i32(var_2.x, var_0.e.x), ~var_1, global1.a.a.x)), vec3<u32>(4105u, u_input.d.x, global1.b.x) ^ vec3<u32>(u_input.d.x, 65827u, global1.b.x & ~global1.b.x), vec3<i32>(-1i, _wgslsmith_mod_i32(0i, arg_0.e.x), -arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = array<Struct_1, 19>();
    let var_1 = Struct_1(u_input.a.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(global1.a.b)), vec3<f32>(global1.a.b.x, global1.a.b.x, 1243f))))), !vec2<bool>(true, !(global1.a.c.x == false)), global1.a.d, global1.a.e);
    global1 = func_6(func_5(-u_input.a.x < _wgslsmith_sub_i32(func_1(vec4<u32>(0u, 1u, 4294967295u, global1.b.x), vec3<f32>(-349f, var_1.b.x, -359f), var_1), 26534i)));
    global0 = array<Struct_1, 19>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x + 1662f), func_5(var_1.c.x).b.x, 1305f), global1.a.b), vec3<f32>(func_6(Struct_1(u_input.a.yz, var_1.b, vec2<bool>(global1.a.d.x, global1.a.c.x), var_1.d, vec2<i32>(global1.c.x, 20078i))).a.b.x, _wgslsmith_f_op_f32(-func_5(false).b.x), _wgslsmith_f_op_f32(global1.a.b.x - 745f))));
    var var_3 = Struct_1(func_6(var_1).c.yy << (firstTrailingBit(u_input.d) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-487f, global1.a.b.x)), var_2.x, -1000f)), vec2<bool>(false, false), vec4<bool>(!global1.a.d.x, true, var_1.a.x <= _wgslsmith_sub_i32(1i, 43197i), true), -(~vec2<i32>(var_1.a.x, 0i)) << (~global1.b % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_6(Struct_1(u_input.a.xx, vec3<f32>(var_1.b.x, -235f, var_1.b.x), vec2<bool>(true, var_1.c.x), global1.a.d, vec2<i32>(var_1.e.x, -27320i))).a.b.x, 1000f, func_4(u_input.a, min(vec3<u32>(u_input.d.x, 7864u, 0u), vec3<u32>(u_input.d.x, 15105u, global1.b.x)), u_input.a).a.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-143f, -1509f, global1.a.b.x, -143f))))) - vec4<f32>(-514f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.b.x, -568f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a.b.x, 762f)) * 644f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_1.b.x) * _wgslsmith_f_op_f32(-var_3.b.x)))), countOneBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(-24211i, var_3.e.x), 0i)));
}

