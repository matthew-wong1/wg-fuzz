struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 15031i;

var<private> global1: Struct_3 = Struct_3(Struct_1(-37079i, vec3<f32>(795f, 380f, 287f)), Struct_1(46546i, vec3<f32>(-819f, -1422f, -851f)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(-411f, -428f, 849f)), 0u), Struct_2(Struct_1(36899i, vec3<f32>(-312f, 121f, 1937f)), 76713u));

var<private> global2: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(821f, -1601f), vec2<f32>(-1000f, -807f), vec2<f32>(-777f, 346f), vec2<f32>(1186f, 934f), vec2<f32>(-1611f, -1000f), vec2<f32>(947f, -1452f), vec2<f32>(-3009f, 145f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_4(global1.d.a, countOneBits(select(vec4<u32>(4294967295u, 1u, 4294967295u, 57690u), max(arg_1.b, ~arg_1.b), false)), ~max(_wgslsmith_clamp_u32(reverseBits(0u), 4294967295u, 1u), ~(~arg_1.c)), -245f);
    let var_1 = ~abs(vec3<i32>(~(-16591i), global1.d.a.a ^ global1.b.a, u_input.c));
    var var_2 = Struct_3(Struct_1(5923i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a.b))))))), Struct_1(~(-_wgslsmith_clamp_i32(var_1.x, 45230i, 2147483647i)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(672f + arg_1.a.b.x), _wgslsmith_f_op_f32(min(876f, 830f)), _wgslsmith_f_op_f32(-346f - var_0.d)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(arg_1.a.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, global1.d.a.b.x, 872f)), 23065u >= global1.c.b)))), Struct_2(Struct_1(2369i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b.x, 1585f, -1099f) * vec3<f32>(global1.a.b.x, global1.b.b.x, -527f))))), _wgslsmith_add_u32(~abs(arg_1.c), arg_1.c)), Struct_2(Struct_1(_wgslsmith_add_i32(25162i >> (0u % 32u), var_0.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b.x, var_0.d, -604f))), 28258u));
    var var_3 = true;
    let var_4 = ~(~_wgslsmith_add_u32(_wgslsmith_mult_u32(24657u, u_input.d) ^ firstLeadingBit(38379u), global1.c.b | 4294967295u));
    return abs(~(-52634i));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) - 276f)))) - _wgslsmith_f_op_f32(-global1.b.b.x));
    var var_1 = Struct_3(Struct_1(~func_3(vec4<bool>(false, arg_2.x, arg_2.x, true), Struct_4(Struct_1(0i, vec3<f32>(-690f, global1.b.b.x, -1170f)), vec4<u32>(arg_0.x, 20096u, 4294967295u, 4294967295u), 4294967295u, arg_1.x)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2244f * var_0), _wgslsmith_f_op_f32(sign(403f)), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 1030f) + _wgslsmith_div_f32(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.a.b.x + -1035f) - _wgslsmith_f_op_f32(var_0 * 850f)))), global1.d.a, Struct_2(global1.a, _wgslsmith_dot_vec2_u32(~u_input.a.zy, ~vec2<u32>(global1.d.b, arg_0.x))), global1.c);
    global1 = Struct_3(Struct_1(var_1.d.a.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.a.b)))), global1.c.a, Struct_2(global1.a, arg_0.x), var_1.d);
    let var_2 = Struct_2(global1.d.a, 62790u);
    var var_3 = Struct_3(var_1.a, Struct_1(-(i32(-1i) * -var_2.a.a), _wgslsmith_f_op_vec3_f32(select(global1.b.b, global1.d.a.b, vec3<bool>(true, true, arg_2.x | arg_2.x)))), Struct_2(Struct_1(~(-1i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(var_2.a.b))))), ~arg_0.x), Struct_2(Struct_1(-reverseBits(u_input.c), global1.a.b), var_2.b ^ 9720u));
    return Struct_2(Struct_1(min(~(-22366i), var_2.a.a), var_3.a.b), _wgslsmith_mult_u32(~(~0u & select(41482u, 4294967295u, arg_2.x)), ~(~1u)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec2<f32>, 7>();
    var var_0 = Struct_3(global1.d.a, arg_0.d.a, Struct_2(Struct_1(~(i32(-1i) * -2147483647i), vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.x - -1000f), _wgslsmith_f_op_f32(trunc(global1.c.a.b.x)), _wgslsmith_f_op_f32(step(-507f, -129f)))), firstLeadingBit(1771u)), func_2(abs(_wgslsmith_sub_vec2_u32(u_input.a.zz ^ u_input.a.xy, ~vec2<u32>(32467u, u_input.b))), arg_0.b.b.zz, arg_2.yxx));
    let var_1 = arg_0.a.b;
    var var_2 = arg_2.x;
    var var_3 = false;
    return Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a, 32294i, arg_1, -2147483647i), -abs(~vec4<i32>(arg_0.b.a, 1i, u_input.c, 48045i))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(778f - arg_0.d.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(266f, arg_3.b.x)) + _wgslsmith_f_op_f32(abs(-1000f))), !arg_2.x)), global1.c.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.d.a.b.x, _wgslsmith_f_op_f32(-arg_3.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(620f - arg_3.b.x))))));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    global1 = Struct_3(func_4(Struct_3(Struct_1(firstLeadingBit(global1.c.a.a), vec3<f32>(-774f, 2232f, -1623f)), Struct_1(-19154i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-507f, -567f, global1.a.b.x))), func_2(vec2<u32>(71182u, 4294967295u) ^ u_input.a.yx, vec2<f32>(global1.c.a.b.x, global1.c.a.b.x), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), func_2(abs(vec2<u32>(arg_0, arg_0)), vec2<f32>(-871f, 797f), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), max(u_input.c, global1.b.a), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), !select(true, true, false)), Struct_1(1i, global1.a.b)), global1.d.a, func_2(~_wgslsmith_mod_vec2_u32(max(vec2<u32>(14873u, u_input.a.x), u_input.a.zx), ~vec2<u32>(12005u, arg_1)), vec2<f32>(_wgslsmith_f_op_f32(sign(global1.d.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.x) + global1.c.a.b.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), global1.c);
    var var_0 = Struct_4(func_2(_wgslsmith_mult_vec2_u32(min(u_input.a.xz, ~u_input.a.zy), u_input.a.xx), global2[_wgslsmith_index_u32(abs(~u_input.a.x | 1u), 7u)], !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))).a, _wgslsmith_div_vec4_u32(min(~vec4<u32>(arg_1, 4294967295u, 4294967295u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global1.d.b, u_input.a.x, 18303u), vec4<u32>(global1.c.b, 83223u, global1.d.b, 90967u), vec4<u32>(u_input.d, u_input.d, 0u, 4294967295u))), abs(select(vec4<u32>(45628u, 48079u, arg_0, arg_1), vec4<u32>(0u, arg_1, arg_1, u_input.e), true))) << (_wgslsmith_add_vec4_u32(vec4<u32>(6788u, reverseBits(arg_1), 62815u, ~arg_0), vec4<u32>(0u, ~arg_0, abs(u_input.d), _wgslsmith_mod_u32(arg_0, global1.c.b))) % vec4<u32>(32u)), ~u_input.e, _wgslsmith_f_op_f32(select(global1.b.b.x, -1000f, true)));
    var var_1 = max(~vec4<u32>(~_wgslsmith_sub_u32(global1.d.b, u_input.d), countOneBits(~0u), _wgslsmith_div_u32(u_input.e ^ 16036u, _wgslsmith_dot_vec2_u32(vec2<u32>(31289u, 1u), u_input.a.xy)), (u_input.e & var_0.b.x) << (u_input.a.x % 32u)), var_0.b);
    let var_2 = vec3<bool>((func_2(select(vec2<u32>(var_1.x, var_0.b.x), var_1.yx, false), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(254f, global1.b.b.x))), vec3<bool>(true, true, true)).b ^ (_wgslsmith_div_u32(arg_0, 61614u) | (arg_1 << (0u % 32u)))) == countOneBits(~max(u_input.b, global1.c.b)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))) || true, true);
    let var_3 = Struct_2(func_4(Struct_3(Struct_1(_wgslsmith_div_i32(-16537i, 2147483647i), func_4(Struct_3(Struct_1(-1i, global1.c.a.b), Struct_1(u_input.c, vec3<f32>(116f, var_0.a.b.x, 1000f)), Struct_2(Struct_1(global1.d.a.a, global1.c.a.b), arg_0), global1.d), global1.c.a.a, vec4<bool>(false, true, false, true), Struct_1(-30197i, var_0.a.b)).b), var_0.a, global1.d, Struct_2(func_4(Struct_3(global1.d.a, Struct_1(global1.a.a, var_0.a.b), global1.d, Struct_2(Struct_1(-68250i, vec3<f32>(563f, -798f, 1000f)), 1u)), 1i, vec4<bool>(var_2.x, var_2.x, false, false), global1.b), ~4294967295u)), u_input.c, !(!select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, false, true))), Struct_1(var_0.a.a, var_0.a.b)), _wgslsmith_mult_u32(reverseBits(_wgslsmith_mod_u32(arg_1, 4294967295u)) & 4294967295u, ~_wgslsmith_clamp_u32(arg_1 >> (arg_0 % 32u), ~0u, 0u)));
    return Struct_1(func_2(~(var_0.b.yx & _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 31074u), var_1.ww)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a.b.zz, vec2<f32>(global1.c.a.b.x, -162f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-756f, var_0.a.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.b.x, 1349f)), select(false, false, false)))), vec3<bool>(true, var_2.x, true)).a.a, vec3<f32>(_wgslsmith_div_f32(2131f, _wgslsmith_f_op_f32(var_3.a.b.x + var_3.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.b.x), _wgslsmith_f_op_f32(-656f - var_3.a.b.x))), _wgslsmith_f_op_f32(exp2(global1.d.a.b.x))));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_0.b.a, -5175i, 2147483647i), vec3<i32>(43761i, 65750i, global1.d.a.a), false), -vec3<i32>(1i, 3363i, 43987i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -3090i, u_input.c), vec3<i32>(-3598i, -1i, arg_0.c.a.a))), 18032i, min(select(_wgslsmith_dot_vec2_i32(vec2<i32>(49524i, 32511i), vec2<i32>(arg_0.c.a.a, arg_0.c.a.a)), func_2(vec2<u32>(0u, arg_0.c.b), arg_0.c.a.b.yz, vec3<bool>(false, false, false)).a.a, true), i32(-1i) * -global1.a.a), 3809i ^ -select(-2147483647i, global1.a.a, false)) >> (((_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 3718u, arg_0.d.b, global1.d.b) & vec4<u32>(u_input.d, u_input.a.x, arg_0.c.b, global1.d.b), vec4<u32>(8816u, global1.c.b, 0u, 1u)) >> (select(select(vec4<u32>(9702u, 63157u, u_input.e, global1.c.b), vec4<u32>(global1.d.b, global1.d.b, global1.c.b, global1.d.b), vec4<bool>(false, false, true, false)), firstTrailingBit(vec4<u32>(global1.c.b, 0u, arg_0.d.b, 63637u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)) % vec4<u32>(32u))) ^ (vec4<u32>(u_input.e, ~global1.c.b, _wgslsmith_dot_vec4_u32(vec4<u32>(13043u, 1u, arg_0.d.b, global1.c.b), vec4<u32>(arg_0.c.b, 43476u, global1.c.b, arg_0.d.b)), _wgslsmith_mod_u32(global1.c.b, 8079u)) | (vec4<u32>(arg_0.d.b, 4294967295u, 27309u, u_input.a.x) << (vec4<u32>(arg_0.d.b, 0u, u_input.e, arg_0.c.b) % vec4<u32>(32u))))) % vec4<u32>(32u));
    var_0 = vec4<i32>(global1.d.a.a, 61096i, 311i, -38285i & var_0.x);
    var var_1 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(min(global1.d.b, 4294967295u), 48806u)), global1.c.b);
    var var_2 = true;
    let var_3 = func_2(~(~(~vec2<u32>(0u, 0u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.a.b.x, -1150f) + global2[_wgslsmith_index_u32(global1.c.b, 7u)]), global2[_wgslsmith_index_u32(u_input.b, 7u)], vec2<bool>(false, true)))), func_2(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), u_input.a.zx), func_2(~u_input.a.yx, vec2<f32>(arg_0.c.a.b.x, arg_0.a.b.x), vec3<bool>(true, true, true)).a.b.yy, vec3<bool>(true, select(true, false, true), true)).a.b.zx, vec2<bool>(true, true))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.b.x) + _wgslsmith_f_op_f32(exp2(arg_0.b.b.x))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1354f)), _wgslsmith_f_op_f32(arg_0.b.b.x * 1000f)), false, all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true)))).b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(Struct_3(func_1(~0u, ~global1.c.b & _wgslsmith_mod_u32(109823u, u_input.e)), func_4(Struct_3(Struct_1(global1.d.a.a, vec3<f32>(global1.d.a.b.x, -582f, -263f)), Struct_1(u_input.c, vec3<f32>(-270f, global1.c.a.b.x, -1822f)), func_2(vec2<u32>(0u, 1u), vec2<f32>(2072f, 694f), vec3<bool>(false, true, false)), func_2(vec2<u32>(u_input.b, u_input.e), global1.a.b.xx, vec3<bool>(true, false, true))), u_input.c, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), global1.d.a), Struct_2(Struct_1(_wgslsmith_mult_i32(-1i, u_input.c), global1.d.a.b), ~u_input.e), Struct_2(func_2(u_input.a.xy, _wgslsmith_f_op_vec2_f32(min(global1.c.a.b.zx, global1.c.a.b.yz)), vec3<bool>(true, true, true)).a, u_input.d)));
    var var_0 = true;
    let var_1 = global1.d.b;
    let var_2 = global1.b.b.x;
    var_0 = any(!vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), false));
    let var_3 = _wgslsmith_sub_u32(15426u, firstTrailingBit(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.d), vec3<u32>(global1.d.b, 1u, 5233u)), u_input.e, _wgslsmith_mult_u32(~46765u, u_input.b << (global1.c.b % 32u)))));
    var var_4 = select(!vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), all(vec2<bool>(false, true)), true, false), select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), global1.b.b.x <= global1.d.a.b.x), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(true, true, true))), select(true, !all(vec4<bool>(false, false, false, true)), !all(vec3<bool>(true, true, true)))), !vec4<bool>((var_3 < global1.c.b) || true, true | (global1.d.a.a == 9202i), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true));
    var var_5 = true;
    var_0 = !all(vec4<bool>(!var_4.x, all(select(var_4.yyz, var_4.zzx, var_4.x)), select(var_4.x, var_4.x, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(~29327u, _wgslsmith_clamp_u32(4294967295u, var_3, global1.d.b), firstTrailingBit(50097u))), -13039i);
}

