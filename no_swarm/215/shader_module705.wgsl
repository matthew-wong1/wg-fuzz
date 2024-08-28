struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(2364f, 2834f, 786f, -288f, 166f, 954f, -758f, -390f, 1000f, 1609f, 663f, 172f, 494f, 469f, 489f, -227f, -2053f, -1491f, -1000f, -286f, -171f, -1000f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global0 = array<f32, 22>();
    let var_0 = ~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), firstLeadingBit(firstLeadingBit(vec2<u32>(4294967295u, 68226u)))));
    var var_1 = Struct_3(Struct_2(~(~vec2<u32>(44511u, 36538u)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_2 = Struct_3(Struct_2(var_1.a.a, Struct_1(select(vec3<bool>(var_1.a.b.a.x, true, false), var_1.a.b.a, vec3<bool>(true, var_1.a.b.a.x, var_1.a.b.a.x)))));
    let var_3 = _wgslsmith_div_vec4_i32(-abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (~vec4<u32>(0u, 0u, 12030u, 0u) % vec4<u32>(32u))), select(_wgslsmith_mult_vec4_i32(firstTrailingBit(abs(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 8351i))), vec4<i32>(60204i, u_input.a.x, max(u_input.a.x, -1i), 19563i)), ~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), var_2.a.b.a.x));
    return reverseBits(8691i);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_5 {
    var var_0 = -23540i;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~(~4294967295u)), 22u)], arg_1.b.x), 873f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(27392u), _wgslsmith_mult_u32(arg_1.a.c.a.x, 123647u) ^ ~(~arg_1.a.c.a.x)), 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1750f + 677f) * _wgslsmith_f_op_f32(f32(-1f) * -598f)));
    var var_2 = u_input.a.x;
    var var_3 = vec3<i32>(func_3(), arg_1.c, -1i);
    let var_4 = Struct_3(Struct_2(~countOneBits(_wgslsmith_add_vec2_u32(arg_1.a.c.a, vec2<u32>(24343u, 4294967295u))), Struct_1(!select(arg_0.wxy, vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false)))));
    return Struct_5(arg_1.a, arg_1.b, i32(-1i) * -6102i, Struct_1(arg_0.xxw), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))));
}

