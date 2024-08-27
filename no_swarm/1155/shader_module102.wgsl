struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = max(firstTrailingBit(~4294967295u), u_input.b.x);
    var var_1 = select(!vec3<bool>(false | any(vec2<bool>(true, false)), false, true), vec3<bool>(false, any(vec2<bool>(true, true)), true), !vec3<bool>(select(any(vec4<bool>(false, true, false, true)), all(vec3<bool>(false, true, false)), u_input.a < 0u), false, true));
    var var_2 = !(u_input.a >= u_input.b.x);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1714f + _wgslsmith_f_op_f32(select(-2372f, 2554f, false))))), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, u_input.d, u_input.d, 12340i) >> ((vec4<u32>(u_input.c, 0u, 77143u, 4294967295u) << (vec4<u32>(u_input.a, 72745u, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(u_input.d, -1i, 2147483647i, 2147483647i) << (select(vec4<u32>(0u, 1u, 52911u, 89268u), vec4<u32>(24242u, u_input.b.x, 66313u, 53620u), false) % vec4<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(-2147483647i), 1i, 1i), abs(vec3<i32>(u_input.d, u_input.d, u_input.d))), !var_1.xx, _wgslsmith_add_i32(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(75681i, 2147483647i, -1i, u_input.d), abs(vec4<i32>(-1i, 2147483647i, u_input.d, -33552i))))));
    var var_4 = u_input.b;
    return vec2<i32>(1i, 1i);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = max(countOneBits(func_3()), vec2<i32>(-(u_input.d & u_input.d), -21797i) ^ reverseBits(~(vec2<i32>(2147483647i, -32833i) << (vec2<u32>(u_input.c, arg_0.x) % vec2<u32>(32u)))));
    let var_1 = -439f;
    var var_2 = true;
    var_0 = ~vec2<i32>(reverseBits(-18421i), firstLeadingBit(12308i));
    global0 = array<vec2<f32>, 9>();
    return Struct_1(_wgslsmith_f_op_f32(sign(174f)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, 1i, 1i, firstLeadingBit(var_0.x)), vec3<i32>(-13618i, -33928i, _wgslsmith_clamp_i32(-1i, u_input.d, 1i)), !vec2<bool>(true, select(all(vec4<bool>(false, true, true, true)), var_0.x > -33915i, true)), ~countOneBits(-var_0.x));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<i32>(u_input.d, -1i, ~16753i);
    var var_1 = ~u_input.b;
    let var_2 = Struct_2(func_2(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 23183u), vec2<u32>(var_1.x, u_input.c)), ~vec2<u32>(u_input.b.x, var_1.x)), var_1.x));
    var_1 = u_input.b;
    var_1 = ~abs(vec2<u32>(0u, ~countOneBits(62767u)));
    return func_2(abs(vec2<u32>(1u, ~u_input.b.x)), 81480u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    let var_0 = Struct_2(func_2(~abs(countOneBits(vec2<u32>(u_input.a, 46963u))), 4294967295u));
    return _wgslsmith_div_u32(4294967295u, u_input.c);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.c, 9u)] * global0[_wgslsmith_index_u32(~arg_0.x << (_wgslsmith_div_u32(arg_0.x, 16171u) % 32u), 9u)]) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 9u)]))))))));
    var var_1 = Struct_2(func_1());
    let var_2 = arg_1;
    let var_3 = Struct_2(Struct_1(-1515f, arg_2.b, countOneBits(~(arg_2.b.yzx << (vec3<u32>(u_input.b.x, arg_0.x, arg_0.x) % vec3<u32>(32u)))), !arg_2.d, i32(-1i) * -37704i));
    let var_4 = var_3.a;
    return Struct_2(func_1());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 9>();
    let var_0 = ~3706u;
    let var_1 = func_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(func_4(func_1(), vec3<i32>(u_input.d, 58570i, 33581i)), var_0, u_input.a), vec3<u32>(var_0, var_0, reverseBits(86086u)) << (~countOneBits(vec3<u32>(4294967295u, 4294967295u, 32744u)) % vec3<u32>(32u)), vec3<u32>(var_0, select(~371u, _wgslsmith_clamp_u32(94589u, var_0, u_input.b.x), true), reverseBits(u_input.a) ^ 1u)), Struct_2(func_2(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 4294967295u), u_input.b, u_input.b)), u_input.b.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1286f)), _wgslsmith_div_f32(-333f, -345f)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.d, u_input.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, u_input.d), vec4<i32>(0i, u_input.d, 2147483647i, u_input.d), vec4<i32>(u_input.d, u_input.d, 24283i, 0i))) & min(func_2(u_input.b, var_0).b, select(vec4<i32>(u_input.d, 1i, u_input.d, u_input.d), vec4<i32>(1i, -33743i, u_input.d, -1i), vec4<bool>(false, false, false, false))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 80854i, u_input.d), vec3<i32>(-2147483647i, u_input.d, 2147483647i)), vec3<i32>(24057i, -40358i, -1i) ^ vec3<i32>(-65142i, -35756i, u_input.d)) ^ -_wgslsmith_mod_vec3_i32(vec3<i32>(4834i, -1i, -32118i), vec3<i32>(47722i, u_input.d, -1i)), vec2<bool>(!any(vec2<bool>(false, false)), false), -50212i), !(!(func_1().d.x != true)));
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1115f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1418f, 251f, 2279f) * vec3<f32>(-1820f, var_1.a.a, var_1.a.a)), vec3<f32>(1350f, 447f, -923f))), vec3<f32>(_wgslsmith_f_op_f32(-680f - var_1.a.a), _wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(-var_1.a.a)))))));
}

