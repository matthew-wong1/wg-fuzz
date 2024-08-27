struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-1446f));
    var var_1 = Struct_1(1000f, u_input.b <= 0i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-(u_input.b << (0u % 32u)), -104698i)), abs(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, u_input.b), ~(-33285i), -u_input.c.x))), u_input.c.x > 23840i);
    var_1 = Struct_1(393f, select(any(vec4<bool>(select(false, var_1.e, false), true, true, var_1.b || false)), true, var_1.e), ~firstTrailingBit(-var_1.d), ~reverseBits(1i), var_1.b || var_1.b);
    return -24095i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1.a)))), !var_0.b, arg_3.x, abs(~_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 13100i), u_input.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1267f) - _wgslsmith_f_op_f32(abs(907f))) * arg_0.a));
    var var_2 = Struct_1(var_1.a, all(vec3<bool>(true, true, true)), var_1.d & -17245i, firstTrailingBit(abs(_wgslsmith_clamp_i32(-24002i, func_3(), arg_3.x))), arg_1.b);
    var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -153f), all(!select(vec2<bool>(false, false), select(vec2<bool>(false, var_1.e), vec2<bool>(var_2.b, var_1.b), arg_0.b), vec2<bool>(false, true))), -abs(_wgslsmith_div_i32(0i, var_0.c)) & reverseBits(-select(1i, var_1.d, false)), 0i, false || all(vec2<bool>(all(vec4<bool>(false, false, false, true)), true)));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(abs(49533i), ~(~(-4076i)), arg_3.x, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c)), vec4<i32>(i32(-1i) * -_wgslsmith_sub_i32(arg_0.d, arg_0.d), i32(-1i) * -arg_3.x, firstTrailingBit(~var_0.d), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(35155i, 32412i, 44149i, arg_3.x), vec4<i32>(arg_1.c, arg_3.x, 230i, 0i))));
}

fn func_1() -> vec4<bool> {
    let var_0 = ~(~vec4<i32>(-86926i, u_input.b, max(2147483647i, -21391i), abs(-2147483647i)) ^ reverseBits(-func_2(Struct_1(639f, false, u_input.c.x, -6268i, false), Struct_1(205f, false, 0i, u_input.c.x, true), u_input.d, vec2<i32>(45792i, u_input.b))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(917f + -221f)) + 423f)), false, 16133i, -(~(-(-11392i >> (u_input.a.x % 32u)))), !((true || any(vec2<bool>(true, false))) & (_wgslsmith_mod_i32(u_input.c.x, u_input.c.x) >= ~(-56218i))));
    return !select(vec4<bool>(all(!vec3<bool>(var_1.b, var_1.b, true)), true, any(!vec3<bool>(var_1.e, false, var_1.e)), any(select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, true), var_1.e))), select(!vec4<bool>(true, true, true, var_1.b), select(!vec4<bool>(var_1.e, true, false, false), !vec4<bool>(false, true, var_1.e, true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(true, var_1.b, false, true), vec4<bool>(false, true, var_1.e, false), vec4<bool>(var_1.e, var_1.e, var_1.b, false)), !vec4<bool>(var_1.e, true, var_1.e, false), vec4<bool>(var_1.e, var_1.b, false, var_1.e))), vec4<bool>(var_1.e, all(vec4<bool>(true, var_1.e, false, var_1.e)), any(select(vec3<bool>(false, false, var_1.e), vec3<bool>(false, false, var_1.b), vec3<bool>(var_1.e, true, var_1.e))), var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(!func_1()), true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1253f), !var_0.x, 53097i << ((((u_input.d ^ 1u) & u_input.a.x) ^ (~u_input.d << (abs(u_input.a.x) % 32u))) % 32u), u_input.c.x, true && any(vec4<bool>(true, true, true, !var_0.x)));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - -1499f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + var_1.a), _wgslsmith_f_op_f32(2378f * var_1.a))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1426f))))));
    var_0 = select(func_1().zz, vec2<bool>(!any(select(vec2<bool>(var_0.x, var_1.b), vec2<bool>(false, false), var_0.x)), !var_1.b), !func_1().wz);
    var var_3 = !(!select(vec2<bool>(true, !var_0.x), !vec2<bool>(true, var_0.x), vec2<bool>(true, false)));
    var var_4 = var_1;
    let var_5 = Struct_1(2252f, u_input.c.x < countOneBits(u_input.c.x), firstTrailingBit(-var_4.d), ~(-2147483647i), any(func_1()));
    var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -308f))), _wgslsmith_f_op_f32(-var_5.a))), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_4.c, 1i, 0i)), select(firstLeadingBit(vec3<i32>(var_4.c, -42516i, var_5.d)), vec3<i32>(2147483647i, var_5.c, var_1.c), any(vec4<bool>(var_4.b, false, var_0.x, false)))) != ~(-2147483647i), var_4.c, var_5.c, var_4.c <= _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-u_input.b, _wgslsmith_sub_i32(var_5.c, var_1.d), ~0i), (var_5.d & 46925i) ^ -var_4.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.d, u_input.d, 47447u, u_input.d)), ~select(vec4<u32>(u_input.a.x, 57991u, u_input.a.x, 42853u), ~vec4<u32>(u_input.a.x, 38307u, u_input.a.x, u_input.d), select(vec4<bool>(var_5.e, var_0.x, true, var_3.x), vec4<bool>(false, var_1.e, var_3.x, var_0.x), var_5.b))), (vec3<i32>(2147483647i, _wgslsmith_div_i32(var_4.d, 13538i), min(var_5.d, 50964i)) << (vec3<u32>(u_input.a.x, u_input.d, abs(u_input.a.x)) % vec3<u32>(32u))) << (vec3<u32>(17215u, u_input.d, _wgslsmith_div_u32(abs(25711u), u_input.d)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1076f + var_4.a)))), -499f);
}

