struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(4294967295u, 17675u), -463f, vec3<i32>(0i, i32(-2147483648), 2147483647i), vec4<i32>(-49643i, 1i, 8657i, -1i), Struct_1(117075u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<u32> {
    let var_0 = u_input.c.x;
    global0 = Struct_3(~global0.a, 271f, u_input.d << (~min(vec3<u32>(1u, 30774u, u_input.c.x), vec3<u32>(u_input.c.x, 0u, 1u)) % vec3<u32>(32u)), global0.d, Struct_1(1u));
    let var_1 = ~vec4<u32>(~var_0, 4294967295u, u_input.c.x, 5196u & ~(var_0 >> (u_input.c.x % 32u)));
    var var_2 = vec4<bool>(!(true && (true && (u_input.a > global0.c.x))), !(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0, var_1.x), 109008u, _wgslsmith_mult_u32(global0.a.x, u_input.c.x)) > min(15985u, 1u)), all(vec2<bool>(true, -1i >= global0.c.x)) || false, true && any(vec3<bool>(true, true, true)));
    global0 = Struct_3(vec2<u32>(countOneBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, global0.a.x, 150168u), vec3<u32>(var_1.x, 30789u, global0.a.x)), abs(u_input.c.x))), 61789u), global0.b, ~abs(vec3<i32>(u_input.d.x, ~u_input.a, u_input.a >> (1u % 32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(select(~global0.d, select(vec4<i32>(global0.d.x, u_input.b.x, -24213i, -7975i), global0.d, vec4<bool>(var_2.x, false, var_2.x, var_2.x)), !var_2.x), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(global0.d, global0.d), vec4<i32>(u_input.a, u_input.b.x, -2147483647i, 1i))), global0.d), Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.x, abs(u_input.c.x)), ~(~1u))));
    return select(vec2<u32>(_wgslsmith_add_u32(0u, abs(~u_input.c.x)), _wgslsmith_dot_vec4_u32(var_1, ~firstLeadingBit(vec4<u32>(4294967295u, var_0, 0u, 4294967295u)))), vec2<u32>(global0.a.x, u_input.c.x), !(false && (false | any(var_2.zw))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    global0 = Struct_3(func_3(), arg_1.x, vec3<i32>(global0.d.x, abs(countOneBits(_wgslsmith_dot_vec3_i32(global0.c, global0.d.yxz))), -33368i), _wgslsmith_sub_vec4_i32(min(max(~global0.d, global0.d), vec4<i32>(global0.c.x, -15440i, ~u_input.d.x, -35506i)), vec4<i32>(33019i, _wgslsmith_add_i32(5045i, _wgslsmith_div_i32(arg_0, -30700i)), arg_0, _wgslsmith_dot_vec4_i32(select(global0.d, vec4<i32>(24871i, u_input.b.x, 1i, 2147483647i), vec4<bool>(true, false, false, false)), global0.d))), Struct_1(func_3().x));
    let var_0 = arg_1.xxw;
    global0 = Struct_3(abs(vec2<u32>(16161u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 22348u, u_input.c.x, 1u), vec4<u32>(global0.a.x, global0.e.a, u_input.c.x, u_input.c.x)), vec4<u32>(4294967295u, global0.a.x, global0.a.x, global0.e.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), -global0.c, select(vec4<i32>(global0.d.x, global0.c.x, -arg_0, -2147483647i) ^ -vec4<i32>(1i, arg_0, u_input.a, arg_0), vec4<i32>(_wgslsmith_clamp_i32(arg_0, global0.c.x, abs(-2147483647i)), firstTrailingBit(abs(arg_0)), -2944i, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0, -38903i), ~14343i)), select(true, select(all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, false, false)), true), true)), global0.e);
    var var_1 = u_input.c;
    var var_2 = u_input.b;
    return firstLeadingBit(~global0.e.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_3 {
    return Struct_3(~arg_1.wz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), vec3<i32>(i32(-1i) * -8168i, abs(u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-77333i, max(1i, -2147483647i), global0.c.x), u_input.d.x)), ~vec4<i32>(min(-1885i, u_input.a), _wgslsmith_div_i32(global0.d.x, global0.c.x) >> ((arg_1.x | 18980u) % 32u), i32(-1i) * -2147483647i, max(global0.d.x & global0.d.x, _wgslsmith_add_i32(0i, 1i))), Struct_1(~u_input.c.x));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~10687u, _wgslsmith_div_u32(1u, 1u), global0.e.a ^ global0.e.a, u_input.c.x) & vec4<u32>(abs(global0.a.x), 1u, u_input.c.x, max(global0.a.x, 1u)), ~vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, global0.a.x), ~u_input.c.x, ~1u)) << (min(global0.e.a << (21527u % 32u), u_input.c.x << (firstLeadingBit(global0.e.a) % 32u)) % 32u);
    let var_1 = 1544i;
    global0 = func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-982f, global0.b, -971f))))), firstTrailingBit(firstTrailingBit(vec4<u32>(func_2(-2147483647i, vec4<f32>(1439f, 1555f, -1090f, global0.b)), var_0, max(1u, u_input.c.x), var_0))));
    global0 = Struct_3(u_input.c.zx, global0.b, global0.d.zww, -global0.d | select(max(vec4<i32>(63362i, -2147483647i, global0.d.x, u_input.d.x), global0.d), vec4<i32>(-2147483647i, 0i, -2147483647i, -2147483647i) & vec4<i32>(var_1, u_input.d.x, u_input.b.x, 6965i), vec4<bool>(true, false, false, arg_0.x)), func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(586f, global0.b, global0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global0.b, global0.b) * vec3<f32>(global0.b, -1665f, -1000f)), arg_0.x)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(13514u, 9408u, u_input.c.x, global0.e.a), ~vec4<u32>(u_input.c.x, 56596u, global0.e.a, var_0))).e);
    let var_2 = Struct_3(~abs(global0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1579f + global0.b)))), _wgslsmith_f_op_f32(-global0.b)), global0.c, global0.d, global0.e);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0.b)))), abs(~((global0.d.www << (vec3<u32>(global0.e.a, u_input.c.x, 0u) % vec3<u32>(32u))) & max(vec3<i32>(global0.c.x, global0.d.x, global0.d.x), u_input.d))), global0.d, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, func_1(vec2<bool>(true, true)), firstLeadingBit(u_input.c.x)), vec3<u32>(u_input.c.x, ~123716u, _wgslsmith_div_u32(u_input.c.x, 34389u)))));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c));
    var_1 = Struct_1(4294967295u);
    var_0 = Struct_3(func_3(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * -541f) - _wgslsmith_f_op_f32(-global0.b)) + -1516f))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~u_input.b.x, global0.c.x, -4209i), 1i, global0.c.x | 1i), ~_wgslsmith_dot_vec2_i32(global0.d.xw, global0.d.wx), -_wgslsmith_mod_i32(0i, -2147483647i)), vec4<i32>(reverseBits(~u_input.a), -firstLeadingBit(u_input.d.x), var_0.c.x, ~1i) >> (~vec4<u32>(var_1.a, _wgslsmith_mult_u32(19796u, var_1.a), 4294967295u, countOneBits(var_0.a.x)) % vec4<u32>(32u)), func_4(vec3<f32>(479f, 1784f, 1197f), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, var_0.e.a) >> (11764u % 32u), ~0u, abs(firstLeadingBit(42677u)), 4723u)).e);
    var var_2 = vec3<f32>(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.b)))))), var_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1490f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1217f) * 222f))), false)));
    let var_3 = _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - _wgslsmith_f_op_f32(round(859f))) + _wgslsmith_f_op_f32(-global0.b)), all(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(1i == global0.c.x, true)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1442f, 1065f))) - var_2.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.yx * var_2.xz), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, 1208f), var_2.xz), all(vec2<bool>(false, false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<u32>(var_0.e.a, 1u, 1u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_1.a, 6810u)), firstTrailingBit(vec2<u32>(20913u, 1u)))) ^ vec4<u32>(func_1(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), ~4294967295u, _wgslsmith_add_u32(global0.e.a, var_1.a) ^ _wgslsmith_add_u32(u_input.c.x, global0.e.a), var_0.e.a));
}

