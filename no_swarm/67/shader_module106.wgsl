struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(Struct_3(vec3<bool>(false, false, false), vec3<f32>(416f, 1000f, -202f), vec2<bool>(false, true), 0u), false), Struct_5(Struct_3(vec3<bool>(false, true, false), vec3<f32>(-526f, -748f, 1992f), vec2<bool>(false, true), 1u), false), Struct_5(Struct_3(vec3<bool>(true, true, true), vec3<f32>(-253f, -420f, -1176f), vec2<bool>(false, true), 0u), false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<f32> {
    var var_0 = Struct_5(Struct_3(vec3<bool>(false, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(min(541f, -1347f)), 1188f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(142f, -138f, -240f))))), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, false)), 63445u), false);
    var_0 = global0[_wgslsmith_index_u32(~(~0u), 3u)];
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -188f));
    var var_2 = ~reverseBits(~arg_0.x);
    var_2 = 0u;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), -881f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.a.b.x, _wgslsmith_f_op_f32(1000f + var_0.a.b.x))))), var_0.a.b.x));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<f32>) -> vec4<f32> {
    var var_0 = Struct_4(~(vec2<u32>(~arg_2, arg_2) ^ ~select(vec2<u32>(0u, 67976u), vec2<u32>(18567u, 100401u), vec2<bool>(true, false))), false);
    let var_1 = -567f;
    var var_2 = arg_0;
    global0 = array<Struct_5, 3>();
    var var_3 = Struct_4(~(~abs(countOneBits(vec2<u32>(arg_2, 4294967295u)))), true);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1 + 121f), _wgslsmith_f_op_f32(arg_3.x - arg_3.x), -815f, 245f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3 * arg_3), arg_3))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, arg_0, 506f, 1023f) + vec4<f32>(-616f, arg_3.x, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(select(arg_3, arg_3, vec4<bool>(var_3.b, var_3.b, true, true)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1005f, -1000f, -1886f)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(trunc(-938f)), ~(arg_0.yyy ^ -vec3<i32>(2147483647i, u_input.c, arg_0.x)), _wgslsmith_mod_u32(~arg_1.a.x >> (reverseBits(_wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x)) % 32u), 1u), _wgslsmith_f_op_vec4_f32(func_3(arg_1.a.xz))));
    global0 = array<Struct_5, 3>();
    let var_1 = global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(~arg_1.a.yzw, ~vec3<u32>(10397u, arg_1.a.x ^ 45835u, abs(59310u))), ~(0u << (_wgslsmith_clamp_u32(arg_1.a.x, arg_1.a.x, arg_1.a.x) % 32u)) | 5906u), 3u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(var_0))));
    let var_3 = vec4<u32>(114127u, arg_1.a.x, ~1u, arg_1.a.x);
    return countOneBits(_wgslsmith_add_vec3_u32(arg_1.a.xwx | countOneBits(arg_1.a.wwx), ~vec3<u32>(19662u, arg_1.a.x, var_3.x))) & vec3<u32>(abs(~_wgslsmith_dot_vec3_u32(var_3.wxz, vec3<u32>(arg_1.a.x, 34472u, 1u))), var_1.a.d, ~0u ^ var_3.x);
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = i32(-1i) * -1i;
    var var_1 = Struct_5(Struct_3(!vec3<bool>(all(vec3<bool>(false, false, true)), false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -713f, 249f)))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), ~arg_1.x), true);
    var_0 = abs(u_input.b.x);
    let var_2 = var_1.a.b.x;
    let var_3 = Struct_2(Struct_1(vec4<u32>(~(~arg_3), ~_wgslsmith_div_u32(1u, var_1.a.d), var_1.a.d, select(firstTrailingBit(var_1.a.d), func_2(vec4<i32>(arg_0, u_input.c, arg_0, arg_0), Struct_1(vec4<u32>(arg_3, arg_3, arg_1.x, arg_3))).x, true))), u_input.a.x, Struct_1(vec4<u32>(11860u, arg_3, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 7090u), max(vec2<u32>(var_1.a.d, arg_1.x), arg_1.yy)), abs(~4294967295u))), u_input.d.zwz);
    return Struct_2(Struct_1(abs(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, arg_3, arg_3, 4294967295u), vec4<u32>(4005u, arg_3, var_1.a.d, arg_1.x))))), -2147483647i, Struct_1(vec4<u32>(select(_wgslsmith_clamp_u32(var_1.a.d, arg_3, 27393u), 4294967295u >> (1u % 32u), !var_1.b), var_1.a.d, 26702u, 53419u >> (max(1u, var_1.a.d) % 32u))), vec3<i32>(-42198i, firstTrailingBit(1i), _wgslsmith_sub_i32(26641i, -1i)));
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global0 = array<Struct_5, 3>();
    let var_0 = arg_0.a;
    let var_1 = 1u;
    var var_2 = reverseBits(arg_0.a.a.xxw) ^ var_0.a.zyy;
    global0 = array<Struct_5, 3>();
    return func_5(~(~(-2147483647i)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_1, 93206u) << (var_0.a.x % 32u), 70266u), ~4294967295u, 7009u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(225f, 1000f, 375f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1882f, -357f, -956f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), min(var_0.a.x, var_0.a.x));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = func_6(func_5(1i, func_2(select(vec4<i32>(u_input.c, u_input.d.x, u_input.a.x, u_input.c) << (vec4<u32>(43194u, 12645u, 34906u, 1u) % vec4<u32>(32u)), u_input.d, select(arg_0, arg_0, false)), Struct_1(vec4<u32>(60078u, 4294967295u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2402f, 215f)))))), _wgslsmith_add_u32(18066u, 1u)), arg_0.x);
    var var_1 = Struct_4(max(vec2<u32>(firstTrailingBit(var_0.a.a.x ^ var_0.a.a.x), ~var_0.a.a.x), _wgslsmith_mult_vec2_u32(var_0.c.a.ww, _wgslsmith_add_vec2_u32(var_0.c.a.zy, _wgslsmith_add_vec2_u32(var_0.c.a.yz, vec2<u32>(6868u, var_0.a.a.x))))), false);
    let var_2 = 4294967295u;
    var_1 = Struct_4(vec2<u32>(var_2, ~_wgslsmith_clamp_u32(var_2, var_1.a.x, var_0.a.a.x) & 11507u), arg_0.x);
    var_0 = Struct_2(Struct_1(select(~var_0.c.a, ~vec4<u32>(35515u, var_0.a.a.x, var_2, var_0.a.a.x) & vec4<u32>(var_2, var_1.a.x, var_2, var_2), !vec4<bool>(arg_0.x, arg_0.x, var_1.b, var_1.b))), ~var_0.d.x, func_6(func_6(func_5(u_input.d.x, var_0.c.a.yyw, vec3<f32>(-825f, -757f, -366f), 3127u), var_1.b), true).c, firstLeadingBit(u_input.b));
    return _wgslsmith_f_op_vec4_f32(func_3(~vec2<u32>(68716u, _wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, var_0.c.a.x)) | var_1.a)).x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 3>();
    var var_0 = Struct_1(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(97850u, 1u, 12750u, 21705u), vec4<u32>(1u, 44080u, 25332u, 55400u)))));
    global0 = array<Struct_5, 3>();
    var var_1 = Struct_3(vec3<bool>(true, !(!all(vec3<bool>(true, false, true))), select(select(true, true, true), u_input.b.x != -2147483647i, all(vec2<bool>(true, false))) && select(any(vec4<bool>(false, false, false, false)), true, all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1163f + -773f)), _wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f + 409f) * _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, false, false)))))), select(vec2<bool>(true, false), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), false), vec2<bool>(true, true)), _wgslsmith_clamp_u32(~var_0.a.x & ~60734u, firstLeadingBit(var_0.a.x) << (~var_0.a.x % 32u), ~(~var_0.a.x)) << (~var_0.a.x % 32u));
    var_0 = func_5(1i, ~vec3<u32>(~21309u, var_1.d, func_2(select(vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c), vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, -1i), vec4<bool>(true, true, var_1.a.x, var_1.a.x)), Struct_1(var_0.a)).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.b, var_1.b))), _wgslsmith_div_u32(~(~_wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, 0u)), 1492u)).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_0.a.x, ~4294967295u, 59145u, abs(~var_1.d)), _wgslsmith_clamp_u32(~func_2(firstTrailingBit(vec4<i32>(u_input.c, 38386i, 2147483647i, u_input.a.x)), Struct_1(vec4<u32>(var_0.a.x, 34089u, var_1.d, var_0.a.x))).x, ~(~var_1.d), 1u), var_1.b.xz, _wgslsmith_sub_u32(var_0.a.x, var_0.a.x & _wgslsmith_sub_u32(4294967295u, var_0.a.x)));
}

