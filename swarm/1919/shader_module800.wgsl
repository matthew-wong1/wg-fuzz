struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), vec3<i32>(0i, 36960i, 0i), vec3<u32>(74358u, 0u, 4294967295u), vec3<bool>(false, true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(firstTrailingBit(max(u_input.d, vec4<i32>(global0.b.x, u_input.e.x, 0i, global0.b.x))), vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, -2147483647i), ~(-2147483647i), global0.b.x, 0i), vec4<i32>(global0.b.x, global0.b.x, -3579i >> (1u % 32u), _wgslsmith_mod_i32(u_input.c, global0.b.x)))));
    let var_1 = Struct_4(Struct_1(!global0.a, vec3<i32>(max(~var_0, -var_0), 1i, -14536i), vec3<u32>(~global0.c.x, 3287u, global0.c.x), !global0.d), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(-1000f))), 1f), global0.a.x), _wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(75471u, global0.c.x, global0.c.x)), ~63328u), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global0.c.zz, global0.c.xz), global0.c.zy), global0.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global0.c.x, 1u), global0.c.x), vec2<u32>(select(global0.c.x, 12554u, global0.d.x), global0.c.x))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(153f, -1223f))))), !global0.d.x));
    var var_2 = var_1.b.b;
    let var_3 = Struct_2(global0.d, min(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, select(var_1.a.b, u_input.a, global0.d)), 1i, var_1.a.b.x, var_0), vec4<i32>(41421i, 1i, max(var_1.a.b.x, global0.b.x), var_0)), vec2<f32>(_wgslsmith_f_op_f32(select(var_1.b.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.a.x), -428f)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.a.x))))), (vec3<u32>(104133u, max(12447u, var_1.a.c.x), var_1.a.c.x) | select(~vec3<u32>(global0.c.x, var_1.c, var_1.c), vec3<u32>(global0.c.x, 19116u, global0.c.x), select(global0.d.x, global0.d.x, true))) << (var_1.a.c % vec3<u32>(32u)), _wgslsmith_mult_u32(var_1.a.c.x, ~firstTrailingBit(46988u)) >> ((global0.c.x << (110060u % 32u)) % 32u));
    let var_4 = var_1.a;
    return !vec4<bool>(!all(!vec4<bool>(var_1.b.b, var_4.a.x, true, false)), select(all(!vec4<bool>(false, true, global0.a.x, false)), select(true, var_1.a.a.x | var_4.a.x, var_4.a.x), false | global0.d.x), var_4.a.x, select(all(!var_1.a.a), true, false));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(!global0.a, _wgslsmith_mult_vec3_i32(-(vec3<i32>(7294i, u_input.d.x, u_input.e.x) ^ u_input.d.xzz), vec3<i32>(-1i, u_input.a.x, ~u_input.d.x)) | vec3<i32>(u_input.e.x, max(global0.b.x >> (global0.c.x % 32u), global0.b.x), max(global0.b.x, u_input.e.x) << ((global0.c.x & 18277u) % 32u)), vec3<u32>(~(~(8835u >> (0u % 32u))), ~(~_wgslsmith_div_u32(global0.c.x, 0u)), 87939u | ~(global0.c.x | global0.c.x)), vec3<bool>(false, global0.a.x, global0.d.x));
    var var_1 = Struct_4(var_0, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1454f, -498f), vec2<f32>(412f, -1011f)))), any(select(!vec4<bool>(var_0.a.x, global0.a.x, var_0.a.x, true), func_3(), global0.d.x != var_0.a.x))), ~_wgslsmith_mod_u32(var_0.c.x, global0.c.x), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-878f, 294f)) - -1320f)), all(func_3())));
    var var_2 = Struct_2(!vec3<bool>(any(vec4<bool>(var_1.b.b, var_0.d.x, var_1.b.b, global0.d.x)), var_0.a.x, func_3().x), u_input.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a.x, -299f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a.x, var_1.d.a.x)), _wgslsmith_f_op_vec2_f32(var_1.b.a + vec2<f32>(var_1.b.a.x, var_1.b.a.x)))))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.c.x, var_1.c, 1u), var_1.a.c, vec3<u32>(var_1.a.c.x, var_0.c.x >> (var_1.a.c.x % 32u), 1u) ^ firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c, 4294967295u, 17099u), vec3<u32>(var_1.a.c.x, global0.c.x, 7747u)))), ~4294967295u);
    global0 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_2.c.x)))));
    return ~(~(-var_0.b));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    var var_0 = arg_3.b;
    var var_1 = Struct_4(arg_3.a, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1639f, var_0.a.x)))), select(!select(true, global0.d.x, true), arg_2.a.x, false)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(~1376u, 1u), ~(~arg_3.a.c.zy)), arg_3.d);
    var_1 = arg_3;
    var var_2 = var_1.c;
    let var_3 = countOneBits(countOneBits(max(vec4<u32>(0u, 10540u, arg_2.d.x, arg_2.d.x), vec4<u32>(global0.c.x, arg_2.e, 13219u, 1236u))) & vec4<u32>(~72837u, ~global0.c.x, _wgslsmith_add_u32(76490u, 71184u), _wgslsmith_mult_u32(4294967295u, 1u))) << (vec4<u32>(firstLeadingBit(arg_2.d.x), abs(arg_3.c), countOneBits(~(16147u ^ var_1.c)), 3999u | var_1.a.c.x) % vec4<u32>(32u));
    return arg_3.a;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<i32> {
    global0 = func_4(!(!select(select(global0.d, vec3<bool>(false, false, false), global0.d), select(global0.d, arg_2.a, vec3<bool>(false, true, true)), false)), global0.d.yz, arg_2, Struct_4(Struct_1(!vec2<bool>(global0.a.x, global0.d.x), func_2(), max(firstLeadingBit(global0.c), abs(vec3<u32>(89801u, 8782u, 34646u))), !func_3().yyy), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.c.x, 561f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, -1000f))), global0.d.x), ~4294967295u, Struct_3(vec2<f32>(-1144f, _wgslsmith_f_op_f32(-arg_2.c.x)), global0.a.x)));
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~(1u ^ global0.c.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, ~global0.c.x), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), arg_2.d.xz))), 4294967295u, 81836u), _wgslsmith_clamp_vec4_u32(select(abs(select(vec4<u32>(global0.c.x, 0u, arg_2.e, global0.c.x), vec4<u32>(arg_2.e, 26080u, 0u, 23125u), vec4<bool>(true, arg_2.a.x, false, arg_2.a.x))), min(~vec4<u32>(global0.c.x, 54752u, global0.c.x, 1u), vec4<u32>(23771u, global0.c.x, 1u, arg_2.e)), any(vec4<bool>(arg_2.a.x, true, arg_2.a.x, false))), max(vec4<u32>(abs(global0.c.x), ~4294967295u, 21358u, _wgslsmith_dot_vec2_u32(vec2<u32>(28794u, 1u), arg_2.d.yx)), vec4<u32>(global0.c.x, 22419u, firstTrailingBit(0u), 47335u)), vec4<u32>(6977u, ~select(global0.c.x, global0.c.x, false), global0.c.x, _wgslsmith_dot_vec3_u32(arg_2.d, arg_2.d) << (34971u % 32u))));
    var var_1 = ~33179i;
    var_0 = ~_wgslsmith_sub_u32(global0.c.x, reverseBits(min(1u, ~1u)));
    let var_2 = ~(vec3<u32>(arg_2.e, global0.c.x << (arg_2.e % 32u), _wgslsmith_mult_u32(4294967295u >> (global0.c.x % 32u), select(69981u, arg_2.e, global0.d.x))) << (countOneBits(vec3<u32>(_wgslsmith_clamp_u32(arg_2.e, global0.c.x, global0.c.x), ~4294967295u, global0.c.x)) % vec3<u32>(32u)));
    return _wgslsmith_sub_vec3_i32(firstLeadingBit(arg_2.b.yxy), ~vec3<i32>(_wgslsmith_clamp_i32(~arg_1.x, arg_1.x ^ 75334i, global0.b.x << (46981u % 32u)), max(arg_2.b.x, countOneBits(arg_2.b.x)), max(_wgslsmith_mod_i32(arg_1.x, -1i), _wgslsmith_sub_i32(global0.b.x, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = true;
    global0 = Struct_1(vec2<bool>(true, 0i == select(~u_input.a.x, u_input.c, true)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, -1i, 37696i), u_input.e), func_1(-1000f, u_input.a.zz, Struct_2(global0.d, vec4<i32>(u_input.b, -2147483647i, 15168i, 13325i), vec2<f32>(-1432f, -1000f), vec3<u32>(global0.c.x, var_0, 4294967295u), 4294967295u))), select(vec3<i32>(global0.b.x, 26576i, global0.b.x), u_input.a, global0.d) | vec3<i32>(1i, 1110i, global0.b.x)), u_input.e), ~abs(global0.c), !(!global0.d));
    global0 = Struct_1(!(!(!vec2<bool>(global0.a.x, global0.d.x))), global0.b | global0.b, ~global0.c, vec3<bool>(!func_4(global0.d, vec2<bool>(var_1, global0.a.x), Struct_2(vec3<bool>(false, global0.a.x, false), u_input.d, vec2<f32>(-512f, -206f), vec3<u32>(78451u, var_0, var_0), var_0), Struct_4(Struct_1(global0.d.xy, global0.b, global0.c, vec3<bool>(global0.d.x, true, false)), Struct_3(vec2<f32>(-313f, 922f), var_1), 1u, Struct_3(vec2<f32>(-909f, -688f), false))).a.x & true, !(_wgslsmith_f_op_f32(round(1456f)) <= 1457f), any(!global0.a) && var_1));
    var var_2 = !(!any(!func_4(vec3<bool>(false, global0.a.x, false), global0.a, Struct_2(vec3<bool>(var_1, true, true), vec4<i32>(-2147483647i, u_input.d.x, 2147483647i, u_input.d.x), vec2<f32>(-248f, -776f), global0.c, global0.c.x), Struct_4(Struct_1(vec2<bool>(global0.d.x, false), vec3<i32>(global0.b.x, -48961i, 0i), global0.c, vec3<bool>(true, var_1, true)), Struct_3(vec2<f32>(-1455f, 633f), var_1), 4294967295u, Struct_3(vec2<f32>(1689f, -451f), global0.d.x))).d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, abs(1i << (~var_0 % 32u)), max(2147483647i, countOneBits(~36931i))), abs(global0.b.zz), 1u, global0.b.x);
}

