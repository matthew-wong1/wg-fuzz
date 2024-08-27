struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 1u, 1u);

var<private> global1: array<vec2<f32>, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = u_input.d;
    global0 = u_input.b;
    global1 = array<vec2<f32>, 9>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<bool>(true, true)), !select(false, true, true));
    let var_1 = ~(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(9447u, u_input.d.x, 4294967295u, 28667u)), ~vec4<u32>(global0.x, global0.x, 4294967295u, global0.x) << (~vec4<u32>(4294967295u, u_input.b.x, 31821u, global0.x) % vec4<u32>(32u))));
    return 37015u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: i32) -> Struct_1 {
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(~980u, u_input.d.x, ~100744u), u_input.b);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1549f) * _wgslsmith_f_op_f32(-1000f - 2792f))))), !vec2<bool>(any(select(vec2<bool>(true, false), arg_1.yw, arg_0.b)), func_3() <= global0.x));
    var var_1 = Struct_3(arg_0, any(vec3<bool>(!any(vec3<bool>(arg_0.b.x, false, true)), arg_0.b.x, var_0.b.x)));
    var var_2 = ~firstTrailingBit(~vec4<u32>(13976u, global0.x << (0u % 32u), _wgslsmith_dot_vec2_u32(u_input.b.xz, global0.yy), 1u));
    var_1 = Struct_3(Struct_1(1020f, !select(!var_0.b, vec2<bool>(true, var_0.b.x), arg_0.b.x)), any(select(vec2<bool>(false, false), vec2<bool>(var_0.b.x || false, any(vec2<bool>(true, false))), (global0.x << (2347u % 32u)) <= 58063u)));
    return var_1.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = u_input.b;
    var_0 = ~u_input.d;
    var var_1 = !select(select(vec3<bool>(!arg_1.a.b.x, any(arg_1.a.b), all(arg_1.a.b)), select(select(vec3<bool>(arg_1.b, arg_1.a.b.x, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), !vec3<bool>(true, true, arg_1.a.b.x), vec3<bool>(arg_1.b, arg_1.a.b.x, arg_1.b)), !all(vec2<bool>(true, true))), !vec3<bool>(select(false, arg_1.b, arg_1.b), !arg_1.a.b.x, all(vec3<bool>(false, true, false))), all(vec2<bool>(any(vec2<bool>(true, arg_1.b)), arg_1.b)));
    var var_2 = ~abs(~vec3<u32>(0u, global0.x, var_0.x) | vec3<u32>(reverseBits(var_0.x), countOneBits(50687u), 0u));
    global0 = u_input.d;
    return Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1042f, -356f, arg_1.a.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.a.a, 774f) * vec3<f32>(-735f, 555f, arg_1.a.a))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.a, 135f, arg_1.a.a), vec3<f32>(821f, 456f, 285f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a), _wgslsmith_f_op_f32(-arg_1.a.a), _wgslsmith_f_op_f32(ceil(arg_1.a.a))) + vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.a.a)), _wgslsmith_f_op_f32(829f + 833f), -608f)), !select(!vec3<bool>(false, arg_1.b, true), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, false)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global1 = array<vec2<f32>, 9>();
    var var_0 = vec4<f32>(680f, -602f, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(max(arg_0.a, -198f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-315f, _wgslsmith_f_op_f32(-arg_0.a)))) + _wgslsmith_f_op_f32(1313f + _wgslsmith_f_op_f32(f32(-1f) * -458f))));
    return func_4(~firstTrailingBit(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a), vec3<i32>(arg_1, -1i, 22378i)))), Struct_3(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -558f), select(arg_0.b, vec2<bool>(arg_0.b.x, arg_0.b.x), true)), vec4<bool>(false, any(arg_0.b), false, arg_0.b.x), _wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_1, -1i, 34448i, -1i), vec4<i32>(-48040i, u_input.a, u_input.e, 20454i)), vec4<i32>(arg_1, 18535i, arg_1, -21398i) ^ vec4<i32>(arg_1, 1i, -2147483647i, arg_1)), -max(35910i, -1i)), true), ~((vec2<i32>(arg_1, 0i) | vec2<i32>(-2147483647i, u_input.a)) >> (~vec2<u32>(global0.x, 14004u) % vec2<u32>(32u))) | max(_wgslsmith_mod_vec2_i32(-vec2<i32>(31745i, arg_1), ~vec2<i32>(arg_1, arg_1)), vec2<i32>(i32(-1i) * -1i, select(u_input.e, 2147483647i, true))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    return Struct_3(func_2(Struct_1(arg_1.a.x, arg_0.zz), select(vec4<bool>(true, arg_0.x, !arg_0.x, all(vec3<bool>(true, arg_0.x, false))), vec4<bool>(all(vec2<bool>(false, arg_0.x)), false, true, !arg_0.x), select(arg_0, select(arg_0, vec4<bool>(true, true, false, arg_0.x), arg_0.x), 928f < arg_1.a.x)), _wgslsmith_clamp_i32(arg_3.x, arg_3.x, 1i), ~_wgslsmith_clamp_i32(87672i & arg_3.x, _wgslsmith_mult_i32(-2147483647i, u_input.e), u_input.e)), !(arg_0.x || arg_0.x));
}

