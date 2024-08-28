struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
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

var<private> global0: f32 = 1527f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = ~arg_0.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(283f, _wgslsmith_f_op_f32(sign(329f)), select(false, true, false))))), Struct_2(Struct_1(~1u, countOneBits(_wgslsmith_clamp_vec3_i32(arg_0, u_input.b.xxy, u_input.b.yww)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-733f, 922f, 1305f) * vec3<f32>(-1876f, -1647f, 536f))), (u_input.d.x >> (_wgslsmith_clamp_u32(55703u, 0u, 1u) % 32u)) ^ (u_input.d.x ^ 0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, 910f)));
    global0 = var_1.b.a.c.x;
    let var_2 = select(!(!vec2<bool>(select(true, true, false), true)), select(vec2<bool>(any(vec2<bool>(true, true)), false), vec2<bool>(true, true), !any(vec4<bool>(true, true, true, false))), !select(vec2<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, true))), vec2<bool>(true, true), true));
    var var_3 = ~0u;
    return select(!(!var_2.x) || var_2.x, !var_2.x, !(var_2.x != (_wgslsmith_f_op_f32(-403f - var_1.b.a.c.x) > _wgslsmith_f_op_f32(var_1.b.a.c.x - 644f))));
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    var var_0 = -1574f;
    let var_1 = Struct_2(Struct_1((_wgslsmith_add_u32(u_input.d.x, u_input.d.x) ^ ~u_input.d.x) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 69273u, u_input.d.x), u_input.d & u_input.d) % 32u), select(u_input.b.zww, u_input.b.wzw ^ u_input.b.xyz, !vec3<bool>(arg_0.x, arg_0.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, -652f, -1352f)))), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(18154u, 64286u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 0u)), vec4<u32>(u_input.d.x, firstTrailingBit(4294967295u), countOneBits(1u), firstTrailingBit(8258u))) | ~firstLeadingBit(82015u));
    global0 = _wgslsmith_f_op_f32(sign(var_1.a.c.x));
    let var_2 = Struct_5(u_input.d.x);
    var var_3 = !(!(!(!(!vec4<bool>(arg_0.x, false, arg_0.x, false)))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(1u, 9648u, 0u) << (vec3<u32>(2366u, 40630u, u_input.d.x) % vec3<u32>(32u))), u_input.d) | u_input.d, ~vec3<u32>(reverseBits(_wgslsmith_clamp_u32(var_2.a, u_input.d.x, 0u)), 63974u, var_2.a));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(arg_0.b.a.c.x * arg_1.x);
    let var_1 = Struct_1(func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, true)) == func_3(vec3<i32>(-53592i, -11774i, arg_0.b.a.b.x)))), arg_0.b.a.b, vec3<f32>(_wgslsmith_f_op_f32(-1742f + _wgslsmith_div_f32(_wgslsmith_div_f32(-886f, 361f), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(trunc(-1171f)), _wgslsmith_div_f32(-575f, arg_0.b.a.c.x)));
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i) | vec2<i32>(_wgslsmith_mod_i32(var_1.b.x, -1i), _wgslsmith_dot_vec3_i32(arg_0.b.a.b, var_1.b)), firstLeadingBit(-abs(var_1.b.yy))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_1.b.x, -1i, -12250i), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) << (u_input.d.zy % vec2<u32>(32u)), -reverseBits(vec2<i32>(-4132i, var_1.b.x))));
    let var_3 = Struct_2(Struct_1(26813u >> (u_input.d.x % 32u), min(countOneBits(~u_input.b.xxy), abs(~arg_0.b.a.b)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(526f, 1907f, -666f), vec3<f32>(100f, -518f, -891f))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(720u, 16494u, var_1.a) & vec3<u32>(arg_0.b.b, u_input.d.x, arg_0.b.b), _wgslsmith_add_vec3_u32(~vec3<u32>(66622u, u_input.d.x, var_1.a), vec3<u32>(4294967295u, var_1.a, 4294967295u))), var_1.a));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.c.x, -988f, var_1.c.x) - vec3<f32>(arg_1.x, 202f, var_3.a.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1208f, var_3.a.c.x))))))) + var_1.c);
    return _wgslsmith_mult_vec4_u32(select((vec4<u32>(arg_0.b.b, 0u, 0u, arg_0.b.a.a) >> (vec4<u32>(u_input.d.x, u_input.d.x, 0u, arg_0.b.a.a) % vec4<u32>(32u))) & (vec4<u32>(arg_0.b.b, 31611u, var_3.a.a, 4294967295u) | vec4<u32>(u_input.d.x, arg_0.b.b, 75440u, 0u)), vec4<u32>(_wgslsmith_mult_u32(var_3.b, 109727u), 4294967295u, u_input.d.x, ~u_input.d.x), vec4<bool>(true, true, true, true)) ^ firstTrailingBit(vec4<u32>(var_3.a.a, ~54347u, _wgslsmith_add_u32(u_input.d.x, 1u), u_input.d.x ^ arg_0.b.a.a)), vec4<u32>(0u, arg_0.b.a.a, 0u, arg_0.b.b));
}

