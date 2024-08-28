struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(select(vec3<bool>(any(vec2<bool>(true, true)), false, true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true)), vec3<bool>(true, all(vec2<bool>(false, true)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), select(true, false, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-722f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f))))), _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) + _wgslsmith_f_op_f32(max(-935f, -1000f))) * -1127f), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(var_0.b + 2316f))));
    let var_2 = Struct_2(Struct_1(vec2<i32>(-1i, reverseBits(var_0.c)), _wgslsmith_f_op_f32(-var_0.b), !(!(!vec3<bool>(false, var_0.d, true)))), u_input.d, Struct_1(max(u_input.d.yz, -u_input.d.yy), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.b)))), select(select(vec3<bool>(false, var_0.a.x, false), var_0.a, any(vec3<bool>(var_0.a.x, false, var_0.d))), vec3<bool>(!var_0.d, var_0.d, false), !(!var_0.a))));
    var var_3 = Struct_4(vec4<bool>(true, all(vec4<bool>(var_0.a.x, true, var_0.d, true)), _wgslsmith_f_op_f32(-var_1.x) <= 1f, false), u_input.d.xz, select(select(!vec4<bool>(var_2.a.c.x, false, true, true), vec4<bool>(true, var_0.a.x, var_0.b != var_2.a.b, u_input.a.x <= var_0.c), true), select(select(select(vec4<bool>(var_2.c.c.x, true, var_2.a.c.x, var_2.a.c.x), vec4<bool>(false, var_2.a.c.x, false, false), vec4<bool>(var_2.a.c.x, false, var_0.a.x, false)), !vec4<bool>(true, false, var_0.a.x, var_2.a.c.x), vec4<bool>(var_2.a.c.x, true, var_2.a.c.x, var_0.a.x)), !vec4<bool>(var_0.a.x, false, var_0.a.x, false), !select(vec4<bool>(false, false, true, var_0.d), vec4<bool>(false, true, var_0.a.x, false), vec4<bool>(var_2.c.c.x, var_0.d, var_2.c.c.x, var_2.c.c.x))), (var_2.b.x | _wgslsmith_dot_vec4_i32(vec4<i32>(3432i, u_input.d.x, 1i, u_input.a.x), vec4<i32>(23507i, -2147483647i, u_input.a.x, 39568i))) >= -2726i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b - 1916f), _wgslsmith_f_op_f32(sign(-1255f)))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d - 575f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) + _wgslsmith_div_f32(var_3.d, 633f))))), -722f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b)) + _wgslsmith_f_op_f32(-158f - var_0.b)))), 975f);
    return 9086i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(-(vec2<i32>(arg_0.a.x, 1i) | ~vec2<i32>(var_0.a.x, u_input.a.x))), vec2<i32>(_wgslsmith_clamp_i32(var_0.a.x, func_3(), var_0.a.x), arg_0.a.x));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(min(arg_2.b.x, -38182i), 20769i), abs(-26846i));
    var_0 = -(~min(countOneBits(-u_input.d), select(u_input.d, vec3<i32>(arg_2.b.x, 0i, 23712i), !vec3<bool>(arg_0, arg_2.c.x, arg_0))));
    let var_1 = _wgslsmith_div_vec3_u32(u_input.c.wxy | ~(u_input.c.zyx << (vec3<u32>(4642u, 80243u, 12251u) % vec3<u32>(32u))), ~abs(min(~vec3<u32>(arg_1.x, 0u, u_input.e), ~vec3<u32>(u_input.e, 1u, arg_1.x))));
    let var_2 = !(!vec2<bool>(false, all(arg_2.c.zzx)));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d - arg_2.d))), arg_2.d, !all(select(vec3<bool>(true, arg_0, arg_0), arg_2.a.zwx, var_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1429f)));
    return Struct_1(vec2<i32>(-25661i, _wgslsmith_clamp_i32(arg_2.b.x, arg_2.b.x, 0i)), 630f, vec3<bool>(false, arg_2.c.x, arg_2.c.x));
}

