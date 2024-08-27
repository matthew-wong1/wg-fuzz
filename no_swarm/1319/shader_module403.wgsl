struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23>;

var<private> global1: vec3<i32> = vec3<i32>(25143i, 2147483647i, -4181i);

var<private> global2: u32;

var<private> global3: vec3<f32>;

var<private> global4: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_3(arg_1, select(vec2<i32>(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(13458i, 12595i, -32746i), vec3<i32>(10679i, global1.x, 1i))), -firstTrailingBit(global1.xz) & _wgslsmith_sub_vec2_i32(-u_input.c, global1.zx), vec2<bool>(false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))), Struct_1(global3.yz, 0i, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1.c))))))), Struct_2(1u, reverseBits(~vec4<i32>(arg_1.b, global1.x, -67472i, u_input.c.x) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-16762i, global1.x, -2954i, 10379i), vec4<i32>(global1.x, arg_1.b, u_input.c.x, 0i), vec4<i32>(global1.x, arg_1.b, -1i, -36918i))), -vec4<i32>(i32(-1i) * -4530i, global1.x, firstTrailingBit(-28404i), _wgslsmith_clamp_i32(34223i, -2147483647i, -52422i))), vec2<bool>(select(false, all(vec2<bool>(false, false)) | select(true, false, false), false), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    var var_1 = ~reverseBits(select(~0u, abs(25322u), true) & u_input.a.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.c - 146f), _wgslsmith_f_op_f32(exp2(arg_1.c)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -946f)), var_0.e.x)), i32(-1i) * -arg_1.b, _wgslsmith_f_op_f32(-global3.x));
    let var_3 = Struct_2(reverseBits(countOneBits(u_input.a.x)), var_0.d.b, countOneBits(var_0.d.c));
    global4 = any(vec4<bool>(!any(vec4<bool>(true, var_0.e.x, var_0.e.x, false)), false | any(vec2<bool>(false, var_0.e.x)), global3.x == arg_0.x, var_0.e.x & false));
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = u_input.c;
    global0 = array<vec4<f32>, 23>();
    let var_1 = !vec4<bool>(func_3(vec4<f32>(_wgslsmith_f_op_f32(round(1163f)), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(f32(-1f) * -338f)), Struct_1(vec2<f32>(283f, -1000f), ~0i, _wgslsmith_f_op_f32(-arg_0.x))), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), any(vec2<bool>(false, false)) & any(vec3<bool>(true, true, true)));
    global0 = array<vec4<f32>, 23>();
    var var_2 = arg_1;
    return global3.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c, global3.x, global3.x) - vec3<f32>(-622f, -291f, 438f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1729f, global3.x, -377f)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, arg_0.a.a.x, 708f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-148f, global3.x, 1681f), vec3<f32>(arg_0.c.a.x, 471f, global3.x), vec3<bool>(arg_1.x, false, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global3.x), 161f, _wgslsmith_f_op_f32(-364f - -644f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1724f, 1461f, 353f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 2049f)), arg_1.yzy))))) * vec3<f32>(264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1392f) - 1190f)), global3.x));
    var var_0 = countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -35190i, -1i, -9007i), ~vec4<i32>(0i, -2147483647i, 2147483647i, -1i)) | ~reverseBits(global1.x), ~_wgslsmith_mod_i32(-3083i, ~(-9500i))));
    var var_1 = arg_1.x != !arg_1.x;
    let var_2 = _wgslsmith_f_op_f32(abs(-1613f));
    global0 = array<vec4<f32>, 23>();
    return Struct_2(select(u_input.a.x, 0u, !any(vec3<bool>(false, arg_0.e.x, true))), -((_wgslsmith_mod_vec4_i32(vec4<i32>(-25525i, 13222i, var_0.x, 40821i), vec4<i32>(0i, 8279i, 3598i, global1.x)) ^ arg_0.d.c) >> ((vec4<u32>(arg_0.d.a, 24507u, arg_0.d.a, arg_0.d.a) >> (~vec4<u32>(arg_0.d.a, 18428u, u_input.a.x, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_0.d.b);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    global2 = u_input.a.x;
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~_wgslsmith_mult_u32(0u, 1u), u_input.d, u_input.d, u_input.d), abs(firstLeadingBit(vec4<u32>(u_input.d, abs(5407u), u_input.d, ~u_input.d))), ~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 59145u, u_input.a.x), vec4<u32>(10431u, 0u, u_input.a.x, 12486u)), u_input.a.x, u_input.d, u_input.d << (u_input.a.x % 32u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, 39931u, 0u), vec4<u32>(u_input.a.x, 65738u, 43427u, u_input.a.x) << (vec4<u32>(4294967295u, 34858u, 44303u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1))), 23702i, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, global3.x, global3.x), vec3<bool>(arg_0.x, true, false))), Struct_2(u_input.d, vec4<i32>(-5982i, u_input.c.x, 1i, u_input.c.x), vec4<i32>(u_input.b, global1.x, global1.x, -22527i))))), vec2<i32>(-1i, -1i), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(-531f, -376f), false))), 0i, _wgslsmith_f_op_f32(abs(global3.x))), Struct_2(abs(43384u), ~select(vec4<i32>(global1.x, -59205i, u_input.c.x, 25415i), vec4<i32>(-32067i, u_input.c.x, 0i, 83409i), arg_0.x), vec4<i32>(global1.x ^ -25871i, _wgslsmith_div_i32(-7843i, 1i), _wgslsmith_mod_i32(-1i, global1.x), u_input.c.x)), select(vec2<bool>(true, true), !select(arg_0, vec2<bool>(true, true), arg_0), vec2<bool>(arg_1.x == global3.x, true))), vec4<bool>(false, arg_0.x, false, all(select(vec3<bool>(arg_0.x, true, true), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.zy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(480f, -1305f))))), abs(2147483647i ^ var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-183f, global3.x, !(!arg_0.x)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-411f, -213f)))))), 26849i, -1565f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 0u, 4294967295u), select(vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, 0u), vec4<u32>(u_input.d, u_input.a.x, 34277u, 24323u), false)), vec4<u32>(0u | min(u_input.a.x, u_input.d), u_input.d, u_input.d, _wgslsmith_div_u32(1496u, u_input.d) >> ((1u >> (u_input.d % 32u)) % 32u))) >= _wgslsmith_div_u32(1u, 13143u);
    global0 = array<vec4<f32>, 23>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global3.yy), 5858i, _wgslsmith_f_op_f32(abs(global3.x))), -abs(_wgslsmith_div_vec2_i32(u_input.c, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.c.x), global1.yx))), func_1(vec2<bool>(any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, false, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1463f - -858f)), 2307f)), Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a, u_input.a, u_input.a), firstLeadingBit(vec2<u32>(u_input.a.x, 45048u)) ^ reverseBits(u_input.a)), vec4<i32>(global1.x, 5490i, abs(-global1.x), -13476i), (-vec4<i32>(global1.x, 1i, u_input.b, u_input.c.x) | vec4<i32>(-1i, 39130i, global1.x, 0i)) ^ ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global1.x, -8229i, global1.x), vec4<i32>(u_input.b, 9561i, global1.x, u_input.b), vec4<i32>(-2147483647i, u_input.b, u_input.c.x, 4796i))), select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), 14751i < ~(890i >> (u_input.d % 32u))));
    global2 = u_input.a.x;
    global0 = array<vec4<f32>, 23>();
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(global3.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, var_0.c.a.x))), _wgslsmith_dot_vec2_i32(global1.yy, _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(global1.x, -30493i)), countOneBits(vec2<i32>(1i, u_input.b)))), -205f), vec2<i32>(-19331i, global1.x), var_0.a, Struct_2(~27619u, var_0.d.c | -var_0.d.c, reverseBits(var_0.d.c)), !var_0.e);
    let var_2 = any(select(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), var_0.d.a > 78758u), vec4<bool>(var_1.e.x, var_1.e.x | var_1.e.x, true, var_0.e.x | true), !vec4<bool>(false, var_1.e.x, false, true))) || false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.c.b, -16909i, u_input.b, 36705i) | -var_1.d.b, _wgslsmith_f_op_vec2_f32(-var_1.a.a), firstTrailingBit(func_4(Struct_3(var_1.a, -vec2<i32>(var_1.d.b.x, u_input.c.x), Struct_1(vec2<f32>(291f, var_0.a.c), -2147483647i, global3.x), var_1.d, !var_0.e), select(!vec4<bool>(var_0.e.x, true, var_1.e.x, false), vec4<bool>(false, false, var_0.e.x, var_0.e.x), !vec4<bool>(false, var_0.e.x, false, var_1.e.x))).b.xyy), var_0.c.a.x, vec2<f32>(var_1.a.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(223f, -2079f)))), var_1.a.c))));
}

