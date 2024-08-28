struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -400f;

var<private> global2: bool = false;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = -_wgslsmith_sub_vec3_i32(~(~(~vec3<i32>(arg_2.b.d, -58443i, arg_2.a.d))), max(_wgslsmith_sub_vec3_i32(vec3<i32>(4078i, 1i, arg_3.a.d), vec3<i32>(arg_2.b.d, arg_3.b.d, arg_3.b.d)), vec3<i32>(_wgslsmith_div_i32(u_input.e, 47283i), abs(arg_2.a.d), -2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.c, 1218f)), vec2<f32>(-152f, -449f), select(arg_3.a.a.wx, vec2<bool>(arg_2.b.a.x, true), arg_2.a.a.zx)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.c, arg_3.b.c), vec2<f32>(arg_3.b.c, -916f)))))), vec2<f32>(_wgslsmith_f_op_f32(-944f - _wgslsmith_f_op_f32(-arg_2.b.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.c)), any(arg_3.b.a.wyz)))), !any(!vec3<bool>(arg_3.a.a.x, arg_3.a.a.x, arg_0.x))));
    var_0 = vec3<i32>(-2147483647i, countOneBits(_wgslsmith_sub_i32(firstLeadingBit(~(-58006i)), var_0.x)), reverseBits(_wgslsmith_sub_i32(42002i, -arg_2.b.d)) ^ min(-(~(-2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.d, var_0.x, arg_2.a.d, u_input.b), reverseBits(vec4<i32>(-3405i, arg_3.a.d, 21795i, u_input.b)))));
    let var_2 = vec2<i32>(1i, 1i);
    global2 = any(!arg_3.a.a.yw);
    return arg_3.b.b.x;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(!(!vec4<bool>(any(vec3<bool>(false, true, false)), true, true, true)), firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(1u, min(u_input.c.x, u_input.c.x), func_3(vec4<bool>(true, false, false, false), vec2<u32>(u_input.c.x, 0u), Struct_2(Struct_1(vec4<bool>(true, true, true, false), u_input.c.xz, -484f, u_input.a), Struct_1(vec4<bool>(true, true, true, false), u_input.c.zy, -1112f, -14114i)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), u_input.c.zx, -539f, u_input.d), Struct_1(vec4<bool>(false, true, false, true), u_input.c.yy, 704f, 2147483647i)))), u_input.c.x)), _wgslsmith_div_f32(-225f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1303f)), _wgslsmith_f_op_f32(trunc(-1249f)))), u_input.b);
    var var_1 = true;
    return _wgslsmith_div_u32(~firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 0u, var_0.b.x, u_input.c.x), u_input.c)), ~(~4294967295u));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = func_3(vec4<bool>(true, all(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), true)), true, true), ~vec2<u32>(~24734u, ~(22321u | u_input.c.x)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), select(min(u_input.c.wy, u_input.c.zy), ~vec2<u32>(20910u, 1u), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(979f, -682f)) * _wgslsmith_f_op_f32(ceil(arg_1))), max(arg_2.x, 0i << (1u % 32u))), Struct_1(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true), any(vec4<bool>(false, false, true, true))), ~select(vec2<u32>(arg_0, 1u), vec2<u32>(u_input.c.x, 4294967295u), true), -687f, -2147483647i)), Struct_2(Struct_1(vec4<bool>(u_input.c.x >= 4294967295u, any(vec2<bool>(false, true)), true, false), _wgslsmith_sub_vec2_u32(u_input.c.xw, vec2<u32>(u_input.c.x, 49896u)), 955f, ~(-4987i)), Struct_1(vec4<bool>(true, true, true, true), u_input.c.zy, _wgslsmith_f_op_f32(ceil(2198f)), arg_2.x)));
    var var_1 = Struct_3(Struct_1(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x) >> (~vec2<u32>(64006u, arg_0) % vec2<u32>(32u)), u_input.c.yz, select(vec2<u32>(arg_0, u_input.c.x), u_input.c.zx, vec2<bool>(true, false)) << (~u_input.c.yy % vec2<u32>(32u))), 296f, ~0i), false, Struct_1(vec4<bool>(any(vec2<bool>(true, true)), !(arg_1 < arg_1), true, any(vec4<bool>(true, true, true, false)) | true), ~vec2<u32>(~70718u, _wgslsmith_mod_u32(u_input.c.x, 7441u)), arg_1, 1i));
    let var_2 = Struct_3(var_1.c, false, Struct_1(!var_1.c.a, vec2<u32>(~0u >> (countOneBits(var_1.a.b.x) % 32u), ~(~0u)), _wgslsmith_f_op_f32(min(var_1.c.c, 1575f)), arg_2.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1755f, 994f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(340f + arg_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(122f, var_2.a.c)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-261f, -608f, 1598f), vec3<f32>(-243f, 910f, var_2.c.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1668f, var_2.c.c, var_2.a.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.c, -164f, 857f) * vec3<f32>(741f, 432f, -1742f))))));
    var var_4 = ~var_1.a.b.x;
    return _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_2.a.d, -var_1.a.d, -2147483647i, 0i)) >> (abs(countOneBits(u_input.c)) % vec4<u32>(32u)), -countOneBits(vec4<i32>(_wgslsmith_clamp_i32(1i, 0i, -2147483647i), ~14754i, abs(u_input.d), arg_2.x & -16585i)), -vec4<i32>(arg_2.x, ~1i, arg_2.x, ~(-54288i)) >> (u_input.c % vec4<u32>(32u)));
}

