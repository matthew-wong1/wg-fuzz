struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(4294967295u, 79290u, 1u), vec3<u32>(4294967295u, 4294967295u, 3538u), vec3<u32>(27281u, 34188u, 0u), vec3<u32>(8814u, 4294967295u, 22431u), vec3<u32>(19149u, 19064u, 12921u), vec3<u32>(79812u, 1u, 76945u), vec3<u32>(32688u, 1u, 4294967295u), vec3<u32>(2436u, 0u, 103756u), vec3<u32>(39267u, 41194u, 4294967295u), vec3<u32>(123611u, 10844u, 33328u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 44377u, 0u), vec3<u32>(0u, 1u, 85264u), vec3<u32>(1u, 0u, 32607u), vec3<u32>(55831u, 14562u, 1u), vec3<u32>(19052u, 0u, 0u), vec3<u32>(3089u, 18735u, 109480u), vec3<u32>(4294967295u, 8705u, 4294967295u), vec3<u32>(0u, 34376u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(38318u, 4294967295u, 60137u), vec3<u32>(1u, 1u, 0u), vec3<u32>(2420u, 1820u, 3695u), vec3<u32>(91u, 6889u, 1u), vec3<u32>(10996u, 14319u, 24238u), vec3<u32>(76764u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 52324u, 1u), vec3<u32>(68124u, 4294967295u, 1u), vec3<u32>(0u, 10464u, 87035u), vec3<u32>(7790u, 40826u, 74361u), vec3<u32>(63506u, 4294967295u, 0u));

var<private> global1: f32;

var<private> global2: array<i32, 20>;

var<private> global3: array<vec2<i32>, 22>;

