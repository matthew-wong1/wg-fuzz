struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(985f, -902f, 1534f);

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(-1000f, Struct_1(false, vec3<bool>(false, true, true), 9558u, 1i, 2147483647i));

var<private> global3: vec2<i32> = vec2<i32>(-25295i, 5450i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = min(~max(arg_0.xzw ^ vec3<u32>(7527u, arg_0.x, 31606u), ~arg_0.zxw), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(arg_0.yzw, _wgslsmith_div_vec3_u32(vec3<u32>(global2.b.c, 1u, 0u), arg_0.wzw)), _wgslsmith_clamp_vec3_u32(~arg_0.xyw, arg_0.zxx >> (arg_0.yzx % vec3<u32>(32u)), reverseBits(arg_0.wzz)) ^ arg_0.zww));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global2.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.a, -885f, -1160f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1272f, 1422f, -1931f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, -2140f, 589f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1986f, 237f, -240f) - vec3<f32>(global0.x, var_1, global2.a)))))), !global2.b.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), 0i, ~reverseBits(arg_0.zy));
    let var_3 = Struct_4(global2.b.a, u_input.b);
    let var_4 = var_2.c;
    return false;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5) -> Struct_1 {
    global3 = _wgslsmith_add_vec2_i32(min(u_input.b.zz, firstTrailingBit(arg_0.yy)), ~vec2<i32>(_wgslsmith_div_i32(min(27953i, -11037i), ~1i), -799i));
    var var_0 = Struct_4(false, vec4<i32>(-abs(arg_1.c.d), firstLeadingBit(firstLeadingBit(-arg_0.x)), _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_0.xy) << (~vec2<u32>(arg_1.a.b.c, global2.b.c) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(arg_0.x, arg_0.x), -5776i)), global2.b.d));
    var_0 = Struct_4(func_3(firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(1u, global2.b.c), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.a.b.c), vec2<u32>(arg_1.a.b.c, 27937u)), ~1u, ~4294967295u))), ~var_0.b);
    let var_1 = arg_1.a;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(583f)))), _wgslsmith_f_op_f32(f32(-1f) * -721f), arg_1.a.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(606f, var_1.a)), _wgslsmith_f_op_f32(1103f + arg_1.b), _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, arg_1.a.a, global2.a) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-340f, -631f, arg_1.a.a)))))));
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = any(!(!arg_2.b.b));
    global1 = arg_2.b.c;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a, _wgslsmith_f_op_f32(-773f - global0.x), 651f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(105f, 1005f, -768f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, global2.a, arg_2.a))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-886f, 1197f, arg_0.a) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 361f, 941f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1938f, arg_0.a, -320f), vec3<f32>(arg_2.a, 547f, arg_0.a)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(815f, -1354f, _wgslsmith_f_op_f32(trunc(global0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1564f, global0.x, global0.x))))));
    global1 = 1755u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-221f, -346f, _wgslsmith_div_f32(arg_0.a, 523f)) + vec3<f32>(1000f, _wgslsmith_f_op_f32(max(arg_2.a, 1092f)), 1679f))), var_0, 0i, ~(~global2.b.d), vec2<u32>(1u, _wgslsmith_add_u32(arg_0.b.c, firstLeadingBit(_wgslsmith_clamp_u32(global2.b.c, 1u, 0u)))));
    return arg_0.b;
}

