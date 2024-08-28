struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(-5174i, -24720i), Struct_1(17460u, 15639u), Struct_2(Struct_1(13430u, 0u), true, Struct_1(4294967295u, 1u), false, false), vec3<f32>(1410f, 537f, 844f), vec3<f32>(860f, 1000f, -870f));

var<private> global1: array<i32, 5> = array<i32, 5>(i32(-2147483648), 3449i, 1i, -8765i, 1i);

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(global0.e.x - -226f);
    let var_1 = global0.b;
    var_0 = global0.d.x;
    let var_2 = select(~4294967295u, var_1.a, global2.x);
    var var_3 = Struct_4(global2.xw, Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(global0.a, _wgslsmith_clamp_vec2_i32(global0.a, vec2<i32>(global0.a.x, u_input.b.x), u_input.b.zz)), -(u_input.a.wz & vec2<i32>(global1[_wgslsmith_index_u32(1u, 5u)], -15225i)), max(u_input.a.xw, max(vec2<i32>(global1[_wgslsmith_index_u32(global0.b.b, 5u)], 1i), vec2<i32>(-1i, -27905i)))), global0.b, global0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1064f, global0.d.x) * global0.e) + _wgslsmith_f_op_vec3_f32(round(global0.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-788f, 648f, global0.e.x))), global0.e), u_input.a.x, !(!(!global2.x) != global0.c.d));
    return global1[_wgslsmith_index_u32(14129u, 5u)];
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global1 = array<i32, 5>();
    let var_0 = Struct_3((-vec2<i32>(global0.a.x, 1i) | (-vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(global0.b.a, 5u)]) | ~vec2<i32>(global0.a.x, global1[_wgslsmith_index_u32(global0.b.b, 5u)]))) & vec2<i32>(1i, ~countOneBits(global0.a.x)), Struct_1(~(~_wgslsmith_add_u32(1u, 42180u)), max(abs(_wgslsmith_add_u32(global0.c.c.a, 4294967295u)), global0.c.c.b)), Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.c.c.b, global0.c.a.a), abs(4294967295u)), ~(35745u << (global0.c.c.a % 32u))), (u_input.a.x & min(global1[_wgslsmith_index_u32(global0.c.a.b, 5u)], 1i)) == func_3(1588u, u_input.c), Struct_1(_wgslsmith_clamp_u32(u_input.d, ~0u, 113103u), _wgslsmith_mult_u32(min(0u, global0.b.b), ~u_input.d)), all(select(!vec4<bool>(global0.c.e, false, true, global0.c.e), vec4<bool>(false, true, global0.c.e, true), global0.c.e | global2.x)), !all(vec4<bool>(global2.x, true, false, global2.x)) || true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-914f + _wgslsmith_f_op_f32(sign(527f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-389f))), -300f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-730f, global0.e.x, global0.e.x), vec3<f32>(arg_0.x, 448f, arg_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 2484f, -893f))), true)));
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a, global0.a), vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.b, 112062u, 51099u, 1u), vec4<u32>(101764u, global0.b.a, u_input.d, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(28619u, u_input.d, 1u, 10960u), vec4<u32>(var_0.c.c.b, global0.b.b, global0.b.b, u_input.d))), ~(vec4<u32>(35301u, global0.b.b, var_0.b.a, global0.c.a.b) & vec4<u32>(41004u, var_0.c.c.b, global0.c.a.b, var_0.c.a.b))), 5u)], -2147483647i));
    global2 = select(!(!select(select(vec4<bool>(true, true, true, global2.x), vec4<bool>(false, false, var_0.c.d, false), vec4<bool>(var_0.c.d, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(global0.c.b, false, global0.c.e, true))), !(!select(vec4<bool>(true, var_0.c.b, false, global2.x), select(vec4<bool>(true, global0.c.e, false, false), vec4<bool>(true, true, true, var_0.c.d), vec4<bool>(global0.c.b, global2.x, global0.c.d, true)), vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true));
    let var_2 = vec4<i32>(41080i << (~u_input.d % 32u), -2147483647i, -42278i, u_input.b.x & u_input.a.x) ^ min(min(-u_input.a | vec4<i32>(u_input.c, var_0.a.x, u_input.c, global1[_wgslsmith_index_u32(u_input.d, 5u)]), vec4<i32>(-39098i, var_1.x, var_0.a.x, 3641i)), u_input.a);
    return all(!select(vec3<bool>(all(vec2<bool>(true, false)), false, true), !select(global2.xxw, global2.ywz, global2.yyx), !global2.xzy));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(-97687i, -31709i);
    var var_1 = max(-abs(-u_input.a.ywz), vec3<i32>(~(-abs(19710i)), select(-global1[_wgslsmith_index_u32(arg_3.x, 5u)] >> (_wgslsmith_add_u32(global0.b.a, 7521u) % 32u), u_input.b.x, false), 1i));
    var var_2 = !(!select(vec4<bool>(arg_1.e, true, arg_1.a.a == arg_2.b, false), vec4<bool>(false, false, true, true), select(!vec4<bool>(arg_1.e, false, true, arg_1.b), vec4<bool>(true, true, true, true), vec4<bool>(global2.x, arg_0.x, true, false))));
    var var_3 = Struct_2(Struct_1(46445u, u_input.d), true, Struct_1(abs(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_2.a), arg_3))), 4294967295u), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d.x))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - 409f));
    let var_4 = global2.x;
    return Struct_2(Struct_1(_wgslsmith_mult_u32(36885u, arg_3.x), 76367u), all(!select(select(vec4<bool>(false, var_3.e, var_3.d, var_3.d), vec4<bool>(true, var_2.x, true, arg_1.e), var_3.d), vec4<bool>(false, true, true, false), true && arg_0.x)), Struct_1(abs(~(~101466u)), min(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, arg_1.c.b, 11130u, 4294967295u), vec4<u32>(1u, 0u, 35647u, 1u)), vec4<u32>(62047u, arg_3.x, 31488u, global0.c.a.b) << (vec4<u32>(var_3.c.a, 81315u, var_3.c.a, 0u) % vec4<u32>(32u))), firstTrailingBit(~arg_1.c.b))), false, global2.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1480f, global0.d.x, global0.d.x, -277f) + vec4<f32>(-1000f, global0.e.x, global0.e.x, global0.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1695f, -325f, -908f, global0.d.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(558f, -228f, global0.e.x, global0.d.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, -1594f, global0.e.x, -916f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2040f, global0.d.x, 371f, -244f)))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -330f), -591f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(691f - _wgslsmith_f_op_f32(700f + 2886f))), 1261f));
    let var_1 = abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(22192u, ~u_input.d) ^ firstLeadingBit(~30491u), global0.c.a.a));
    let var_2 = func_4(select(global2.wy, global2.wz, all(!select(vec4<bool>(true, false, global0.c.d, global2.x), vec4<bool>(true, global0.c.d, true, global2.x), vec4<bool>(false, false, global2.x, true)))), Struct_2(Struct_1(global0.c.c.a >> ((4294967295u << (global0.c.c.b % 32u)) % 32u), _wgslsmith_div_u32(global0.c.c.a, ~global0.b.b)), func_2(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.e.x)), _wgslsmith_f_op_f32(floor(-252f)))), Struct_1(23149u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.d), ~vec2<u32>(1u, u_input.d))), u_input.b.x < -(~2147483647i), global0.c.e), Struct_1(1u, u_input.d), _wgslsmith_clamp_vec2_u32(~firstTrailingBit(vec2<u32>(72708u, 1u)), firstLeadingBit(max(vec2<u32>(global0.c.c.b, 0u), vec2<u32>(global0.b.a, 4294967295u)) << (~vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(global0.c.c.a, 62318u)), vec2<u32>(4294967295u, 73042u)))));
    global0 = Struct_3(global0.a, Struct_1(3612u, ~reverseBits(global0.c.a.a)), var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, 599f, -1308f)))), vec3<f32>(global0.e.x, -119f, var_0.x));
    let var_3 = _wgslsmith_f_op_f32(-global0.e.x);
    return Struct_3(arg_0.yx << (min(_wgslsmith_mod_vec2_u32(select(vec2<u32>(global0.b.a, var_1), vec2<u32>(15772u, var_1), global2.yw), vec2<u32>(69723u, var_2.a.b) >> (vec2<u32>(0u, global0.c.c.b) % vec2<u32>(32u))), (vec2<u32>(u_input.d, 31014u) << (vec2<u32>(global0.c.c.b, 35661u) % vec2<u32>(32u))) << (~vec2<u32>(u_input.d, var_2.a.b) % vec2<u32>(32u))) % vec2<u32>(32u)), func_4(select(!vec2<bool>(global0.c.b, false), !vec2<bool>(global0.c.e, global2.x), !select(global2.yx, global2.ww, var_2.b)), global0.c, func_4(vec2<bool>(true, true), Struct_2(Struct_1(var_2.c.a, u_input.d), select(false, global2.x, var_2.e), func_4(global2.xz, Struct_2(var_2.a, false, Struct_1(global0.b.b, 81093u), false, global2.x), Struct_1(53976u, 48400u), vec2<u32>(global0.c.a.b, var_1)).a, !global2.x, true), var_2.c, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 33887u), vec2<u32>(var_1, 7747u)), vec2<u32>(0u, global0.c.c.a))).a, vec2<u32>(1u, 1u)).c, Struct_2(Struct_1(func_4(select(vec2<bool>(global0.c.d, var_2.b), vec2<bool>(false, global2.x), vec2<bool>(var_2.e, global0.c.b)), Struct_2(var_2.c, var_2.e, global0.b, true, global2.x), func_4(vec2<bool>(var_2.d, var_2.e), Struct_2(global0.c.a, global2.x, Struct_1(global0.b.a, 32497u), global2.x, true), Struct_1(global0.b.a, 6138u), vec2<u32>(var_2.c.a, global0.c.c.a)).a, vec2<u32>(var_2.c.b, var_1) & vec2<u32>(55735u, var_1)).c.a, 28176u), !(!(global2.x || var_2.d)), func_4(select(vec2<bool>(false, global0.c.e), vec2<bool>(var_2.d, true), !global2.yz), Struct_2(func_4(vec2<bool>(global2.x, global2.x), Struct_2(var_2.c, var_2.e, Struct_1(46870u, 0u), global0.c.e, true), var_2.a, vec2<u32>(var_1, 4294967295u)).c, global2.x, func_4(global2.xz, global0.c, var_2.a, vec2<u32>(1u, var_2.a.a)).c, all(vec4<bool>(false, false, var_2.d, true)), !global2.x), global0.b, select(reverseBits(vec2<u32>(u_input.d, 4294967295u)), ~vec2<u32>(6559u, var_1), true)).c, (_wgslsmith_sub_i32(1i, 1i) >> (min(var_1, 64629u) % 32u)) == func_3(max(50903u, u_input.d), firstTrailingBit(global0.a.x)), false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2353f - 791f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 - var_3), -102f)), global0.e)), _wgslsmith_f_op_vec3_f32(var_0.wxw + global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(2525u >> (~global0.c.c.a % 32u), 5u)], 1i, -_wgslsmith_add_i32(-21692i, global0.a.x)), ~(firstTrailingBit(u_input.a.yzw) >> (~vec3<u32>(u_input.d, 4294967295u, 4513u) % vec3<u32>(32u)))));
    let var_0 = Struct_3(-(abs(global0.a & vec2<i32>(2147483647i, u_input.c)) << (firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(global0.c.c.a, 23050u))) % vec2<u32>(32u))), global0.b, Struct_2(global0.b, all(vec3<bool>(global0.c.d, all(vec4<bool>(global0.c.e, true, global0.c.d, false)), all(vec4<bool>(false, false, global2.x, false)))), func_1(countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 5u)], -49297i, u_input.c)) << (vec3<u32>(0u, 106397u, 40375u) % vec3<u32>(32u))).c.c, select(global2.x, global2.x, true), !any(select(vec4<bool>(false, global0.c.b, global0.c.b, global0.c.b), vec4<bool>(true, true, true, false), vec4<bool>(false, global0.c.d, global2.x, true)))), vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x + -373f))), global0.d);
    global1 = array<i32, 5>();
    global2 = vec4<bool>(true, false, var_0.c.d, true);
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13852u, 0u, global0.c.a.b, 49225u), firstTrailingBit(vec4<u32>(1u, 0u, global0.c.a.a, 4294967295u))), 9826u, _wgslsmith_sub_u32(~33223u, 27927u)) << (~(~(~(~vec3<u32>(70538u, 15498u, 4294967295u)))) % vec3<u32>(32u));
    var var_2 = func_1(_wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.a.wxy), u_input.b));
    var var_3 = select(vec4<bool>(_wgslsmith_add_i32(var_2.a.x, -global1[_wgslsmith_index_u32(var_1.x, 5u)]) < _wgslsmith_add_i32(~(-24568i), 1i), true, func_4(vec2<bool>(true, 24824i != var_2.a.x), Struct_2(Struct_1(1u, u_input.d), func_4(global2.xx, var_0.c, Struct_1(global0.b.b, u_input.d), var_1.yx).d, func_4(vec2<bool>(false, var_2.c.e), global0.c, Struct_1(46320u, 67061u), vec2<u32>(20363u, global0.b.b)).a, true, all(vec3<bool>(false, var_2.c.d, var_2.c.b))), func_1(u_input.a.xzx).c.c, ~max(var_1.zy, var_1.zz)).d, true), vec4<bool>(all(vec2<bool>(true, all(global2.xwy))), !var_2.c.b, false, true), vec4<bool>(false, !(all(global2.wwy) | !var_2.c.b), func_4(!(!global2.yz), global0.c, var_0.b, ~var_1.zz).e, select(global0.c.b, global0.c.d, global2.x)));
    var var_4 = min(firstTrailingBit(~(~vec3<u32>(var_0.b.b, 67971u, 25646u))), vec3<u32>(~(0u ^ var_0.b.a), global0.c.c.b, 0u) >> (((abs(vec3<u32>(36817u, global0.b.b, 27091u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(51387u, 4294967295u, 28463u), vec3<u32>(u_input.d, var_1.x, u_input.d))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_2.c.c.b, 47133u, u_input.d) >> (vec3<u32>(u_input.d, 78164u, 0u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.b, 31475u, var_2.b.a), vec3<u32>(1u, 1u, global0.b.a))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.e.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f), -1553f)));
}

