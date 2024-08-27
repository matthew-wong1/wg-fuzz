struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, false, false, true, true, false, true, false, true, false, false, true, false, true, false, true, false, true, false, false, true, false, false);

var<private> global1: array<bool, 6> = array<bool, 6>(false, true, false, true, true, false);

var<private> global2: bool = true;

var<private> global3: vec4<i32> = vec4<i32>(-1i, 1i, 0i, 1i);

var<private> global4: array<vec3<f32>, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32) -> vec2<f32> {
    global4 = array<vec3<f32>, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1295f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(261f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -789f, 231f, 1602f) * vec4<f32>(-295f, -959f, 447f, 1000f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-946f, -1033f, -314f, 875f) * vec4<f32>(570f, 837f, -1014f, -1185f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1086f, -1360f, -1528f, -761f), vec4<f32>(-109f, -967f, -1000f, -1065f))), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 6u)], true), arg_1)))))), !(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], true, true), true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], arg_1), vec3<bool>(global0[_wgslsmith_index_u32(83834u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(18230u, 24u)]))), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)] & false, global1[_wgslsmith_index_u32(~1u, 6u)], false, !(4294967295u < u_input.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(556f)) - _wgslsmith_f_op_f32(step(-566f, -474f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -2299f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1833f, -967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1621f * -542f)))));
    var var_1 = Struct_4(global3.zxw, _wgslsmith_f_op_f32(-var_0.e.x), true || (var_0.a <= 1156f), _wgslsmith_div_vec2_f32(var_0.b.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.b.yz)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a, var_0.b.x))), _wgslsmith_f_op_vec2_f32(min(var_0.e.ww, vec2<f32>(3012f, -1252f)))))), ~firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 57396u), ~u_input.a.zz)));
    global4 = array<vec3<f32>, 19>();
    global0 = array<bool, 24>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.b.xz))), var_1.d);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = -global3.wzz;
    var var_1 = true;
    global4 = array<vec3<f32>, 19>();
    let var_2 = arg_2.c;
    var var_3 = arg_2.c;
    return vec3<u32>(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(u_input.c.x, 1u))), vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(0u, 1u)), 7934u << (~arg_2.d.c % 32u))), reverseBits(0u) & _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_2.d.c, firstTrailingBit(0u), u_input.b)), 48583u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    global0 = array<bool, 24>();
    let var_0 = !vec3<bool>(false, select(!(4294967295u >= u_input.b), true, true && arg_0.x), u_input.a.x > (max(u_input.c.x, u_input.b) & ~u_input.b));
    global4 = array<vec3<f32>, 19>();
    var var_1 = Struct_5(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1396f, -341f, 1000f, -279f), vec4<f32>(-509f, -532f, -189f, -1147f)), vec4<f32>(366f, -2335f, -554f, -258f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(~global3.x, all(arg_0), 1i)))), Struct_3(global3.wxy, _wgslsmith_add_i32(global3.x, -1i), Struct_1(_wgslsmith_f_op_f32(abs(-148f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-471f, 1613f, -787f, 491f)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], true, global0[_wgslsmith_index_u32(u_input.b, 24u)]), var_0, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 6u)], true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(702f, 860f, 2023f, -266f))), Struct_2(!var_0.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-248f, 1000f))), 1u, -833f, Struct_1(-622f, vec4<f32>(-1037f, 145f, 1204f, -932f), vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], true), vec4<f32>(213f, -1118f, -331f, -566f))))), select(vec2<bool>(false, !all(vec2<bool>(global0[_wgslsmith_index_u32(63167u, 24u)], true))), vec2<bool>(all(select(var_0.yz, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], arg_0.x), false)), false), select(vec2<bool>(true, true), var_0.zy, !vec2<bool>(global1[_wgslsmith_index_u32(1u, 6u)], true))), Struct_3(vec3<i32>(global3.x, global3.x, global3.x), global3.x, Struct_1(_wgslsmith_f_op_f32(-676f - 1f), vec4<f32>(-249f, _wgslsmith_f_op_f32(ceil(-2205f)), 1301f, _wgslsmith_f_op_f32(516f + -498f)), var_0, select(!vec4<bool>(true, arg_0.x, false, false), vec4<bool>(false, true, arg_0.x, arg_0.x), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-435f, 485f, 1000f, -290f)))))), Struct_2(any(select(vec4<bool>(arg_0.x, true, global0[_wgslsmith_index_u32(12324u, 24u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(89286u, 24u)], global0[_wgslsmith_index_u32(30610u, 24u)], false, global0[_wgslsmith_index_u32(u_input.b, 24u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(607f, -766f)), ~21375u, _wgslsmith_f_op_f32(-1310f - -382f), Struct_1(329f, vec4<f32>(1f, 1f, 1f, 1f), vec3<bool>(false, false, true), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 24u)], true), vec4<f32>(-283f, -2226f, 685f, 488f)))), Struct_4(global3.xyw << (u_input.a % vec3<u32>(32u)), -177f, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1662f, -1438f)), u_input.a.xy), Struct_4(_wgslsmith_mult_vec3_i32(global3.xzw, _wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, 25542i, global3.x) << (u_input.a % vec3<u32>(32u)), vec3<i32>(38003i, global3.x, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(-12009i, 8511i, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1485f - 361f), _wgslsmith_div_f32(-1000f, 929f))), false, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2147f, -1000f)), vec2<f32>(996f, -645f))))), u_input.a.yy));
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(53225i, -var_1.d.a.x ^ (var_1.e.a.x >> (u_input.c.x % 32u)), var_1.e.a.x, -965i);
    return var_1.d;
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    global2 = ~firstTrailingBit(_wgslsmith_mult_u32(~u_input.b, reverseBits(32391u))) >= select(min(~func_4(vec4<f32>(1000f, 1079f, -1742f, arg_0.d.x), vec2<f32>(-1939f, 596f), Struct_3(vec3<i32>(24160i, 9804i, arg_0.a.x), global3.x, Struct_1(-1318f, vec4<f32>(-400f, -481f, 836f, 544f), vec3<bool>(arg_0.c, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(52546u, 6u)], arg_0.c, global0[_wgslsmith_index_u32(1u, 24u)]), vec4<f32>(arg_0.d.x, arg_0.b, -888f, 1000f)), Struct_2(global1[_wgslsmith_index_u32(arg_0.e.x, 6u)], arg_0.d, u_input.a.x, arg_0.d.x, Struct_1(-275f, vec4<f32>(266f, arg_0.d.x, arg_0.d.x, 632f), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.e.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.e.x, 6u)], arg_0.c, false), vec4<f32>(-428f, 443f, arg_0.d.x, arg_0.d.x))))).x, reverseBits(func_4(vec4<f32>(-1336f, -1867f, -2003f, arg_0.d.x), arg_0.d, Struct_3(vec3<i32>(global3.x, -2147483647i, global3.x), -2147483647i, Struct_1(-933f, vec4<f32>(arg_0.d.x, -1260f, -344f, 788f), vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], true, global0[_wgslsmith_index_u32(70581u, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.e.x, 6u)], true, false, false), vec4<f32>(-1262f, 2274f, arg_0.b, 1462f)), Struct_2(false, vec2<f32>(521f, -545f), arg_0.e.x, 628f, Struct_1(103f, vec4<f32>(-1621f, arg_0.d.x, -1000f, -619f), vec3<bool>(true, global0[_wgslsmith_index_u32(26179u, 24u)], global1[_wgslsmith_index_u32(5704u, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(41742u, 6u)], false, global1[_wgslsmith_index_u32(arg_0.e.x, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), vec4<f32>(arg_0.b, 449f, 106f, arg_0.b))))).x)), 4527u, any(select(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0.e.x, 6u)], global1[_wgslsmith_index_u32(63051u, 6u)]), select(vec3<bool>(true, false, true), vec3<bool>(true, arg_0.c, global0[_wgslsmith_index_u32(4294967295u, 24u)]), false), select(vec3<bool>(global0[_wgslsmith_index_u32(86571u, 24u)], false, false), vec3<bool>(arg_0.c, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(arg_0.e.x, 24u)])))));
    let var_0 = -vec4<i32>(17480i, _wgslsmith_mult_i32(global3.x, ~countOneBits(arg_0.a.x)), abs(_wgslsmith_clamp_i32(global3.x, arg_0.a.x, 0i)) | 16205i, arg_0.a.x << (~u_input.c.x % 32u));
    var var_1 = !vec4<bool>(all(vec4<bool>(all(vec3<bool>(true, arg_0.c, false)), true, select(true, arg_0.c, global0[_wgslsmith_index_u32(u_input.b, 24u)]), arg_0.c | true)), all(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)]), vec2<bool>(false, arg_0.c), vec2<bool>(true, false))), !((u_input.c.x >= u_input.b) && arg_0.c), !(!arg_0.c || true));
    var var_2 = Struct_5(~(vec3<u32>(12013u, ~arg_0.e.x, 1u) | _wgslsmith_div_vec3_u32(vec3<u32>(14410u, arg_0.e.x, 125u), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(arg_0.e.x, 67816u, u_input.c.x)))), var_1.yz, Struct_3(global3.yyx, _wgslsmith_mult_i32(0i, global3.x), Struct_1(2476f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.x, 1000f, -514f, 523f)))), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.e.x, 24u)], global1[_wgslsmith_index_u32(1u, 6u)])), !select(vec4<bool>(false, false, true, arg_0.c), vec4<bool>(global0[_wgslsmith_index_u32(23670u, 24u)], false, var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<bool>(var_1.x, false, false, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.x, -1245f, -380f, arg_0.d.x), vec4<f32>(1109f, arg_0.d.x, arg_0.b, -2722f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 1287f, arg_0.d.x, arg_0.d.x)))), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], _wgslsmith_f_op_vec2_f32(select(arg_0.d, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(578f, -550f), vec2<f32>(arg_0.b, arg_0.b))), !var_1.wy)), u_input.c.x & ~arg_0.e.x, 280f, Struct_1(_wgslsmith_f_op_f32(abs(2047f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.b), vec4<f32>(-546f, arg_0.d.x, 425f, 271f))), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(16831u, 6u)], true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.e.x, 24u)], var_1.x, arg_0.c), var_1.zww), !vec4<bool>(global0[_wgslsmith_index_u32(38966u, 24u)], true, var_1.x, global1[_wgslsmith_index_u32(arg_0.e.x, 6u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1641f, 1000f, 859f, arg_0.b), vec4<f32>(arg_0.b, -1748f, arg_0.d.x, arg_0.b), var_1.x))))), func_2(select(var_1.zy, !select(var_1.wy, var_1.yw, false), vec2<bool>(true, true))), arg_0);
    var_2 = Struct_5(~(~select(abs(u_input.a), ~var_2.a, !vec3<bool>(true, global0[_wgslsmith_index_u32(50787u, 24u)], true))), select(var_2.c.d.e.c.xx, select(var_1.xz, !select(vec2<bool>(true, var_2.b.x), var_1.zx, var_2.b.x), global1[_wgslsmith_index_u32(reverseBits(u_input.b), 6u)] | true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1173f - var_2.c.d.b.x))) == _wgslsmith_f_op_f32(f32(-1f) * -194f)), Struct_3(~vec3<i32>(~arg_0.a.x, select(70133i, 2147483647i, false), 0i), _wgslsmith_add_i32(37803i, min(~2147483647i, var_2.c.a.x)), Struct_1(1059f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c.d.e.e * vec4<f32>(var_2.c.d.d, -1017f, arg_0.b, var_2.c.d.e.e.x))), var_2.c.c.d.zyy, var_2.c.c.d, var_2.c.c.e), var_2.c.d), arg_0, var_2.e);
    return Struct_5(abs(~var_2.a), vec2<bool>(false, firstTrailingBit(1i) <= (_wgslsmith_mod_i32(-1i, arg_0.a.x) >> (27218u % 32u))), Struct_3(~arg_0.a, reverseBits(-27925i), Struct_1(func_2(var_2.c.d.e.c.xy).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c.d.e.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2305f, -316f, var_2.c.c.e.x, var_2.e.b))), var_1.wzy, select(!vec4<bool>(var_1.x, var_1.x, false, arg_0.c), select(vec4<bool>(false, var_1.x, var_1.x, true), var_2.c.c.d, vec4<bool>(false, true, var_1.x, global0[_wgslsmith_index_u32(0u, 24u)])), !vec4<bool>(true, false, var_2.d.c, false)), _wgslsmith_f_op_vec4_f32(-var_2.c.d.e.e)), var_2.c.d), Struct_4(global3.wyx & vec3<i32>(1i, -arg_0.a.x, abs(var_2.c.b)), func_2(var_1.xy).d.x, !global1[_wgslsmith_index_u32(arg_0.e.x, 6u)] & any(vec3<bool>(true, var_2.e.c, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2561f, arg_0.d.x)), arg_0.d)), vec2<u32>(reverseBits(10485u), abs(arg_0.e.x) | arg_0.e.x)), func_2(!select(var_2.b, vec2<bool>(true, false), var_2.c.c.b.x <= var_2.e.b)));
}

