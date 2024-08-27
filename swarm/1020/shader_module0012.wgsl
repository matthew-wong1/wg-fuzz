struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(vec3<bool>(false, true, false)), Struct_5(vec3<bool>(true, true, false)), Struct_5(vec3<bool>(true, true, true)), Struct_5(vec3<bool>(true, true, true)), Struct_5(vec3<bool>(true, false, true)), Struct_5(vec3<bool>(false, true, false)), Struct_5(vec3<bool>(true, false, true)), Struct_5(vec3<bool>(true, true, true)), Struct_5(vec3<bool>(true, true, true)), Struct_5(vec3<bool>(false, false, true)), Struct_5(vec3<bool>(false, false, true)), Struct_5(vec3<bool>(false, true, false)), Struct_5(vec3<bool>(true, false, false)), Struct_5(vec3<bool>(true, true, true)), Struct_5(vec3<bool>(false, false, false)), Struct_5(vec3<bool>(false, false, true)), Struct_5(vec3<bool>(false, false, false)), Struct_5(vec3<bool>(false, true, false)), Struct_5(vec3<bool>(false, true, false)), Struct_5(vec3<bool>(true, false, false)), Struct_5(vec3<bool>(true, true, false)), Struct_5(vec3<bool>(false, true, false)), Struct_5(vec3<bool>(false, true, true)), Struct_5(vec3<bool>(false, false, true)), Struct_5(vec3<bool>(true, false, false)), Struct_5(vec3<bool>(true, false, false)), Struct_5(vec3<bool>(true, false, true)), Struct_5(vec3<bool>(true, true, false)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = Struct_4(select(vec2<i32>(2147483647i, _wgslsmith_add_i32(-u_input.b, _wgslsmith_sub_i32(u_input.c.x, -1i))), u_input.c.xy, arg_0.a.yy), vec2<i32>(u_input.b, -u_input.b), arg_0.a.xx, arg_0.a);
    global0 = array<Struct_5, 28>();
    global0 = array<Struct_5, 28>();
    var_0 = Struct_4(-(firstLeadingBit(vec2<i32>(-1i, var_0.a.x)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b.x, var_0.a.x), min(vec2<i32>(-2147483647i, -13211i), u_input.c.yy), -var_0.a)), ~(-(var_0.b & countOneBits(vec2<i32>(u_input.c.x, 27062i)))), !arg_0.a.xy, var_0.d);
    global0 = array<Struct_5, 28>();
    return u_input.a.x;
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_5(!vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), any(vec4<bool>(true, true, true, true))));
    let var_1 = ~vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(countOneBits(u_input.a) | _wgslsmith_mod_vec3_u32(u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, 18615u), u_input.a)), u_input.a.x);
    let var_2 = func_3(global0[_wgslsmith_index_u32(var_1.x, 28u)]);
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f * arg_0) - _wgslsmith_f_op_f32(-1277f * arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(955f + arg_0)))), -1611f), Struct_2(~(~countOneBits(var_1.x)), Struct_1(~u_input.c.wzy, true, ~reverseBits(vec4<u32>(24239u, var_1.x, 4294967295u, u_input.a.x))), u_input.c.wwx), Struct_2(1u, Struct_1(-firstTrailingBit(u_input.c.yyw), true, vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, var_1.x), ~0u, 4294967295u ^ var_2, u_input.a.x)), ~vec3<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.b), _wgslsmith_div_i32(0i, u_input.c.x), ~1i)), Struct_1(_wgslsmith_add_vec3_i32((vec3<i32>(-12286i, 1i, u_input.c.x) >> (vec3<u32>(u_input.a.x, var_1.x, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(79526u, 12560u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, u_input.b & u_input.c.x, ~2147483647i)), var_0.a.x, max(~vec4<u32>(6757u, var_1.x, 0u, 0u), vec4<u32>(35545u, 96168u, var_1.x, u_input.a.x) & vec4<u32>(1u, 0u, u_input.a.x, var_1.x)) | reverseBits(vec4<u32>(u_input.a.x, 32881u, 4294967295u, var_2) | vec4<u32>(3805u, var_1.x, u_input.a.x, 49872u))), Struct_2(var_1.x, Struct_1(-vec3<i32>(u_input.b, -1i, u_input.c.x), true, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx, var_1.xz), abs(var_1.x), u_input.a.x, 19060u)), u_input.c.wxx));
    var var_4 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 101985u, 4294967295u), var_3.c.b.c), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(22198u, var_3.e.a, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(~var_3.d.c, var_3.e.b.c)), var_3.b.b.c) << (_wgslsmith_mult_vec4_u32(var_3.b.b.c, vec4<u32>(1u, var_1.x, 1u, 94194u)) % vec4<u32>(32u));
    return Struct_4(vec2<i32>(9275i, -1i), vec2<i32>(u_input.c.x >> (countOneBits(~34838u) % 32u), ~u_input.c.x), !var_0.a.yx, vec3<bool>(~31352u != var_4.x, var_3.c.b.b, 37439u <= _wgslsmith_dot_vec2_u32(var_3.d.c.wy, ~var_3.c.b.c.xx)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-845f)), -662f, all(select(arg_2, arg_2, false))))));
    global0 = array<Struct_5, 28>();
    let var_1 = arg_0;
    global0 = array<Struct_5, 28>();
    let var_2 = var_0;
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-607f, -2280f, 838f) - vec3<f32>(-1365f, 747f, 253f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1960f, -913f, -1000f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(343f, -920f, 1296f), vec3<f32>(-1296f, -218f, 177f))), var_0.d.x))), Struct_2(u_input.a.x, Struct_1(u_input.c.yyy | ~arg_0.a, true, reverseBits(~arg_0.c)), vec3<i32>(u_input.c.x, (arg_0.a.x & -54741i) ^ -1i, ~(-19668i))), Struct_2(_wgslsmith_clamp_u32(1u, ~var_1.c.x, select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 63167u, u_input.a.x), arg_0.c.wyx), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 57911u, var_1.c.x), vec3<u32>(1u, 2714u, u_input.a.x)), var_0.d.x)), Struct_1(-vec3<i32>(u_input.b, 20685i, var_2.b.x), true, var_1.c), arg_0.a), arg_0, Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.c.x, 9779u, 1u), arg_1, vec3<u32>(arg_1.x, arg_1.x, 4294967295u)), ~_wgslsmith_div_vec3_u32(arg_0.c.xzx, vec3<u32>(u_input.a.x, 13788u, 0u))), Struct_1(~vec3<i32>(-5125i, arg_0.a.x, var_2.b.x) << (_wgslsmith_div_vec3_u32(arg_1, vec3<u32>(0u, u_input.a.x, 0u)) % vec3<u32>(32u)), !(!arg_0.b), ~(~arg_0.c)), vec3<i32>(1i, var_1.a.x, -1i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_5) -> vec2<bool> {
    global0 = array<Struct_5, 28>();
    var var_0 = arg_3.a.xy;
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_mult_u32(0u, 52851u) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_0.c.x, arg_0.c.x), arg_2.b.b.c)), ~arg_2.c.b.c.x), arg_0.c.x);
    var var_2 = select(arg_3.a.x, arg_0.b, true);
    var var_3 = false;
    return vec2<bool>(false, !(-u_input.b != (arg_0.a.x >> (var_1 % 32u))) & (u_input.b != -_wgslsmith_add_i32(arg_1.x, -28273i)));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(round(-867f)));
    global0 = array<Struct_5, 28>();
    let var_1 = Struct_2(u_input.a.x, func_1(Struct_1(min(firstTrailingBit(u_input.c.yzw), vec3<i32>(-2147483647i, -45908i, arg_0) >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))), true, ~firstTrailingBit(vec4<u32>(u_input.a.x, 40122u, 79061u, u_input.a.x))), u_input.a, !vec4<bool>(true, arg_3.c.x || arg_3.d.x, true, 1u > u_input.a.x)).d, abs(max(u_input.c.xyw, ~u_input.c.wwz)));
    let var_2 = Struct_5(vec3<bool>(!func_2(var_0.x).d.x, true, !var_1.b.b));
    let var_3 = u_input.a.xy;
    return u_input.c.zz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(-918f));
    let var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_dot_vec2_i32(u_input.c.wy, _wgslsmith_div_vec2_i32(u_input.c.wy, vec2<i32>(-18146i, u_input.c.x))), _wgslsmith_f_op_f32(-var_0), true, Struct_4(u_input.c.yw, u_input.c.wz, func_4(Struct_1(u_input.c.www, true, vec4<u32>(2073u, var_1.x, 0u, u_input.a.x)), u_input.c.ywz | vec3<i32>(u_input.b, -3505i, -30131i), func_1(Struct_1(u_input.c.yzy, true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec4<bool>(true, true, true, false)), global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 430f, -658f, var_0))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_1(Struct_1(vec3<i32>(-1i, 42505i, 2147483647i), true, vec4<u32>(4294967295u, var_1.x, u_input.a.x, 4294967295u)), u_input.a, vec4<bool>(true, true, false, true)).a.x, var_0, _wgslsmith_f_op_f32(-var_0), 1917f), vec4<f32>(_wgslsmith_f_op_f32(step(var_0, -614f)), _wgslsmith_div_f32(-152f, var_0), func_1(Struct_1(u_input.c.zxz, true, vec4<u32>(7688u, 1u, 84823u, var_1.x)), vec3<u32>(u_input.a.x, 3376u, 1u), vec4<bool>(true, false, true, false)).a.x, var_0), true))), var_1.x, u_input.a.zz);
}

