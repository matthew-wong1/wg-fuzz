struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_1(min(~firstTrailingBit(vec2<u32>(2813u, arg_0) ^ arg_2.zx), vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_2, arg_2), ~arg_1)));
    let var_1 = vec2<bool>(true, true);
    var var_2 = var_1.x;
    var_2 = -u_input.b.x > -1i;
    let var_3 = Struct_1(~(~u_input.d | (select(arg_2.yy, vec2<u32>(30743u, 22095u), vec2<bool>(var_1.x, false)) >> (arg_2.xy % vec2<u32>(32u)))));
    return u_input.d.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-718f, _wgslsmith_f_op_f32(1185f - arg_2), _wgslsmith_f_op_f32(-302f + -178f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2))))), vec4<f32>(-1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * -761f) - arg_2), 856f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2690f, arg_2, 1000f, arg_2))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, arg_2, 693f, 677f), vec4<f32>(arg_2, 825f, arg_2, 425f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -889f, arg_2) + vec4<f32>(240f, 250f, arg_2, 2045f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1294f, 2191f, arg_2, 304f)))))));
    var var_1 = Struct_1(vec2<u32>(48887u, ~func_3(1u, 29947u, vec3<u32>(0u, 66870u, 86394u))) >> (vec2<u32>(firstTrailingBit(~35699u), ~u_input.d.x >> (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) % 32u)) % vec2<u32>(32u)));
    var var_2 = Struct_1(var_1.a);
    let var_3 = _wgslsmith_clamp_vec2_i32(-(~(~vec2<i32>(45046i, -38679i))), -(~(~_wgslsmith_mult_vec2_i32(u_input.b.yz, u_input.b.yz))), vec2<i32>(-1i) * -arg_1.wz);
    var var_4 = any(vec4<bool>(false, true, firstTrailingBit(40893u) < var_1.a.x, any(arg_3.wx)));
    return abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, 30623u), select(_wgslsmith_add_vec2_u32(u_input.c, var_2.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 45275u), var_2.a, vec2<u32>(var_2.a.x, u_input.d.x)), any(vec3<bool>(arg_3.x, true, false))), countOneBits(var_1.a))) & min(_wgslsmith_mult_vec2_u32(var_1.a, ~var_2.a), min(_wgslsmith_div_vec2_u32(var_1.a, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 7444u), u_input.c)), firstTrailingBit(vec2<u32>(25362u, var_2.a.x)) | ~vec2<u32>(9298u, u_input.c.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = 0i;
    let var_1 = !vec2<bool>(!any(vec3<bool>(true, true, true)), !(_wgslsmith_mult_i32(var_0, -13492i) == abs(4113i)));
    var var_2 = vec2<i32>(~1i, 37832i);
    let var_3 = Struct_1(func_2(any(!vec4<bool>(false, var_1.x, true, var_1.x)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.b.x, 10695i, var_2.x)), vec4<i32>(var_2.x, 13431i, 12899i, -31609i)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1655f * 1889f)), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))) & vec2<u32>(~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(firstLeadingBit(u_input.d.x), 1u)));
    var var_4 = var_3;
    return Struct_1(countOneBits(var_4.a));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-546f)), -387f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-137f, -451f)), _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, -159f, 683f, 1000f) + vec4<f32>(-719f, -291f, -1453f, 867f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1366f, 1904f, 421f, 2553f)))))), false));
    var var_1 = func_1();
    let var_2 = -48379i;
    var_1 = arg_0;
    var_1 = arg_0;
    return firstLeadingBit(~min(abs(_wgslsmith_div_vec2_u32(var_1.a, arg_1.yx)), vec2<u32>(19023u, 32493u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((func_4(func_1(), abs(vec3<u32>(u_input.c.x, 4294967295u, 0u))) ^ u_input.c) >> ((reverseBits(select(vec2<u32>(u_input.c.x, u_input.d.x), u_input.c, true)) >> (vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.c.x, u_input.d.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = u_input.a.x;
    var_1 = -2147483647i;
    var_1 = u_input.a.x;
    let var_2 = max(1721i, _wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.a.x, select(u_input.b.x, _wgslsmith_add_i32(-43443i, -32676i), true)), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, -1i), u_input.a.wzw))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-905f, 1821f, 399f, -290f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, -818f, -167f, 620f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(789f, -301f, 1000f, 1267f) - vec4<f32>(-230f, -1000f, -556f, -1347f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1582f, -857f, -1828f))))), select(vec4<bool>(any(vec4<bool>(false, true, false, true)), true, all(vec2<bool>(false, true)), any(vec3<bool>(false, true, true))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), -(_wgslsmith_div_vec3_i32(-u_input.b, u_input.a.xxw) & vec3<i32>(u_input.b.x, ~u_input.a.x, ~3511i)), ~(~vec4<u32>(var_0.a.x, 0u, 129675u, firstLeadingBit(u_input.c.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), select(_wgslsmith_clamp_u32(36415u, _wgslsmith_dot_vec2_u32(vec2<u32>(14098u, 33435u), ~vec2<u32>(118293u, var_0.a.x)), ~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), min(u_input.d.x, func_1().a.x), true));
}