fn func_6(arg_0: Struct_3) -> f32 {
    let var_0 = ~(vec3<i32>(0i, i32(-1i) * -7509i, _wgslsmith_add_i32(u_input.a, u_input.e) | u_input.c) & vec3<i32>(~0i, u_input.e, u_input.a));
    global1 = array<vec2<f32>, 9>();
    global1 = array<vec2<f32>, 9>();
    global0 = select(_wgslsmith_sub_vec3_u32(firstLeadingBit(~u_input.d), vec3<u32>(~3827u, u_input.b.x, ~4294967295u)) | ~u_input.d, countOneBits(~vec3<u32>(_wgslsmith_mod_u32(global0.x, 42856u), 14171u, _wgslsmith_div_u32(26672u, global0.x))), vec3<bool>(arg_0.a.b.x, func_2(arg_0.a, select(vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, false), select(vec4<bool>(false, true, arg_0.a.b.x, true), vec4<bool>(false, arg_0.b, true, false), arg_0.a.b.x), select(vec4<bool>(arg_0.b, arg_0.a.b.x, true, true), vec4<bool>(true, false, false, false), false)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(11821i, 0i)), -34024i), -12396i).b.x, arg_0.a.b.x));
    global0 = vec3<u32>(0u, func_3() & firstLeadingBit(~global0.x >> (0u % 32u)), ~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 0u, 17390u, 0u), vec4<u32>(1001u, u_input.d.x, 49372u, 1u)), vec4<u32>(u_input.d.x, global0.x, u_input.b.x, global0.x))));
    return 1710f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(941f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -2796f)), -1000f)), _wgslsmith_f_op_f32(func_6(func_5(vec4<bool>(true, all(vec4<bool>(false, true, true, true)), select(true, true, true), true), func_1(Struct_1(-695f, vec2<bool>(true, true)), -1i), ~global0.x, select(countOneBits(vec2<i32>(u_input.a, u_input.c)), select(vec2<i32>(u_input.e, 2147483647i), vec2<i32>(u_input.e, 2147483647i), vec2<bool>(true, false)), vec2<bool>(true, true))))));
    global1 = array<vec2<f32>, 9>();
    let var_1 = select(-(~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -23596i, u_input.c))), vec3<i32>(-firstTrailingBit(u_input.a), u_input.a, -42574i), any(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))));
    var var_2 = func_5(vec4<bool>(true, true, func_2(Struct_1(_wgslsmith_f_op_f32(-478f - 1159f), vec2<bool>(false, false)), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, false), countOneBits(abs(14750i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -36656i, 1i), var_1) | ~15560i).b.x, false), func_4((vec3<i32>(14576i, -1i, -2147483647i) << ((u_input.d | vec3<u32>(4294967295u, global0.x, 53553u)) % vec3<u32>(32u))) >> (vec3<u32>(countOneBits(4294967295u), abs(2586u), 12200u & u_input.d.x) % vec3<u32>(32u)), Struct_3(func_5(vec4<bool>(true, false, true, false), Struct_2(vec3<f32>(367f, -2363f, 561f)), ~84007u, var_1.yy << (vec2<u32>(23312u, global0.x) % vec2<u32>(32u))).a, any(vec2<bool>(true, true))), vec2<i32>(var_1.x, _wgslsmith_mod_i32(~u_input.a, -56858i))), 0u << (global0.x % 32u), vec2<i32>(-55685i | u_input.e, reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-32215i, u_input.e, u_input.c, 0i), vec4<i32>(u_input.e, 5578i, u_input.e, u_input.e)), vec4<i32>(-28182i, -1i, -2147483647i, u_input.e))))).a;
    var_0 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a), var_1.x, _wgslsmith_div_i32(_wgslsmith_div_i32(select(-u_input.a, ~u_input.e, true), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.yy, vec2<i32>(-6963i, 20178i)), countOneBits(var_1.xy))), -32754i));
}

