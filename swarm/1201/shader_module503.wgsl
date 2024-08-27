struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f - _wgslsmith_f_op_f32(-677f * global0.x))))), _wgslsmith_f_op_f32(-arg_0), -136f, _wgslsmith_f_op_f32(f32(-1f) * -1019f));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.yz, _wgslsmith_f_op_vec2_f32(-var_0.xw)))) * vec2<f32>(arg_0, global0.x)), _wgslsmith_f_op_vec2_f32(-arg_1.e.xz));
    let var_1 = Struct_2(arg_1.a, firstLeadingBit(54871i), arg_1.e.x, vec3<bool>(arg_1.a.e.x, arg_1.d.x, !(!any(vec2<bool>(true, arg_1.d.x)))), _wgslsmith_f_op_vec4_f32(arg_1.e + var_0));
    var var_2 = min(~_wgslsmith_dot_vec3_u32(vec3<u32>(40846u, countOneBits(u_input.c), 36853u), ~(vec3<u32>(u_input.e.x, u_input.b.x, 13013u) ^ vec3<u32>(u_input.c, 0u, u_input.b.x))), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.c, 4294967295u) << (u_input.e % vec3<u32>(32u))), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(62086u, 1u, 41933u), u_input.b)) ^ vec3<u32>(1u, _wgslsmith_mod_u32(76923u, u_input.b.x), ~0u)));
    var var_3 = max(u_input.c, _wgslsmith_dot_vec4_u32(u_input.d, ~vec4<u32>(1931u, 1u, u_input.d.x, u_input.c) >> (max(u_input.d, vec4<u32>(4294967295u, 0u, 4294967295u, 17936u)) % vec4<u32>(32u))));
    return ~firstLeadingBit(0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec3_u32(~max(~_wgslsmith_add_vec3_u32(vec3<u32>(14588u, u_input.c, u_input.e.x), vec3<u32>(u_input.b.x, 4294967295u, 0u)), vec3<u32>(~26332u, u_input.b.x, u_input.e.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(func_3(-1235f, arg_0), 0u), _wgslsmith_div_u32(1u, u_input.b.x), 4294967295u), vec3<u32>(~max(u_input.e.x, 0u), _wgslsmith_mod_u32(~u_input.d.x, 4294967295u), 23307u)));
    global0 = arg_1.zw;
    global0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1077f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(690f - 924f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x + arg_0.c), _wgslsmith_f_op_f32(arg_0.e.x * arg_1.x))))))));
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x >> (var_0.x % 32u), firstTrailingBit(var_0.x) | ~4294967295u), ~(countOneBits(var_0.yy) ^ firstTrailingBit(u_input.d.xy)));
    var var_2 = !(arg_3 || false);
    return Struct_4(arg_0.a.d.x, vec3<i32>(~(_wgslsmith_add_i32(68039i, arg_0.a.d.x) & u_input.a.x), _wgslsmith_add_i32((-23592i | arg_0.a.d.x) & ~(-34059i), _wgslsmith_dot_vec2_i32(u_input.a.yy, select(u_input.a.zw, arg_0.a.d.zz, arg_0.d.x))), u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_4) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-116f, 1000f)) * _wgslsmith_f_op_f32(min(892f, global0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -868f), -281f))));
    var var_0 = global0.x;
    var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 3176f, _wgslsmith_f_op_f32(f32(-1f) * -855f), _wgslsmith_div_f32(global0.x, -602f)) - vec4<f32>(_wgslsmith_f_op_f32(597f - global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x)))));
    var_0 = _wgslsmith_f_op_f32(var_1.x - 759f);
    return vec4<i32>(max(arg_2.d.x, countOneBits(_wgslsmith_clamp_i32(-1i, -2147483647i, arg_0.d.x))), func_2(Struct_2(Struct_1(true, true, select(arg_2.e.zz, vec2<bool>(true, true), arg_0.a), reverseBits(u_input.a), !arg_2.e), _wgslsmith_div_i32(arg_2.d.x, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-556f, -348f) * var_1.x), arg_0.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-185f, 1000f, 923f, 592f), vec4<f32>(global0.x, 1255f, var_1.x, 496f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.x, global0.x), _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-580f + -1952f), _wgslsmith_f_op_f32(-global0.x))), global0.x, select(all(select(arg_0.e.yx, arg_0.c, false)), arg_2.b && arg_2.b, 58371u >= ~u_input.e.x)).b.x, 1i, -2147483647i);
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_div_vec4_i32(func_4(Struct_1(true, true, vec2<bool>(true, true), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 1i), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), 1i, Struct_1(true, true, vec2<bool>(true, true), vec4<i32>(2147483647i, -43863i, u_input.a.x, 3829i) >> (u_input.d % vec4<u32>(32u)), vec3<bool>(false, false, false)), func_2(Struct_2(Struct_1(false, false, vec2<bool>(false, true), vec4<i32>(-3637i, u_input.a.x, 1i, u_input.a.x), vec3<bool>(false, false, true)), -31972i, -2079f, vec3<bool>(false, true, false), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, global0.x, -452f, -266f), vec4<f32>(1359f, global0.x, 115f, -729f))), -1061f, true)), firstTrailingBit(vec4<i32>(select(u_input.a.x, u_input.a.x, false), -11280i, firstLeadingBit(u_input.a.x), _wgslsmith_clamp_i32(-1i, 64578i, u_input.a.x))));
    var var_1 = ~select(~_wgslsmith_div_vec2_u32(u_input.e.xy, select(vec2<u32>(1u, 56010u), vec2<u32>(u_input.e.x, 52948u), vec2<bool>(false, false))), select(abs(u_input.d.wy), vec2<u32>(1u >> (0u % 32u), _wgslsmith_mult_u32(u_input.b.x, u_input.e.x)), vec2<bool>(true, true)), vec2<bool>(!(var_0.x <= -33173i), u_input.a.x != reverseBits(1i)));
    var_0 = -(_wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(u_input.a.x), 0i, var_0.x, -var_0.x), ~u_input.a, _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -4259i, -23887i, var_0.x), u_input.a, u_input.a), vec4<i32>(23405i, var_0.x, u_input.a.x, var_0.x) ^ u_input.a)) | -select(vec4<i32>(var_0.x, 24820i, var_0.x, u_input.a.x) >> (vec4<u32>(26243u, var_1.x, 28328u, var_1.x) % vec4<u32>(32u)), vec4<i32>(var_0.x, -66499i, var_0.x, var_0.x), vec4<bool>(false, false, false, false)));
    global0 = vec2<f32>(-691f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1427f * global0.x), _wgslsmith_f_op_f32(select(global0.x, 241f, false)), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))))));
    let var_2 = vec4<u32>(firstLeadingBit(u_input.e.x), var_1.x, 53748u, var_1.x);
    return Struct_1(false, false, select(select(vec2<bool>(-22991i >= var_0.x, any(vec4<bool>(false, false, false, true))), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(true, false, false))), !(35915u >= var_2.x)), select(vec2<bool>(global0.x <= 787f, select(false, true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(any(vec3<bool>(false, false, true)), -1772f != global0.x)), vec2<bool>(!all(vec2<bool>(true, true)), true)), u_input.a, select(vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), true, (0u > var_2.x) && false), vec3<bool>(true, false, ~u_input.b.x <= 4294967295u), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2312f, -1478f))))));
    let var_0 = func_1();
    let var_1 = Struct_2(var_0, u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(!(!var_0.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, global0.x, 721f, -280f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, 763f, 2687f), vec4<f32>(-658f, global0.x, global0.x, 553f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1243f, 1338f, global0.x, global0.x))))))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(sign(global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~u_input.b.yz, vec2<u32>(func_3(global0.x, var_1), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.e.x, 27189u, u_input.e.x, 17953u)) ^ firstTrailingBit(u_input.e.x))), var_0.d.www, -1i);
}