fn func_1() -> Struct_1 {
    global2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -358f)))))), func_4(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), func_2(u_input.b.wwz << (vec3<u32>(19207u, global2.b.c, global2.b.c) % vec3<u32>(32u)), Struct_5(Struct_3(global2.a, Struct_1(false, global2.b.b, 11661u, global2.b.e, global2.b.e)), 653f, global2.b))), global2.b.b.zz, Struct_3(global0.x, func_2(~u_input.b.wzw, Struct_5(Struct_3(-1770f, Struct_1(false, global2.b.b, 13796u, global3.x, global2.b.e)), -1000f, global2.b)))));
    global3 = u_input.b.xz;
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + -736f)))), global2.b), global2.a, Struct_1(any(global2.b.b.xx), vec3<bool>(global2.b.b.x, true, false), firstTrailingBit(global2.b.c), ~(1i | (global2.b.e ^ u_input.b.x)), i32(-1i) * -31374i));
    var var_1 = global2.b.b.x;
    let var_2 = countOneBits(~var_0.c.c ^ ~(select(global2.b.c, global2.b.c, var_0.c.b.x) ^ global2.b.c));
    return global2.b;
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_4(all(vec2<bool>(true, true)), u_input.b);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(-748f)), _wgslsmith_f_op_f32(1450f + 286f), _wgslsmith_f_op_f32(-1136f - arg_0.b)))))));
    global1 = arg_1.x;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x >> (global2.b.c % 32u), 1u, ~arg_1.x) << (_wgslsmith_clamp_vec3_u32(~arg_1, abs(arg_1), arg_1) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(45296u, 11448u, arg_0.c.c)), countOneBits(select(arg_1, arg_1, vec3<bool>(global2.b.a, arg_0.a.b.a, true))))), reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(arg_1.x, 52437u, global2.b.c)), select(vec3<u32>(0u, global2.b.c, arg_1.x), vec3<u32>(global2.b.c, global2.b.c, arg_1.x), global2.b.b)), ~firstTrailingBit(4294967295u))), arg_0.c.c & 4294967295u, ~4294967295u);
    global2 = arg_0.a;
    return arg_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_5(Struct_3(1f, Struct_1(!global2.b.b.x, vec3<bool>(true, global2.b.a, true), _wgslsmith_mod_u32(18971u, 65727u), _wgslsmith_div_i32(2147483647i, global2.b.e), _wgslsmith_add_i32(28013i, -146i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1413f)))), func_1()), vec3<u32>(~global2.b.c, (~global2.b.c >> (~41366u % 32u)) >> (1u % 32u), 75825u));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -1000f, -375f) + _wgslsmith_div_vec3_f32(vec3<f32>(-2361f, 839f, global0.x), vec3<f32>(global2.a, global2.a, -2099f))) * vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, -494f)), global2.a, global2.a))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(103f, -429f, -698f))), vec3<f32>(_wgslsmith_f_op_f32(-1605f - global2.a), global0.x, _wgslsmith_f_op_f32(trunc(global2.a))))))));
    global2 = Struct_3(global0.x, Struct_1(global2.b.b.x, !global2.b.b, 3813u, reverseBits(~u_input.b.x), -func_1().d));
    global1 = ~_wgslsmith_clamp_u32(~53821u, (_wgslsmith_mod_u32(3542u, var_0.c) ^ ~0u) ^ ~(~global2.b.c), min(firstLeadingBit(func_4(Struct_3(202f, Struct_1(false, var_0.b, var_0.c, -49852i, global2.b.d)), vec2<bool>(true, var_0.b.x), Struct_3(global0.x, Struct_1(global2.b.b.x, global2.b.b, var_0.c, global3.x, 2147483647i))).c), 1u));
    global2 = Struct_3(_wgslsmith_f_op_f32(ceil(global2.a)), Struct_1(global2.b.a, select(!vec3<bool>(var_0.a, global2.b.b.x, true), vec3<bool>(global2.b.b.x, global2.b.a, func_4(Struct_3(-1632f, global2.b), global2.b.b.zx, Struct_3(1096f, global2.b)).b.x), false), ~4294967295u, ~_wgslsmith_clamp_i32(func_4(Struct_3(-1386f, Struct_1(global2.b.b.x, vec3<bool>(var_0.a, var_0.a, var_0.b.x), 14453u, var_0.e, global2.b.e)), global2.b.b.yx, Struct_3(-1935f, Struct_1(var_0.b.x, vec3<bool>(global2.b.b.x, global2.b.b.x, true), global2.b.c, 41849i, u_input.a))).e, _wgslsmith_mod_i32(0i, -1i), max(global2.b.e, u_input.b.x)), -var_0.e & -80315i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(39248i, global2.b.d, firstLeadingBit(-(~global2.b.e)), u_input.a));
}