fn func_6(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5) -> f32 {
    var var_0 = u_input.b & _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x | 0u, 1u), _wgslsmith_mod_u32(min(73596u, 1902u), 4294967295u), func_5(func_5(arg_0.e).e).a.x), arg_2.a.x, func_5(arg_0.d).c.d.c);
    let var_1 = arg_0.c;
    global4 = array<vec3<f32>, 19>();
    let var_2 = 878f;
    let var_3 = ~((~vec4<u32>(1u, u_input.b, arg_0.c.d.c, 0u) ^ select(vec4<u32>(8151u, u_input.b, var_1.d.c, var_1.d.c), vec4<u32>(54949u, var_1.d.c, arg_0.e.e.x, 82440u) | vec4<u32>(arg_0.d.e.x, arg_0.d.e.x, 0u, 1u), arg_2.c.d.e.d)) ^ select(~vec4<u32>(arg_2.e.e.x, arg_2.c.d.c, var_1.d.c, u_input.a.x) << ((vec4<u32>(53872u, arg_0.d.e.x, arg_0.d.e.x, 8096u) & vec4<u32>(u_input.c.x, 65474u, var_1.d.c, 4294967295u)) % vec4<u32>(32u)), ~(vec4<u32>(arg_0.d.e.x, u_input.c.x, 45297u, 4294967295u) << (vec4<u32>(1u, arg_2.a.x, arg_2.a.x, var_1.d.c) % vec4<u32>(32u))), arg_0.c.c.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(818f + 1000f) * _wgslsmith_f_op_f32(select(-2469f, _wgslsmith_f_op_f32(-var_1.c.e.x), arg_2.e.c))))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec4<u32> {
    global1 = array<bool, 6>();
    let var_0 = vec2<f32>(396f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(func_6(func_5(func_2(vec2<bool>(false, arg_2.x))), global3.x >> (23806u % 32u), Struct_5(~u_input.a, !arg_2.yz, func_5(Struct_4(global3.wyx, -151f, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], vec2<f32>(-142f, 621f), u_input.c.xy)).c, func_2(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 24u)])), func_2(vec2<bool>(global0[_wgslsmith_index_u32(659u, 24u)], true))))))));
    var var_1 = reverseBits(40699i);
    var var_2 = Struct_5(vec3<u32>(u_input.a.x, firstLeadingBit(~(~u_input.b)), 1210u), select(select(vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(~74u, 24u)]), any(arg_2.yy)), !(!func_5(Struct_4(vec3<i32>(global3.x, 12836i, 2150i), var_0.x, true, var_0, vec2<u32>(22378u, 54482u))).c.d.e.c.xx), false), func_5(Struct_4(global3.xwy, 687f, _wgslsmith_div_f32(-290f, var_0.x) <= func_2(arg_2.yx).d.x, vec2<f32>(_wgslsmith_f_op_f32(arg_0 + -234f), 1316f), ~u_input.a.zy)).c, Struct_4(select(~abs(global3.zwz), ~vec3<i32>(-30082i, global3.x, global3.x), func_5(Struct_4(global3.xzy, -1319f, arg_2.x, arg_1, vec2<u32>(0u, u_input.c.x))).c.d.e.c), -1000f, _wgslsmith_f_op_f32(-1041f - var_0.x) >= arg_0, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0))))), ~vec2<u32>(u_input.a.x, 0u)), func_5(func_2(vec2<bool>(arg_0 >= var_0.x, all(vec3<bool>(arg_2.x, true, arg_2.x))))).e);
    let var_3 = vec4<bool>(!func_2(arg_2.ww).c, arg_2.x, (4294967295u <= (~59922u << (var_2.c.d.c % 32u))) | any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(u_input.b, 6u)]);
    return vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(~var_2.e.e, _wgslsmith_mod_vec2_u32(u_input.c.zx, var_2.e.e))), 20196u, ~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_2.c.d.c, 1u), u_input.b >> (65344u % 32u))), abs(var_2.d.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1851f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -435f);
    global1 = array<bool, 6>();
    var var_1 = select(~abs(vec4<u32>(~51348u, 1u, min(u_input.c.x, u_input.a.x), u_input.a.x)), _wgslsmith_div_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 1u, u_input.a.x), vec4<u32>(u_input.b, 20292u, u_input.b, 1u), vec4<u32>(118673u, u_input.c.x, u_input.b, 1u))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 2640u, 0u, 0u), func_1(-1642f, vec2<f32>(-297f, 1010f), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], false, global1[_wgslsmith_index_u32(1u, 6u)], true))))), false);
    var var_2 = var_1.yz;
    let var_3 = any(!(!func_5(Struct_4(global3.xyy, var_0, true, vec2<f32>(var_0, -250f), vec2<u32>(u_input.c.x, u_input.b))).b));
    var var_4 = func_5(func_2(select(vec2<bool>(var_3, all(vec2<bool>(true, true))), !select(vec2<bool>(var_3, global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec2<bool>(true, false), vec2<bool>(var_3, global0[_wgslsmith_index_u32(var_2.x, 24u)])), vec2<bool>(false, false)))).c;
    var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(func_5(func_5(func_2(vec2<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 6u)]))).e).a.yz, select(u_input.c.xy, select(vec2<u32>(0u, var_4.d.c), _wgslsmith_mod_vec2_u32(vec2<u32>(3401u, u_input.c.x), vec2<u32>(var_1.x, 4294967295u)), false), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_4.d.c, var_2.x), 24u)], true))), ~(~vec2<u32>(var_2.x, var_1.x)));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-138f * var_4.c.a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-217f * -1938f), _wgslsmith_f_op_f32(-var_0)))), var_4.c.e, select(select(select(var_4.d.e.d.yyz, vec3<bool>(true, var_3, true), true), !var_4.c.d.zxx, (var_1.x >> (54868u % 32u)) > var_2.x), select(var_4.d.e.d.xwx, select(!var_4.d.e.d.yxz, !var_4.d.e.c, true), all(vec3<bool>(global1[_wgslsmith_index_u32(51125u, 6u)], global0[_wgslsmith_index_u32(37281u, 24u)], true))), var_3), var_4.c.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_div_f32(1472f, var_0), var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec4_f32(max(var_4.d.e.e, func_5(func_5(Struct_4(global3.wxw, -890f, global0[_wgslsmith_index_u32(4294967295u, 24u)], var_4.d.e.e.wz, vec2<u32>(u_input.b, var_4.d.c))).e).c.c.e))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_mult_i32(-14631i, ~1i));
}