fn func_1() -> u32 {
    let var_0 = 2147483647i;
    let var_1 = u_input.c.wwx;
    var var_2 = func_4(true, max(var_1.yx ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 1u), u_input.c.zz, vec2<u32>(1u, 1u)), var_1.yx) << (_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(var_1.x, 0u), u_input.c.zw) >> (countOneBits(var_1.yx) % vec2<u32>(32u)), u_input.c.xw) % vec2<u32>(32u)), Struct_4(vec4<bool>(func_2(Struct_1(u_input.a, 176f, vec3<bool>(true, true, true))) == ~0i, true, all(vec2<bool>(false, false)), select(var_1.x == 0u, true, var_1.x != 0u)), _wgslsmith_mod_vec2_i32(select(-vec2<i32>(2147483647i, 57627i), min(vec2<i32>(1i, u_input.d.x), u_input.d.yx), vec2<bool>(true, false)), u_input.d.xz), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-797f + 1408f), 447f, true))))));
    var var_3 = vec4<f32>(-427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(109f))), 2712f))), 415f, 1759f);
    return _wgslsmith_div_u32(1u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 40285u) ^ vec2<u32>(var_1.x, 89585u), vec2<u32>(4294967295u, u_input.e) << (u_input.c.xw % vec2<u32>(32u))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!vec3<bool>(u_input.e < func_1(), any(vec4<bool>(true, false, true, false)) | true, true), -794f, _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.d.x, u_input.d.x, 35924i), vec3<i32>(u_input.d.x, u_input.a.x, 0i)), vec3<i32>(-1i, 2147483647i, u_input.d.x)), vec3<i32>(u_input.d.x, select(u_input.a.x, _wgslsmith_div_i32(-57638i, u_input.d.x), true), 3732i)), true);
    var var_1 = Struct_5(u_input.e, ~(~countOneBits(_wgslsmith_add_vec4_u32(u_input.c, u_input.c))), _wgslsmith_f_op_f32(892f + -649f), Struct_4(select(!select(vec4<bool>(var_0.d, var_0.d, var_0.a.x, false), vec4<bool>(var_0.d, true, var_0.a.x, true), vec4<bool>(var_0.d, var_0.a.x, var_0.d, var_0.a.x)), select(select(vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(true, var_0.a.x, false, true), vec4<bool>(var_0.d, false, false, true)), select(vec4<bool>(var_0.d, true, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(false, true, var_0.a.x, true)), !vec4<bool>(var_0.d, true, true, true)), _wgslsmith_div_f32(var_0.b, -1000f) == _wgslsmith_f_op_f32(step(-857f, var_0.b))), _wgslsmith_div_vec2_i32(u_input.a | u_input.a, ~(u_input.a | u_input.a)), vec4<bool>(false, var_0.a.x, false, !var_0.d), var_0.b), false);
    var_1 = Struct_5(~_wgslsmith_div_u32(~u_input.c.x, 1u), vec4<u32>(20851u, var_1.a, var_1.a, _wgslsmith_clamp_u32(reverseBits(abs(u_input.e)), 0u, ~1u >> (u_input.e % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * var_1.d.d) + -2262f))), Struct_4(var_1.d.a, firstTrailingBit((vec2<i32>(1i, var_1.d.b.x) << (u_input.c.ww % vec2<u32>(32u))) & var_1.d.b), var_1.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + var_1.c) + -1296f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.d) - _wgslsmith_f_op_f32(-var_1.c)))), true);
    var var_2 = Struct_2(func_4(false, countOneBits(countOneBits(~var_1.b.xz)), var_1.d), (vec3<i32>(func_3(), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 0i, var_0.c), vec4<i32>(1i, var_0.c, 2147483647i, 14947i)), u_input.a.x) >> (var_1.b.zww % vec3<u32>(32u))) ^ abs(~vec3<i32>(u_input.d.x, -2147483647i, 12005i)), Struct_1(vec2<i32>(_wgslsmith_mod_i32(min(var_0.c, u_input.d.x), min(7251i, u_input.d.x)), -var_1.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), select(var_1.d.c.xwy, var_1.d.c.wyz, var_1.d.c.wzw)));
    var var_3 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(var_0.c), _wgslsmith_dot_vec2_i32(var_1.d.b, vec2<i32>(var_1.d.b.x, -19893i))), select(vec2<i32>(var_1.d.b.x, -8446i) | vec2<i32>(1i, u_input.a.x), u_input.d.yz, false == var_2.c.c.x)), vec2<i32>(0i, countOneBits(-2147483647i)) >> (vec2<u32>(u_input.b, ~u_input.c.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), var_2.a.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-962f, var_1.c, var_1.d.d, -899f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 326f, -868f, var_0.b), vec4<f32>(-798f, var_0.b, var_1.d.d, var_0.b)))))), _wgslsmith_div_vec3_u32(var_1.b.wwz, ~(~var_1.b.xwx)));
}

