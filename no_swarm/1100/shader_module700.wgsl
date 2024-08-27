struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_4) -> i32 {
    let var_0 = all(!vec3<bool>(arg_3.b.d.x, firstTrailingBit(arg_3.b.a) <= _wgslsmith_clamp_u32(1u, 41287u, u_input.e.x), true));
    var var_1 = arg_3.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0)));
    return max(u_input.d >> (abs(4294967295u) % 32u), 26508i);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<i32> {
    var var_0 = u_input.e.zwx;
    let var_1 = Struct_1(-1i);
    var var_2 = any(vec3<bool>(any(vec2<bool>(false, false)) | (false | (arg_1.x < var_0.x)), false, (reverseBits(20540u) > ~var_0.x) & true));
    var_2 = select(select(select((var_0.x >> (var_0.x % 32u)) >= ~67603u, true, any(vec4<bool>(true, true, true, true))), true, false | any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), true, !all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    var_0 = _wgslsmith_mod_vec3_u32(~(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, 42820u), vec4<u32>(50254u, arg_1.x, 81663u, 1u)), u_input.c.x) << (vec3<u32>(44313u, select(var_0.x, 10750u, false), firstTrailingBit(105686u)) % vec3<u32>(32u))), vec3<u32>(4294967295u, 1u, 32335u));
    return vec2<i32>(13539i, reverseBits(_wgslsmith_div_i32(i32(-1i) * -1i, 16566i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> u32 {
    let var_0 = Struct_5(abs(-(~(-vec4<i32>(22921i, u_input.d, 33652i, u_input.d)))), Struct_2(25231u, arg_1.wzw, Struct_1(40694i), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), ~max(vec3<u32>(52715u, 4294967295u, 847u), vec3<u32>(u_input.b, arg_3.x, arg_1.x))));
    let var_1 = arg_3;
    var var_2 = reverseBits(arg_1);
    var_2 = vec4<u32>(71664u, max(countOneBits(~_wgslsmith_add_u32(var_2.x, u_input.e.x)), _wgslsmith_mult_u32(16040u, countOneBits(~arg_3.x))), _wgslsmith_dot_vec3_u32(~var_2.yyz, countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 1u, var_1.x), var_1.www, vec3<u32>(1170u, 66291u, 19249u)), vec3<u32>(arg_1.x, arg_1.x, 25222u) >> (vec3<u32>(var_1.x, var_1.x, var_1.x) % vec3<u32>(32u))))), min(_wgslsmith_clamp_u32(33541u, 1u, arg_3.x), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(15010u, var_2.x, 11894u), _wgslsmith_mod_vec3_u32(var_2.zxx, var_0.b.e))));
    var var_3 = _wgslsmith_dot_vec2_i32(func_4(Struct_1(_wgslsmith_add_i32(func_3(vec3<f32>(772f, -207f, -201f), vec2<i32>(var_0.b.c.a, u_input.d), vec4<u32>(arg_1.x, 1u, var_0.b.e.x, var_2.x), Struct_4(Struct_1(32862i), var_0.b)), ~var_0.b.c.a)), firstLeadingBit(~vec2<u32>(arg_3.x, arg_3.x))), var_0.a.zw);
    return ~19123u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(!vec2<bool>(_wgslsmith_f_op_f32(floor(-481f)) > -839f, false), vec4<u32>(~_wgslsmith_mult_u32(0u, u_input.a.x), firstTrailingBit(~arg_2.c.x), 481u, u_input.c.x) & ~(~(~vec4<u32>(arg_2.c.x, arg_2.c.x, u_input.b, 43187u))), vec4<bool>(!(!arg_0.x && true), any(select(!vec4<bool>(arg_2.b, arg_0.x, true, true), !vec4<bool>(arg_0.x, true, true, true), true)), arg_0.x, all(!arg_0.xx)), vec4<u32>(~u_input.a.x, 64993u, 1u, ~1u));
    var var_1 = ~0u;
    let var_2 = arg_2.a.x;
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, u_input.a.x, 20374u, 13235u), arg_2.c)), abs(var_0) | _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(arg_2.c.x, 5218u))), select(u_input.a.x, 84625u, arg_2.b), var_0 | ~(33363u << (arg_2.c.x % 32u)));
    var_1 = u_input.e.x;
    return Struct_1(func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(865f, 402f, 1640f) * vec3<f32>(1000f, -270f, -2324f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-267f, 1957f, 962f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(585f, 352f, 754f))), vec3<bool>(arg_2.b, true, arg_0.x))))), firstTrailingBit(~reverseBits(vec2<i32>(1i, u_input.d))), ~vec4<u32>(_wgslsmith_sub_u32(var_0, u_input.c.x), 1u, ~var_0, ~27921u), Struct_4(Struct_1(u_input.d), Struct_2(u_input.a.x, vec3<u32>(0u, 0u, u_input.c.x), Struct_1(-2147483647i), !vec4<bool>(true, arg_0.x, false, arg_0.x), abs(arg_2.c.wzz)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: f32) -> Struct_3 {
    let var_0 = vec4<bool>(arg_1.b.d.x, !any(!vec4<bool>(false, arg_1.b.d.x, arg_1.b.d.x, true)), !all(!(!arg_1.b.d)), !arg_1.b.d.x);
    var var_1 = Struct_1((u_input.d << (4007u % 32u)) >> (arg_1.b.a % 32u));
    var_1 = Struct_1(-(~max(max(0i, arg_0.a), _wgslsmith_add_i32(-1i, arg_0.a))));
    let var_2 = Struct_4(func_1(!vec3<bool>(var_0.x, all(var_0), true), vec2<bool>(!(!var_0.x), true), Struct_3(arg_1.b.d, true, select(~u_input.e, ~vec4<u32>(u_input.a.x, u_input.a.x, arg_1.b.b.x, u_input.b), true | var_0.x), vec2<i32>(abs(var_1.a), ~arg_1.b.c.a)), -arg_1.a), arg_1.b);
    var var_3 = 537f;
    return Struct_3(!select(select(!vec4<bool>(var_2.b.d.x, true, arg_1.b.d.x, arg_1.b.d.x), vec4<bool>(true, var_2.b.d.x, var_0.x, false), !vec4<bool>(true, false, false, var_0.x)), !(!arg_1.b.d), !vec4<bool>(var_2.b.d.x, var_2.b.d.x, arg_1.b.d.x, false)), all(select(select(select(vec2<bool>(true, true), vec2<bool>(var_2.b.d.x, true), vec2<bool>(true, true)), !arg_1.b.d.xz, var_0.xz), vec2<bool>(true, select(true, false, var_0.x)), select(vec2<bool>(true, true), arg_1.b.d.xw, select(false, var_2.b.d.x, arg_1.b.d.x)))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.e.x, u_input.b), max(u_input.a, u_input.a)), min(~_wgslsmith_add_u32(arg_1.b.b.x, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 26032u), arg_1.b.e.yy ^ u_input.c.xx)), firstTrailingBit(~30757u) ^ arg_1.b.b.x, _wgslsmith_dot_vec2_u32(var_2.b.b.zx, ~(~arg_1.b.e.xx))), arg_1.a.zw & _wgslsmith_sub_vec2_i32(arg_1.a.zy, vec2<i32>(_wgslsmith_sub_i32(-4090i, var_2.a.a), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(647f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2201f) - 2701f)))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-140f, 911f)), _wgslsmith_f_op_f32(round(822f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = func_5(func_1(vec3<bool>(true, true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(vec4<bool>(false, true, false, false)), ~vec4<u32>(90492u, u_input.b, u_input.b, u_input.b), ~vec2<i32>(u_input.d, u_input.d)), vec4<i32>(firstLeadingBit(u_input.d ^ u_input.d), countOneBits(36706i << (u_input.b % 32u)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.d, 0i, 1i)), vec3<i32>(u_input.d, u_input.d, 0i)), u_input.d)), Struct_5(vec4<i32>(~u_input.d, 31395i, ~u_input.d, _wgslsmith_sub_i32(u_input.d >> (u_input.a.x % 32u), ~2147483647i)), Struct_2(u_input.a.x << (reverseBits(u_input.e.x) % 32u), select(vec3<u32>(36117u, 50690u, 76166u), max(vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.e.xxy), vec3<bool>(true, true, true)), Struct_1(u_input.d), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(44771u, u_input.b, u_input.a.x)), vec3<u32>(u_input.b, u_input.a.x, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f - -270f)) * _wgslsmith_f_op_f32(sign(1f))), -123f, -1240f), _wgslsmith_f_op_f32(floor(-480f)));
    var_1 = Struct_3(func_5(Struct_1(u_input.d), Struct_5(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(73419i, -2147483647i, u_input.d, u_input.d), vec4<i32>(-12696i, var_1.d.x, var_1.d.x, 3614i), vec4<i32>(u_input.d, u_input.d, u_input.d, var_1.d.x)), vec4<i32>(84870i, u_input.d, u_input.d, var_1.d.x)), Struct_2(53978u, var_1.c.zxy, func_1(vec3<bool>(var_1.a.x, false, false), vec2<bool>(true, true), Struct_3(var_1.a, var_1.a.x, u_input.e, vec2<i32>(21176i, u_input.d)), vec4<i32>(u_input.d, 13019i, 1i, u_input.d)), vec4<bool>(var_1.a.x, false, var_1.b, true), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.c.x, var_1.c.x, 35153u), var_1.c.wwx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-240f, -1084f, 1420f, 1065f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(273f, -343f, -345f, 701f) + vec4<f32>(-125f, -535f, 1986f, -904f)))), 477f).a, true, ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_mod_u32(var_1.c.x, 5801u), 4294967295u, var_1.c.x), _wgslsmith_sub_vec4_u32(var_1.c, reverseBits(u_input.e))), var_1.d);
    var var_2 = func_5(Struct_1(u_input.d), Struct_5(_wgslsmith_add_vec4_i32(-abs(vec4<i32>(-1i, u_input.d, -1i, u_input.d)), ~vec4<i32>(34978i, var_1.d.x, 1i, 1i)), Struct_2(var_1.c.x, select(reverseBits(u_input.e.wxw), select(u_input.c, vec3<u32>(4294967295u, var_1.c.x, 0u), vec3<bool>(false, true, true)), var_1.b), func_1(var_1.a.www, vec2<bool>(true, var_1.a.x), func_5(Struct_1(var_1.d.x), Struct_5(vec4<i32>(-1i, 2147483647i, u_input.d, var_1.d.x), Struct_2(u_input.c.x, vec3<u32>(u_input.c.x, 17044u, 1u), Struct_1(-1i), var_1.a, u_input.e.wzy)), vec4<f32>(150f, 1142f, -752f, -834f), -916f), -vec4<i32>(2147483647i, -4652i, var_1.d.x, 2147483647i)), vec4<bool>(var_1.a.x, var_1.b, var_1.b, !var_1.a.x), ~vec3<u32>(40805u, u_input.c.x, u_input.a.x) | ~vec3<u32>(46958u, var_1.c.x, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-436f, _wgslsmith_f_op_f32(abs(-384f)), _wgslsmith_f_op_f32(f32(-1f) * -1889f), _wgslsmith_f_op_f32(ceil(-248f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, -1000f, -1076f, 359f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) * 1f))))));
    var var_3 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(firstTrailingBit(countOneBits(vec4<i32>(u_input.d, var_2.d.x, -2147483647i, -15686i)))), vec2<u32>(37657u, ~0u), _wgslsmith_f_op_f32(f32(-1f) * -813f), -34669i);
}

