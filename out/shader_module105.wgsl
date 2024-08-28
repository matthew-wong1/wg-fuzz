struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(108441u, vec3<i32>(1i, 1i, 26874i), vec4<u32>(1u, 12118u, 32456u, 47434u), vec3<f32>(-855f, 232f, 1582f), vec2<u32>(26834u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> u32 {
    global1 = Struct_1(global1.c.x, select(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 15370i, arg_0), vec3<i32>(arg_0, arg_1, 1i))), abs(abs(u_input.c.yzy))), ~min(global1.b, abs(global1.b)), true), ~select((global1.c << (vec4<u32>(0u, 0u, 50729u, global1.a) % vec4<u32>(32u))) & vec4<u32>(50925u, 0u, arg_3.x, 0u), ~global1.c, vec4<bool>(true, true, false, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) - _wgslsmith_f_op_f32(sign(global1.d.x))), _wgslsmith_f_op_f32(-1891f - -529f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, 210f, true))))), vec2<u32>(0u, _wgslsmith_mod_u32(1u, 62350u)));
    var var_0 = Struct_2(Struct_1(max(global1.a, min(~arg_3.x, ~0u)), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, -1i, arg_0), vec3<i32>(-12702i, arg_1, global1.b.x)) ^ vec3<i32>(-global1.b.x, reverseBits(26956i), min(arg_0, 1i)), global1.c, arg_2.xyw, ~(vec2<u32>(1u, 1u) ^ ~vec2<u32>(0u, global1.c.x))), select(!vec2<bool>(global1.d.x > global1.d.x, 37835u >= global1.e.x), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(arg_3.x, -u_input.c.yzx, firstLeadingBit(abs(max(global1.c, vec4<u32>(58309u, global1.c.x, 4902u, global1.a)))), arg_2.zyw, vec2<u32>(global1.c.x, ~32431u)), _wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, global1.c.x, 1u, 4294967295u), global1.c)), vec4<u32>(~(~0u), max(113038u, ~arg_3.x), 1u, _wgslsmith_mod_u32(global1.c.x, ~arg_3.x))), !(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.e.x, 5490u, arg_3.x), arg_3 << (global1.c.wwy % vec3<u32>(32u))) < select(~arg_3.x, arg_3.x, any(vec2<bool>(true, false)))));
    var var_1 = Struct_3(Struct_2(Struct_1(var_0.a.c.x, vec3<i32>(i32(-1i) * -1i, ~1i, -2147483647i), _wgslsmith_div_vec4_u32(min(vec4<u32>(arg_3.x, 4294967295u, global1.c.x, 4294967295u), vec4<u32>(77503u, var_0.c.c.x, arg_3.x, 82664u)), ~vec4<u32>(1289u, 4294967295u, 1u, arg_3.x)), arg_2.wxx, ~max(vec2<u32>(5701u, arg_3.x), var_0.a.c.zz)), var_0.b, Struct_1(0u, vec3<i32>(41954i | global1.b.x, i32(-1i) * -1i, -1i), global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1736f, arg_2.x, var_0.a.d.x)), ~vec2<u32>(var_0.a.a, arg_3.x)), firstLeadingBit(~select(global1.e.x, global1.a, var_0.e)), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x), 2430f), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a.d.x), _wgslsmith_f_op_f32(-arg_2.x), -895f))))));
    let var_3 = vec2<u32>(4294967295u, global1.a);
    return _wgslsmith_add_u32(arg_3.x >> (_wgslsmith_add_u32(1u, 3234u >> (var_3.x % 32u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, global1.a, _wgslsmith_clamp_u32(0u, 1u, var_3.x)), vec3<u32>(var_1.a.d << (var_3.x % 32u), var_1.a.c.e.x, abs(global1.e.x)))) & ~(~countOneBits(~var_1.a.c.a));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = Struct_1(func_3(_wgslsmith_dot_vec2_i32(u_input.c.yx ^ vec2<i32>(u_input.c.x, global1.b.x), vec2<i32>(1i, global1.b.x)) | 30447i, _wgslsmith_dot_vec3_i32(u_input.c.xwz, -_wgslsmith_sub_vec3_i32(u_input.c.wxz, vec3<i32>(-5874i, 2147483647i, global1.b.x))), vec4<f32>(global1.d.x, global1.d.x, global1.d.x, 478f), global1.c.yyz), _wgslsmith_mod_vec3_i32(global1.b | ~abs(vec3<i32>(u_input.c.x, global1.b.x, global1.b.x)), global1.b), ~(~((vec4<u32>(4294967295u, global1.c.x, arg_0, 0u) | vec4<u32>(arg_0, 1u, global1.c.x, 22978u)) | global1.c)), global1.d, _wgslsmith_mod_vec2_u32(max(global1.c.zw, vec2<u32>(min(arg_0, global1.c.x), arg_0)), max(global1.e, global1.e)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global1.d.x, global1.d.x))))));
    global1 = Struct_1(1u, u_input.c.yxw << (vec3<u32>(max(_wgslsmith_clamp_u32(arg_0, 13814u, global1.a), arg_0), abs(4294967295u), arg_0) % vec3<u32>(32u)), global1.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))))), global1.e);
    global0 = abs(_wgslsmith_clamp_u32(countOneBits(1u), 4294967295u, ~arg_0));
    global0 = global1.e.x;
    return Struct_1(27765u, vec3<i32>(~(-1i), -16632i, u_input.b), min(~(~global1.c), ~global1.c), global1.d, global1.c.xw);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(~arg_0.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, abs(-30187i), -2147483647i & u_input.c.x), global1.b << (firstLeadingBit(arg_0.c.c.zwy) % vec3<u32>(32u)), reverseBits(vec3<i32>(global1.b.x, -2147483647i, arg_1.x) ^ vec3<i32>(arg_0.a.b.x, u_input.c.x, arg_0.c.b.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(global1.c, vec4<u32>(global1.c.x, arg_0.d, global1.c.x, arg_0.d)), abs(vec4<u32>(4294967295u, 1u, arg_0.a.e.x, 0u)), ~vec4<u32>(25459u, global1.a, 0u, 47950u)), select(~global1.c, global1.c, all(vec3<bool>(arg_0.e, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-427f, arg_0.a.d.x, arg_2))), arg_0.c.c.wy), !(!select(select(arg_0.b, arg_0.b, true), vec2<bool>(arg_0.e, arg_0.b.x), false)), arg_0.c, _wgslsmith_dot_vec2_u32(global1.c.zx, arg_0.c.c.xy), arg_0.b.x);
    let var_1 = _wgslsmith_f_op_f32(-global1.d.x);
    let var_2 = ~0u;
    global1 = Struct_1(global1.c.x, _wgslsmith_add_vec3_i32((vec3<i32>(-1i) * -arg_0.c.b) >> (vec3<u32>(var_0.d, abs(arg_0.a.e.x), 1u) % vec3<u32>(32u)), vec3<i32>(countOneBits(global1.b.x), u_input.d.x, 37269i) << (global1.c.yyy % vec3<u32>(32u))), select(abs(arg_0.c.c), var_0.a.c, select(select(!vec4<bool>(false, false, arg_0.b.x, false), !vec4<bool>(true, true, var_0.e, true), select(vec4<bool>(false, arg_0.e, var_0.b.x, arg_0.e), vec4<bool>(var_0.b.x, false, arg_0.b.x, var_0.e), true)), select(!vec4<bool>(var_0.e, var_0.e, false, true), select(vec4<bool>(true, false, var_0.b.x, arg_0.b.x), vec4<bool>(arg_0.e, var_0.b.x, var_0.b.x, arg_0.b.x), vec4<bool>(true, arg_0.b.x, false, var_0.b.x)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(var_0.b.x, true, var_0.b.x, arg_0.e), vec4<bool>(arg_0.b.x, true, false, arg_0.e), var_0.e))), vec3<f32>(284f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), arg_2)), var_0.a.d.x), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.e.x, 1u) >> (global1.c.xz % vec2<u32>(32u)), global1.c.yx)));
    global1 = Struct_1(_wgslsmith_div_u32(1u, 4294967295u & _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(56652u, var_2), vec2<u32>(var_2, 26372u)))), global1.b, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.d, var_0.d, 4294967295u, var_2), vec4<u32>(var_0.a.e.x, 11927u, global1.c.x, 1u)) << (abs(min(vec4<u32>(28971u, 64117u, 7213u, var_2), arg_0.a.c)) % vec4<u32>(32u)), min(vec4<u32>(~73064u, ~1u, var_2, global1.e.x), ~arg_0.a.c)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c.d + arg_0.c.d) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1086f, 715f, -603f))))))), ~arg_0.a.e);
    return Struct_2(Struct_1(4294967295u >> (select(~arg_0.a.c.x, ~var_2, !var_0.b.x) % 32u), vec3<i32>(abs(34588i) & ~arg_0.a.b.x, -2147483647i, 2147483647i), abs(vec4<u32>(20261u, global1.e.x, arg_0.c.a, var_0.a.e.x)) << (vec4<u32>(arg_0.c.e.x, reverseBits(global1.c.x), arg_0.c.c.x, global1.c.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a.d))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(global1.e) | vec2<u32>(4294967295u, 4294967295u), ~max(vec2<u32>(global1.a, 4294967295u), arg_0.c.e), abs(vec2<u32>(4294967295u, 0u) | vec2<u32>(1u, var_0.c.a)))), vec2<bool>(true, arg_0.b.x), Struct_1(~_wgslsmith_clamp_u32(arg_0.a.e.x, arg_0.d, 4294967295u ^ arg_0.a.c.x), global1.b, var_0.a.c & _wgslsmith_mod_vec4_u32(arg_0.a.c, vec4<u32>(var_2, 4346u, 82829u, 48929u)), vec3<f32>(-1355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-783f - -593f)), arg_2), global1.e), abs(68196u), true);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_3(func_4(Struct_2(arg_2.a, !vec2<bool>(arg_1.a.b.x, false), func_2(~global1.c.x), ~(~21679u), true), _wgslsmith_mult_vec3_i32(global1.b, -vec3<i32>(-1i, arg_2.c.b.x, -1i)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(global1.d.x + -314f))));
    var var_1 = false;
    global0 = _wgslsmith_add_u32(19866u, _wgslsmith_mod_u32(~(firstLeadingBit(arg_2.d) & (51935u | var_0.a.c.a)), arg_2.a.a));
    var var_2 = arg_1.a.a.c;
    let var_3 = var_0;
    return Struct_1(arg_2.c.a, var_0.a.a.b, var_0.a.c.c, vec3<f32>(_wgslsmith_f_op_f32(-func_4(Struct_2(Struct_1(20838u, arg_1.a.c.b, arg_2.c.c, vec3<f32>(-1000f, -302f, var_0.a.c.d.x), vec2<u32>(22622u, 14661u)), vec2<bool>(arg_2.e, true), Struct_1(arg_2.d, vec3<i32>(var_3.a.c.b.x, u_input.e, var_0.a.c.b.x), var_0.a.a.c, vec3<f32>(arg_1.a.c.d.x, 1000f, arg_2.a.d.x), var_0.a.a.e), arg_2.c.c.x, arg_2.b.x), arg_1.a.c.b >> (vec3<u32>(global1.e.x, 0u, 27675u) % vec3<u32>(32u)), 350f).a.d.x), _wgslsmith_f_op_f32(-arg_1.a.c.d.x), -597f), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(global1.a, arg_1.a.c.a)), func_2(15959u).e), vec2<u32>(46444u, ~arg_1.a.c.e.x), vec2<u32>(countOneBits(global1.a), _wgslsmith_mod_u32(var_2.x, 99121u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-481f - _wgslsmith_f_op_f32(sign(1000f))), global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1176f + arg_1.d.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(314f * arg_1.d.x))))));
    let var_1 = !any(vec2<bool>(true, false));
    var var_2 = func_4(func_4(Struct_2(func_4(Struct_2(arg_1, vec2<bool>(false, true), Struct_1(arg_0.x, vec3<i32>(u_input.b, 1i, u_input.e), vec4<u32>(0u, 8552u, arg_0.x, 41432u), vec3<f32>(1827f, -232f, var_0.x), vec2<u32>(64164u, 11009u)), arg_0.x, false), vec3<i32>(25347i, -25523i, 0i), _wgslsmith_f_op_f32(-var_0.x)).c, vec2<bool>(var_1 && var_1, all(vec3<bool>(var_1, false, true))), arg_1, max(arg_0.x, 1u) << (~4294967295u % 32u), global1.d.x >= -1350f), firstTrailingBit(-firstTrailingBit(arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1088f * arg_1.d.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x)))), (vec3<i32>(u_input.b, _wgslsmith_div_i32(arg_1.b.x, -34955i), global1.b.x) & vec3<i32>(1i, arg_1.b.x, 2147483647i)) << (vec3<u32>(min(~50078u, 0u), (4294967295u ^ arg_1.e.x) << (func_4(Struct_2(Struct_1(arg_1.a, arg_1.b, arg_0, arg_1.d, arg_0.zx), vec2<bool>(true, false), Struct_1(1u, vec3<i32>(-1i, u_input.a, u_input.b), global1.c, vec3<f32>(global1.d.x, arg_1.d.x, arg_1.d.x), global1.e), 59305u, var_1), vec3<i32>(global1.b.x, 16963i, 0i), -1636f).c.e.x % 32u), ~func_1(-347f, Struct_3(Struct_2(Struct_1(global1.c.x, global1.b, vec4<u32>(4294967295u, 1u, global1.a, arg_1.e.x), vec3<f32>(1045f, -334f, global1.d.x), vec2<u32>(global1.e.x, arg_1.a)), vec2<bool>(var_1, var_1), Struct_1(44234u, vec3<i32>(10005i, 2147483647i, arg_1.b.x), global1.c, global1.d, vec2<u32>(0u, 20030u)), arg_1.e.x, true)), Struct_2(arg_1, vec2<bool>(true, false), Struct_1(4294967295u, vec3<i32>(arg_1.b.x, 1i, -2147483647i), arg_1.c, global1.d, vec2<u32>(global1.e.x, arg_0.x)), 0u, var_1), true).e.x) % vec3<u32>(32u)), arg_1.d.x);
    var var_3 = func_4(Struct_2(arg_1, vec2<bool>(false, true), Struct_1(firstLeadingBit(abs(global1.e.x)), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, arg_1.b.x, var_2.a.b.x), func_1(663f, Struct_3(Struct_2(Struct_1(1u, vec3<i32>(global1.b.x, 20447i, 2147483647i), vec4<u32>(arg_1.c.x, 55137u, var_2.c.c.x, 2852u), global1.d, var_2.c.c.xy), vec2<bool>(var_2.e, var_2.b.x), arg_1, 4294967295u, var_1)), Struct_2(Struct_1(42397u, vec3<i32>(var_2.a.b.x, 2147483647i, u_input.e), arg_0, var_2.c.d, vec2<u32>(global1.e.x, 124507u)), vec2<bool>(var_1, var_1), Struct_1(arg_1.c.x, vec3<i32>(0i, -7493i, var_2.a.b.x), vec4<u32>(4530u, 0u, var_2.d, 23237u), var_2.a.d, global1.e), var_2.c.e.x, true), var_2.b.x).b), ~vec4<u32>(global1.e.x, global1.a, 53653u, 26508u), func_4(Struct_2(var_2.a, var_2.b, Struct_1(11833u, arg_1.b, var_2.a.c, global1.d, vec2<u32>(0u, 4294967295u)), arg_0.x, false), _wgslsmith_sub_vec3_i32(u_input.c.zwy, u_input.c.wxw), 1162f).c.d, var_2.a.c.yx), arg_0.x, false), _wgslsmith_add_vec3_i32(~var_2.a.b, arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-808f * 1290f)));
    var var_4 = min(var_3.a.b.xz, ~(-func_4(func_4(Struct_2(var_3.a, vec2<bool>(true, true), Struct_1(arg_1.a, vec3<i32>(-53113i, 1i, var_3.c.b.x), vec4<u32>(var_3.d, var_3.c.a, 0u, 0u), global1.d, arg_0.wz), arg_1.a, var_3.b.x), vec3<i32>(var_3.a.b.x, arg_1.b.x, var_2.a.b.x), 1000f), func_4(Struct_2(Struct_1(arg_0.x, vec3<i32>(-31814i, -2147483647i, arg_1.b.x), vec4<u32>(global1.a, 0u, 84725u, global1.e.x), global1.d, var_2.a.e), var_3.b, var_3.c, 0u, var_3.e), vec3<i32>(arg_1.b.x, 0i, 2147483647i), arg_1.d.x).c.b, _wgslsmith_f_op_f32(var_2.c.d.x * var_2.a.d.x)).c.b.zz));
    return var_2.b;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = select(arg_1.b.x, arg_1.e, true);
    var_0 = true;
    var var_1 = _wgslsmith_sub_vec4_i32(u_input.c, u_input.c);
    var var_2 = vec4<bool>(!(arg_1.b.x | true), true, false, select(all(select(!vec4<bool>(false, true, arg_1.b.x, arg_1.b.x), select(vec4<bool>(true, arg_1.b.x, false, false), vec4<bool>(arg_1.e, arg_1.e, arg_1.b.x, arg_1.e), true), false)), _wgslsmith_f_op_f32(316f - 1559f) == global1.d.x, arg_1.e));
    let var_3 = arg_1;
    return Struct_3(Struct_2(Struct_1(~var_3.a.c.x, var_3.c.b, vec4<u32>(861u, 57496u, global1.e.x, arg_3.c.x) & vec4<u32>(62959u, global1.a, global1.e.x, 28207u), vec3<f32>(arg_1.a.d.x, _wgslsmith_f_op_f32(-arg_2), arg_3.d.x), vec2<u32>(_wgslsmith_mult_u32(71521u, global1.e.x), 13101u)), func_5(select(arg_3.c, func_2(arg_1.a.a).c, !vec4<bool>(var_3.b.x, false, true, arg_1.b.x)), Struct_1(_wgslsmith_div_u32(0u, 2589u), ~arg_0, func_2(arg_1.c.c.x).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d.x, 723f, 153f)), vec2<u32>(arg_1.d, 25843u))), func_4(arg_1, _wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(-1i, var_3.c.b.x, arg_0.x)) ^ global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))).c, 1u, true));
}

