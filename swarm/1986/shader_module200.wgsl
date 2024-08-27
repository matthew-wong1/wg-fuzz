struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_5, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = select(vec4<bool>(!(!(arg_2.b.c > -1349f)), true, arg_0.b.x, all(vec3<bool>(!arg_0.b.x, any(vec4<bool>(false, false, arg_2.a.x, arg_2.a.x)), !arg_2.a.x))), select(vec4<bool>(false, true, select(false, all(vec3<bool>(true, arg_0.b.x, true)), true), all(select(vec4<bool>(false, false, true, arg_0.b.x), vec4<bool>(arg_2.a.x, arg_0.b.x, false, arg_0.b.x), false))), vec4<bool>(arg_2.a.x, !(!arg_0.b.x), _wgslsmith_f_op_f32(select(2261f, 188f, false)) <= 950f, true), !vec4<bool>(true, arg_2.a.x, true, all(arg_2.a))), vec4<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(16095u, arg_2.b.a.x), select(vec2<u32>(arg_2.b.a.x, 4294967295u), arg_3, arg_0.b.x)) != arg_3.x, true, true, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1415f)), arg_2.b.c, arg_0.a.b.c, _wgslsmith_f_op_f32(arg_0.a.b.c + -368f))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f + arg_2.b.c)), arg_2.b.c, -298f, -698f), vec4<f32>(-476f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-294f * 698f))), -409f, arg_0.a.c.b.c)));
    global0 = array<vec3<i32>, 28>();
    let var_2 = countOneBits(select(firstTrailingBit(countOneBits(arg_2.b.a.xz) | _wgslsmith_clamp_vec2_u32(vec2<u32>(9431u, arg_2.b.a.x), arg_0.a.d.a.xx, arg_2.b.a.yx)), _wgslsmith_add_vec2_u32(arg_0.a.b.a.yy, vec2<u32>(arg_2.b.a.x, arg_2.b.a.x)), _wgslsmith_f_op_f32(arg_0.a.c.b.c - _wgslsmith_f_op_f32(-arg_0.a.d.c)) < arg_2.b.c));
    global0 = array<vec3<i32>, 28>();
    return vec2<bool>(true, arg_2.b.c <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.c), _wgslsmith_div_f32(arg_2.b.c, var_1.x), var_0.x)), var_1.x, arg_0.b.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(func_3(Struct_4(Struct_3(4294967295u, Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), u_input.a.x, 1000f), Struct_2(vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_1(vec3<u32>(0u, u_input.b, 59888u), 0i, 668f)), Struct_1(vec3<u32>(17910u, 56723u, u_input.b), 0i, -967f)), vec2<bool>(true, true)), _wgslsmith_clamp_i32(u_input.a.x, -1i, u_input.a.x) << ((u_input.b ^ ~0u) % 32u), Struct_5(vec2<bool>(true, true), Struct_1(vec3<u32>(1u, 1u, 1u), 0i, _wgslsmith_f_op_f32(min(1359f, -109f)))), ~countOneBits(~vec2<u32>(u_input.b, 4294967295u))), Struct_1(select(countOneBits(select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(124052u, u_input.b, u_input.b), true)), vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b), ~0u, u_input.b), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), ~(-70116i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-450f, _wgslsmith_f_op_f32(trunc(-294f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -337f))))));
    let var_1 = var_0.b.c;
    return Struct_2(~max(var_0.b.a, var_0.b.a), Struct_1(vec3<u32>(max(96757u, max(u_input.b, u_input.b)), u_input.b, u_input.b), reverseBits(-u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1397f)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_3(u_input.b, Struct_1(vec3<u32>(u_input.b, arg_0.a.a, ~0u), -abs(firstTrailingBit(-2147483647i)), _wgslsmith_f_op_f32(-arg_0.a.b.c)), func_2(), arg_0.a.c.b);
    var var_1 = arg_0.a.d.a.x & _wgslsmith_sub_u32(3922u, arg_0.a.c.b.a.x);
    var var_2 = arg_0;
    var var_3 = Struct_4(arg_0.a, select(var_2.b, select(!arg_0.b, select(func_3(arg_0, var_0.b.b, Struct_5(vec2<bool>(var_2.b.x, var_2.b.x), Struct_1(var_2.a.d.a, u_input.a.x, 1040f)), vec2<u32>(1u, var_0.c.b.a.x)), var_2.b, false), vec2<bool>(true, true)), all(select(select(vec4<bool>(var_2.b.x, arg_0.b.x, false, var_2.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, var_2.b.x), vec4<bool>(var_2.b.x, false, false, false)), select(vec4<bool>(false, var_2.b.x, arg_0.b.x, false), vec4<bool>(var_2.b.x, arg_0.b.x, true, arg_0.b.x), var_2.b.x), all(vec3<bool>(true, true, arg_0.b.x))))));
    global0 = array<vec3<i32>, 28>();
    return _wgslsmith_mult_i32(arg_0.a.c.b.b, min(var_0.d.b, ~var_0.c.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 28>();
    let var_0 = _wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>((func_1(Struct_4(Struct_3(0u, Struct_1(vec3<u32>(0u, u_input.b, u_input.b), u_input.a.x, -706f), Struct_2(vec3<u32>(u_input.b, u_input.b, 4294967295u), Struct_1(vec3<u32>(51665u, 0u, u_input.b), -25101i, 126f)), Struct_1(vec3<u32>(u_input.b, u_input.b, 19738u), u_input.a.x, 623f)), vec2<bool>(true, true)), vec4<f32>(351f, -2138f, -1000f, 1107f)) & max(13560i, u_input.a.x)) << (u_input.b % 32u), firstTrailingBit(u_input.a.x)));
    global0 = array<vec3<i32>, 28>();
    var var_1 = ~reverseBits(-select(-vec4<i32>(1i, u_input.a.x, -39473i, u_input.a.x), vec4<i32>(-2147483647i, -9002i, u_input.a.x, var_0.x) >> (vec4<u32>(12161u, u_input.b, 77465u, u_input.b) % vec4<u32>(32u)), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-328f, func_2().b.c, _wgslsmith_div_f32(-1090f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1764f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1336f, -915f, 554f)) + vec3<f32>(-1000f, 378f, -824f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(ceil(-864f))))), !select(true, true, 26111u >= u_input.b) | ((_wgslsmith_f_op_f32(step(1930f, -1000f)) == _wgslsmith_f_op_f32(f32(-1f) * -714f)) && (abs(var_0.x) < (0i ^ var_0.x)))));
    var var_3 = Struct_2(~(~(~vec3<u32>(48583u, u_input.b, u_input.b))), func_2().b);
    let var_4 = Struct_5(vec2<bool>(!any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false)), true), Struct_1(var_3.a ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b), ~vec3<u32>(var_3.b.a.x, 4294967295u, u_input.b)), u_input.a.x >> (_wgslsmith_div_u32(21550u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, var_3.b.a.x, 19230u, var_3.b.a.x))) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)))));
    var var_5 = Struct_5(vec2<bool>(func_3(Struct_4(Struct_3(u_input.b, var_3.b, Struct_2(var_4.b.a, var_3.b), Struct_1(var_4.b.a, 0i, var_2.x)), var_4.a), 2147483647i, Struct_5(!var_4.a, func_2().b), var_3.a.yz).x, any(vec4<bool>(all(vec3<bool>(var_4.a.x, false, var_4.a.x)), var_4.a.x, var_4.a.x, var_4.a.x))), Struct_1(func_2().a, -2147483647i, _wgslsmith_f_op_f32(var_4.b.c + _wgslsmith_f_op_f32(-var_4.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.b.a.x);
}

