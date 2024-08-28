struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<bool>(true, false, true, false), 106f), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 847f), false), Struct_2(Struct_1(vec4<bool>(true, true, false, true), 751f), false), Struct_2(Struct_1(vec4<bool>(false, false, true, false), -768f), false), Struct_1(vec4<bool>(false, false, false, true), -2085f));

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    return arg_2.b;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = ((vec2<i32>(abs(arg_2), i32(-1i) * -1i) << (_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(30975u, 25213u)), vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(77528u, 42781u)) % vec2<u32>(32u))) >> (~(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 8850u)) << ((vec2<u32>(u_input.a, 3123u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))) << (vec2<u32>(~reverseBits(reverseBits(47492u)), u_input.a) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, arg_0.a.a.x, false), arg_1, Struct_1(global1.a.a, 2044f), arg_0)), _wgslsmith_f_op_f32(global0.b.a.b - _wgslsmith_f_op_f32(global1.a.b * arg_1.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -183f))))));
    var var_2 = -2147483647i;
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1091f)), -1089f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d.a.b)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-320f, 123f, global0.b.a.b))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1154f, -918f, -888f))))))));
    global1 = Struct_2(Struct_1(select(vec4<bool>(select(true, false, true), false, global1.a.a.x, all(arg_0.c.a.a)), vec4<bool>(any(global0.e.a.zz), false, true, !arg_1.a.x), !(arg_1.b > global1.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - _wgslsmith_f_op_f32(floor(var_1.x))))), any(vec3<bool>(all(!arg_1.a.zxy), global1.b && false, global1.a.a.x & false)));
    return arg_0.c.a;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_0.d.a.a, _wgslsmith_f_op_f32(-994f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1876f + arg_2.a.b), global1.a.b))), false);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mod_u32(min(min(_wgslsmith_add_u32(countOneBits(9165u), 1u), 30648u), 1u), (16170u << (1u % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a, 75679u, u_input.a), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))));
    global1 = Struct_2(func_2(arg_0, var_0.a, ~40906i), any(vec3<bool>(false, any(select(var_1.b.a.a, arg_0.e.a, arg_3.x)), false)));
    let var_3 = min(reverseBits(~(~(~vec4<u32>(0u, 1u, 24812u, u_input.a)))), ~(~(~reverseBits(vec4<u32>(30254u, u_input.a, u_input.a, 1u)))));
    return func_2(Struct_3(arg_0.d.a, arg_0.d, var_0, Struct_2(func_2(arg_0, func_2(arg_0, global0.b.a, 23610i), i32(-1i) * -19930i), var_1.c.b), func_2(Struct_3(arg_2.a, Struct_2(var_0.a, arg_1), var_1.c, Struct_2(Struct_1(vec4<bool>(arg_3.x, var_1.d.a.a.x, false, global0.e.a.x), var_1.d.a.b), global0.d.b), global1.a), Struct_1(global0.a.a, _wgslsmith_f_op_f32(-var_1.b.a.b)), 0i)), func_2(Struct_3(var_1.a, Struct_2(func_2(arg_0, global0.d.a, -23796i), !arg_2.b), var_1.b, var_0, func_2(Struct_3(Struct_1(var_1.a.a, 845f), Struct_2(Struct_1(vec4<bool>(arg_3.x, true, var_1.b.b, arg_0.d.a.a.x), var_1.b.a.b), false), Struct_2(Struct_1(vec4<bool>(true, var_1.c.b, true, global0.c.b), 467f), true), arg_2, Struct_1(vec4<bool>(true, true, global0.b.a.a.x, true), 455f)), func_2(arg_0, Struct_1(vec4<bool>(global1.b, false, false, global0.a.a.x), 286f), 42760i), 1i)), var_1.a, abs(firstTrailingBit(firstLeadingBit(1i)))), firstLeadingBit(countOneBits(~firstLeadingBit(-12858i))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = global0.d;
    let var_1 = Struct_3(global0.b.a, Struct_2(func_2(Struct_3(func_1(Struct_3(global1.a, global0.c, global0.d, global0.c, Struct_1(vec4<bool>(var_0.a.a.x, true, arg_1.a.x, true), arg_1.b)), false, global0.b, vec3<bool>(global1.a.a.x, true, arg_1.a.x)), Struct_2(var_0.a, global1.b), Struct_2(Struct_1(global0.a.a, var_0.a.b), global0.c.a.a.x), Struct_2(global1.a, true), global0.b.a), var_0.a, _wgslsmith_mult_i32(reverseBits(0i), firstLeadingBit(-24742i))), !global0.c.a.a.x), global0.b, global0.b, var_0.a);
    global1 = Struct_2(Struct_1(!func_1(Struct_3(Struct_1(var_0.a.a, -1039f), Struct_2(Struct_1(global1.a.a, global0.a.b), global1.a.a.x), Struct_2(Struct_1(vec4<bool>(arg_1.a.x, false, true, false), 902f), arg_1.a.x), Struct_2(var_1.b.a, true), Struct_1(arg_1.a, -412f)), arg_1.a.x, Struct_2(Struct_1(var_1.c.a.a, -1809f), false), arg_1.a.zyz).a, global1.a.b), true | var_1.e.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1008f, 422f, -1227f, 2186f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.b, global1.a.b, global0.a.b, var_0.a.b), vec4<f32>(719f, var_1.a.b, global0.a.b, -787f)))))));
    var_0 = var_1.c;
    return global1.b;
}

