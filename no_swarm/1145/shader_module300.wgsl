struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: array<i32, 23>;

var<private> global2: array<vec3<u32>, 15>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = ~(~vec2<i32>(min(global1[_wgslsmith_index_u32(u_input.e & 67250u, 23u)], ~1i), 52477i));
    global1 = array<i32, 23>();
    return vec2<bool>(true, any(vec3<bool>(_wgslsmith_mod_u32(u_input.e, u_input.d.x) != 37914u, true, u_input.c > select(1u, u_input.a, false))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.a.a))) + -452f))), vec2<bool>(select(true && (arg_1.a.a.b.x == arg_0.a.c), true, false), _wgslsmith_f_op_f32(f32(-1f) * -113f) >= arg_0.a.d.a), _wgslsmith_div_u32(_wgslsmith_sub_u32(~(~arg_0.a.d.c), arg_1.a.a.c), 4179u));
    let var_1 = true;
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(1i), _wgslsmith_mod_i32(-(~(-2147483647i)), reverseBits(arg_2.x)) | (_wgslsmith_mult_i32(~(-74045i), _wgslsmith_clamp_i32(24749i, arg_2.x, 1i)) | -40792i));
    let var_3 = global2[_wgslsmith_index_u32(min(46419u, ~1u), 15u)];
    var_0 = Struct_1(var_0.a, select(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(arg_1.a.a.a * arg_1.a.a.a))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f + 315f) + arg_0.a.e)), select(!vec2<bool>(arg_0.a.a.b.x, true), func_3(_wgslsmith_f_op_f32(exp2(arg_0.a.a.a))), !(!vec2<bool>(arg_1.a.c, true)))), ~select(u_input.d.x, arg_1.a.a.c, any(var_0.b)));
    return arg_1.a.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    global2 = array<vec3<u32>, 15>();
    global2 = array<vec3<u32>, 15>();
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(arg_0.c, u_input.d.x, 16835u, u_input.a)), vec4<u32>(~0u, 1u, _wgslsmith_mod_u32(12136u, arg_0.c), 0u)) ^ vec4<u32>(u_input.a, max(~1u, ~u_input.e), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(31151u, 81114u, 0u, 0u) & vec4<u32>(30767u, arg_1.x, u_input.e, arg_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, arg_0.c, 0u, 4294967295u), vec4<u32>(arg_0.c, 1u, 60069u, arg_1.x), vec4<u32>(0u, arg_1.x, 1u, 4294967295u)))), vec4<u32>(1u, _wgslsmith_mult_u32(select(2289u, _wgslsmith_clamp_u32(25116u, arg_1.x, 0u), all(vec3<bool>(arg_0.b.x, false, true))), arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.c, 1u, 4294967295u), ~min(vec3<u32>(1u, arg_1.x, u_input.d.x), vec3<u32>(arg_0.c, 1u, arg_1.x))), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(~0u, min(58872u, arg_0.c), arg_1.x))));
    let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-549f)))).x;
    let var_2 = Struct_5(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), 486f), vec4<f32>(504f, _wgslsmith_f_op_f32(arg_0.a - 1000f), _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(exp2(arg_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_3(405f).x, vec3<bool>(true, !(!(!var_1)), true));
    return ~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.e, 23u)]);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec3<u32>) -> Struct_2 {
    global0 = array<Struct_4, 29>();
    var var_0 = u_input.b.x >= -_wgslsmith_add_i32(~global1[_wgslsmith_index_u32(51162u, 23u)] << (1u % 32u), -8768i);
    global2 = array<vec3<u32>, 15>();
    var var_1 = 54691u;
    let var_2 = Struct_3(Struct_1(1615f, select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(func_3(arg_0).x, true), false), _wgslsmith_mod_u32(35505u, arg_2.x)), 167f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f))))), select(true, arg_0 == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) + -657f), any(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1881f), !vec2<bool>(true, any(vec2<bool>(true, false))), _wgslsmith_mod_u32(abs(0u), _wgslsmith_add_u32(select(4294967295u, 26394u, true), ~0u))), arg_0);
    return Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-571f, arg_0)) - vec2<f32>(arg_0, -1029f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f)), _wgslsmith_f_op_f32(f32(-1f) * -1888f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_f32(exp2(arg_0))))), 353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)), _wgslsmith_f_op_f32(f32(-1f) * -1158f)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    let var_0 = Struct_1(arg_1.b.x, func_2(Struct_4(Struct_3(Struct_1(-1248f, vec2<bool>(false, true), 22844u), false, true, Struct_1(1000f, vec2<bool>(true, false), u_input.d.x), arg_1.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.d.yy, select(vec2<u32>(49085u, u_input.e), vec2<u32>(u_input.c, u_input.c), vec2<bool>(true, false))), 29u)], vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], u_input.b.x, -8316i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, global1[_wgslsmith_index_u32(u_input.e, 23u)], u_input.b.x), vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 23u)], -37129i, -34899i))), -62918i, 28114i, ~(-1238i))).b, _wgslsmith_clamp_u32(4294967295u, 1u, ~firstTrailingBit(1u)));
    return Struct_4(Struct_3(Struct_1(-106f, var_0.b, ~(~1311u)), true, true, Struct_1(_wgslsmith_f_op_f32(min(714f, _wgslsmith_f_op_f32(f32(-1f) * -1224f))), var_0.b, var_0.c), _wgslsmith_f_op_f32(trunc(arg_1.b.x))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = arg_0.x;
    global0 = array<Struct_4, 29>();
    var var_1 = u_input.b.yx;
    var_0 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(1f)), select(!arg_0, select(arg_0, !(!arg_0), !arg_0), select(!arg_0, vec2<bool>(true && arg_0.x, false), false)), 0u);
    return func_6(func_5(-1537f, func_4(func_2(global0[_wgslsmith_index_u32(9997u, 29u)], Struct_4(Struct_3(Struct_1(var_2.a, arg_0, var_2.c), false, true, Struct_1(-791f, var_2.b, var_2.c), var_2.a)), vec4<i32>(var_1.x, -1i, u_input.b.x, u_input.b.x)), vec2<u32>(4294967295u, var_2.c)) & 2147483647i, ~vec3<u32>(var_2.c, reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(var_2.c, 15u)]))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_2.a, var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1222f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.a)), 309f, _wgslsmith_f_op_f32(var_2.a - -587f), 810f))));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> Struct_5 {
    let var_0 = max(u_input.b.zx, firstTrailingBit(-(vec2<i32>(global1[_wgslsmith_index_u32(0u, 23u)], u_input.b.x) >> (max(u_input.d.zy, vec2<u32>(52318u, 14141u)) % vec2<u32>(32u)))));
    global1 = array<i32, 23>();
    let var_1 = Struct_1(arg_1.b.x, !vec2<bool>(any(!vec4<bool>(false, arg_0.a.d.b.x, arg_2.b.x, true)), arg_2.b.x), 4294967295u);
    global2 = array<vec3<u32>, 15>();
    let var_2 = func_5(arg_0.a.d.a, ~_wgslsmith_sub_i32(~min(global1[_wgslsmith_index_u32(0u, 23u)], u_input.b.x), i32(-1i) * -2147483647i), vec3<u32>(~_wgslsmith_div_u32(32198u, 61795u << (u_input.c % 32u)), _wgslsmith_clamp_u32(~(~0u), ~func_1(arg_0.a.a.b).a.a.c, reverseBits(var_1.c) & u_input.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(29889u, arg_0.a.d.c, 4294967295u, arg_0.a.d.c), select(vec4<u32>(arg_2.c, u_input.d.x, 43835u, 1u), vec4<u32>(var_1.c, 47263u, arg_0.a.d.c, arg_0.a.d.c), vec4<bool>(false, arg_0.a.c, arg_2.b.x, arg_0.a.c)))));
    return Struct_5(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.e)), _wgslsmith_f_op_f32(var_2.b.x - var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(max(-276f, arg_1.b.x)), -1000f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.e, -1000f) * arg_0.a.a.a), -1000f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f + 725f)))), !(!func_1(vec2<bool>(arg_0.a.b, true)).a.b), !vec3<bool>(arg_0.a.b, any(var_1.b), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -21969i;
    var var_1 = func_7(func_1(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), all(vec2<bool>(true, true))), vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_5(890f, -2147483647i, global2[_wgslsmith_index_u32(u_input.e, 15u)]).a.x, 790f)), vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(_wgslsmith_f_op_f32(1f + func_5(-2042f, global1[_wgslsmith_index_u32(~u_input.e, 23u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]).b.x), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(181f, 1000f)))), 1u));
    var var_2 = all(vec3<bool>(any(select(select(vec2<bool>(var_1.c.x, var_1.b), vec2<bool>(var_1.c.x, var_1.b), var_1.c.yz), !vec2<bool>(var_1.b, false), var_1.b != var_1.b)), _wgslsmith_f_op_f32(step(var_1.a.a.x, var_1.a.a.x)) >= var_1.a.a.x, !(_wgslsmith_f_op_f32(-var_1.a.a.x) < -1080f)));
    let var_3 = ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~(reverseBits(69303u) | func_6(var_1.a, var_1.a).a.d.c), 23u)], _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, countOneBits(8721i), select(-177i, global1[_wgslsmith_index_u32(u_input.e, 23u)], var_1.b)), u_input.b));
    var var_4 = vec4<f32>(var_1.a.b.x, func_1(vec2<bool>(var_1.c.x, !(!var_1.c.x))).a.a.a, 2341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x))))));
    global2 = array<vec3<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-1047f, firstLeadingBit(~_wgslsmith_sub_u32(u_input.a, func_2(Struct_4(Struct_3(Struct_1(var_4.x, vec2<bool>(var_1.b, var_1.c.x), 33720u), true, var_1.b, Struct_1(-1016f, var_1.c.xy, 4294967295u), 1000f)), global0[_wgslsmith_index_u32(u_input.d.x, 29u)], vec4<i32>(var_3, -7282i, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], 27916i)).c)));
}