var<private> global4: u32 = 57948u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global3 = array<vec2<i32>, 22>();
    let var_0 = Struct_2(Struct_1(u_input.b.x, -vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), u_input.e.x, u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) * -2190f) - _wgslsmith_div_f32(-1000f, -1000f))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(u_input.c.x >= u_input.a, u_input.b.x != 1u, true))), select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true), !(u_input.b.x < u_input.a)), select(vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, false, true), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), true))));
    global4 = u_input.c.x;
    global0 = array<vec3<u32>, 31>();
    let var_1 = var_0.a.c;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-253f)))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(select(arg_0.x, 69754u, false), 13915u, 26750u, ~u_input.c.x), _wgslsmith_clamp_vec4_u32(select(u_input.c, u_input.b, vec4<bool>(false, true, false, true)), u_input.b, u_input.c)));
    global3 = array<vec2<i32>, 22>();
    let var_1 = vec3<f32>(205f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(630f)), -428f)), _wgslsmith_f_op_f32(floor(234f))) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    var var_2 = select(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), vec3<bool>(4351i != global2[_wgslsmith_index_u32(arg_0.x, 20u)], true, true), true), vec3<bool>(any(vec4<bool>(true, false, all(vec2<bool>(false, false)), select(false, false, true))), var_1.x >= -1197f, 1792f < _wgslsmith_div_f32(556f, _wgslsmith_f_op_f32(var_1.x - var_1.x))), !select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, false)), all(vec2<bool>(false, false))), vec3<bool>(any(vec2<bool>(false, true)), true, true)));
    global0 = array<vec3<u32>, 31>();
    return Struct_3(!vec3<bool>(all(vec4<bool>(true, var_2.x, var_2.x, var_2.x)), !any(var_2.xy), all(var_2.xy)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = !any(vec2<bool>(arg_1.a.x, true)) & false;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~global0[_wgslsmith_index_u32(0u, 31u)], arg_0.wyx), vec3<u32>(arg_0.x, firstLeadingBit(u_input.c.x), 19923u)), arg_0.x);
    var var_2 = Struct_2(Struct_1(36824u, firstTrailingBit(countOneBits(vec3<i32>(-2147483647i, u_input.e.x, global2[_wgslsmith_index_u32(arg_0.x, 20u)]))) >> (_wgslsmith_sub_vec3_u32(arg_0.wyy, vec3<u32>(arg_0.x, 0u, 1u)) % vec3<u32>(32u)), -133f), true, select(select(select(!vec4<bool>(arg_1.a.x, false, true, true), select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), arg_1.a.x), true | arg_1.a.x), vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), select(select(vec4<bool>(false, false, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x), arg_1.a.x), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x), arg_1.a.x), !vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x))), select(select(select(vec4<bool>(true, false, arg_1.a.x, true), vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), false), !vec4<bool>(true, false, arg_1.a.x, arg_1.a.x), vec4<bool>(true, true, arg_1.a.x, true)), !(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false), !vec4<bool>(true, false, false, arg_1.a.x), all(vec4<bool>(true, arg_1.a.x, true, true)))), !any(func_2(arg_0.zz).a.xy)));
    global1 = var_2.a.c;
    let var_3 = Struct_3(select(!select(!var_2.c.wyz, arg_1.a, !arg_1.a.x), !select(!vec3<bool>(arg_1.a.x, var_2.c.x, true), vec3<bool>(var_2.b, arg_1.a.x, arg_1.a.x), !vec3<bool>(var_2.b, arg_1.a.x, false)), func_2(arg_0.yw).a));
    return select(select(!var_2.c.wxy, !vec3<bool>(func_2(var_1).a.x, true, false), var_2.b), var_3.a, vec3<bool>(any(vec3<bool>(var_3.a.x || true, all(vec3<bool>(var_3.a.x, true, false)), true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(var_3.a.x, true, arg_1.a.x, arg_1.a.x), vec4<bool>(var_2.c.x, arg_1.a.x, var_2.b, true))), any(!vec2<bool>(true, var_3.a.x))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    global4 = _wgslsmith_add_u32(select(_wgslsmith_sub_u32(~(~u_input.c.x), 91920u), ~abs(_wgslsmith_div_u32(51421u, arg_3.a)), (_wgslsmith_f_op_f32(arg_3.c + -1000f) < _wgslsmith_f_op_f32(step(arg_3.c, 262f))) == (10008u >= min(arg_0.x, arg_0.x))), ~22064u);
    var var_0 = _wgslsmith_sub_u32(77184u, 0u);
    let var_1 = vec4<f32>(229f, 1f, 312f, arg_3.c);
    let var_2 = -_wgslsmith_div_vec2_i32(-arg_3.b.zy, u_input.d.xz);
    var var_3 = Struct_5(Struct_3(arg_1.a));
    return func_2(max(~(~abs(arg_0.xy)), countOneBits(u_input.c.yw)));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> vec3<bool> {
    let var_0 = -_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(29111u, 20u)], min(-43790i, -22211i));
    var var_1 = func_5(firstTrailingBit(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.c.x, u_input.a, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 31u)], vec3<bool>(arg_0.a, arg_0.a, true)), vec3<u32>(u_input.c.x, 46725u, 4294967295u))) ^ vec3<u32>(_wgslsmith_div_u32(u_input.a, 1u) >> (u_input.c.x % 32u), ~u_input.b.x, u_input.a), Struct_3(func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 104636u, u_input.b.x, u_input.c.x), u_input.c), func_2(u_input.c.zz))), reverseBits(firstLeadingBit(-select(var_0, 1i, true))), Struct_1(~_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.xw), u_input.d.yzy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))))));
    let var_2 = _wgslsmith_mult_vec2_i32(-vec2<i32>(min(u_input.e.x, abs(global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(firstLeadingBit(6405u), 20u)], _wgslsmith_mod_i32(var_0, 2147483647i))), countOneBits(-(~vec2<i32>(2078i, 25510i))));
    var var_3 = Struct_2(Struct_1(~firstTrailingBit(u_input.c.x) | u_input.b.x, ~u_input.d.xzx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), false, select(vec4<bool>(!(global2[_wgslsmith_index_u32(1u, 20u)] < -1i), any(vec4<bool>(true, var_1.a.x, false, false)), true, any(select(var_1.a.yy, vec2<bool>(true, var_1.a.x), var_1.a.x))), vec4<bool>(func_5(global0[_wgslsmith_index_u32(u_input.a, 31u)], Struct_3(var_1.a), u_input.e.x, Struct_1(1u, vec3<i32>(-14718i, u_input.e.x, global2[_wgslsmith_index_u32(59463u, 20u)]), -1102f)).a.x && false, any(vec2<bool>(false, true)), -1000f <= _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(arg_1)) > 421f), !(u_input.b.x >= (35737u ^ u_input.b.x))));
    global3 = array<vec2<i32>, 22>();
    return !var_3.c.zyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>((any(func_1(Struct_4(true), 2050f)) | true) && false, _wgslsmith_f_op_f32(-1f) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1800f)))), true);
    var var_1 = Struct_1(u_input.c.x, ~(-max(u_input.d.xyy, -u_input.d.zxx)), _wgslsmith_f_op_f32(f32(-1f) * -1827f));
    let var_2 = vec4<bool>(var_0.x, !all(var_0.yx), true, (true != !(global2[_wgslsmith_index_u32(25363u, 20u)] < -1i)) & !func_2(vec2<u32>(1u, u_input.c.x) & u_input.c.xw).a.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c)) * _wgslsmith_f_op_f32(var_1.c * -677f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), var_1.c, !(var_0.x | true))));
    let var_3 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.a, ~(~countOneBits(126256u)), _wgslsmith_mult_u32(u_input.c.x, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.c.x, u_input.c.x), 47175u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(560f, -706f, -530f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, var_1.c) + vec3<f32>(-1291f, 1578f, -765f)))))));
}