fn func_5(arg_0: bool) -> Struct_1 {
    global1 = global0.b;
    let var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(~(u_input.a << (4294967295u % 32u)), u_input.a, ~(~u_input.a)), vec3<u32>(1u, ~_wgslsmith_div_u32(23321u, u_input.a), u_input.a));
    var var_1 = firstTrailingBit(-(~(-vec3<i32>(1i, 1i, 1i))));
    var var_2 = _wgslsmith_mod_u32(80665u, max(u_input.a, _wgslsmith_add_u32(0u << (firstTrailingBit(var_0.x) % 32u), u_input.a)));
    global0 = Struct_3(func_1(Struct_3(global0.b.a, global0.b, Struct_2(func_2(Struct_3(global0.b.a, Struct_2(global1.a, true), Struct_2(global0.a, global1.b), global0.c, Struct_1(global1.a.a, global0.d.a.b)), Struct_1(vec4<bool>(global0.d.a.a.x, true, global0.d.b, arg_0), global0.b.a.b), var_1.x), arg_0), global0.b, func_1(Struct_3(Struct_1(global1.a.a, global1.a.b), Struct_2(global0.d.a, false), Struct_2(global0.c.a, arg_0), Struct_2(global1.a, true), global1.a), false, Struct_2(Struct_1(global1.a.a, 354f), true), vec3<bool>(arg_0, false, true))), global1.b, Struct_2(global1.a, global1.b), vec3<bool>(any(vec4<bool>(false, global0.b.b, true, true)), global0.a.a.x, true)), Struct_2(Struct_1(vec4<bool>(any(vec3<bool>(true, true, false)), any(global0.b.a.a), var_1.x != 42001i, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.b), -188f)), global1.b), global0.b, global0.c, func_2(Struct_3(global0.d.a, global0.c, global0.c, Struct_2(global0.c.a, 1i > var_1.x), global0.c.a), Struct_1(global1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -765f)), var_1.x));
    return func_2(Struct_3(Struct_1(!global1.a.a, 1510f), Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_f32(abs(global0.e.b))), ~var_0.x < var_0.x), Struct_2(Struct_1(!global1.a.a, global1.a.b), global1.a.a.x && !global1.b), global0.d, Struct_1(func_1(Struct_3(global1.a, Struct_2(Struct_1(global0.e.a, global0.d.a.b), global1.b), global0.b, Struct_2(Struct_1(global0.a.a, global0.b.a.b), false), Struct_1(global0.a.a, 740f)), !global1.b, global0.c, vec3<bool>(false, false, false)).a, global1.a.b)), Struct_1(!global1.a.a, global0.a.b), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.yx >> (var_0.yx % vec2<u32>(32u)), ~var_1.xx), 1i));
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    global1 = Struct_2(func_2(Struct_3(global1.a, global0.d, global0.d, Struct_2(global1.a, arg_1.a.x), arg_1), global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, min(-35735i, 2147483647i), 2147483647i), abs(select(vec3<i32>(7429i, -7305i, 22618i), vec3<i32>(521i, -16269i, -2147483647i), global1.a.a.x)))), true);
    let var_0 = countOneBits(-select(vec2<i32>(19489i, -1352i), ~vec2<i32>(-1i, 1i), select(vec2<bool>(false, arg_1.a.x), global0.d.a.a.wy, false))) >> (~min(~vec2<u32>(u_input.a, u_input.a) | ~vec2<u32>(60503u, 4294967295u), _wgslsmith_sub_vec2_u32(~vec2<u32>(2368u, 1u), ~vec2<u32>(u_input.a, 6087u))) % vec2<u32>(32u));
    let var_1 = Struct_3(func_2(Struct_3(arg_1, Struct_2(Struct_1(vec4<bool>(global1.b, arg_1.a.x, arg_1.a.x, global0.c.a.a.x), -1755f), true), Struct_2(Struct_1(vec4<bool>(false, false, false, false), -123f), true), Struct_2(Struct_1(global1.a.a, global1.a.b), arg_1.a.x && global0.d.b), global1.a), Struct_1(global1.a.a, -663f), ~_wgslsmith_mult_i32(min(var_0.x, var_0.x), var_0.x)), Struct_2(Struct_1(!arg_1.a, _wgslsmith_div_f32(global0.e.b, _wgslsmith_f_op_f32(f32(-1f) * -1111f))), global0.c.a.a.x), global0.b, global0.b, Struct_1(vec4<bool>(global0.c.b, select(-68422i < var_0.x, true, true), any(vec4<bool>(true, global0.d.a.a.x, arg_1.a.x, global1.b)) | true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * global0.e.b), -677f))));
    global1 = Struct_2(func_5(arg_1.a.x), global0.c.b);
    global1 = var_1.b;
    return Struct_2(func_1(var_1, true, var_1.b, !(!vec3<bool>(false, true, global0.c.b))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_1(select(vec4<bool>(global1.a.a.x, false, true, any(global0.e.a)), vec4<bool>(global1.b, false || global0.d.a.a.x, true, global0.e.a.x && true), global1.a.a), 599f), func_6(~u_input.a & 112973u, func_5(func_4(global0.a.b, func_1(Struct_3(Struct_1(global0.e.a, -1000f), global0.c, global0.d, Struct_2(global0.b.a, global1.b), global1.a), true, global0.b, vec3<bool>(true, true, global0.c.a.a.x))))), global0.b, global0.d, global1.a);
    global1 = func_6(firstLeadingBit(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), 4294967295u, u_input.a))), Struct_1(global1.a.a, global0.e.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(abs(reverseBits(vec2<i32>(-25284i, -2147483647i)) >> (firstLeadingBit(vec2<u32>(u_input.a, 5814u)) % vec2<u32>(32u))), firstLeadingBit(max(vec2<i32>(1i, 1i), select(vec2<i32>(7681i, 1i), vec2<i32>(-1i, -2147483647i), global1.a.a.xw))), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(1i, 1i)), abs(vec2<i32>(-29324i, 0i)), -vec2<i32>(13433i, 0i)) | _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-2756i, -20837i)), vec2<i32>(1i, 17937i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(1i, 1i)))));
}