fn func_1() -> vec4<bool> {
    let var_0 = (vec4<i32>(~u_input.e, firstLeadingBit(u_input.d), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 2147483647i, 2147483647i), vec3<i32>(u_input.d, 8314i, -2147483647i)), _wgslsmith_sub_i32(0i >> (u_input.c.x % 32u), 2673i)) ^ _wgslsmith_clamp_vec4_i32(func_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1196f), ~vec3<i32>(-24399i, u_input.e, u_input.e)), ~vec4<i32>(0i, 36656i, -23296i, u_input.a), vec4<i32>(u_input.b, 0i, u_input.d, u_input.a) & vec4<i32>(u_input.d, 1i, 13398i, u_input.b))) | (vec4<i32>(_wgslsmith_add_i32(24954i, -15792i), u_input.b, u_input.d, u_input.b) & _wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(-10814i, -18537i, -1i, u_input.e)), countOneBits(~vec4<i32>(u_input.b, u_input.a, u_input.a, 36275i))));
    let var_1 = Struct_1(vec4<bool>(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)), select(true, false, false) || !any(vec3<bool>(false, false, false)), any(vec4<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, true)))), -firstTrailingBit(u_input.e) >= 1i), _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(firstTrailingBit(4294967295u)), ~(~u_input.c.x)), vec2<u32>(u_input.c.x, 0u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 866f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(540f, 377f) + _wgslsmith_f_op_f32(sign(737f))), true)))), _wgslsmith_clamp_i32(abs(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -3229i, 2147483647i, var_0.x), var_0))), firstLeadingBit(u_input.d), countOneBits(i32(-1i) * -var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1133f + _wgslsmith_f_op_f32(992f + var_1.c)))) - -365f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.c, -1080f))))));
    var var_3 = Struct_3(var_1, true, Struct_1(select(var_1.a, var_1.a, !select(var_1.a, vec4<bool>(var_1.a.x, false, var_1.a.x, true), false)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.c, var_2)))), -10961i));
    var var_4 = Struct_2(var_1, Struct_1(select(var_1.a, select(var_3.c.a, var_3.c.a, any(vec4<bool>(true, true, var_1.a.x, true))), vec4<bool>(var_1.a.x, true, true, false)), vec2<u32>(abs(_wgslsmith_div_u32(u_input.c.x, u_input.c.x)), var_1.b.x ^ var_3.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))) + _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-var_2))), _wgslsmith_add_i32(~0i, firstTrailingBit(0i))));
    return vec4<bool>(select(abs(reverseBits(var_0.x)) == firstLeadingBit(i32(-1i) * -1i), false, false), true, var_3.c.a.x, !((var_3.a.a.x & any(var_4.a.a.zz)) & (var_3.a.a.x && true)));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-865f));
    var var_1 = vec3<u32>(~76876u, 88693u, 3404u);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -423f);
    let var_3 = arg_0.c;
    let var_4 = Struct_2(Struct_1(!func_1(), firstTrailingBit(vec2<u32>(~0u, 22875u)), -2088f, ~2147483647i), Struct_1(!vec4<bool>(any(vec2<bool>(false, true)), !var_3.a.x, true, var_0 == var_2), vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(trunc(-1163f)), var_3.d >> (var_1.x % 32u)));
    return arg_0;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(func_5(arg_1).c, Struct_1(vec4<bool>(false, all(func_5(arg_1).a.a.xzx), !arg_1.b, arg_1.c.a.x), select(abs(~u_input.c.zy), vec2<u32>(~0u, 0u), func_1().yy), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a.c + arg_1.a.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -536f))))), firstLeadingBit(1i)));
    var var_1 = Struct_1(select(var_0.b.a, var_0.a.a, !(!(!arg_1.a.a))), _wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(0u, u_input.c.x)), vec2<u32>(u_input.c.x, u_input.c.x)) | vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(51817u, 0u, var_0.a.b.x), ~vec3<u32>(1u, arg_1.a.b.x, 0u))), _wgslsmith_f_op_f32(-148f * var_0.a.c), _wgslsmith_add_i32(0i, countOneBits(firstTrailingBit(var_0.b.d >> (u_input.c.x % 32u)))));
    var var_2 = reverseBits((_wgslsmith_add_vec3_i32(~arg_0.wxy, arg_0.yyx) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.d, var_0.b.d, 2147483647i), ~arg_2)) | _wgslsmith_mult_vec3_i32(arg_0.wyx, ~select(vec3<i32>(var_1.d, u_input.d, var_0.a.d), arg_2, vec3<bool>(var_1.a.x, false, true))));
    let var_3 = var_0.a;
    global1 = _wgslsmith_f_op_f32(min(-1236f, 215f));
    return Struct_1(!(!var_3.a), max(vec2<u32>(0u, var_0.a.b.x) & abs(arg_1.a.b), select(min(var_0.b.b, vec2<u32>(u_input.c.x, u_input.c.x)), var_0.a.b, var_0.a.a.zz)) | _wgslsmith_clamp_vec2_u32(arg_1.a.b, var_3.b, var_1.b), -135f, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(476f, -3181f, -174f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -620f, -340f), vec3<f32>(216f, -1246f, -804f))), true))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-856f)))), _wgslsmith_f_op_f32(879f + _wgslsmith_f_op_f32(f32(-1f) * -1651f))));
    let var_1 = func_6(~(~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.a, u_input.e, u_input.b), vec4<i32>(u_input.b, 74378i, 40903i, -1i)))), func_5(Struct_3(Struct_1(func_1(), u_input.c.yy, _wgslsmith_f_op_f32(floor(var_0.x)), -2147483647i), !any(vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, true, true), ~vec2<u32>(u_input.c.x, u_input.c.x), -1000f, u_input.d))), _wgslsmith_mod_vec3_i32(select(_wgslsmith_mult_vec3_i32(-vec3<i32>(-51090i, u_input.b, -1i), select(vec3<i32>(u_input.b, -1i, u_input.a), vec3<i32>(1i, u_input.b, 2147483647i), false)), vec3<i32>(u_input.b, u_input.e, 0i) ^ vec3<i32>(u_input.d, -8769i, u_input.d), true), vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(u_input.b, u_input.e, u_input.e))));
    let var_2 = false;
    let var_3 = func_6(abs(firstLeadingBit(vec4<i32>(var_1.d, 1i, 1i, 2147483647i)) | -_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_1.d, -3364i, 2147483647i), vec4<i32>(-2147483647i, var_1.d, var_1.d, u_input.e))), func_5(Struct_3(var_1, (true | var_2) & true, Struct_1(select(var_1.a, vec4<bool>(var_2, false, var_1.a.x, var_2), var_1.a.x), u_input.c.zx, _wgslsmith_div_f32(var_1.c, -192f), -27790i))), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(38202i, 2147483647i) << (var_1.b % vec2<u32>(32u)), select(vec2<i32>(var_1.d, u_input.b), vec2<i32>(-8297i, -9225i), true)), -43902i, var_1.d));
    let var_4 = vec4<f32>(402f, _wgslsmith_f_op_f32(round(var_3.c)), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(909f * _wgslsmith_f_op_f32(-var_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-540f, var_1.c, false)))))));
    let var_5 = Struct_2(Struct_1(vec4<bool>(var_1.a.x, false, true, !any(vec2<bool>(true, var_1.a.x))), func_5(Struct_3(var_3, true, Struct_1(var_1.a, vec2<u32>(0u, u_input.c.x), -1382f, 2147483647i))).c.b, -1374f, u_input.a), Struct_1(!vec4<bool>(var_2 || var_2, true, false, func_6(vec4<i32>(-18032i, var_3.d, var_3.d, u_input.a), Struct_3(var_3, var_2, var_3), vec3<i32>(var_3.d, 14355i, 0i)).a.x), var_3.b, _wgslsmith_f_op_f32(round(var_0.x)), u_input.a));
    global1 = var_4.x;
    let var_6 = func_5(Struct_3(Struct_1(var_3.a, vec2<u32>(1u, ~14073u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-292f)), _wgslsmith_div_f32(var_1.c, 782f)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_1.d, var_3.d, -71609i), _wgslsmith_div_i32(39646i, 713i))), true, func_5(func_5(Struct_3(Struct_1(vec4<bool>(var_3.a.x, true, false, var_3.a.x), vec2<u32>(u_input.c.x, 438u), var_5.b.c, var_1.d), false, var_5.a))).c));
    global1 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), _wgslsmith_f_op_f32(var_5.b.c + var_5.a.c), var_1.d);
}

