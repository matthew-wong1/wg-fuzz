struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec4<i32>) -> u32 {
    let var_0 = arg_2.a;
    var var_1 = 1i << (var_0.a.x % 32u);
    let var_2 = vec2<i32>(arg_3.x, arg_0.x);
    var_1 = -17943i;
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-7532i, arg_2.a.b.x, u_input.b.x), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(48187i, 0i, -2147483647i), -arg_3.wzz)), vec3<i32>(var_0.b.x, -arg_0.x, 1i)));
    return var_0.a.x;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> vec2<bool> {
    var var_0 = 0u;
    var var_1 = !select(arg_1.zw, vec2<bool>(arg_1.x, any(arg_1)), arg_1.x);
    let var_2 = Struct_5(4294967295u, _wgslsmith_clamp_u32(u_input.c, func_3(vec3<i32>(-1i, firstLeadingBit(-1i), reverseBits(arg_2)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -1269f) - vec2<f32>(arg_3, arg_3)))), Struct_4(Struct_1(vec2<u32>(u_input.c, u_input.c), vec3<i32>(u_input.b.x, arg_0, arg_2)), vec2<bool>(true, true)), vec4<i32>(-arg_0, 1i, -57290i, _wgslsmith_sub_i32(71119i, -64119i))), ~(~u_input.c | 1u)));
    var_1 = !select(!arg_1.xx, !vec2<bool>(!var_1.x, !arg_1.x), !arg_1.wz);
    let var_3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -21034i) << (vec2<u32>(18767u, u_input.c) % vec2<u32>(32u)), u_input.b.zy << (vec2<u32>(u_input.c, 19753u) % vec2<u32>(32u))), -46251i, ~arg_2), u_input.b);
    return vec2<bool>(false, !var_1.x);
}

fn func_1() -> Struct_3 {
    let var_0 = !(!select(func_2(-u_input.b.x, select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), u_input.a, -114f), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)));
    return Struct_3(vec2<u32>(min(42123u, _wgslsmith_div_u32(~1u, u_input.c)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, u_input.c, 4294967295u)), abs(min(vec3<u32>(u_input.c, u_input.c, 4764u), vec3<u32>(4294967295u, u_input.c, u_input.c))))), any(vec3<bool>(all(!vec2<bool>(var_0.x, var_0.x)), _wgslsmith_add_i32(u_input.b.x, u_input.b.x) < 15630i, select(true, var_0.x, all(vec2<bool>(true, var_0.x))))), Struct_2(-668f, Struct_1(vec2<u32>(_wgslsmith_mod_u32(36433u, 10794u), u_input.c), ~vec3<i32>(30465i, u_input.b.x, u_input.b.x)), Struct_1(abs(abs(vec2<u32>(u_input.c, u_input.c))), abs(u_input.b)), _wgslsmith_clamp_u32(u_input.c, max(min(11464u, u_input.c), u_input.c & u_input.c), u_input.c), Struct_1(select(~vec2<u32>(33080u, u_input.c), select(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.c, 59668u), var_0), u_input.b.x != u_input.b.x), u_input.b)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(417f)))), Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 19857u)), vec2<u32>(4294967295u, u_input.c)), -vec3<i32>(-1i, u_input.b.x, u_input.b.x)), Struct_1(vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), 8325u), vec3<i32>(u_input.a ^ 24378i, _wgslsmith_clamp_i32(u_input.a, -1i, u_input.a), u_input.b.x)), func_3(u_input.b, vec2<f32>(-324f, -728f), Struct_4(Struct_1(vec2<u32>(1u, 1u), vec3<i32>(16016i, -30903i, -3210i)), var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 0i, 12185i, -1i), vec4<i32>(0i, -1i, -2147483647i, u_input.a))) << (~u_input.c % 32u), Struct_1(vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), u_input.c), -u_input.b)), !select(!var_0.x, var_0.x, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: f32) -> u32 {
    let var_0 = func_1().c;
    let var_1 = Struct_1(func_1().d.b.a, vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, 2147483647i, arg_2.c.c.b.x), vec4<i32>(19824i, var_0.b.b.x, var_0.b.b.x, 31981i), vec4<i32>(u_input.a, 9170i, 30036i, u_input.b.x)) | ~vec4<i32>(0i, -37207i, 0i, u_input.b.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, -1i, 15967i, -80424i), select(vec4<i32>(var_0.c.b.x, var_0.c.b.x, -37355i, 2147483647i), vec4<i32>(arg_2.d.c.b.x, arg_2.c.c.b.x, 1i, 69581i), vec4<bool>(false, false, arg_2.b, false)))), firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(26473i, var_0.b.b.x), _wgslsmith_add_i32(var_0.b.b.x, u_input.a), u_input.b.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-783f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1067f)))), _wgslsmith_f_op_f32(-func_1().c.a), arg_1.x));
    let var_3 = var_2.zz;
    let var_4 = arg_2.a.x;
    return _wgslsmith_mod_u32(var_4 | 0u, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1014f;
    let var_1 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), u_input.a < u_input.a)));
    var var_2 = !vec2<bool>(any(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x))), var_1.x);
    var var_3 = select(select(var_1, var_1, select(!var_1, !select(vec2<bool>(var_2.x, true), vec2<bool>(var_1.x, var_2.x), var_2.x), !select(var_1, var_1, vec2<bool>(var_1.x, var_2.x)))), select(!select(!var_1, vec2<bool>(var_1.x, var_1.x), var_2.x || var_2.x), !(!vec2<bool>(true, var_2.x)), vec2<bool>(true, !(!var_2.x))), vec2<bool>(false, true));
    let var_4 = vec4<u32>(func_4(vec3<bool>(true, var_2.x, any(select(var_1, vec2<bool>(var_1.x, false), vec2<bool>(false, var_3.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, 590f))), vec2<bool>(var_1.x, var_2.x))))), func_1(), _wgslsmith_div_f32(_wgslsmith_div_f32(-833f, _wgslsmith_f_op_f32(var_0 - -1000f)), 1038f)), countOneBits(min(u_input.c, ~(~0u))), u_input.c, ~firstLeadingBit(abs(55151u)));
    var_3 = vec2<bool>(var_3.x, select(all(!select(vec4<bool>(var_3.x, false, var_3.x, false), vec4<bool>(false, true, true, var_2.x), true)), true, true));
    var var_5 = vec3<bool>(false, false, true);
    let var_6 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(~33712u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1025f, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1352f, 2013f) + vec2<f32>(var_0, var_0)), var_1)), true)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1598f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1406f, var_0))))))));
}

