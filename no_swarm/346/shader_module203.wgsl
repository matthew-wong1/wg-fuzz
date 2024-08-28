struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: Struct_5 = Struct_5(vec3<i32>(2147483647i, i32(-2147483648), 3774i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = 1i;
    global0 = Struct_5(vec3<i32>(global0.a.x, ~(-arg_0.x), arg_0.x));
    var var_1 = Struct_5(~(-(vec3<i32>(-1i) * -vec3<i32>(26864i, -1i, 1i))));
    var_0 = u_input.a;
    var_1 = Struct_5(select(~arg_1.b.b.a.yyx, var_1.a, vec3<bool>(arg_1.e.b.d.x, true, true)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.wx - arg_1.c.xx))));
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(min(0i, u_input.a), -global0.a.x, -u_input.a), 1i), -1i, _wgslsmith_sub_i32(~select(u_input.a, 1i, false), -1i) & abs(_wgslsmith_mult_i32(~u_input.a, max(u_input.a, u_input.a))));
    global0 = Struct_5(var_0);
    let var_1 = 1u;
    var var_2 = arg_0.x;
    global0 = Struct_5(~firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(85965i, var_0.x, u_input.a), var_0)) | (_wgslsmith_sub_vec3_i32(global0.a, vec3<i32>(var_0.x, u_input.b, var_0.x)) & countOneBits(countOneBits(vec3<i32>(42167i, var_0.x, global0.a.x)))));
    return countOneBits(firstTrailingBit(~(~(vec4<i32>(-2147483647i, 4843i, global0.a.x, global0.a.x) | vec4<i32>(-2147483647i, u_input.b, var_0.x, u_input.a)))));
}

