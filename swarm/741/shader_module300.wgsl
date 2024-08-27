struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = -u_input.b.x != (i32(-1i) * -(~(u_input.b.x | -49036i)));
    var var_1 = ~_wgslsmith_sub_vec2_u32(~countOneBits(u_input.a.zw), u_input.a.zw);
    var var_2 = var_0;
    global0 = (vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), _wgslsmith_div_i32(1i, -1i)), 41458i) << (~_wgslsmith_mod_vec2_u32(u_input.a.yz, ~u_input.a.xy) % vec2<u32>(32u))) ^ vec2<i32>(select(~1i, -_wgslsmith_add_i32(17921i, 23997i), var_0), -(arg_0.a | u_input.b.x));
    global0 = countOneBits(vec2<i32>(u_input.b.x, ~abs(-47148i))) << (u_input.a.yx % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(138f)) - -924f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f * 1748f)) + _wgslsmith_f_op_f32(ceil(-1000f)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 1721f == _wgslsmith_f_op_f32(488f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(0i)))))));
    let var_1 = arg_2;
    global0 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(1i, 647i), _wgslsmith_mod_i32(2147483647i, u_input.b.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x) | vec2<i32>(global0.x, 1i), ~u_input.b.wx)), select(vec2<i32>(var_1.a, i32(-1i) * -28366i), _wgslsmith_sub_vec2_i32(u_input.b.zw, vec2<i32>(u_input.b.x, -2147483647i)), vec2<bool>(select(false, true, true), true)));
    var var_2 = reverseBits(u_input.b) << ((vec4<u32>(~(~103744u), ~(~u_input.a.x), arg_1 & ~arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 4294967295u), ~u_input.a.xz)) & (firstLeadingBit(~u_input.a) & u_input.a)) % vec4<u32>(32u));
    var var_3 = _wgslsmith_div_vec2_i32(var_2.wy, firstTrailingBit(u_input.b.xw));
    return Struct_1(_wgslsmith_sub_i32(countOneBits(var_3.x), 0i));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    global0 = u_input.b.wx;
    let var_0 = Struct_1(global0.x);
    var var_1 = func_2(~_wgslsmith_sub_vec2_u32(~select(vec2<u32>(1u, u_input.a.x), u_input.a.yx, vec2<bool>(false, true)), ~u_input.a.yw), u_input.a.x, var_0);
    let var_2 = u_input.a.xxy;
    var var_3 = countOneBits(~(~(~3303u)) | ~select(select(85762u, 33138u, true), ~48233u, true));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = 31647u;
    global0 = max(min(-reverseBits(firstTrailingBit(u_input.b.xw)), vec2<i32>(_wgslsmith_clamp_i32(arg_3.a, -1i, 0i), select(10524i, u_input.b.x, true)) << (vec2<u32>(var_0, 11531u) % vec2<u32>(32u))), vec2<i32>(func_2(_wgslsmith_mult_vec2_u32(arg_0.yx, arg_0.xy), _wgslsmith_dot_vec3_u32(u_input.a.www, vec3<u32>(12997u, var_0, arg_0.x)), func_2(u_input.a.yx, u_input.a.x, arg_3)).a ^ -6445i, abs(global0.x)));
    var var_1 = func_2(max(~countOneBits(_wgslsmith_mult_vec2_u32(arg_0.yy, vec2<u32>(var_0, var_0))), vec2<u32>(arg_0.x >> (1u % 32u), firstLeadingBit(u_input.a.x)) | (firstLeadingBit(u_input.a.yy) >> ((arg_0.xx | vec2<u32>(arg_0.x, var_0)) % vec2<u32>(32u)))), 4294967295u, arg_2);
    var_1 = Struct_1(_wgslsmith_mult_i32(1i, abs(max(-2147483647i, 1i))));
    let var_2 = arg_2;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(1i, global0.x);
    var var_0 = abs(vec2<i32>(-1i) * -(~(u_input.b.xz | vec2<i32>(u_input.b.x, u_input.b.x))));
    let var_1 = Struct_1(u_input.b.x);
    var var_2 = vec4<i32>(var_0.x & func_4(_wgslsmith_mult_vec3_u32(u_input.a.zzw, vec3<u32>(25057u, 6205u, u_input.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec4<f32>(-2600f, -464f, 237f, -1000f), u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2(vec2<u32>(47u, 43336u), reverseBits(u_input.a.x), var_1), func_2(u_input.a.zz, ~u_input.a.x, Struct_1(u_input.b.x))), -(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.wwz, u_input.b.zwx), vec3<i32>(u_input.b.x, var_0.x, 0i))), u_input.b.x, _wgslsmith_add_i32(u_input.b.x, 1i ^ global0.x));
    var var_3 = ~firstLeadingBit(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-72220i, -30607i, u_input.b.x)), u_input.b.yzx));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(889f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1031f))))), _wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2668f)), 434f), 686f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1575f, 470f, -643f)));
    var var_5 = var_4.yy;
    var_5 = var_4.zw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(min(var_0.x, var_2.x), reverseBits(global0.x), _wgslsmith_div_i32(global0.x, 0i)), vec3<i32>(-1i) * -u_input.b.zyw), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 16928i, -35439i), u_input.b.yyz)), -(~vec3<i32>(34312i, 0i, -51056i))), u_input.b.zyx), ~var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1968f)));
}

