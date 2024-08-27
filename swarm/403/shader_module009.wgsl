struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -69923i;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(57874u, 1u, 0u), 0u);

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: i32;

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> i32 {
    global1 = arg_3;
    var var_0 = Struct_4(!select(vec4<bool>(all(vec3<bool>(false, true, global2.x)), true, !global2.x, true), vec4<bool>(global2.x, !arg_2, false & arg_2, arg_2), false), !all(select(vec2<bool>(global2.x, false), vec2<bool>(true, false), select(vec2<bool>(true, arg_2), vec2<bool>(false, false), true))));
    var var_1 = Struct_4(!var_0.a, false);
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_vec3_u32(arg_3.a, ~vec3<u32>(35294u, 1u, global1.a.x)), abs(~max(33138u, global1.a.x))), Struct_2(-128f, vec2<bool>(true, true), var_1.a, ~(max(u_input.a, 4294967295u) & abs(0u)), arg_3));
    let var_3 = Struct_1(~arg_3.a, (_wgslsmith_add_u32(~global1.b, ~0u) ^ firstTrailingBit(firstLeadingBit(4294967295u))) ^ ~4294967295u);
    return ~firstTrailingBit(~_wgslsmith_clamp_i32(u_input.e, u_input.e ^ 0i, u_input.e));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = min(u_input.c.yxz, u_input.c.xxx);
    global0 = max(-u_input.d.x, var_0.x);
    global3 = ~0i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(259f, _wgslsmith_f_op_f32(arg_0 + arg_0), !global2.x)))));
    let var_2 = vec2<i32>(min(_wgslsmith_div_i32(~(-var_0.x), _wgslsmith_sub_i32(arg_1.x, 17896i & var_0.x)), func_3(_wgslsmith_f_op_f32(-1057f * _wgslsmith_f_op_f32(-arg_0)), vec3<f32>(_wgslsmith_f_op_f32(arg_0 + -286f), 1154f, _wgslsmith_div_f32(-173f, var_1.x)), _wgslsmith_div_i32(-1i, var_0.x) == arg_1.x, Struct_1(~vec3<u32>(global1.a.x, global1.a.x, 11631u), ~u_input.a))), i32(-1i) * -1616i);
    return Struct_2(192f, !global2.zy, !select(select(vec4<bool>(global2.x, global2.x, global2.x, false), select(vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(true, true, true, global2.x)), all(vec3<bool>(false, global2.x, global2.x))), vec4<bool>(global2.x, true, global2.x, false), all(vec4<bool>(global2.x, true, true, global2.x)) != !global2.x), 4294967295u, Struct_1(vec3<u32>(global1.b, ~u_input.b, 12927u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(42704u, global1.b, u_input.b) << (vec3<u32>(29653u, global1.a.x, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.b, global1.a.x), all(vec2<bool>(true, global2.x))), ~(vec3<u32>(0u, 11385u, 1u) & global1.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = u_input.d.x & 1i;
    var var_1 = 1u;
    global0 = u_input.c.x;
    let var_2 = vec4<bool>(select(arg_1.b.a != _wgslsmith_f_op_f32(abs(-1252f)), any(arg_1.b.b), all(arg_2.b)) | true, any(arg_2.c.yxz), func_2(-724f, countOneBits(u_input.c.zyz)).b.x, arg_1.b.c.x);
    var_1 = ~(~firstLeadingBit(~global1.b));
    return func_2(_wgslsmith_f_op_f32(-func_2(-1000f, max(u_input.c.wyy ^ u_input.c.zyz, ~vec3<i32>(-14220i, u_input.c.x, u_input.e))).a), u_input.c.wxw);
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    global3 = _wgslsmith_dot_vec4_i32(-vec4<i32>(~u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, -1i), firstLeadingBit(u_input.c.x), -u_input.c.x) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d.x, -31312i, -3527i, u_input.d.x), u_input.c, ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.d.x, -2147483647i, u_input.d.x), vec4<i32>(1i, 7158i, u_input.e, u_input.e))), vec4<i32>(u_input.c.x, u_input.e, ~abs(u_input.d.x), abs(u_input.c.x)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1345f, arg_0.a)))), _wgslsmith_f_op_f32(2508f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a))) + func_2(-1153f, u_input.c.xxx).a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(floor(162f))) - -999f)));
    var_1 = _wgslsmith_f_op_f32(global4.x + arg_0.a);
    let var_2 = func_2(_wgslsmith_f_op_f32(-1576f + func_4(func_2(_wgslsmith_f_op_f32(global4.x - var_0), vec3<i32>(u_input.c.x, 2147483647i, u_input.d.x) ^ vec3<i32>(1i, -2147483647i, u_input.c.x)).e, Struct_3(Struct_1(global1.a, global1.b), func_4(Struct_1(vec3<u32>(16329u, arg_0.d, u_input.b), 48240u), Struct_3(arg_0.e, arg_0), arg_0)), Struct_2(_wgslsmith_f_op_f32(select(-438f, -1573f, arg_0.b.x)), select(arg_0.c.wx, arg_0.c.zy, false), arg_0.c, ~u_input.a, arg_0.e)).a), ~(_wgslsmith_mod_vec3_i32(-u_input.c.zzx, min(vec3<i32>(u_input.c.x, u_input.d.x, u_input.d.x), u_input.c.yyz)) | select(vec3<i32>(-1430i, 413i, 6976i), -vec3<i32>(u_input.d.x, 0i, 2147483647i), vec3<bool>(true, arg_0.b.x, arg_0.c.x)))).e;
    return Struct_4(vec4<bool>(any(func_4(Struct_1(vec3<u32>(4294967295u, 12533u, arg_0.e.a.x), 28382u), Struct_3(var_2, arg_0), arg_0).c.zy), true, any(!global2.xx), any(vec2<bool>(arg_0.c.x, arg_0.d > 76386u))), !(((53506u >> (global1.a.x % 32u)) >= 67836u) || true));
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    global4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) - -637f), _wgslsmith_div_f32(-791f, _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global4.x) * vec2<f32>(global4.x, -771f))))), arg_2.b));
    let var_0 = global2.zz;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.x)) + global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + _wgslsmith_div_f32(arg_1, global4.x)), global4.x)));
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~abs(global1.a.xx), _wgslsmith_mult_vec2_u32(global1.a.zx, vec2<u32>(abs(u_input.b), ~global1.a.x))), ~vec2<u32>(17830u, countOneBits(firstTrailingBit(1u))));
    var var_3 = func_4(func_4(func_4(Struct_1(~vec3<u32>(u_input.b, 20753u, 1u), ~0u), Struct_3(func_2(-871f, vec3<i32>(1i, -2147483647i, u_input.e)).e, Struct_2(-633f, arg_2.a.zy, arg_2.a, u_input.a, Struct_1(global1.a, 33558u))), Struct_2(_wgslsmith_f_op_f32(step(-156f, var_1.x)), func_2(var_1.x, vec3<i32>(2147483647i, u_input.d.x, u_input.d.x)).b, arg_0.a, func_4(Struct_1(global1.a, u_input.a), Struct_3(Struct_1(global1.a, 17245u), Struct_2(-1000f, global2.xz, vec4<bool>(var_0.x, var_0.x, arg_2.b, false), u_input.a, Struct_1(global1.a, var_2.x))), Struct_2(arg_1, vec2<bool>(arg_2.a.x, var_0.x), arg_0.a, 4294967295u, Struct_1(global1.a, u_input.b))).d, Struct_1(vec3<u32>(4294967295u, global1.b, var_2.x), u_input.b))).e, Struct_3(Struct_1(min(vec3<u32>(0u, u_input.a, global1.b), vec3<u32>(15458u, 4294967295u, 23927u)), min(0u, var_2.x)), func_4(Struct_1(global1.a, global1.b), Struct_3(Struct_1(global1.a, u_input.a), Struct_2(-229f, vec2<bool>(false, true), arg_0.a, u_input.a, Struct_1(vec3<u32>(var_2.x, global1.a.x, var_2.x), 1u))), func_2(-1000f, vec3<i32>(u_input.d.x, 0i, u_input.d.x)))), func_4(func_4(func_4(Struct_1(global1.a, var_2.x), Struct_3(Struct_1(vec3<u32>(global1.a.x, global1.b, 4294967295u), global1.a.x), Struct_2(global4.x, vec2<bool>(true, arg_2.a.x), arg_0.a, global1.b, Struct_1(global1.a, 17339u))), Struct_2(1218f, vec2<bool>(arg_2.a.x, var_0.x), vec4<bool>(false, true, arg_2.b, true), 34384u, Struct_1(vec3<u32>(18439u, global1.a.x, 457u), global1.b))).e, Struct_3(Struct_1(vec3<u32>(global1.b, 4294967295u, var_2.x), u_input.b), Struct_2(global4.x, vec2<bool>(true, var_0.x), arg_2.a, 53564u, Struct_1(vec3<u32>(var_2.x, var_2.x, global1.b), u_input.b))), Struct_2(634f, arg_0.a.xw, arg_0.a, var_2.x, Struct_1(vec3<u32>(4294967295u, 4294967295u, var_2.x), u_input.a))).e, Struct_3(Struct_1(vec3<u32>(4294967295u, 38969u, 1u), u_input.a), Struct_2(arg_1, arg_2.a.xz, arg_0.a, global1.b, Struct_1(global1.a, u_input.b))), Struct_2(_wgslsmith_div_f32(374f, 357f), arg_0.a.zw, arg_2.a, ~var_2.x, Struct_1(vec3<u32>(4294967295u, global1.a.x, global1.a.x), 5920u)))).e, Struct_3(Struct_1(~global1.a, 46402u), Struct_2(_wgslsmith_f_op_f32(abs(761f)), vec2<bool>(false, var_0.x), !arg_2.a, 4294967295u, Struct_1(select(global1.a, global1.a, vec3<bool>(arg_2.a.x, arg_0.a.x, false)), global1.a.x))), Struct_2(global4.x, vec2<bool>(true, func_2(184f, -u_input.c.zyz).b.x), !(!func_2(1043f, vec3<i32>(-35500i, 34576i, u_input.e)).c), u_input.a, Struct_1(vec3<u32>(~76922u, global1.a.x, u_input.b), u_input.b))).e;
    return func_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-723f))), func_5(func_4(Struct_1(var_3.a, 75532u), Struct_3(Struct_1(vec3<u32>(global1.b, var_2.x, global1.b), 34055u), Struct_2(-1371f, arg_0.a.zx, vec4<bool>(var_0.x, true, global2.x, false), var_3.b, Struct_1(var_3.a, u_input.a))), func_2(var_1.x, u_input.c.yxz))).a.yw, arg_2.a, global1.a.x, func_4(Struct_1(~var_3.a, func_4(Struct_1(vec3<u32>(u_input.b, 4699u, 24741u), 29441u), Struct_3(Struct_1(vec3<u32>(112311u, 4294967295u, u_input.a), 62742u), Struct_2(global4.x, vec2<bool>(var_0.x, arg_2.b), arg_2.a, u_input.b, Struct_1(vec3<u32>(4294967295u, 18946u, 1u), var_3.a.x))), Struct_2(-581f, vec2<bool>(var_0.x, true), arg_2.a, global1.b, Struct_1(var_3.a, var_3.b))).d), Struct_3(func_4(Struct_1(vec3<u32>(0u, 76857u, 4294967295u), 8501u), Struct_3(Struct_1(vec3<u32>(0u, global1.b, 1u), 85498u), Struct_2(global4.x, vec2<bool>(false, arg_0.b), arg_0.a, 0u, Struct_1(vec3<u32>(var_3.b, var_3.a.x, 13764u), 4294967295u))), Struct_2(var_1.x, arg_2.a.yz, arg_0.a, var_3.b, Struct_1(vec3<u32>(u_input.a, global1.a.x, 44466u), u_input.a))).e, func_4(Struct_1(vec3<u32>(1832u, 34134u, var_3.b), 30318u), Struct_3(Struct_1(vec3<u32>(42924u, 1u, 1246u), 4294967295u), Struct_2(-273f, vec2<bool>(var_0.x, true), vec4<bool>(var_0.x, global2.x, arg_0.a.x, true), var_2.x, Struct_1(vec3<u32>(13930u, u_input.a, 4294967295u), u_input.a))), Struct_2(842f, global2.xy, arg_0.a, 51814u, Struct_1(vec3<u32>(1u, 4294967295u, var_2.x), 64646u)))), Struct_2(arg_1, func_5(Struct_2(global4.x, arg_0.a.wy, vec4<bool>(arg_2.b, global2.x, true, var_0.x), 1u, Struct_1(vec3<u32>(u_input.a, 4294967295u, var_3.a.x), 1u))).a.zx, vec4<bool>(true, var_0.x, arg_0.b, arg_0.a.x), var_3.a.x | 0u, func_4(Struct_1(var_3.a, global1.a.x), Struct_3(Struct_1(vec3<u32>(u_input.b, var_3.a.x, 1u), 4294967295u), Struct_2(1000f, vec2<bool>(global2.x, false), arg_0.a, u_input.a, Struct_1(vec3<u32>(4294967295u, global1.a.x, 1u), 1u))), Struct_2(global4.x, global2.zz, arg_0.a, 4294967295u, Struct_1(vec3<u32>(var_2.x, var_3.a.x, var_2.x), var_2.x))).e)).e));
}