fn func_7(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = arg_0.a.b;
    global0 = countOneBits(firstTrailingBit(17233u));
    global0 = _wgslsmith_clamp_u32(abs(abs(abs(max(global1.a, arg_1)))), global1.c.x, ~(~4294967295u));
    global1 = arg_0.a.c;
    var_0 = select(func_5(vec4<u32>(arg_1, arg_0.a.c.c.x, ~arg_1, ~arg_0.a.a.a) ^ ~vec4<u32>(1u, arg_0.a.a.c.x, 4294967295u, 41110u), arg_0.a.a), arg_0.a.b, arg_0.a.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.a.d.x + global1.d.x), arg_0.a.a.d.x, any(func_5(vec4<u32>(global1.c.x, 0u, arg_1, arg_0.a.a.c.x), Struct_1(arg_0.a.c.a, u_input.c.xzx, vec4<u32>(arg_0.a.d, 42942u, global1.e.x, arg_1), arg_0.a.a.d, global1.e))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.d.x + global1.d.x))), global1.d.x)) * arg_0.a.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_7(func_6(~u_input.c.xxx, Struct_2(Struct_1(~4294967295u, vec3<i32>(u_input.a, -6672i, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.x, global1.e.x, global1.c.x, 0u), vec4<u32>(global1.a, global1.a, 26950u, 0u), vec4<u32>(global1.c.x, 28060u, 41612u, 77034u)), global1.d, ~vec2<u32>(61177u, global1.e.x)), func_5(~global1.c, func_1(-1000f, Struct_3(Struct_2(Struct_1(99884u, vec3<i32>(-31386i, -51632i, u_input.d.x), global1.c, vec3<f32>(587f, global1.d.x, global1.d.x), global1.c.xy), vec2<bool>(false, true), Struct_1(global1.c.x, vec3<i32>(0i, -1i, global1.b.x), global1.c, global1.d, global1.e), 26247u, true)), Struct_2(Struct_1(1u, vec3<i32>(global1.b.x, u_input.c.x, global1.b.x), vec4<u32>(global1.e.x, global1.a, 1u, 48151u), global1.d, vec2<u32>(global1.c.x, 4294967295u)), vec2<bool>(true, false), Struct_1(8761u, vec3<i32>(0i, global1.b.x, 1i), global1.c, vec3<f32>(global1.d.x, global1.d.x, -1000f), global1.e), global1.e.x, true), true)), func_4(func_4(Struct_2(Struct_1(83567u, vec3<i32>(u_input.d.x, 9869i, 0i), global1.c, global1.d, global1.e), vec2<bool>(true, true), Struct_1(global1.a, global1.b, global1.c, vec3<f32>(global1.d.x, global1.d.x, global1.d.x), vec2<u32>(1u, global1.a)), 49278u, false), u_input.c.zxx, global1.d.x), u_input.c.ywy, global1.d.x).a, ~_wgslsmith_dot_vec4_u32(global1.c, global1.c), true), -148f, Struct_1(global1.e.x, u_input.c.xwx, ~_wgslsmith_add_vec4_u32(vec4<u32>(7908u, global1.e.x, 0u, global1.e.x), global1.c), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global1.d.x, global1.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, 269f, 522f) - global1.d))), global1.c.wy)), 98676u));
    global1 = func_4(func_4(func_4(Struct_2(Struct_1(52100u, vec3<i32>(global1.b.x, global1.b.x, global1.b.x), global1.c, global1.d, global1.e), vec2<bool>(true, true), func_6(vec3<i32>(global1.b.x, global1.b.x, 4813i), Struct_2(Struct_1(global1.a, vec3<i32>(u_input.b, global1.b.x, global1.b.x), vec4<u32>(4294967295u, global1.c.x, global1.c.x, 45696u), vec3<f32>(var_0, 899f, global1.d.x), global1.e), vec2<bool>(true, false), Struct_1(48373u, u_input.c.zzz, vec4<u32>(global1.c.x, global1.c.x, global1.c.x, 76133u), global1.d, vec2<u32>(global1.e.x, global1.a)), global1.a, true), var_0, Struct_1(global1.e.x, global1.b, global1.c, global1.d, vec2<u32>(1u, 35239u))).a.c, ~0u, true), vec3<i32>(func_1(global1.d.x, Struct_3(Struct_2(Struct_1(global1.a, vec3<i32>(-2147483647i, -53681i, u_input.e), global1.c, global1.d, vec2<u32>(global1.c.x, global1.e.x)), vec2<bool>(false, true), Struct_1(1u, global1.b, global1.c, vec3<f32>(894f, 315f, -856f), vec2<u32>(global1.c.x, global1.a)), 4584u, true)), Struct_2(Struct_1(56689u, vec3<i32>(42401i, -1i, 30468i), global1.c, vec3<f32>(var_0, var_0, -1826f), global1.e), vec2<bool>(true, false), Struct_1(16029u, vec3<i32>(u_input.c.x, global1.b.x, -1i), global1.c, global1.d, vec2<u32>(global1.c.x, global1.e.x)), 30087u, true), false).b.x, _wgslsmith_mod_i32(26314i, -14863i), global1.b.x), _wgslsmith_f_op_f32(-1081f + -425f)), vec3<i32>(func_4(func_6(vec3<i32>(59716i, 0i, 3206i), Struct_2(Struct_1(0u, vec3<i32>(16190i, global1.b.x, global1.b.x), global1.c, global1.d, vec2<u32>(1u, global1.c.x)), vec2<bool>(true, false), Struct_1(global1.a, global1.b, vec4<u32>(41487u, global1.e.x, global1.c.x, global1.e.x), vec3<f32>(var_0, -421f, var_0), global1.c.zw), global1.c.x, false), var_0, Struct_1(0u, u_input.c.yxw, global1.c, vec3<f32>(525f, -993f, var_0), global1.c.ww)).a, ~vec3<i32>(1i, -47141i, global1.b.x), 988f).a.b.x, -(1i ^ u_input.b), global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(global1.b, Struct_2(Struct_1(global1.e.x, global1.b, vec4<u32>(global1.e.x, 6006u, 9594u, 67796u), global1.d, global1.e), vec2<bool>(true, true), Struct_1(global1.c.x, global1.b, vec4<u32>(global1.e.x, global1.e.x, 65298u, global1.e.x), vec3<f32>(283f, global1.d.x, -1000f), vec2<u32>(global1.a, global1.c.x)), 1476u, true), 1000f, Struct_1(global1.c.x, global1.b, vec4<u32>(17609u, 0u, 5948u, 4294967295u), global1.d, vec2<u32>(139684u, global1.a))).a.c.d.x + func_1(var_0, Struct_3(Struct_2(Struct_1(global1.e.x, vec3<i32>(-36071i, u_input.a, 2147483647i), global1.c, vec3<f32>(1000f, -1265f, 1000f), vec2<u32>(51341u, global1.a)), vec2<bool>(true, false), Struct_1(global1.a, vec3<i32>(global1.b.x, u_input.e, global1.b.x), vec4<u32>(25383u, 1u, global1.a, 1u), global1.d, global1.e), 4294967295u, false)), Struct_2(Struct_1(global1.c.x, u_input.c.zzw, vec4<u32>(0u, global1.a, global1.a, global1.a), global1.d, global1.c.xw), vec2<bool>(false, false), Struct_1(15911u, vec3<i32>(2147483647i, 1i, 1i), global1.c, vec3<f32>(-1144f, var_0, var_0), global1.c.yx), 53961u, false), true).d.x) - var_0)), global1.b, 1000f).c;
    let var_1 = func_6(vec3<i32>(1i, u_input.c.x, reverseBits(-16915i)) >> (vec3<u32>(11384u, ~_wgslsmith_sub_u32(10282u, global1.a), _wgslsmith_mult_u32(abs(9007u), max(43052u, global1.a))) % vec3<u32>(32u)), Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(global1.c, vec4<u32>(5246u, global1.a, 0u, global1.c.x)), global1.b << (global1.c.yxz % vec3<u32>(32u)), _wgslsmith_clamp_vec4_u32(global1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, global1.c.x, global1.c.x), vec4<u32>(1u, global1.c.x, global1.c.x, global1.a)), global1.c), vec3<f32>(_wgslsmith_f_op_f32(func_7(Struct_3(Struct_2(Struct_1(15833u, u_input.c.xxw, vec4<u32>(global1.e.x, 29717u, global1.e.x, 31779u), global1.d, vec2<u32>(global1.e.x, 82205u)), vec2<bool>(true, false), Struct_1(0u, vec3<i32>(2147483647i, 0i, u_input.d.x), vec4<u32>(30634u, 1u, 98147u, 1u), vec3<f32>(var_0, global1.d.x, -949f), global1.e), global1.a, false)), 75290u)), _wgslsmith_f_op_f32(global1.d.x + 1997f), global1.d.x), global1.e), func_4(Struct_2(func_1(var_0, Struct_3(Struct_2(Struct_1(global1.e.x, u_input.c.zxx, global1.c, vec3<f32>(global1.d.x, -274f, global1.d.x), global1.e), vec2<bool>(true, false), Struct_1(4294967295u, global1.b, global1.c, vec3<f32>(global1.d.x, 610f, global1.d.x), vec2<u32>(global1.c.x, global1.c.x)), global1.e.x, false)), Struct_2(Struct_1(4294967295u, vec3<i32>(20367i, u_input.c.x, global1.b.x), vec4<u32>(0u, 4294967295u, 1u, global1.e.x), vec3<f32>(890f, var_0, -910f), vec2<u32>(0u, global1.e.x)), vec2<bool>(true, true), Struct_1(4294967295u, vec3<i32>(u_input.b, u_input.b, 1i), vec4<u32>(global1.c.x, 41516u, 0u, global1.e.x), global1.d, vec2<u32>(36498u, 0u)), global1.e.x, false), true), vec2<bool>(true, true), Struct_1(6817u, global1.b, vec4<u32>(42271u, global1.a, 15728u, global1.e.x), vec3<f32>(global1.d.x, 161f, 1520f), global1.c.yz), firstTrailingBit(global1.a), all(vec2<bool>(false, false))), vec3<i32>(-global1.b.x, u_input.c.x, ~global1.b.x), _wgslsmith_f_op_f32(342f * _wgslsmith_f_op_f32(step(var_0, var_0)))).b, func_1(970f, func_6(reverseBits(u_input.c.xxz), func_6(global1.b, Struct_2(Struct_1(global1.a, vec3<i32>(global1.b.x, -36132i, 9935i), vec4<u32>(6573u, global1.e.x, 63514u, 78779u), vec3<f32>(global1.d.x, var_0, global1.d.x), vec2<u32>(global1.a, 0u)), vec2<bool>(true, true), Struct_1(global1.a, vec3<i32>(-2147483647i, u_input.b, global1.b.x), vec4<u32>(global1.a, 42194u, global1.c.x, 5397u), global1.d, global1.e), global1.a, false), -1371f, Struct_1(global1.a, vec3<i32>(global1.b.x, global1.b.x, global1.b.x), global1.c, vec3<f32>(global1.d.x, -450f, global1.d.x), vec2<u32>(global1.e.x, global1.c.x))).a, _wgslsmith_f_op_f32(func_7(Struct_3(Struct_2(Struct_1(1u, vec3<i32>(-11154i, u_input.b, 2147483647i), global1.c, global1.d, global1.e), vec2<bool>(true, true), Struct_1(68431u, global1.b, global1.c, vec3<f32>(-131f, global1.d.x, var_0), vec2<u32>(68818u, 7979u)), global1.a, false)), 8020u)), Struct_1(global1.e.x, u_input.c.xzw, global1.c, vec3<f32>(var_0, global1.d.x, global1.d.x), global1.e)), func_4(Struct_2(Struct_1(40193u, u_input.c.wzz, vec4<u32>(20506u, 1u, 4775u, 4294967295u), global1.d, global1.e), vec2<bool>(true, false), Struct_1(4294967295u, u_input.c.yzw, vec4<u32>(50576u, global1.a, global1.c.x, 31813u), vec3<f32>(global1.d.x, -841f, global1.d.x), global1.e), global1.a, false), vec3<i32>(u_input.d.x, 1i, u_input.a) ^ vec3<i32>(u_input.d.x, 1i, 0i), var_0), any(vec4<bool>(true, false, true, true))), abs(global1.e.x) & 4294967295u, !(!any(vec3<bool>(true, false, true)))), -1382f, func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1189f, -288f), var_0)))), Struct_3(func_6(_wgslsmith_sub_vec3_i32(global1.b, vec3<i32>(-42448i, 61434i, 1i)), Struct_2(Struct_1(0u, vec3<i32>(u_input.b, -26551i, 0i), global1.c, global1.d, global1.e), vec2<bool>(false, true), Struct_1(global1.a, global1.b, vec4<u32>(global1.c.x, 16389u, 21874u, 0u), vec3<f32>(global1.d.x, global1.d.x, global1.d.x), global1.c.zw), global1.e.x, false), _wgslsmith_f_op_f32(-global1.d.x), func_1(global1.d.x, Struct_3(Struct_2(Struct_1(global1.e.x, vec3<i32>(-4403i, -43326i, 1i), global1.c, vec3<f32>(var_0, var_0, -953f), vec2<u32>(global1.e.x, 62878u)), vec2<bool>(true, true), Struct_1(77408u, vec3<i32>(global1.b.x, -8546i, global1.b.x), global1.c, global1.d, global1.c.xx), global1.c.x, false)), Struct_2(Struct_1(4294967295u, u_input.c.wzy, global1.c, global1.d, global1.e), vec2<bool>(false, false), Struct_1(68752u, vec3<i32>(-9210i, global1.b.x, -1i), global1.c, vec3<f32>(global1.d.x, 170f, -322f), vec2<u32>(23580u, 9387u)), 64693u, false), true)).a), Struct_2(func_1(-461f, Struct_3(Struct_2(Struct_1(79436u, vec3<i32>(u_input.c.x, u_input.b, global1.b.x), vec4<u32>(12299u, 4294967295u, 7038u, global1.c.x), global1.d, vec2<u32>(0u, global1.e.x)), vec2<bool>(false, true), Struct_1(4294967295u, vec3<i32>(-8188i, global1.b.x, 1i), vec4<u32>(global1.c.x, global1.e.x, 4294967295u, 1u), global1.d, global1.c.yz), 47412u, false)), Struct_2(Struct_1(global1.a, global1.b, vec4<u32>(global1.c.x, global1.c.x, 4294967295u, 37533u), vec3<f32>(-1200f, global1.d.x, var_0), vec2<u32>(global1.c.x, 4294967295u)), vec2<bool>(true, false), Struct_1(1u, global1.b, vec4<u32>(100944u, global1.a, 4294967295u, global1.a), global1.d, vec2<u32>(4294967295u, 5750u)), global1.e.x, true), func_4(Struct_2(Struct_1(global1.e.x, global1.b, global1.c, global1.d, vec2<u32>(global1.a, global1.c.x)), vec2<bool>(false, false), Struct_1(27087u, u_input.c.ywy, global1.c, global1.d, global1.c.xy), global1.e.x, false), vec3<i32>(0i, u_input.e, -1i), -1459f).b.x), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), func_4(Struct_2(Struct_1(34162u, u_input.c.wxx, vec4<u32>(global1.a, 14441u, global1.a, global1.e.x), vec3<f32>(2132f, global1.d.x, global1.d.x), global1.e), vec2<bool>(false, false), Struct_1(77826u, global1.b, global1.c, global1.d, vec2<u32>(global1.c.x, 26662u)), 0u, true), -global1.b, global1.d.x).a, 29967u, 0u >= global1.a), any(vec2<bool>(false, any(vec2<bool>(true, true))))));
    var var_2 = func_2(func_3(-1i, u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c.d.x, -599f, -398f, -1204f) * vec4<f32>(-567f, var_0, global1.d.x, -756f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c.d.x, 786f, 676f, var_0) - vec4<f32>(var_0, -290f, 1545f, 1760f)))), ~vec3<u32>(min(var_1.a.c.e.x, 1u), global1.a, _wgslsmith_div_u32(global1.a, 87199u))));
    global0 = 18766u;
    var var_3 = !vec4<bool>(all(!vec2<bool>(var_1.a.b.x, var_1.a.b.x)), true, true, true);
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_1.a.c.d.yz);
    var var_5 = var_1.a.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(var_2.c ^ vec4<u32>(var_1.a.c.a, 35742u, 0u, 13091u)))), func_6(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -20266i, -40533i), var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-446f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 123f)), func_1(func_2(var_1.a.c.e.x).d.x, func_6(_wgslsmith_add_vec3_i32(var_2.b, vec3<i32>(global1.b.x, 1i, var_1.a.c.b.x)), func_6(vec3<i32>(-665i, u_input.a, -38594i), Struct_2(var_1.a.c, var_1.a.b, var_1.a.c, global1.c.x, var_1.a.b.x), 946f, var_1.a.c).a, var_4.x, func_4(var_1.a, vec3<i32>(2147483647i, global1.b.x, -16424i), var_4.x).a), func_4(var_1.a, -vec3<i32>(var_2.b.x, var_1.a.a.b.x, var_1.a.c.b.x), 764f), true != var_3.x)).a.a.d.x);
}

