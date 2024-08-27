struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = ~1i;
    var_0 = ~u_input.a.x;
    return _wgslsmith_dot_vec4_i32(u_input.a, abs(vec4<i32>(arg_1.e, ~(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(~u_input.a.x, arg_1.a.x), abs(countOneBits(arg_0.a.x)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = 3001u;
    let var_1 = arg_0.d;
    var var_2 = Struct_1(-1250f);
    var var_3 = !any(vec4<bool>(true, true, true, true));
    var var_4 = arg_2.x;
    return abs(arg_2.x);
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<i32>(~13888i, (i32(-1i) * -firstTrailingBit(-53486i)) << (~(~(~1u)) % 32u));
    let var_1 = vec2<u32>(func_3(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, var_0.x), ~vec3<u32>(80169u, 28881u, 73215u), ~4294967295u, Struct_1(-589f), ~7708i), Struct_1(_wgslsmith_f_op_f32(-1010f - -342f)), vec4<u32>(1u, 1u, 1u, 1u)), 48630u) >> ((vec2<u32>(1u, 1u) ^ ~vec2<u32>(4294967295u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u))) % vec2<u32>(32u));
    var_0 = u_input.a.ww;
    let var_2 = Struct_2(max(u_input.a.xzw, vec3<i32>(18626i, -u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), u_input.a.zx))) ^ (select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -45738i), vec3<i32>(u_input.a.x, u_input.a.x, -18965i)), vec3<i32>(u_input.a.x, 2147483647i, 1i), select(true, true, true)) | u_input.a.yxz), ~vec3<u32>(~(13132u | var_1.x), var_1.x, ~var_1.x), 3895u, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1433f)), _wgslsmith_f_op_f32(sign(1f)))), ~(i32(-1i) * -15754i));
    var var_3 = !(!(!(_wgslsmith_f_op_f32(var_2.d.a - -561f) < _wgslsmith_f_op_f32(f32(-1f) * -1738f))));
    return Struct_4(-614f);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = ~abs(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(89562u, 430u, 39724u), 1u));
    let var_1 = any(select(select(vec4<bool>(any(vec4<bool>(false, true, true, false)), -77006i <= u_input.a.x, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), true), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -1496f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-578f, -370f)))));
    var var_3 = arg_2.x;
    var_3 = 52606i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-553f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<u32>) -> f32 {
    let var_0 = arg_2.d;
    var var_1 = vec4<bool>(true, false, true, !arg_2.e);
    let var_2 = ~abs(var_0.a);
    let var_3 = Struct_2(~(-(vec3<i32>(2147483647i, u_input.a.x, -2147483647i) << ((arg_3 >> (vec3<u32>(arg_3.x, var_0.b.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)))), ~(vec3<u32>(~4294967295u, arg_2.a.x, firstTrailingBit(116924u)) | (reverseBits(vec3<u32>(arg_2.d.b.x, var_0.b.x, 30895u)) | ~vec3<u32>(48372u, arg_3.x, arg_3.x))), 1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a * -862f), 741f, true)))), select(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(reverseBits(u_input.a.x), _wgslsmith_mod_i32(1i, 20158i)), 2147483647i), false));
    var var_4 = arg_2.d;
    return arg_2.d.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1594f * -408f);
    let var_1 = ~vec3<i32>(_wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 2147483647i)) << (~1u % 32u), max(-1i, func_1(Struct_2(u_input.a.yww, vec3<u32>(43271u, 1u, 38492u), 2826u, Struct_1(-1052f), u_input.a.x), Struct_2(u_input.a.zww, vec3<u32>(39320u, 46530u, 74812u), 26803u, Struct_1(1314f), u_input.a.x), Struct_2(vec3<i32>(-1606i, u_input.a.x, -64999i), vec3<u32>(11099u, 4294967295u, 1u), 18168u, Struct_1(430f), u_input.a.x))), u_input.a.x | -21141i);
    let var_2 = -1000f;
    var_0 = var_2;
    var var_3 = _wgslsmith_f_op_f32(func_5(func_4(Struct_1(var_2), u_input.a.x, reverseBits(u_input.a), func_2()), !select(vec4<bool>(all(vec3<bool>(true, false, true)), false, all(vec4<bool>(true, true, false, false)), all(vec3<bool>(false, false, true))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), Struct_3(~min(reverseBits(vec4<u32>(4294967295u, 12132u, 4294967295u, 65161u)), ~vec4<u32>(51623u, 12769u, 17877u, 1u)), select(true, var_2 <= _wgslsmith_f_op_f32(var_2 + -1205f), any(vec4<bool>(false, false, false, true))), vec2<f32>(-1531f, 1000f), Struct_2(_wgslsmith_sub_vec3_i32(~u_input.a.xwy, var_1), countOneBits(reverseBits(vec3<u32>(48076u, 27413u, 0u))), countOneBits(1u), Struct_1(1498f), -4024i), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), all(vec3<bool>(false, true, true))))), vec3<u32>(1u, max(54736u, ~82821u), ~(~_wgslsmith_add_u32(1493u, 42930u)))));
    let var_4 = ~min(52658u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 18631u, 0u), vec3<u32>(4294967295u, 72102u, 0u)), ~0u));
    var var_5 = ~(~vec3<u32>(var_4 ^ var_4, ~1u, ~4294967295u)) >> ((vec3<u32>(19383u, 0u, var_4) >> (~((vec3<u32>(var_4, var_4, var_4) ^ vec3<u32>(4294967295u, 7379u, 24890u)) << ((vec3<u32>(var_4, var_4, var_4) << (vec3<u32>(0u, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-168f, var_2, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(207f * var_2) + _wgslsmith_f_op_f32(var_2 * -421f)))), -225f)), var_2);
}

