struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1517f, -1196f, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_2(global0.b, _wgslsmith_f_op_f32(-arg_0.b), -43313i);
    global0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))), arg_0.b)), 115f, !(1159f >= _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-888f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1701f, arg_0.b)) + _wgslsmith_f_op_f32(-var_0.a))))), _wgslsmith_div_i32(-firstLeadingBit(var_0.c), ~global0.c));
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-global0.b)))))), _wgslsmith_mod_i32(1i, min(u_input.b.x, global0.c | global0.c)));
    var var_1 = -global0.c;
    var_1 = -42425i;
    return vec4<bool>(!arg_0.c.x && false, true || any(select(arg_0.c.xzy, select(vec3<bool>(arg_0.c.x, false, arg_0.c.x), arg_0.c.yzz, true), !arg_0.c.wwz)), !(!arg_0.c.x), all(arg_0.c.xxy));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    global0 = Struct_2(1763f, 396f, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, u_input.b.x, 5158i), vec4<i32>(-2147483647i, -9496i, global0.c, global0.c)) << (max(vec4<u32>(1u, 32909u, u_input.a, 0u), vec4<u32>(4294967295u, arg_1, 4294967295u, 1u)) % vec4<u32>(32u)), -vec4<i32>(-37059i, u_input.c.x, global0.c, u_input.b.x)), vec4<i32>(select(-16649i, 11082i, arg_0), _wgslsmith_mult_i32(global0.c, global0.c), firstTrailingBit(-2147483647i), 7577i)));
    let var_0 = ~2147483647i ^ _wgslsmith_div_i32(-u_input.b.x, global0.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, global0.a)) + vec2<f32>(global0.a, global0.a))));
    var var_2 = select(!(!select(vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(true, arg_2.x, false, arg_2.x), arg_2, arg_2.x), !arg_2)), !vec4<bool>(!(var_1.x > 283f), any(vec3<bool>(true, false, false)), arg_2.x, arg_2.x), arg_2);
    let var_3 = Struct_2(-183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1193f)))), var_0);
    return Struct_1(vec4<u32>(41745u, 4294967295u, firstTrailingBit(~(~u_input.a)), ~_wgslsmith_mod_u32(1u, countOneBits(arg_1))), _wgslsmith_f_op_f32(step(var_3.b, 1047f)), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(369f - -1914f) * -695f)))), func_3(arg_0.c.x, 50082u, vec4<bool>(false, all(func_2(Struct_1(arg_1.b.a, global0.a, vec4<bool>(false, arg_1.b.c.x, true, false)), arg_1.b.a.x)), true, all(!arg_1.b.c.wzx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b, 1684f, arg_0.b))) + vec3<f32>(global0.b, 1364f, 234f)) * _wgslsmith_f_op_vec3_f32(-arg_1.c))));
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a.x, ~arg_1.b.a.x), 67949u) < ~(u_input.a ^ (_wgslsmith_add_u32(u_input.a, 1u) & arg_1.b.a.x));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    let var_0 = arg_0;
    global0 = Struct_2(_wgslsmith_div_f32(-128f, -328f), 182f, ~select(firstLeadingBit(_wgslsmith_add_i32(var_0, -19359i)), _wgslsmith_mod_i32(4379i, global0.c), any(select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_3, arg_3, false), vec3<bool>(true, false, true)))));
    var var_1 = vec4<u32>(~arg_1.x, ~1u, ~1u, u_input.a);
    var var_2 = func_3(any(!vec3<bool>(arg_3 && arg_3, all(vec3<bool>(arg_3, arg_3, arg_3)), !arg_3)), 4294967295u, vec4<bool>(arg_3, arg_3, !(var_1.x <= 13306u), false));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(338f)) * arg_2.x), func_3(false, ~var_1.x, select(func_2(func_3(var_2.c.x, 3645u, vec4<bool>(var_2.c.x, arg_3, true, var_2.c.x)), u_input.a), var_2.c, func_3(!var_2.c.x, ~67724u, var_2.c).c.x)), arg_2);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-250f, -979f, 33033i);
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(43422u, u_input.a), _wgslsmith_add_u32(~u_input.a, reverseBits(u_input.a)) << (~u_input.a % 32u), u_input.a, ~(~50400u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - global0.b)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec3<bool>(false, true, false))), false));
    var var_2 = vec3<u32>(max(4294967295u << ((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 10874u), vec2<u32>(var_1.a.x, var_1.a.x)) | u_input.a) % 32u), reverseBits(var_1.a.x) | 4294967295u), u_input.a, ~func_4(_wgslsmith_mod_i32(1i, u_input.c.x), max(~vec4<u32>(50980u, 26703u, var_1.a.x, u_input.a), vec4<u32>(var_1.a.x, 60246u, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-888f, var_0.a, -669f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-301f, 1821f, -1500f), vec3<f32>(-1351f, -787f, -692f)))), func_1(Struct_1(vec4<u32>(23117u, var_1.a.x, u_input.a, 3272u), -525f, var_1.c), Struct_3(global0.b, Struct_1(var_1.a, 1000f, vec4<bool>(true, false, true, var_1.c.x)), vec3<f32>(-368f, var_0.a, 966f)))));
    let var_3 = i32(-1i) * -countOneBits(u_input.c.x);
    var_0 = Struct_2(global0.b, global0.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.b, firstTrailingBit(vec2<i32>(-2147483647i, var_3)), reverseBits(u_input.c.xz))), u_input.b));
    let var_4 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(abs(26536u), select(firstLeadingBit(var_1.a.x), u_input.a, all(var_1.c)))), var_2.zz);
    let var_5 = Struct_2(global0.b, _wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -323f))))), u_input.b.x);
    let var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~max(u_input.c, select(u_input.c, u_input.c, vec3<bool>(false, false, false)))), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2064i, var_5.c, -2147483647i), vec4<i32>(u_input.c.x, 1i, -12804i, 32903i)) >> (firstTrailingBit(firstTrailingBit(34771u)) % 32u)), _wgslsmith_add_i32(var_5.c, -1i), abs(reverseBits(countOneBits(var_1.a))), _wgslsmith_f_op_f32(-var_0.a));
}

