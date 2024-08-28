struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.a;
    var var_1 = u_input.e;
    var_0 = all(vec2<bool>(true, true));
    let var_2 = min(2147483647i, _wgslsmith_clamp_i32(~39561i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, u_input.c), min(u_input.a << (arg_0.zx % vec2<u32>(32u)), u_input.a)), u_input.a.x ^ 78422i));
    var var_3 = ~(~((vec4<u32>(var_1.x, var_1.x, 20620u, u_input.e.x) >> (u_input.e % vec4<u32>(32u))) & (u_input.e >> ((vec4<u32>(0u, u_input.e.x, arg_0.x, u_input.b.x) & vec4<u32>(4294967295u, var_1.x, 1u, u_input.b.x)) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1484f, _wgslsmith_f_op_f32(ceil(3245f))) + _wgslsmith_f_op_f32(103f + -128f))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(countOneBits(vec3<u32>(4294967295u, arg_0, 1u)), Struct_3(true))), -848f, _wgslsmith_f_op_f32(276f - -137f), _wgslsmith_f_op_f32(min(169f, _wgslsmith_f_op_f32(trunc(175f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) * _wgslsmith_f_op_f32(-620f + -664f))), _wgslsmith_f_op_f32(162f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1322f, 915f))), 519f, 323f));
    var var_1 = Struct_2(~10643u, -reverseBits(vec3<i32>(1i, ~1i, min(-1i, u_input.a.x))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(-u_input.c, !all(vec4<bool>(true, true, true, true)), var_0.ywy), Struct_1(i32(-1i) * -_wgslsmith_mult_i32(u_input.c, u_input.d), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -1000f), vec3<f32>(-687f, -1646f, _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    var_1 = Struct_2(~(~0u), vec3<i32>(-1i) * -var_1.b, !vec4<bool>(any(var_1.c), true, !(!var_1.e.b), var_1.e.b), Struct_1(-(~u_input.c), all(select(select(vec4<bool>(false, var_1.e.b, var_1.d.b, false), var_1.c, true), select(vec4<bool>(true, var_1.c.x, true, true), var_1.c, var_1.c), !var_1.e.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -1346f, -2028f), var_0.ywx)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.c.x, var_1.d.c.x, -127f) - vec3<f32>(-451f, -1000f, var_1.e.c.x))), _wgslsmith_f_op_vec3_f32(var_1.e.c * var_1.e.c))), Struct_1(_wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(var_1.e.a, 2278i, _wgslsmith_clamp_i32(var_1.e.a, var_1.b.x, 1i))), var_1.a == _wgslsmith_sub_u32(arg_0, 9041u), _wgslsmith_f_op_vec3_f32(-var_0.zzx)));
    let var_2 = -reverseBits(min(var_1.e.a, reverseBits(23469i))) | _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i ^ u_input.c, -6084i, firstLeadingBit(var_1.e.a)), vec4<i32>(-10406i, 1i, -var_1.b.x, u_input.c << (4294967295u % 32u))), u_input.c);
    var var_3 = min(abs(reverseBits(~select(u_input.e, vec4<u32>(4446u, 20508u, 99321u, arg_0), vec4<bool>(false, true, var_1.e.b, false)))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(~var_1.a, 0u << (var_1.a % 32u)), ~(~arg_0)), _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), ~u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(var_1.a), var_1.a), min(abs(0u), 71958u))));
    return Struct_3(any(select(vec4<bool>(false, var_1.d.b, false, true), vec4<bool>(false, var_1.d.b, false, true), false)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(max(~abs(4294967295u), arg_1) >> (_wgslsmith_mod_u32(~abs(arg_1), _wgslsmith_div_u32(u_input.b.x >> (4294967295u % 32u), abs(16178u))) % 32u), vec3<i32>(abs(u_input.d), -((i32(-1i) * -1i) << (arg_1 % 32u)), 8673i | u_input.d), vec4<bool>(!arg_0, arg_0, arg_2.a, arg_2.a), Struct_1(-u_input.d, arg_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-552f, -638f, -265f) - vec3<f32>(-157f, -760f, -136f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-977f, 1615f, 208f) * vec3<f32>(-621f, 277f, -284f)), _wgslsmith_div_vec3_f32(vec3<f32>(1357f, 166f, -564f), vec3<f32>(201f, -147f, 973f))))))), Struct_1(_wgslsmith_sub_i32(i32(-1i) * -2253i, ~(-1i)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1502f), -1085f, -1199f))));
    var var_1 = u_input.e.x;
    var_1 = ~(~_wgslsmith_dot_vec2_u32(~select(u_input.b.yz, u_input.b.xx, var_0.c.yx), vec2<u32>(u_input.e.x ^ u_input.e.x, u_input.e.x)));
    let var_2 = any(!var_0.c.xzw);
    let var_3 = vec2<f32>(-1145f, var_0.e.c.x);
    return func_2(_wgslsmith_clamp_u32(~29001u >> (var_0.a % 32u), 1u, ~firstTrailingBit(var_0.a)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> Struct_3 {
    let var_0 = arg_0;
    var var_1 = abs(_wgslsmith_div_u32(~u_input.e.x, u_input.e.x));
    let var_2 = arg_2;
    var var_3 = vec4<bool>((1i > abs(-arg_2)) | var_0.a, true, true, arg_0.a);
    var_1 = min(_wgslsmith_sub_u32(~1u, abs(abs(min(4294967295u, 22242u)))), ~4294967295u);
    return Struct_3(all(select(var_3.ww, var_3.zx, vec2<bool>(true, true))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> StorageBuffer {
    let var_0 = func_5(func_4(true, max(u_input.e.x, 61864u | u_input.e.x), func_2(abs(firstLeadingBit(u_input.e.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(999f, 471f), _wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(trunc(-1780f)), _wgslsmith_f_op_f32(735f * 1060f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, 638f, 1622f, 1425f)) + vec4<f32>(_wgslsmith_f_op_f32(round(-1418f)), _wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_f_op_f32(min(742f, 1252f)), -978f)), arg_2)), 0i, -1301f);
    let var_1 = func_2(u_input.e.x);
    var var_2 = vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x), ~firstTrailingBit(17796u))), 0u, ~88950u, ~u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(select(141f, 1096f, !(26657u <= u_input.b.x)));
    var_2 = ~u_input.e;
    return StorageBuffer(4294967295u, _wgslsmith_sub_vec3_u32(var_2.xwx >> (var_2.xyx % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_u32(var_2.zyx, abs(vec3<u32>(var_2.x, u_input.e.x, u_input.b.x))), ~var_2.wxz, all(!vec2<bool>(false, arg_1)))), ~arg_0.x, countOneBits(vec2<u32>(1u, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 33631u;
    var_0 = u_input.b.x;
    let var_1 = vec2<bool>(any(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true))), _wgslsmith_mod_u32(~abs(u_input.e.x), u_input.b.x) != 4294967295u);
    let var_2 = var_1.x;
    let var_3 = Struct_3(true);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f))), 1347f);
    let x = u_input.a;
    s_output = func_1(vec4<i32>(u_input.c, u_input.c >> (abs(_wgslsmith_mult_u32(0u, u_input.b.x)) % 32u), u_input.c, u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-562f + -416f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(853f))))) != 233f, true);
}

