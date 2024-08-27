struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_2(~reverseBits(firstLeadingBit(firstLeadingBit(vec4<i32>(0i, u_input.c, 21912i, 18921i)))));
    var_0 = Struct_2(abs(vec4<i32>(5003i, -(~(-48528i)), -(~var_0.a.x), max(u_input.c, 18016i) | ~1i)));
    var_0 = Struct_2(vec4<i32>(var_0.a.x, -13981i, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(arg_0, var_0.a.x, -5097i, u_input.c)), u_input.b.x), _wgslsmith_mult_i32(arg_0, _wgslsmith_mod_i32(i32(-1i) * -1i, arg_0 ^ -2147483647i))));
    var var_1 = select(vec3<bool>(all(vec3<bool>(true, true, true)), (min(u_input.d, 1u) | _wgslsmith_div_u32(18712u, 39307u)) < u_input.d, !select(all(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)), any(vec3<bool>(false, true, true)))), select(vec3<bool>(any(vec2<bool>(true, true)), true, false), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), true), vec3<bool>(true, true, true));
    var_1 = !(!select(select(!vec3<bool>(false, true, var_1.x), select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), false), var_1.x & true), select(vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x && var_1.x), vec3<bool>(true, true, var_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + -531f)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(-arg_2))), arg_2, _wgslsmith_f_op_f32(func_3(u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(sign(1007f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -853f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 729f)) - vec2<f32>(2182f, arg_2)), select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0), vec2<bool>(false, true))))));
    var var_1 = Struct_2(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(u_input.c, 36894i, u_input.c, 49575i)) >> (vec4<u32>(~u_input.d, 40841u & u_input.d, _wgslsmith_sub_u32(u_input.a.x, u_input.d), 78431u) % vec4<u32>(32u)), select(~vec4<i32>(-22678i, -1i, -6242i, -1i), vec4<i32>(-24737i, -1i, min(-28623i, u_input.b.x), ~(-10946i)), vec4<bool>(false && arg_0, false, true, arg_1.x <= u_input.b.x))));
    var_1 = Struct_2(var_1.a);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(var_0.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-160f - arg_2)), _wgslsmith_f_op_vec2_f32(var_0.a.zy - vec2<f32>(-1000f, -267f)))))));
    let var_3 = Struct_1(var_2.a, var_2.a.zx);
    return select(2147483647i, var_1.a.x, _wgslsmith_mult_i32(~u_input.c, ~(-11309i)) == ~_wgslsmith_div_i32(arg_1.x, arg_1.x)) & -36779i;
}

fn func_1() -> vec4<i32> {
    var var_0 = -1000f;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1727f);
    return _wgslsmith_clamp_vec4_i32(reverseBits(-abs(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.c) >> (vec4<u32>(1u, 42061u, u_input.a.x, u_input.d) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c, 32180i, 1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(-5796i, u_input.c))), vec4<i32>(u_input.b.x, -79532i, 59414i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, u_input.b.x), ~u_input.b.yy))), vec4<i32>(-7918i, countOneBits(-19003i), 16027i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, ~u_input.c, _wgslsmith_mod_i32(u_input.c, u_input.b.x)), func_2(select(true, true, false), vec3<i32>(u_input.c, u_input.b.x, -60288i) | u_input.b, -1523f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.a);
    var var_1 = abs(abs(select(_wgslsmith_mod_vec4_i32(func_1(), max(vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, 2147483647i), vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, -2147483647i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, 1i, -2147483647i, u_input.c), vec4<i32>(u_input.b.x, 1i, u_input.c, 1i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), all(vec4<bool>(false, true, false, false))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, -975f, 830f, 505f)) * vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-514f * -845f), _wgslsmith_f_op_f32(step(-2042f, -1072f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-988f, -541f), vec2<f32>(165f, -928f))))));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1015f, -1440f) - vec2<f32>(var_2.a.x, var_2.b.x)))))));
    var_2 = Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_2.b))) - var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 56772u, u_input.d), vec3<u32>(u_input.d, var_0.x, var_0.x)) % 32u), _wgslsmith_mult_i32(-2147483647i, var_1.x), 2147483647i, u_input.c), ~var_1.zz, var_0.x);
}

