struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = Struct_5(arg_2.e, firstLeadingBit(-19544i));
    var var_1 = var_0.a;
    return ~u_input.d.xy;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>) -> bool {
    global0 = !(((all(vec4<bool>(false, false, true, false)) || true) & all(vec2<bool>(true, true))) & (1i > -(~arg_0.x)));
    global0 = arg_0.x > -2147483647i;
    global0 = true;
    var var_0 = Struct_4(vec4<bool>(false, !(!any(vec2<bool>(false, true))), true, false), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-125f, -117f, 765f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, -756f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1354f, -234f, -1000f) + vec3<f32>(-644f, 1164f, -1470f)))), arg_0.x, (~0u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, arg_1.x, 23796u), vec4<u32>(arg_1.x, arg_1.x, u_input.d.x, 0u))) << (90312u % 32u), firstLeadingBit(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.b.x, 2147483647i), arg_0, arg_0))), false), vec2<f32>(1f, 1000f), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1142f, -997f, -2347f)))), firstLeadingBit(arg_0.x & u_input.b.x), u_input.a.x, _wgslsmith_div_vec4_i32(vec4<i32>(11322i, 0i, u_input.b.x, 2147483647i) & vec4<i32>(1i, arg_0.x, u_input.b.x, 1i), vec4<i32>(u_input.c, u_input.b.x, -2147483647i, u_input.b.x ^ u_input.b.x)), all(vec3<bool>(false, true, false))), Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(412f, -462f, -1620f))) + vec3<f32>(490f, -325f, 460f)))), 2147483647i, arg_1.x, ~arg_0, any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    let var_1 = var_0.d;
    return var_1.e;
}

fn func_2(arg_0: f32) -> f32 {
    global0 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), true, any(vec2<bool>(false, false))), !vec4<bool>(true, true, u_input.a.x == u_input.d.x, true)));
    global0 = func_4(-_wgslsmith_add_vec4_i32(vec4<i32>(abs(u_input.b.x), ~15831i, u_input.b.x, -2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yy), 1i | u_input.c, abs(u_input.b.x), -7673i)), abs(min(func_3(-u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(27686u, u_input.a.x, 8181u)), Struct_4(vec4<bool>(true, false, false, false), Struct_3(vec3<f32>(514f, 263f, 1272f), -43192i, 0u, vec4<i32>(33741i, 2147483647i, 2147483647i, 1i), true), vec2<f32>(arg_0, arg_0), Struct_3(vec3<f32>(257f, arg_0, arg_0), u_input.b.x, 44431u, vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.c), false), Struct_3(vec3<f32>(-387f, arg_0, arg_0), u_input.b.x, u_input.a.x, vec4<i32>(12164i, -2147483647i, u_input.c, 1i), true))), vec2<u32>(~u_input.a.x, ~u_input.d.x))));
    global0 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) | true;
    global0 = !(!(!all(vec2<bool>(true, true))));
    global0 = !(!(1473f >= arg_0));
    return _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-arg_0)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> f32 {
    global0 = arg_0;
    global0 = false;
    let var_0 = vec4<u32>(4294967295u, max(~(~reverseBits(u_input.a.x)), ~1u), 20210u, u_input.a.x);
    var var_1 = Struct_5(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-664f * _wgslsmith_f_op_f32(f32(-1f) * -252f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-528f)), _wgslsmith_f_op_f32(917f + 1021f), !arg_0)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_2(1263f)))), 31449i, ~u_input.a.x, ~_wgslsmith_mult_vec4_i32(max(vec4<i32>(-1i, -16695i, arg_1.a, arg_1.a), vec4<i32>(arg_1.a, 1i, 2147483647i, -566i)), min(vec4<i32>(2147483647i, 5822i, 6924i, arg_1.a), vec4<i32>(u_input.c, u_input.c, -18540i, 1i))), !(true | func_4(vec4<i32>(u_input.c, arg_1.a, 0i, u_input.b.x), vec2<u32>(u_input.d.x, u_input.a.x)))), countOneBits(arg_1.a));
    var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.a) - _wgslsmith_div_vec3_f32(vec3<f32>(464f, 425f, var_1.a.a.x), var_1.a.a))), var_1.b, ~reverseBits(1u), abs(var_1.a.d), select(func_4(var_1.a.d, vec2<u32>(61687u, 61753u)), !arg_0, var_1.a.a.x > var_1.a.a.x) | var_1.a.e), var_1.a.b);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(370f * -869f)), _wgslsmith_f_op_f32(floor(-1436f)), _wgslsmith_f_op_f32(func_1(false, Struct_2(u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-319f, -1000f)) * _wgslsmith_f_op_f32(sign(-647f))))), u_input.d.yz >> (vec2<u32>(~30169u, ~(~1u)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-600i, u_input.c, 43951i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.b.x), u_input.b)), reverseBits(u_input.c) & ~0i) >> ((vec2<u32>(~1u, ~4294967295u) >> (~vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.b.x);
}

