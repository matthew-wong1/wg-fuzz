struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 941i;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_5) -> Struct_2 {
    let var_0 = arg_2.x;
    let var_1 = u_input.d;
    var var_2 = var_0;
    var var_3 = Struct_1(max(select(vec4<u32>(7425u, 13615u, 4294967295u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1, var_1, var_1), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, u_input.a, 98307u, var_1), vec4<u32>(var_1, var_1, u_input.a, u_input.c))), select(vec4<bool>(arg_2.x, var_0, false, arg_2.x), vec4<bool>(var_0, var_0, false, true), !vec4<bool>(var_0, var_0, var_0, arg_2.x))), vec4<u32>(_wgslsmith_mult_u32(u_input.d, u_input.d & u_input.c), ~u_input.a, select(var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 63391u), vec3<u32>(var_1, var_1, 30878u)), var_0 || true), countOneBits(0u))));
    global0 = arg_1;
    return Struct_2(Struct_1(~var_3.a));
}

fn func_3(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = 2147483647i;
    global0 = _wgslsmith_div_i32(~(-var_0), 40004i);
    var var_1 = select(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(-2147483647i != u_input.b.x, true, u_input.e.x >= u_input.b.x)), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), !vec3<bool>(u_input.e.x >= -2147483647i, false, any(vec4<bool>(true, false, true, false)))), vec3<bool>(true, false, ((u_input.c <= u_input.c) != true) && (true || any(vec2<bool>(true, true)))), !any(vec2<bool>(false, true)) & all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))));
    var var_2 = !var_1.zx;
    var var_3 = -firstTrailingBit(vec3<i32>(~(-5321i), max(29078i, ~2147483647i), -65306i));
    return vec3<i32>(_wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(-27902i, 0i, 1i), vec3<i32>(var_0, var_3.x, var_0)), vec3<i32>(-7094i, ~(-46933i), _wgslsmith_sub_i32(var_0, -13940i)), !var_2.x == all(vec3<bool>(var_2.x, false, false))), vec3<i32>(_wgslsmith_add_i32(var_3.x, 24251i) & var_0, _wgslsmith_sub_i32(-54403i, i32(-1i) * -27523i), ~(-1i))), ~reverseBits(~(-16553i)), 2147483647i);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<i32> {
    return u_input.e;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = func_1(59502i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~(-arg_0.zy), ~(~arg_0.yz), _wgslsmith_mod_vec2_i32(u_input.e.yx, u_input.e.zz) & ~u_input.e.wy), u_input.e.wy ^ (vec2<i32>(arg_0.x, 0i) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 57002u), vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)))), arg_1.xx, Struct_5(arg_0.yxx, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(240f, _wgslsmith_f_op_f32(sign(1250f))))))));
    let var_1 = Struct_3(func_3(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(35197u, u_input.d), var_0.a.a.xx), abs(12183u)), 43214u, _wgslsmith_add_u32(var_0.a.a.x & var_0.a.a.x, 1u), u_input.d)).x, vec2<bool>(all(select(!vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(false, arg_1.x, true, arg_1.x), select(vec4<bool>(false, false, arg_1.x, true), vec4<bool>(true, true, arg_1.x, true), vec4<bool>(true, false, arg_1.x, arg_1.x)))), true));
    var var_2 = 5632u;
    var var_3 = var_1;
    var var_4 = Struct_4(~var_1.a, Struct_3(~(-57490i), var_3.b), -var_1.a, arg_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-868f)))), -121f, true)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    global0 = 0i;
    global0 = 0i;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_5(func_4(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), any(vec4<bool>(true, true, true, false)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b.x, -1i, 2147483647i), func_3(vec4<u32>(arg_1, arg_1, arg_1, u_input.a))), arg_0), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -1078f));
    var var_1 = Struct_5(-(~vec3<i32>(1i, 1i, 1i)), -673f);
    var var_2 = func_1(_wgslsmith_clamp_i32(1i, -(~(u_input.e.x | -75490i)), -1i), i32(-1i) * -(u_input.e.x & -var_1.a.x), select(select(vec2<bool>(true, any(vec4<bool>(false, true, false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec2<bool>(var_1.b < _wgslsmith_f_op_f32(trunc(2211f)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), vec2<bool>(true, true)), Struct_5(vec3<i32>(~u_input.b.x, -_wgslsmith_div_i32(1i, u_input.b.x), -u_input.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.b, var_0.x))))));
    return 55196u;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4) -> i32 {
    var var_0 = 17320u;
    var var_1 = Struct_2(Struct_1((~arg_0.a << (~vec4<u32>(arg_0.a.x, u_input.c, 4294967295u, 4294967295u) % vec4<u32>(32u))) << (min(vec4<u32>(u_input.d, 4294967295u, arg_0.a.x, 4294967295u), arg_0.a) % vec4<u32>(32u))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(vec4<u32>(1212u, func_2(func_1(u_input.e.x, u_input.b.x, vec2<bool>(true, true), Struct_5(u_input.e.zzw, -286f)), 21023u), u_input.d ^ ~u_input.d, min(u_input.d, u_input.c))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-830f, -1129f, -1171f, 239f) + vec4<f32>(-120f, 902f, 1409f, 1233f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1513f, -493f, -568f, 111f)))) - vec4<f32>(1f, -813f, -587f, _wgslsmith_f_op_f32(-1587f + 845f))))), Struct_4(1i, Struct_3(max(_wgslsmith_mult_i32(2147483647i, u_input.b.x), 0i), vec2<bool>(true, true)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(17138i, 19992i), u_input.b, true), u_input.b), -func_3(vec4<u32>(4294967295u, 4294967295u, 10059u, u_input.c)).x), true & !all(vec2<bool>(false, true))));
    let var_1 = select(vec4<bool>(select(true, select(all(vec2<bool>(true, true)), true, true), true), true, all(vec2<bool>(true, true)), func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(4673u, 4294967295u, 4294967295u, 79881u), vec4<u32>(4294967295u, u_input.c, 0u, 34854u))).x >= -24890i), vec4<bool>(true, true, any(vec2<bool>(true, true)), true), vec4<bool>(true, !any(vec3<bool>(true, false, false)), !(!all(vec3<bool>(false, true, true))), !any(vec4<bool>(true, true, false, true))));
    global0 = _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(~(u_input.e & u_input.e), _wgslsmith_add_vec4_i32(u_input.e, func_4(var_1, var_1.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.e.x), Struct_2(Struct_1(vec4<u32>(39088u, u_input.d, u_input.a, u_input.d)))))), _wgslsmith_dot_vec3_i32(~vec3<i32>(-49139i, -36764i & u_input.e.x, 28095i), u_input.e.ywx));
    var var_2 = any(var_1);
    global0 = -69625i;
    var_0 = u_input.e.x;
    let var_3 = vec4<u32>(u_input.a, max(~(19734u << (u_input.d % 32u)) << (u_input.d % 32u), _wgslsmith_add_u32(abs(reverseBits(u_input.a)), ~1u << (u_input.c % 32u))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(7117u), ~4294967295u, u_input.a), vec3<u32>(~u_input.a, u_input.a, 4294967295u))), ~(_wgslsmith_add_u32(u_input.c, u_input.c) & u_input.a) << ((abs(u_input.a) | select(39440u, u_input.a << (u_input.d % 32u), var_1.x)) % 32u));
    global0 = _wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, ~u_input.b.x, u_input.b.x)), vec3<i32>(abs(-1i), _wgslsmith_mod_i32(u_input.b.x, 28872i) << (67710u % 32u), -abs(-13255i))));
    let var_4 = countOneBits(var_3.xzy);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(select(var_1, var_1, all(var_1.xx)), ~(~4294967295u) <= var_4.x, ~(-(vec3<i32>(44851i, u_input.e.x, -30312i) | u_input.e.xwz)), Struct_2(func_1(-97350i | u_input.b.x, max(10167i, -55231i), !vec2<bool>(var_1.x, false), Struct_5(u_input.e.xwz, 884f)).a)).zwx, -u_input.e, var_4);
}