fn func_4(arg_0: Struct_5) -> vec2<i32> {
    global0 = array<f32, 22>();
    let var_0 = func_2(!select(select(select(vec4<bool>(false, arg_0.a.a.b.a.x, true, false), vec4<bool>(true, true, arg_0.a.b, arg_0.d.a.x), vec4<bool>(true, false, arg_0.a.c.b.a.x, true)), !vec4<bool>(true, arg_0.d.a.x, arg_0.d.a.x, arg_0.d.a.x), true), !(!vec4<bool>(true, arg_0.d.a.x, arg_0.a.c.b.a.x, arg_0.a.a.b.a.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(33338u, 22u)]) <= arg_0.b.x), Struct_5(arg_0.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + -1058f), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.e)), arg_0.b, select(vec3<bool>(arg_0.d.a.x, arg_0.a.a.b.a.x, true), !vec3<bool>(false, arg_0.d.a.x, false), all(arg_0.a.a.b.a.xy)))), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(arg_0.c, arg_0.c), 29028i, 0i), func_2(!select(vec4<bool>(arg_0.d.a.x, arg_0.a.c.b.a.x, false, arg_0.a.b), vec4<bool>(arg_0.a.b, false, true, true), arg_0.d.a.x), arg_0).d, _wgslsmith_f_op_f32(max(1000f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(arg_0.a.c.a.x), arg_0.a.c.a.x), 22u)])))).a;
    var var_1 = Struct_2(var_0.a.a, Struct_1(func_2(!(!vec4<bool>(true, true, var_0.c.b.a.x, var_0.a.b.a.x)), Struct_5(var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.a.x, 22u)], arg_0.e, arg_0.b.x)), 0i, Struct_1(var_0.c.b.a), -1000f)).d.a));
    var_1 = arg_0.a.c;
    var_1 = Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, var_1.a.x), vec4<u32>(0u, var_1.a.x, arg_0.a.c.a.x, var_0.c.a.x)), ~vec4<u32>(arg_0.a.c.a.x, 0u, var_0.c.a.x, 4294967295u)) | var_1.a.x, max(var_1.a.x, ~(~var_1.a.x))), func_2(vec4<bool>(arg_0.d.a.x, true, true, true), func_2(vec4<bool>(arg_0.b.x == arg_0.b.x, true, var_1.b.a.x, arg_0.d.a.x), Struct_5(func_2(vec4<bool>(var_1.b.a.x, var_0.b, false, true), Struct_5(Struct_4(Struct_2(var_1.a, Struct_1(var_1.b.a)), var_0.c.b.a.x, Struct_2(vec2<u32>(0u, 0u), Struct_1(vec3<bool>(true, true, var_1.b.a.x)))), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], 619f), 1i, Struct_1(vec3<bool>(var_0.a.b.a.x, var_1.b.a.x, var_0.b)), -1173f)).a, _wgslsmith_div_vec3_f32(arg_0.b, vec3<f32>(1035f, 100f, global0[_wgslsmith_index_u32(var_0.c.a.x, 22u)])), 0i, arg_0.a.a.b, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 22u)], arg_0.e))))).a.a.b);
    return _wgslsmith_clamp_vec2_i32(~min(u_input.a, vec2<i32>(~0i, u_input.a.x)), ~firstTrailingBit(~_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(arg_0.c, u_input.a.x))), _wgslsmith_mult_vec2_i32(u_input.a, u_input.a));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 22u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(32089u, 22u)])), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(96537u, 22u)]))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f + global0[_wgslsmith_index_u32(1u, 22u)]))), -998f));
    let var_1 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(firstLeadingBit(0u), abs(12838u)), ~_wgslsmith_sub_u32(71017u, 67014u)), 22u)]));
    global0 = array<f32, 22>();
    var var_2 = Struct_2(abs(~vec2<u32>(1u, 1u) >> (vec2<u32>(firstTrailingBit(0u), func_2(arg_0, Struct_5(Struct_4(Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec3<bool>(true, false, arg_0.x))), true, Struct_2(vec2<u32>(14708u, 40024u), Struct_1(vec3<bool>(arg_0.x, true, arg_0.x)))), vec3<f32>(-839f, 1227f, var_0.x), u_input.a.x, Struct_1(arg_0.wxx), var_1)).a.c.a.x) % vec2<u32>(32u))), Struct_1(select(!arg_0.wyy, !func_2(arg_0, Struct_5(Struct_4(Struct_2(vec2<u32>(1u, 56714u), Struct_1(vec3<bool>(arg_0.x, arg_0.x, true))), true, Struct_2(vec2<u32>(34073u, 4294967295u), Struct_1(vec3<bool>(arg_0.x, true, false)))), vec3<f32>(global0[_wgslsmith_index_u32(112850u, 22u)], var_1, var_0.x), -46596i, Struct_1(vec3<bool>(true, arg_0.x, arg_0.x)), -213f)).d.a, arg_0.xwx)));
    var_2 = func_2(select(vec4<bool>(false, arg_0.x, !arg_0.x, arg_0.x), !select(select(vec4<bool>(true, true, false, false), arg_0, arg_0), !arg_0, var_2.b.a.x), true), Struct_5(func_2(!arg_0, Struct_5(Struct_4(Struct_2(var_2.a, Struct_1(arg_0.yzy)), true, Struct_2(var_2.a, var_2.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-344f, -1216f, var_0.x), vec3<f32>(var_0.x, 820f, var_1))), u_input.a.x | 619i, func_2(vec4<bool>(var_2.b.a.x, arg_0.x, true, true), Struct_5(Struct_4(Struct_2(vec2<u32>(var_2.a.x, var_2.a.x), Struct_1(var_2.b.a)), true, Struct_2(vec2<u32>(var_2.a.x, 0u), Struct_1(vec3<bool>(var_2.b.a.x, false, arg_0.x)))), vec3<f32>(506f, var_0.x, var_1), u_input.a.x, Struct_1(var_2.b.a), -1058f)).a.a.b, global0[_wgslsmith_index_u32(1u, 22u)])).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(25848u, 22u)] - 1457f))), -1i, func_2(arg_0, Struct_5(Struct_4(Struct_2(var_2.a, var_2.b), false, Struct_2(vec2<u32>(4294967295u, 90700u), var_2.b)), vec3<f32>(614f, -241f, global0[_wgslsmith_index_u32(27085u, 22u)]), arg_1.x, Struct_1(vec3<bool>(true, true, arg_0.x)), _wgslsmith_f_op_f32(max(1110f, global0[_wgslsmith_index_u32(var_2.a.x, 22u)])))).a.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -110f)) + _wgslsmith_f_op_f32(-338f + var_0.x)))).a.c;
    return vec3<bool>(false, all(arg_0.xx), !(!(!var_2.b.a.x)) != all(arg_0));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    let var_0 = select(-40660i, ~reverseBits(~u_input.a.x), any(func_5(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), func_4(func_2(vec4<bool>(true, false, false, true), Struct_5(Struct_4(Struct_2(vec2<u32>(0u, arg_0), Struct_1(vec3<bool>(false, true, false))), false, Struct_2(vec2<u32>(21422u, 17798u), Struct_1(vec3<bool>(true, true, false)))), vec3<f32>(1000f, -347f, global0[_wgslsmith_index_u32(arg_0, 22u)]), 26591i, Struct_1(vec3<bool>(false, false, true)), 738f))))));
    var var_1 = ~49525u | _wgslsmith_add_u32(reverseBits(abs(arg_0)), select(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(arg_0, arg_0, 53662u)), 68289u, true));
    let var_2 = -min(-vec4<i32>(var_0, func_3(), _wgslsmith_div_i32(0i, var_0), min(u_input.a.x, var_0)), -vec4<i32>(-5761i, 1i, _wgslsmith_mult_i32(1i, u_input.a.x), var_0));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 553f) - 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-322f, -899f)))), global0[_wgslsmith_index_u32(arg_0 ^ 23951u, 22u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 150f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1110f, 1763f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 22u)], -746f))))))));
    let var_4 = ~var_2.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, 4294967295u), 22u)]), _wgslsmith_f_op_f32(floor(103f))));
}

