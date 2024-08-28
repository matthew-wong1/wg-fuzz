struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec2<i32> {
    var var_0 = Struct_2(~vec4<u32>(abs(~u_input.b), _wgslsmith_sub_u32(0u, 0u), ~u_input.b, ~_wgslsmith_mod_u32(70310u, 12879u)), _wgslsmith_add_vec3_i32(-arg_0, ~vec3<i32>(-56221i, _wgslsmith_clamp_i32(u_input.e.x, u_input.d, arg_1), arg_0.x)), Struct_1(select(vec3<bool>(any(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), any(global0.a), 425f <= global0.c.x), global0.a, select(vec3<bool>(true, global0.a.x, true), global0.a, select(global0.a, global0.a, false))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0.b.x)))), -2144f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1102f, 1819f))))), global0.c));
    let var_1 = var_0.c;
    let var_2 = ~var_0.a.zyx;
    let var_3 = Struct_2(var_0.a, vec3<i32>(_wgslsmith_mult_i32(u_input.e.x | var_0.b.x, var_0.b.x & abs(2147483647i)), arg_1, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-arg_1, arg_1))), Struct_1(vec3<bool>(~var_2.x != var_2.x, true, -1262f < _wgslsmith_f_op_f32(-global0.c.x)), vec3<f32>(var_1.b.x, -699f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(120f + -1258f), -496f)), var_1.c));
    var_0 = Struct_2(~var_0.a, select(~vec3<i32>(-var_3.b.x, arg_0.x >> (var_3.a.x % 32u), -22558i), vec3<i32>(countOneBits(_wgslsmith_add_i32(arg_0.x, var_3.b.x)), -3305i, 61000i), vec3<bool>(!all(vec4<bool>(var_0.c.a.x, global0.a.x, var_0.c.a.x, var_0.c.a.x)), all(select(global0.a, vec3<bool>(var_0.c.a.x, global0.a.x, var_3.c.a.x), global0.a)), global0.a.x)), var_3.c);
    return var_3.b.yy;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> vec2<i32> {
    global0 = Struct_1(!(!(!select(global0.a, global0.a, false))), arg_1, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -2575f, global0.c.x, arg_1.x) - vec4<f32>(global0.b.x, arg_1.x, arg_1.x, 254f)))), _wgslsmith_f_op_vec4_f32(global0.c - global0.c))));
    global0 = Struct_1(!global0.a, vec3<f32>(-241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x))) + _wgslsmith_f_op_f32(sign(159f))), _wgslsmith_f_op_f32(-global0.b.x)), global0.c);
    let var_0 = abs(u_input.e.zwx);
    let var_1 = arg_0;
    let var_2 = Struct_1(vec3<bool>(!(all(vec4<bool>(global0.a.x, true, false, global0.a.x)) == any(global0.a)), false, true), arg_1, _wgslsmith_f_op_vec4_f32(-global0.c));
    return func_3(abs(var_0), max(34847i, -13354i) ^ u_input.a);
}

fn func_1() -> vec4<u32> {
    let var_0 = vec4<i32>(u_input.a, u_input.e.x ^ u_input.d, 2147483647i, _wgslsmith_mod_i32(select(2147483647i, 24263i, true), reverseBits(~52197i)) | 59693i);
    let var_1 = vec3<i32>(reverseBits(1i & ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -24193i), u_input.c)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mod_i32(var_0.x, 12581i)), u_input.c.x), _wgslsmith_div_i32(-1i, min(41932i, var_0.x)) >> (9342u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(reverseBits(func_2(u_input.b, global0.c.yyy)), vec2<i32>(-1i, var_0.x)), var_0.x, min(var_0.x, -u_input.e.x)));
    global0 = Struct_1(vec3<bool>(true & all(!vec2<bool>(global0.a.x, global0.a.x)), true, global0.a.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -1327f, 680f) * _wgslsmith_f_op_vec3_f32(round(global0.c.wxw))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(-725f, global0.c.x, -1451f)), _wgslsmith_div_vec3_f32(global0.c.xzz, vec3<f32>(733f, global0.c.x, -1063f)), !global0.a.x))))), vec4<f32>(-212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), -534f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-676f, _wgslsmith_f_op_f32(global0.c.x - 646f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(-790f + -315f)))));
    var var_2 = global0.a;
    let var_3 = (vec2<i32>(-22591i, -var_0.x) ^ (vec2<i32>(max(var_1.x, 53058i), countOneBits(var_1.x)) | _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(19651i, 2147483647i), var_0.zy)))) | -_wgslsmith_mult_vec2_i32(var_0.wz, vec2<i32>(var_0.x, -12132i) | u_input.e.wx);
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b << (u_input.b % 32u), ~33428u, 4294967295u, (u_input.b ^ 18723u) & countOneBits(13967u)), vec4<u32>(~(u_input.b & 7105u), max(~0u, 42713u), reverseBits(~u_input.b), ~2562u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>) -> StorageBuffer {
    var var_0 = any(!vec4<bool>(false != (-780f <= global0.b.x), !any(global0.a.xz), !any(vec3<bool>(arg_1.c.a.x, false, global0.a.x)), any(select(vec4<bool>(false, false, arg_0.d.a.x, false), vec4<bool>(arg_1.c.a.x, arg_1.c.a.x, true, false), false))));
    global0 = arg_0.d;
    var var_1 = arg_0.d.a.yz;
    var var_2 = Struct_1(!select(arg_1.c.a, select(vec3<bool>(false, false, false), arg_0.d.a, arg_1.c.c.x != arg_0.d.b.x), global0.a), vec3<f32>(arg_1.c.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d.b.x, -1600f))), 745f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b.x))), arg_1.c.c);
    var_2 = arg_0.d;
    return StorageBuffer(~max(0u, 36508u), vec4<f32>(-153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(386f))), _wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, arg_0.d.c.x))), _wgslsmith_f_op_f32(-arg_1.c.b.x)), _wgslsmith_f_op_f32(floor(arg_0.a)), ~(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_1.a.yyx, vec3<u32>(4294967295u, u_input.b, arg_1.a.x)), 44785u | arg_1.a.x) & u_input.b), ~(~select(u_input.e >> (arg_1.a % vec4<u32>(32u)), u_input.e << (vec4<u32>(1u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), select(vec4<bool>(var_1.x, false, arg_1.c.a.x, true), vec4<bool>(arg_1.c.a.x, false, true, var_2.a.x), arg_0.d.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(1f - -177f);
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = func_4(Struct_3(global0.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.c.xwy)) * global0.b), firstLeadingBit(countOneBits(firstTrailingBit(u_input.e.xzw))), Struct_1(vec3<bool>(all(vec3<bool>(global0.a.x, true, global0.a.x)), any(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), !global0.a.x), _wgslsmith_f_op_vec3_f32(global0.c.wwy - _wgslsmith_div_vec3_f32(global0.c.zxw, global0.c.yyw)), _wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(-global0.c))), u_input.a), Struct_2(_wgslsmith_add_vec4_u32(abs(func_1()), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2, 34783u, 2320u, var_2), vec4<u32>(4294967295u, var_2, 69248u, u_input.b)) << (~vec4<u32>(u_input.b, 37003u, u_input.b, u_input.b) % vec4<u32>(32u))), -(~max(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.d, u_input.d, -2147483647i))), Struct_1(global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 1064f, -1005f)), global0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, 929f, -1000f) + _wgslsmith_f_op_vec4_f32(abs(global0.c))))), abs(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, -1i, u_input.a, u_input.c.x), max(u_input.e, vec4<i32>(u_input.a, -24405i, u_input.a, -29624i))))));
}

