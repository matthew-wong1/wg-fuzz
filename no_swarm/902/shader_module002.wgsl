struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = u_input.a.xyy;
    global0 = array<u32, 8>();
    let var_1 = Struct_1(true, firstLeadingBit(firstLeadingBit(abs(vec3<u32>(15553u, 4294967295u, global0[_wgslsmith_index_u32(u_input.b, 8u)]))) ^ _wgslsmith_div_vec3_u32(~u_input.c, _wgslsmith_mult_vec3_u32(vec3<u32>(34194u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 8u)]), u_input.c))), ~firstTrailingBit(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 8u)] << (u_input.b % 32u))), select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true))), select(vec4<bool>(any(vec3<bool>(true, false, true)), select(true, false, true), true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, false)), !(-2147483647i < var_0.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true)), u_input.c.zx);
    var var_2 = -230f;
    var var_3 = Struct_2(var_1, _wgslsmith_add_i32(var_0.x | 1i, -2754i), vec4<f32>(_wgslsmith_f_op_f32(select(1590f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(241f, -548f)))), true)), -322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2607f, 126f), _wgslsmith_f_op_f32(-472f + -154f)))), _wgslsmith_f_op_f32(1969f + _wgslsmith_f_op_f32(step(-616f, 257f)))), _wgslsmith_f_op_f32(step(1586f, 501f)));
    return _wgslsmith_add_u32(var_3.a.c, 1u);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = Struct_1(false, vec3<u32>(_wgslsmith_mult_u32(arg_0.a.e.x, ~0u), 4252u | arg_2.a.e.x, 1u), ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(func_3(), 8u)], arg_2.a.c), !select(!select(vec4<bool>(false, arg_0.a.a, arg_1.x, false), vec4<bool>(false, false, true, arg_0.a.a), vec4<bool>(arg_1.x, false, true, arg_1.x)), vec4<bool>(u_input.c.x < 1913u, select(false, arg_1.x, arg_2.a.a), true, true), arg_2.a.d), vec2<u32>(~0u, 0u));
    var var_1 = Struct_2(arg_0.a, _wgslsmith_dot_vec2_i32(u_input.e << (~select(u_input.c.zy, vec2<u32>(arg_0.a.b.x, arg_0.a.b.x), true) % vec2<u32>(32u)), u_input.e), _wgslsmith_f_op_vec4_f32(round(arg_0.c)), arg_2.d);
    var_1 = arg_0;
    var_1 = arg_2;
    var var_2 = ~vec3<u32>(4294967295u, reverseBits(arg_2.a.e.x), select(~61774u, firstLeadingBit(u_input.c.x), all(vec2<bool>(true, var_0.d.x)))) << (~_wgslsmith_clamp_vec3_u32(min(u_input.c, vec3<u32>(4294967295u, 1u, u_input.b)), vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, arg_0.a.e.x, arg_0.a.c), 8u)], ~11530u, _wgslsmith_mult_u32(arg_2.a.e.x, 1u)), _wgslsmith_add_vec3_u32(var_1.a.b << (vec3<u32>(0u, var_1.a.c, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]) % vec3<u32>(32u)), u_input.c)) % vec3<u32>(32u));
    return _wgslsmith_div_vec4_f32(var_1.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_2.c)), var_1.c));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(!any(vec3<bool>(false, true, true)), vec3<u32>(37007u, 1u, u_input.b) | ~vec3<u32>(u_input.c.x, 1u, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), ~func_3(), vec4<bool>(true, false, true, true), reverseBits(min(u_input.c.zx, vec2<u32>(u_input.b, 4294967295u)))), u_input.a.x, vec4<f32>(-738f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(962f, -821f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(2590f, -164f, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -802f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(807f - -555f), _wgslsmith_f_op_f32(step(-957f, -381f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2049f)), !any(vec3<bool>(true, true, true))))), !vec2<bool>(~u_input.b > ~global0[_wgslsmith_index_u32(76547u, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -142f) <= _wgslsmith_f_op_f32(round(308f))), Struct_2(Struct_1(true, _wgslsmith_div_vec3_u32(abs(u_input.c), vec3<u32>(16394u, u_input.b, 4294967295u) | vec3<u32>(u_input.c.x, 0u, 49444u)), ~global0[_wgslsmith_index_u32(u_input.c.x, 8u)], !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 8u)]), u_input.c.zy), abs(u_input.c.xz))), -_wgslsmith_mult_i32(u_input.d, 1i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1272f)) + _wgslsmith_f_op_f32(128f + 1831f)) - -1479f))));
    var var_1 = -(~u_input.a);
    var var_2 = Struct_1(true, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 8u)], 8u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26438u, 8u)], 8u)], ~1u), ~vec3<u32>(u_input.c.x, 53098u, global0[_wgslsmith_index_u32(3971u, 8u)])), vec3<u32>(4294967295u, u_input.c.x, ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(7268u, 8u)], 27040u))), firstTrailingBit(27961u), !(!vec4<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)), true, select(true, true, false))), countOneBits(u_input.c.yy));
    var var_3 = Struct_1(var_2.d.x, abs(vec3<u32>(u_input.b, func_3(), 12553u)), max(~1u, 0u), !vec4<bool>(true, false, true, all(var_2.d.www)), firstLeadingBit(vec2<u32>(~(global0[_wgslsmith_index_u32(4294967295u, 8u)] & 19422u), var_2.b.x)));
    var var_4 = Struct_1(select(u_input.c.x, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.e, var_2.b.zx), 8u)], !var_2.d.x) <= 46846u, var_2.b, ~(~func_3()), !var_3.d, ~min(~abs(vec2<u32>(11361u, 4294967295u)), var_3.e));
    return _wgslsmith_dot_vec4_i32(min(countOneBits(u_input.a), reverseBits(u_input.a)), u_input.a) > min(_wgslsmith_add_i32(1i, -13857i), min(~19038i, -var_1.x));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(i32(-1i) * -u_input.e.x, u_input.d) << (78308u % 32u);
    global0 = array<u32, 8>();
    var var_1 = Struct_1(!(!func_2()), abs(firstLeadingBit(u_input.c)), arg_1.x, vec4<bool>(!func_2(), !select(true, false, false), ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.b, 8u)], 8u)] < arg_1.x, true), u_input.c.yy);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1258f + _wgslsmith_f_op_f32(f32(-1f) * -1259f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-280f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -2067f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + arg_0))))));
    var var_3 = vec3<f32>(var_2.x, 529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(368f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-var_2.x))) - 474f));
    return Struct_1(var_1.a, u_input.c, _wgslsmith_mult_u32(25277u, global0[_wgslsmith_index_u32(arg_1.x | _wgslsmith_dot_vec2_u32(~vec2<u32>(17623u, 25428u), vec2<u32>(98246u, arg_1.x) | var_1.e), 8u)]), var_1.d, var_1.b.yz);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f - 869f) + _wgslsmith_f_op_f32(287f - -867f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 779f))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_1.c), vec2<u32>(arg_0.x, 1u) ^ arg_0.zx), ~_wgslsmith_sub_vec2_u32(u_input.c.zy, vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(arg_0.x, 8u)])))), max(min(~(u_input.a.x | -2147483647i), countOneBits(2147483647i)), -u_input.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1865f, -294f, 167f, 188f) * vec4<f32>(1290f, 1030f, -602f, 116f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1300f, 1173f, -1223f, -2008f), vec4<f32>(255f, -111f, -970f, 1223f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1262f, -1090f, -373f, 184f), vec4<f32>(1283f, 1122f, -1493f, -848f), !arg_1.d)))), -808f);
    var var_1 = -vec4<i32>(38288i, -u_input.d, -66847i, 1i ^ var_0.b);
    let var_2 = Struct_2(func_1(-1891f, countOneBits(var_0.a.e)), -1i, vec4<f32>(var_0.c.x, var_0.d, _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -488f))), _wgslsmith_f_op_f32(-632f * _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-var_0.c.x));
    let var_3 = firstLeadingBit(vec3<i32>(select(-2147483647i, -1142i, var_2.a.a), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.e.x), -vec2<i32>(var_2.b, var_2.b))), var_0.b));
    let var_4 = Struct_1(any(arg_1.d.yx), _wgslsmith_add_vec3_u32(arg_0.yyz, ~(~(~vec3<u32>(69708u, 21913u, 73963u)))), 0u, vec4<bool>(false, !any(select(vec4<bool>(var_0.a.a, false, arg_1.a, true), var_0.a.d, var_0.a.d)), !func_2(), !(!any(vec2<bool>(var_2.a.a, var_2.a.a)))), vec2<u32>(0u, firstTrailingBit(49906u)));
    return func_1(var_0.c.x, vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 30224u, var_2.a.e.x, 0u), arg_0)) | _wgslsmith_mult_u32(var_2.a.c, 4294967295u), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<u32>(_wgslsmith_add_u32(1u, u_input.b), 1u, 1u, ~4294967295u), func_1(_wgslsmith_f_op_f32(-673f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2010f), -238f)), vec2<u32>(0u | u_input.b, _wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(u_input.c.x, 8u)])) << (u_input.c.zx % vec2<u32>(32u))));
    var var_1 = vec3<u32>(abs(25864u), max(var_0.b.x, _wgslsmith_sub_u32(13717u, _wgslsmith_mult_u32(~0u, ~4294967295u))), u_input.c.x);
    var var_2 = u_input.b << (_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(func_1(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(var_0.a, vec3<u32>(4294967295u, u_input.c.x, var_0.c), var_0.c, var_0.d, u_input.c.zy), -26417i, vec4<f32>(-637f, -1007f, 557f, -1142f), 1000f), var_0.d.zz, Struct_2(Struct_1(true, vec3<u32>(global0[_wgslsmith_index_u32(5474u, 8u)], 0u, 0u), var_0.c, vec4<bool>(true, false, var_0.d.x, true), u_input.c.zy), u_input.e.x, vec4<f32>(477f, 708f, -897f, -108f), 868f))).x, ~var_1.xy).b.x, ~(1u ^ global0[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_0.e.x, global0[_wgslsmith_index_u32(u_input.b, 8u)])) ^ firstLeadingBit(var_1.x))) % 32u);
    let var_3 = var_0.d;
    let var_4 = Struct_2(Struct_1(var_3.x, abs(vec3<u32>(~var_0.c, ~var_0.b.x, var_1.x)), u_input.c.x, !select(!var_0.d, vec4<bool>(var_3.x, false, var_3.x, var_0.a), !var_3), ~var_1.xy), u_input.e.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(2590f, _wgslsmith_f_op_f32(trunc(276f)), -165f, 500f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, -399f, 1000f, 1000f))), vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(-1536f)), 947f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(113f, 295f))))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -496f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1417f) + _wgslsmith_f_op_f32(sign(1270f))), func_5(vec4<u32>(var_1.x, 0u, 4294967295u, var_0.e.x), Struct_1(true, var_0.b, 8281u, var_3, vec2<u32>(4294967295u, 0u))).d.x & true)) + _wgslsmith_f_op_f32(floor(-404f))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.c.x - var_4.c.x), 302f)), ((~(-30951i) >> ((u_input.c.x ^ global0[_wgslsmith_index_u32(var_0.b.x, 8u)]) % 32u)) & -71583i) << (global0[_wgslsmith_index_u32(31572u, 8u)] % 32u), _wgslsmith_f_op_vec3_f32(round(var_4.c.zwz)));
}