fn func_6(arg_0: vec3<f32>) -> Struct_5 {
    let var_0 = vec4<bool>(true, true, false, true);
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_1 = !vec4<bool>(var_0.x, true, var_0.x, true);
    var var_2 = _wgslsmith_sub_u32(func_2(select(var_0, vec4<bool>(true, false, false, true), !var_0.x), func_2(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, false, var_1.x, var_0.x), var_0), func_2(var_0, Struct_5(Struct_4(Struct_2(vec2<u32>(49178u, 6340u), Struct_1(vec3<bool>(var_1.x, var_1.x, false))), var_1.x, Struct_2(vec2<u32>(0u, 1u), Struct_1(var_0.xzx))), arg_0, -6465i, Struct_1(var_0.xzy), -1494f)))).a.c.a.x, 4294967295u) << (min(firstTrailingBit(countOneBits(_wgslsmith_mod_u32(1u, 4294967295u))), 12106u) % 32u);
    return Struct_5(func_2(select(vec4<bool>(var_1.x, var_0.x, true, true), var_0, var_0), func_2(!vec4<bool>(var_1.x, var_0.x, true, false), func_2(!vec4<bool>(true, var_1.x, var_0.x, false), func_2(var_0, Struct_5(Struct_4(Struct_2(vec2<u32>(1u, 1u), Struct_1(var_1.wyz)), var_0.x, Struct_2(vec2<u32>(32876u, 4294967295u), Struct_1(vec3<bool>(var_0.x, var_1.x, var_1.x)))), vec3<f32>(163f, -1536f, global0[_wgslsmith_index_u32(23474u, 22u)]), u_input.a.x, Struct_1(vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(47322u, 22u)]))))).a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-338f, global0[_wgslsmith_index_u32(10421u, 22u)], 109f), arg_0)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-1268f, -825f, 1164f), arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, global0[_wgslsmith_index_u32(43481u, 22u)], 464f)))))), _wgslsmith_dot_vec3_i32(~abs(-vec3<i32>(u_input.a.x, u_input.a.x, 36908i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(-1i, 21408i, -u_input.a.x))), func_2(vec4<bool>(all(vec2<bool>(true, true)), any(var_0), true, true), func_2(var_0, func_2(select(var_0, vec4<bool>(true, false, var_0.x, var_0.x), var_1.x), Struct_5(Struct_4(Struct_2(vec2<u32>(50996u, 23885u), Struct_1(var_0.xyx)), var_0.x, Struct_2(vec2<u32>(88546u, 4294967295u), Struct_1(vec3<bool>(true, false, var_0.x)))), vec3<f32>(arg_0.x, arg_0.x, -560f), u_input.a.x, Struct_1(var_0.xwz), arg_0.x)))).a.a.b, arg_0.x);
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: i32) -> Struct_4 {
    var var_0 = arg_1.c;
    var_0 = min(0i & arg_1.c, 2147483647i);
    var_0 = countOneBits(-2359i) ^ countOneBits(_wgslsmith_mod_i32(u_input.a.x, arg_1.c));
    var_0 = -2147483647i;
    let var_1 = !func_5(vec4<bool>(func_6(arg_2.yzy).c <= u_input.a.x, func_6(arg_1.b).d.a.x, all(vec2<bool>(arg_1.d.a.x, true)) || true, all(vec2<bool>(false, true))), u_input.a).x;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 22>();
    var var_0 = countOneBits(2019i) ^ u_input.a.x;
    var_0 = 26683i;
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~33730u, ~4294967295u & firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1927u, 4294967295u, 6522u, 84737u), vec4<u32>(1u, 4294967295u, 118925u, 0u))), countOneBits(abs(~7875u))), firstLeadingBit(vec3<u32>(~(~0u), 0u, ~1u)));
    var var_2 = func_7(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 22u)], global0[_wgslsmith_index_u32(var_1.x, 22u)]), vec2<f32>(-774f, 2136f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(28345u, 22u)]))), vec2<f32>(1000f, 1f)))), func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(1u)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1166u, 22u)], 715f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(139f, global0[_wgslsmith_index_u32(115224u, 22u)], global0[_wgslsmith_index_u32(4610u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1096f, 1159f, 1969f, 374f) * vec4<f32>(global0[_wgslsmith_index_u32(25099u, 22u)], -622f, global0[_wgslsmith_index_u32(var_1.x, 22u)], -296f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-493f, 520f, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(3132u, 22u)])))))), func_2(select(vec4<bool>(true, true, -884f != global0[_wgslsmith_index_u32(44330u, 22u)], true), vec4<bool>(true, any(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(0u, 22u)] >= global0[_wgslsmith_index_u32(0u, 22u)], true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false)), func_6(vec3<f32>(266f, global0[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 22u)], _wgslsmith_f_op_f32(sign(-1094f))))).c);
    var var_3 = (u_input.a.x ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(-13124i | u_input.a.x, u_input.a.x), u_input.a.x)) | -_wgslsmith_dot_vec3_i32(vec3<i32>(-5448i, _wgslsmith_add_i32(-2147483647i, u_input.a.x), ~(-10654i)), abs(-vec3<i32>(0i, u_input.a.x, u_input.a.x)));
    var_2 = Struct_4(func_2(!select(select(vec4<bool>(var_2.c.b.a.x, var_2.c.b.a.x, false, var_2.b), vec4<bool>(false, var_2.c.b.a.x, var_2.b, var_2.c.b.a.x), true), vec4<bool>(var_2.a.b.a.x, var_2.c.b.a.x, var_2.c.b.a.x, false), vec4<bool>(var_2.b, var_2.a.b.a.x, var_2.b, false)), Struct_5(Struct_4(func_7(vec2<f32>(global0[_wgslsmith_index_u32(var_2.c.a.x, 22u)], -1937f), Struct_5(Struct_4(var_2.a, var_2.b, var_2.a), vec3<f32>(444f, -244f, 156f), u_input.a.x, var_2.a.b, global0[_wgslsmith_index_u32(var_2.c.a.x, 22u)]), vec4<f32>(306f, global0[_wgslsmith_index_u32(var_1.x, 22u)], global0[_wgslsmith_index_u32(var_1.x, 22u)], 597f), -21039i).c, any(vec3<bool>(var_2.a.b.a.x, var_2.b, var_2.c.b.a.x)), func_2(vec4<bool>(var_2.c.b.a.x, var_2.c.b.a.x, var_2.a.b.a.x, var_2.a.b.a.x), Struct_5(Struct_4(var_2.a, var_2.c.b.a.x, Struct_2(vec2<u32>(var_2.a.a.x, 42097u), var_2.c.b)), vec3<f32>(global0[_wgslsmith_index_u32(1u, 22u)], -1000f, 625f), 27892i, Struct_1(var_2.c.b.a), 175f)).a.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(26013u, 22u)], 151f, 1000f) + vec3<f32>(540f, global0[_wgslsmith_index_u32(20209u, 22u)], -342f)), 1i, var_2.c.b, 1079f)).a.c, var_2.a.b.a.x, var_2.c);
    let var_4 = Struct_4(Struct_2(abs(var_2.c.a), Struct_1(!vec3<bool>(false, var_2.a.b.a.x, var_2.a.b.a.x))), -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -14930i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 6951i, -2147483647i, 1i)), vec4<i32>(66602i, u_input.a.x, u_input.a.x, u_input.a.x)) > _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -38917i, -8445i, 1i) << (vec4<u32>(7680u, var_2.c.a.x, 111725u, 51709u) % vec4<u32>(32u)), vec4<i32>(-33822i, -32730i, 2147483647i, u_input.a.x) ^ vec4<i32>(1i, 22881i, u_input.a.x, u_input.a.x)), vec4<i32>(_wgslsmith_mod_i32(-41805i, u_input.a.x), countOneBits(0i), func_3(), -19301i)), func_7(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-955f)), -2277f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(8130u, 22u)], 568f), vec2<f32>(global0[_wgslsmith_index_u32(4324u, 22u)], global0[_wgslsmith_index_u32(var_2.c.a.x, 22u)]))))), func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], -161f), vec3<f32>(global0[_wgslsmith_index_u32(15784u, 22u)], global0[_wgslsmith_index_u32(var_2.a.a.x, 22u)], global0[_wgslsmith_index_u32(var_2.c.a.x, 22u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 22u)], 144f, 1230f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 22u)], -259f, global0[_wgslsmith_index_u32(var_2.c.a.x, 22u)], -439f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(33080u, 22u)], 1737f, -826f) * vec4<f32>(-973f, global0[_wgslsmith_index_u32(21493u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(29618u, 22u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, global0[_wgslsmith_index_u32(var_1.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(var_1.x, 22u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2.a.a.x, 22u)], -381f, 1725f, -964f))))), func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1023f, 2125f, -1428f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(783f, 787f, global0[_wgslsmith_index_u32(var_1.x, 22u)]))))).c).c);
    let var_5 = select(_wgslsmith_mod_vec3_u32(max(~(vec3<u32>(var_4.c.a.x, var_4.c.a.x, var_1.x) | vec3<u32>(0u, var_2.c.a.x, var_1.x)), ~var_1), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, var_4.c.a.x, 1u), vec3<u32>(var_1.x, 69900u, 14418u)), vec3<u32>(var_1.x, reverseBits(var_2.c.a.x), ~0u), ~(~var_1))), _wgslsmith_add_vec3_u32(max(var_1, ~var_1), var_1), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_4.c.a.x, 0u, var_2.c.a.x, 1u)), vec4<u32>(0u, 40951u, var_4.c.a.x, var_1.x & var_1.x), ~(vec4<u32>(0u, 22161u, var_1.x, 75288u) | vec4<u32>(29754u, 72084u, 73708u, var_1.x))), _wgslsmith_div_vec4_u32(vec4<u32>(var_5.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(66971u, var_1.x)), 1u, ~var_1.x), ~vec4<u32>(var_4.a.a.x, var_2.c.a.x, 62488u, 65822u)), !(!select(vec4<bool>(false, var_4.b, true, false), vec4<bool>(true, var_4.c.b.a.x, var_2.b, var_4.c.b.a.x), false))), vec2<u32>(0u, var_1.x));
}