fn func_7(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.c.zx, firstLeadingBit(vec2<i32>(u_input.c.x, ~arg_3.x)));
    var var_1 = Struct_4(vec4<bool>(true, func_4(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, u_input.a, 1u), global1.a), global1.a.x), Struct_3(func_2(global4.x, arg_3).e, Struct_2(599f, vec2<bool>(arg_1.a.x, true), arg_1.a, 5045u, Struct_1(global1.a, 85534u))), Struct_2(arg_2, vec2<bool>(global2.x, arg_1.b), !arg_1.a, 26553u | arg_0, Struct_1(global1.a, u_input.a))).b.x, true, func_6(Struct_4(!arg_1.a, arg_1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_4(vec4<bool>(global2.x, global2.x, arg_1.b, global2.x), arg_1.b)).a.x), firstLeadingBit(abs(-1i)) == _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(firstLeadingBit(1i), abs(-45953i), u_input.e << (u_input.a % 32u), ~var_0)));
    global2 = var_1.a.yxw;
    var var_2 = Struct_3(func_4(func_4(Struct_1(abs(vec3<u32>(u_input.a, global1.a.x, u_input.b)), 39539u), Struct_3(func_2(arg_2, u_input.c.ywy).e, Struct_2(global4.x, vec2<bool>(true, false), vec4<bool>(global2.x, arg_1.b, global2.x, arg_1.b), 99232u, Struct_1(vec3<u32>(4294967295u, 19471u, u_input.b), 4294967295u))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1858f), func_6(Struct_4(vec4<bool>(false, var_1.b, true, var_1.a.x), var_1.a.x), arg_2, Struct_4(var_1.a, true)).a.zw, vec4<bool>(false, false, true, arg_1.b), firstLeadingBit(global1.a.x), func_4(Struct_1(global1.a, u_input.a), Struct_3(Struct_1(global1.a, 20047u), Struct_2(1103f, var_1.a.wy, vec4<bool>(var_1.b, true, true, true), 30814u, Struct_1(global1.a, global1.b))), Struct_2(arg_2, vec2<bool>(var_1.a.x, true), var_1.a, 1u, Struct_1(global1.a, global1.b))).e)).e, Struct_3(func_4(Struct_1(global1.a, 83854u), Struct_3(Struct_1(vec3<u32>(51611u, 0u, u_input.a), 69037u), Struct_2(global4.x, arg_1.a.xx, vec4<bool>(var_1.b, global2.x, false, global2.x), u_input.b, Struct_1(global1.a, arg_0))), Struct_2(528f, arg_1.a.yw, arg_1.a, 3037u, Struct_1(vec3<u32>(109026u, u_input.b, 0u), 27455u))).e, Struct_2(_wgslsmith_f_op_f32(sign(global4.x)), arg_1.a.yx, arg_1.a, 24246u, func_2(global4.x, arg_3).e)), func_2(_wgslsmith_f_op_f32(-global4.x), arg_3)).e, Struct_2(-309f, vec2<bool>(true, true), vec4<bool>(global2.x, func_6(func_6(arg_1, -942f, Struct_4(vec4<bool>(true, arg_1.b, arg_1.a.x, global2.x), var_1.b)), _wgslsmith_f_op_f32(global4.x + -1648f), Struct_4(arg_1.a, arg_1.b)).a.x, !(!global2.x), global2.x), max(~_wgslsmith_add_u32(arg_0, arg_0), 4294967295u), Struct_1(global1.a, global1.b)));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1699f, global4.x) * vec2<f32>(-575f, var_2.b.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a, -709f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-704f, -991f) - vec2<f32>(var_2.b.a, -828f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.a) - -110f)));
    return func_4(func_2(279f, _wgslsmith_sub_vec3_i32(~select(arg_3, vec3<i32>(arg_3.x, 2147483647i, -26680i), var_2.b.b.x), u_input.c.xyy)).e, Struct_3(var_2.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * -1810f), func_4(func_4(Struct_1(vec3<u32>(global1.a.x, var_2.a.a.x, u_input.a), u_input.b), Struct_3(Struct_1(global1.a, arg_0), Struct_2(global4.x, global2.xz, vec4<bool>(var_2.b.c.x, false, global2.x, false), u_input.a, Struct_1(vec3<u32>(1u, 4294967295u, global1.a.x), global1.b))), Struct_2(-767f, vec2<bool>(global2.x, false), vec4<bool>(true, arg_1.a.x, global2.x, true), global1.a.x, Struct_1(var_2.a.a, u_input.b))).e, Struct_3(Struct_1(var_2.a.a, global1.a.x), var_2.b), func_4(Struct_1(vec3<u32>(1u, u_input.b, var_2.b.e.b), 20643u), Struct_3(Struct_1(global1.a, 0u), Struct_2(global4.x, global2.zx, arg_1.a, 0u, Struct_1(vec3<u32>(arg_0, 4294967295u, arg_0), arg_0))), var_2.b)).c.ww, !var_1.a, firstLeadingBit(var_2.b.e.a.x), Struct_1(var_2.b.e.a, arg_0))), var_2.b);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    var var_0 = func_7(~_wgslsmith_mult_u32(abs(global1.b) | ~1u, ~countOneBits(arg_0)), func_6(func_5(func_4(Struct_1(vec3<u32>(51664u, 1u, global1.b), 25906u), Struct_3(Struct_1(vec3<u32>(13452u, 1u, 81652u), 22106u), Struct_2(1471f, vec2<bool>(arg_2, false), vec4<bool>(true, false, true, global2.x), 16552u, Struct_1(vec3<u32>(global1.a.x, global1.a.x, 69999u), 23012u))), func_2(global4.x, u_input.c.xzw))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * arg_1.x)) * arg_1.x), func_5(Struct_2(func_4(Struct_1(global1.a, 1u), Struct_3(Struct_1(vec3<u32>(0u, u_input.b, global1.a.x), arg_0), Struct_2(global4.x, global2.zx, vec4<bool>(arg_2, global2.x, true, arg_2), u_input.b, Struct_1(vec3<u32>(4294967295u, 0u, 66019u), u_input.a))), Struct_2(-443f, vec2<bool>(arg_2, global2.x), vec4<bool>(arg_2, global2.x, arg_2, true), 0u, Struct_1(global1.a, global1.b))).a, select(global2.yz, global2.xx, global2.yy), !vec4<bool>(false, false, arg_2, arg_2), _wgslsmith_mult_u32(18777u, 42486u), func_4(Struct_1(global1.a, arg_0), Struct_3(Struct_1(global1.a, 4294967295u), Struct_2(1058f, vec2<bool>(arg_2, false), vec4<bool>(false, arg_2, true, false), 42913u, Struct_1(vec3<u32>(arg_0, global1.a.x, u_input.b), global1.b))), Struct_2(arg_1.x, vec2<bool>(arg_2, true), vec4<bool>(true, true, global2.x, true), arg_0, Struct_1(vec3<u32>(41598u, arg_0, 10342u), 24240u))).e))), -1367f, ~select(reverseBits(vec3<i32>(2147483647i, 2147483647i, u_input.d.x) | vec3<i32>(18281i, u_input.d.x, u_input.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, u_input.d.x), u_input.c.xwx), false));
    let var_1 = func_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), -231f))), func_4(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 28442u), vec3<u32>(arg_0, 68258u, arg_0), vec3<u32>(0u, global1.a.x, 4777u)), ~61219u), Struct_3(var_0.e, Struct_2(-1421f, vec2<bool>(false, arg_2), var_0.c, var_0.d, Struct_1(vec3<u32>(27934u, 1u, var_0.e.a.x), 1u))), func_7(82010u, Struct_4(var_0.c, arg_2), _wgslsmith_f_op_f32(-var_0.a), u_input.c.wxx)).b, !vec4<bool>(true, false, true, all(vec3<bool>(true, arg_2, false))), u_input.b, func_7(~(~9138u), func_6(func_5(Struct_2(global4.x, global2.yz, vec4<bool>(arg_2, true, global2.x, false), var_0.e.a.x, var_0.e)), _wgslsmith_f_op_f32(abs(var_0.a)), func_5(Struct_2(148f, var_0.c.xx, var_0.c, 98149u, Struct_1(global1.a, global1.a.x)))), _wgslsmith_f_op_f32(round(-1142f)), u_input.c.ywz).e));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<bool>(false, global2.x, global2.x);
    global4 = vec2<f32>(global4.x, _wgslsmith_div_f32(-770f, _wgslsmith_f_op_f32(func_1(67385u, _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -238f, global4.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-458f, global4.x, global4.x) * vec3<f32>(-856f, 1586f, global4.x))), select(global2.x == global2.x, global2.x | true, global2.x || global2.x)))));
    global1 = Struct_1(abs(vec3<u32>(min(u_input.b, 4294967295u) >> (u_input.a % 32u), max(4294967295u, u_input.b), abs(~u_input.b))), ~(~(~u_input.a)) | global1.a.x);
    let var_0 = Struct_3(func_2(_wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(floor(-239f))), ~u_input.c.wwx).e, Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -545f), 1515f, true)), global2.yx, !vec4<bool>(!global2.x, global2.x, true, global2.x), 0u, func_7(115914u, func_6(Struct_4(vec4<bool>(global2.x, global2.x, global2.x, global2.x), true), global4.x, Struct_4(vec4<bool>(global2.x, true, false, true), true)), _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-1179f + -654f)), max(vec3<i32>(u_input.e, u_input.e, 0i), vec3<i32>(u_input.c.x, u_input.e, u_input.c.x))).e));
    let var_1 = vec4<u32>(~var_0.b.e.a.x, reverseBits(global1.b), ~(~(~_wgslsmith_sub_u32(u_input.a, global1.b))), var_0.b.e.b);
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, var_0.b.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.x, 188f), vec2<f32>(global4.x, 306f), false)), true))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-419f, var_0.b.a) + vec2<f32>(global4.x, var_0.b.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(644f, var_0.b.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-278f, 654f) * vec2<f32>(global4.x, 786f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-729f, var_0.b.a) + vec2<f32>(-193f, var_0.b.a))))));
    let var_2 = vec2<bool>(!all(func_7(1u, Struct_4(var_0.b.c, false), global4.x, vec3<i32>(1i, u_input.c.x, -16496i)).c.yyz), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e, 7078i) | _wgslsmith_mod_vec2_i32(u_input.c.yw, u_input.d), vec2<i32>(-u_input.e, u_input.d.x)) < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 21068i), u_input.c.zw));
    var var_3 = Struct_3(var_0.a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.a)))), vec3<i32>(-1i) * -u_input.c.yzz));
    global1 = func_4(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.a * -1000f))), vec3<i32>(u_input.e, -25563i, _wgslsmith_clamp_i32(-20929i, _wgslsmith_div_i32(u_input.e, 1856i), firstLeadingBit(u_input.e)))).e, var_0, var_0.b).e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_f_op_f32(f32(-1f) * -278f)), _wgslsmith_f_op_f32(182f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(455f)) - _wgslsmith_f_op_f32(max(-613f, -1036f)))), 1213f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-279f, global4.x)), _wgslsmith_f_op_f32(exp2(var_0.b.a)))) + func_2(_wgslsmith_f_op_f32(f32(-1f) * -175f), vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, -865i), u_input.c.x ^ u_input.d.x, ~(-19644i))).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f + _wgslsmith_f_op_f32(-var_3.b.a)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_div_f32(var_3.b.a, 530f))))));
}

