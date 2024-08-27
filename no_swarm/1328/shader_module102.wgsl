struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1125f, 1091f, 100f, -417f), false);

var<private> global2: i32 = -448i;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = global1.a.x;
    let var_1 = vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], !arg_0.b.b);
    var var_2 = arg_0;
    var var_3 = -879f;
    var var_4 = vec4<i32>(~(abs(~u_input.a) ^ min(~arg_0.a, 2147483647i)), ~_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_2.a, var_2.c), vec3<i32>(-28718i, 11732i, global3.a))), abs(vec3<i32>(arg_1, arg_1, arg_0.c))), 1191i, countOneBits(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, arg_0.a) << (vec2<u32>(84447u, 56703u) % vec2<u32>(32u)), max(vec2<i32>(2147483647i, arg_0.c), vec2<i32>(-2147483647i, arg_0.c))))));
    return arg_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = func_2(func_2(Struct_2(_wgslsmith_mod_i32(u_input.a, -global3.a), global3.b, u_input.a, global3.d, (global3.e >> (vec4<u32>(u_input.b.x, 20536u, global3.e.x, 44896u) % vec4<u32>(32u))) & (vec4<u32>(1u, u_input.b.x, global3.e.x, global3.e.x) << (vec4<u32>(global3.e.x, global3.e.x, 0u, 0u) % vec4<u32>(32u)))), u_input.a), max(_wgslsmith_div_i32(abs(_wgslsmith_add_i32(global3.c, 2147483647i)), -global3.c), 1i)).b;
    var var_1 = 49451u;
    let var_2 = Struct_3(countOneBits(_wgslsmith_sub_u32(17401u | ~u_input.b.x, ~(~u_input.b.x))), global3.b);
    var var_3 = Struct_2(u_input.a, global3.b, _wgslsmith_clamp_i32(global3.a, _wgslsmith_mod_i32(~u_input.a, -2147483647i), max(u_input.a, abs(_wgslsmith_div_i32(u_input.a, 22733i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global3.b.a.wx))) * global3.b.a.yx), ~abs(global3.e));
    let var_4 = select(-(vec4<i32>(u_input.a, ~39137i, -2147483647i, 46405i << (var_2.a % 32u)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, var_3.a, global3.a, global3.c), vec4<i32>(var_3.a, var_3.c, -15980i, 62881i), vec4<i32>(u_input.a, u_input.a, global3.c, u_input.a))), -(~_wgslsmith_div_vec4_i32(-vec4<i32>(var_3.a, -19300i, -2147483647i, 2147483647i), abs(vec4<i32>(var_3.c, 31689i, var_3.a, 3946i)))), arg_0);
    return vec2<bool>(true, global1.b);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = select(select(select(func_3(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true, arg_0.b.b, false), vec2<f32>(arg_0.b.a.x, global1.a.x)), vec2<bool>(arg_3.a.b, false), true), arg_1, vec2<bool>(!arg_0.b.b & (global3.a > 49997i), any(vec4<bool>(arg_0.b.b, global1.b, true, global1.b)))), !vec2<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(global3.e.x, 1u)], false), vec2<bool>(true, false), vec2<bool>(false, global3.b.b))), arg_1.x), vec2<bool>(!(~global3.e.x != ~u_input.b.x), global3.b.b));
    var var_1 = func_2(Struct_2(u_input.a, func_2(func_2(Struct_2(-48033i, arg_3.a, u_input.a, arg_0.a.a.zy, vec4<u32>(26181u, u_input.b.x, 0u, global3.e.x)), i32(-1i) * -1i), -(~global3.a)).b, ~(-2147483647i), global3.b.a.xw, vec4<u32>(39255u ^ u_input.b.x, ~(~u_input.b.x), global3.e.x, 97317u)), -_wgslsmith_mod_i32(-u_input.a, u_input.a)).b.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.a.a.x * global3.d.x))), _wgslsmith_f_op_f32(-541f + _wgslsmith_div_f32(230f, -1236f)), -954f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(global3.b.a.xyw, vec3<f32>(arg_3.a.a.x, arg_3.b.a.x, global1.a.x))))))));
    let var_3 = ((global3.e.x | global3.e.x) ^ _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(global3.e.x, global3.e.x, 1u, 106675u), global3.e)), func_2(Struct_2(0i, arg_0.a, global3.c, vec2<f32>(-2425f, global3.d.x), global3.e), u_input.a).e)) << (_wgslsmith_dot_vec3_u32(select(global3.e.xyw, global3.e.yyz, select(!vec3<bool>(global3.b.b, true, arg_3.b.b), vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], arg_3.b.b, var_0.x), vec3<bool>(true, true, true))), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(global3.e.x, global3.e.x, 74932u)) | vec3<u32>(1u, 4294967295u, u_input.b.x), abs(~vec3<u32>(global3.e.x, 1u, 0u)))) % 32u);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(func_2(Struct_2(-1i, global3.b, -1i, vec2<f32>(global1.a.x, arg_0.b.a.x), global3.e), global3.a).b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(774f, -645f, global1.a.x, global3.d.x) + global3.b.a), !vec4<bool>(true, global3.b.b, global3.b.b, global3.b.b))))), !(var_2.x >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.x, global3.d.x))))));
    return vec2<i32>(global3.c, _wgslsmith_mult_i32(select(2147483647i, -1i, func_2(Struct_2(37974i, Struct_1(arg_0.a.a, var_4.b), global3.a, var_2.xy, global3.e), global3.a).b.b), -func_2(Struct_2(2147483647i, Struct_1(var_4.a, false), -28976i, arg_0.a.a.zy, global3.e), global3.c).c) << (~var_3 % 32u));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    global3 = func_2(Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(42143i, 1i, 17658i), vec3<i32>(u_input.a, u_input.a, global3.c) & vec3<i32>(u_input.a, global3.a, 2147483647i)), abs(vec3<i32>(global3.c, u_input.a, 2147483647i) >> (global3.e.yyx % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(629f, global3.d.x, 554f, global1.a.x))), !(global3.e.x != global3.e.x)), 1i >> (1u % 32u), _wgslsmith_f_op_vec2_f32(max(global1.a.xw, _wgslsmith_div_vec2_f32(arg_0.ww, _wgslsmith_f_op_vec2_f32(min(global3.b.a.zx, global1.a.xy))))), _wgslsmith_add_vec4_u32(~global3.e, _wgslsmith_add_vec4_u32(abs(global3.e), _wgslsmith_div_vec4_u32(global3.e, vec4<u32>(global3.e.x, 0u, u_input.b.x, 110233u))))), ~u_input.a);
    global2 = 2147483647i;
    let var_0 = func_4(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1294f, 292f, 760f, -239f)), select(func_2(Struct_2(global3.a, Struct_1(arg_0, false), u_input.a, arg_0.zz, vec4<u32>(u_input.b.x, 37765u, 19327u, 0u)), u_input.a).b.b, global1.b | true, any(vec4<bool>(global1.b, true, false, global1.b)))), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), any(func_3(vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global3.b.b, false, global1.b), global3.d)))), !vec2<bool>(global3.b.b, true), !vec2<bool>(!any(vec2<bool>(false, global1.b)), true), Struct_4(global3.b, func_2(func_2(func_2(Struct_2(u_input.a, global3.b, -2147483647i, vec2<f32>(global3.d.x, global1.a.x), vec4<u32>(19202u, global3.e.x, global3.e.x, global3.e.x)), -7891i), u_input.a), abs(firstTrailingBit(u_input.a))).b));
    let var_1 = vec4<i32>(~func_4(Struct_4(func_2(Struct_2(var_0.x, global3.b, -21908i, vec2<f32>(944f, global1.a.x), vec4<u32>(1u, global3.e.x, global3.e.x, global3.e.x)), var_0.x).b, Struct_1(vec4<f32>(global3.d.x, global1.a.x, arg_0.x, arg_0.x), false)), vec2<bool>(false, global3.b.b), !func_3(vec4<bool>(global1.b, true, global0[_wgslsmith_index_u32(253u, 1u)], false), vec2<f32>(global1.a.x, global3.b.a.x)), Struct_4(func_2(Struct_2(global3.c, global3.b, -19939i, global3.d, vec4<u32>(1u, u_input.b.x, 0u, global3.e.x)), u_input.a).b, global3.b)).x, u_input.a, -52499i, -var_0.x);
    global3 = func_2(Struct_2(-4044i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.b.a, vec4<f32>(-465f, 1000f, arg_0.x, -402f))), false), _wgslsmith_mod_i32(-10827i, -1502i), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.a.x))))), ~global3.e), var_1.x);
    return _wgslsmith_dot_vec4_i32(var_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-3257f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -387f)))), -1236f) + vec2<f32>(-293f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x))));
    global3 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, global3.c, 10671i, u_input.a), vec4<i32>(0i, -18469i, global3.c, -global3.a)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b.a)), !(select(u_input.b.x, 1u, true) == _wgslsmith_dot_vec4_u32(global3.e, vec4<u32>(u_input.b.x, 1u, 74968u, global3.e.x)))), func_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.x - global3.b.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2779f, 539f))), _wgslsmith_div_f32(251f, _wgslsmith_div_f32(395f, -2054f)), global1.a.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-158f, 505f), vec2<f32>(var_0.x, -172f)), _wgslsmith_f_op_vec2_f32(select(global3.d, vec2<f32>(-1018f, -1000f), vec2<bool>(global0[_wgslsmith_index_u32(global3.e.x, 1u)], false)))))))), reverseBits(global3.e));
    var var_1 = firstTrailingBit(1u);
    global2 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, 24485i, global3.a, -3078i), select(vec4<i32>(1i, global3.a, global3.a, u_input.a), vec4<i32>(global3.c, -1i, -27477i, -69760i), true), vec4<bool>(true, true, true, true)), vec4<i32>(global3.a, global3.c | u_input.a, ~27040i, global3.a)), 2147483647i & ~global3.a);
    let var_2 = !select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, global3.b.b, global0[_wgslsmith_index_u32(9609u, 1u)]), vec3<bool>(false, global1.b, global0[_wgslsmith_index_u32(global3.e.x, 1u)]))), !select(vec3<bool>(global0[_wgslsmith_index_u32(68121u, 1u)], global0[_wgslsmith_index_u32(global3.e.x, 1u)], false), select(vec3<bool>(global3.b.b, true, global1.b), vec3<bool>(global3.b.b, global0[_wgslsmith_index_u32(33406u, 1u)], global0[_wgslsmith_index_u32(global3.e.x, 1u)]), global3.b.b), select(vec3<bool>(true, global0[_wgslsmith_index_u32(global3.e.x, 1u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global3.b.b), true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -reverseBits(u_input.a), 1000f, firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3.a, global3.c, global3.c, global3.a), vec4<i32>(global3.c, u_input.a, 36803i, 0i)), min(vec4<i32>(-2147483647i, 7977i, -2147483647i, 75065i), vec4<i32>(7128i, global3.a, u_input.a, -11776i))), ~abs(vec4<i32>(u_input.a, global3.a, -2147483647i, 17840i)))), _wgslsmith_mod_vec4_i32(vec4<i32>(min(17681i, u_input.a), 1i, 1i, 1i) | ~max(vec4<i32>(2147483647i, 23975i, u_input.a, global3.c), vec4<i32>(global3.c, u_input.a, 0i, u_input.a)), reverseBits(~firstLeadingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, global3.a)))), _wgslsmith_f_op_f32(trunc(global3.d.x)));
}