fn func_5(arg_0: vec4<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(859f)), 792f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f)));
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, ~arg_0.x ^ ~arg_0.x, arg_0.x, ~1u), firstLeadingBit(arg_0) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(34056u, 40705u, ~arg_0.x, 57823u), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, arg_0), 0u, u_input.d.x, ~arg_0.x)));
    var_0 = arg_0;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)) + -469f), Struct_2(Struct_1(arg_0.x, select(vec3<i32>(2147483647i, u_input.b.x, -2147483647i), -u_input.b.zyz, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(123f, -802f, -315f))))), u_input.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, -602f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-872f, 272f) - vec2<f32>(-1432f, -1000f))))));
    return Struct_2(Struct_1(~4294967295u, vec3<i32>(~abs(u_input.b.x), u_input.c, var_1.b.a.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.a.c) - var_1.b.a.c), vec3<f32>(var_1.b.a.c.x, _wgslsmith_f_op_f32(-187f * var_1.c.x), _wgslsmith_f_op_f32(-669f + -2701f))))), 0u);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>) -> bool {
    let var_0 = func_5(_wgslsmith_add_vec4_u32(func_2(Struct_3(740f, Struct_2(Struct_1(1u, vec3<i32>(arg_0.b, u_input.b.x, -19560i), vec3<f32>(1018f, 115f, 147f)), 50537u), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2373f) * vec2<f32>(-1837f, -1000f))))), ~(~vec4<u32>(1566u, u_input.d.x, u_input.d.x, u_input.d.x))));
    global0 = var_0.a.c.x;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(ceil(func_5(vec4<u32>(1u, 0u, u_input.d.x, u_input.d.x)).a.c.x)))))));
    let var_1 = Struct_5(var_0.a.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(trunc(1209f))))) - -679f));
    return !(false & arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(u_input.a >= u_input.b.x, true), select(vec2<bool>(func_1(Struct_4(vec3<bool>(true, false, false), u_input.b.x), vec3<bool>(false, true, true)), func_1(Struct_4(vec3<bool>(true, false, true), 2147483647i), vec3<bool>(false, true, true))), vec2<bool>(true, true), vec2<bool>(true, select(false, true, false))), vec2<bool>(true, true)), vec2<bool>(!(u_input.d.x > max(u_input.d.x, u_input.d.x)), false || func_3(u_input.b.xwx)), vec2<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), false));
    var var_1 = vec4<i32>(-u_input.a, u_input.b.x, abs(firstTrailingBit(u_input.c)), abs(select(u_input.b.x, _wgslsmith_dot_vec4_i32(~u_input.b, vec4<i32>(21949i, u_input.b.x, u_input.c, 2147483647i)), _wgslsmith_f_op_f32(round(3489f)) == -883f)));
    var var_2 = false;
    var var_3 = Struct_1(_wgslsmith_add_u32(~u_input.d.x, 0u) | func_4(vec2<bool>(!var_0.x, -2147483647i > var_1.x)), vec3<i32>(reverseBits(select(~var_1.x, min(u_input.b.x, u_input.b.x), false)), _wgslsmith_mod_i32(~select(54346i, -36627i, true), var_1.x), -14068i >> (~u_input.d.x % 32u)), vec3<f32>(1329f, 1196f, _wgslsmith_f_op_f32(1236f * 1f)));
    var_1 = vec4<i32>(_wgslsmith_add_i32(var_1.x, var_1.x), 2147483647i, ~(-func_5(vec4<u32>(var_3.a, 18318u, var_3.a, 42737u)).a.b.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, 0i));
}