fn func_1(arg_0: f32) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(func_3(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.a.x, 1i), global0.a), Struct_3(u_input.a, Struct_2(vec4<u32>(30013u, 9851u, 11132u, 4294967295u), Struct_1(vec4<i32>(global0.a.x, -1i, u_input.a, -3590i), true, u_input.b, vec3<bool>(true, true, false)), 2147483647i), vec4<f32>(558f, arg_0, arg_0, -252f), Struct_2(vec4<u32>(0u, 252u, 45517u, 4294967295u), Struct_1(vec4<i32>(u_input.a, -35483i, global0.a.x, u_input.b), true, u_input.b, vec3<bool>(false, false, false)), global0.a.x), Struct_2(vec4<u32>(4294967295u, 67433u, 44451u, 66497u), Struct_1(vec4<i32>(0i, 37808i, global0.a.x, -2147483647i), false, -1i, vec3<bool>(false, true, true)), -1i))))), vec4<i32>(42698i, countOneBits(1i), _wgslsmith_div_i32(-1i, -global0.a.x), -11565i)), true, u_input.b, vec3<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), !any(vec3<bool>(true, true, true)), true));
    var_0 = Struct_1(_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(49973i, var_0.a.x, 78851i, var_0.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(8374i, -23983i, global0.a.x, u_input.b), vec4<i32>(2147483647i, global0.a.x, 0i, var_0.a.x)))), countOneBits(var_0.a)), var_0.b, -1i, var_0.d);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1252f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1038f) * vec2<f32>(744f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(437f, arg_0))))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-15823i << (0u % 32u), -global0.a.x, -23002i), vec3<i32>(-1i) * -var_0.a.wzx), Struct_3(_wgslsmith_mod_i32(~var_0.a.x, u_input.a), Struct_2(select(vec4<u32>(1u, 0u, 73605u, 0u), vec4<u32>(66995u, 1u, 62132u, 85121u), vec4<bool>(false, false, true, true)), Struct_1(var_0.a, var_0.d.x, -2147483647i, var_0.d), firstLeadingBit(2494i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -827f, -383f, arg_0) + vec4<f32>(-1000f, -211f, arg_0, 329f)))), Struct_2(abs(vec4<u32>(29755u, 0u, 39230u, 10070u)), Struct_1(var_0.a, false, u_input.b, vec3<bool>(true, var_0.b, true)), ~1i), Struct_2(abs(vec4<u32>(14258u, 14410u, 84489u, 0u)), Struct_1(vec4<i32>(65452i, global0.a.x, global0.a.x, -1i), true, -49417i, var_0.d), 7373i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, 105f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1398f - var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, arg_0, 101f), vec3<f32>(1000f, -472f, arg_0)))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(1249f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) + arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, arg_0)) * -322f))));
    var var_3 = Struct_5(_wgslsmith_sub_vec3_i32((firstLeadingBit(var_0.a.zzz) >> (~vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u))) >> ((vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(-(global0.a << (vec3<u32>(0u, 39281u, 4294967295u) % vec3<u32>(32u))))));
    return Struct_5(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(793f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(343f - -1000f))))));
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(select(1u, 78349u, true), _wgslsmith_mult_u32(0u, 42459u)), 1u, ~(~4294967295u)) >> (_wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(102088u, 1u, 27418u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), ~(~(select(vec3<u32>(0u, 0u, 63038u), vec3<u32>(6332u, 26724u, 0u), true) | vec3<u32>(76479u, 13941u, 72609u))));
    let var_1 = ~(-(~u_input.a));
    global0 = func_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1042f))) * _wgslsmith_f_op_f32(-847f + _wgslsmith_f_op_f32(f32(-1f) * -315f)))));
    global0 = Struct_5(min(global0.a, vec3<i32>(var_1, -5362i, abs(-2147483647i))));
    let var_2 = Struct_3(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(~global0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), global0.a.xz)), -countOneBits(var_1)), Struct_2(~reverseBits(~vec4<u32>(4294967295u, var_0.x, var_0.x, 43217u)), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, 39292i, -2147483647i, u_input.b), vec4<i32>(u_input.a, 54331i, global0.a.x, 59712i), vec4<i32>(global0.a.x, u_input.b, 26378i, u_input.a)), countOneBits(vec4<i32>(u_input.a, 47711i, global0.a.x, u_input.b))), true, func_1(_wgslsmith_f_op_f32(min(-1205f, 1000f))).a.x, vec3<bool>(true, true, true)), i32(-1i) * -74780i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(384f, -762f)), 1f, _wgslsmith_f_op_f32(1171f + _wgslsmith_f_op_f32(1154f * 574f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(global0.a, Struct_3(1i, Struct_2(vec4<u32>(1u, 1u, var_0.x, var_0.x), Struct_1(vec4<i32>(5330i, global0.a.x, u_input.a, global0.a.x), false, 1i, vec3<bool>(true, false, false)), 6490i), vec4<f32>(446f, 714f, -358f, 1000f), Struct_2(vec4<u32>(1u, 4294967295u, var_0.x, 86575u), Struct_1(vec4<i32>(-161i, u_input.a, -34381i, global0.a.x), false, global0.a.x, vec3<bool>(false, true, false)), 32831i), Struct_2(vec4<u32>(var_0.x, var_0.x, var_0.x, 40125u), Struct_1(vec4<i32>(global0.a.x, u_input.a, var_1, u_input.b), false, -1i, vec3<bool>(true, true, false)), var_1)))).x)))), Struct_2(reverseBits(max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 72141u, 1u, 0u), vec4<u32>(var_0.x, 4294967295u, 61622u, 28407u)), min(vec4<u32>(var_0.x, var_0.x, 45764u, 54679u), vec4<u32>(50618u, var_0.x, var_0.x, 4294967295u)))), Struct_1(~(vec4<i32>(0i, global0.a.x, 27824i, var_1) & vec4<i32>(-11337i, u_input.b, var_1, u_input.a)), true, u_input.a, vec3<bool>(true, true, true)), firstLeadingBit(max(~u_input.a, ~global0.a.x))), Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 78807u, 4294967295u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(4294967295u, 74715u, 1u, 4294967295u), vec4<u32>(38960u, var_0.x, 41591u, 20855u))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(76997u, var_0.x, 45156u, 4294967295u), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x)))), Struct_1(_wgslsmith_add_vec4_i32(min(vec4<i32>(13922i, global0.a.x, -23885i, u_input.b), vec4<i32>(8830i, var_1, -1i, global0.a.x)), select(vec4<i32>(32925i, var_1, 12513i, -49070i), vec4<i32>(u_input.b, global0.a.x, var_1, var_1), vec4<bool>(true, false, false, false))), true, global0.a.x, vec3<bool>(true, true, true)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -19581i) ^ vec2<i32>(global0.a.x, 1i), vec2<i32>(2147483647i, global0.a.x)), func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-498f, -294f)))).x, any(vec4<bool>(false, false, false, false)))));
    let var_3 = Struct_4(select(select(select(vec2<bool>(true, true), !var_2.e.b.d.yz, vec2<bool>(true, true)), select(var_2.b.b.d.yz, !vec2<bool>(true, var_2.d.b.b), var_2.d.b.d.zy), !vec2<bool>(false, var_2.d.b.b)), select(!vec2<bool>(true, var_2.e.b.b), var_2.e.b.d.xx, select(var_2.b.b.d.zy, select(var_2.b.b.d.yy, vec2<bool>(var_2.e.b.d.x, var_2.d.b.b), true), var_0.x == 4294967295u)), select(select(select(vec2<bool>(false, var_2.b.b.b), var_2.b.b.d.zx, var_2.b.b.b), vec2<bool>(true, var_2.e.b.b), vec2<bool>(var_2.d.b.d.x, false)), var_2.e.b.d.yy, !var_2.b.b.d.zz)));
    global0 = Struct_5(vec3<i32>(_wgslsmith_mult_i32(-firstLeadingBit(var_2.d.b.a.x), i32(-1i) * -global0.a.x), _wgslsmith_mod_i32(18707i, _wgslsmith_mult_i32(-var_1, firstLeadingBit(2147483647i))), 22840i));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.b.a, select(vec4<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), 1u, _wgslsmith_clamp_u32(var_0.x, 21736u, 1u), ~10188u), _wgslsmith_add_vec4_u32(var_2.d.a, var_2.d.a << (vec4<u32>(var_0.x, var_2.e.a.x, var_2.d.a.x, var_2.e.a.x) % vec4<u32>(32u))), false), !vec4<bool>(false, all(vec4<bool>(true, false, var_2.d.b.d.x, false)), true, true)), countOneBits(vec2<u32>(17433u, ~(~var_0.x))));
}

