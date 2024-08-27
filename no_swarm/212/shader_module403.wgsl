struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_1(vec2<u32>(arg_0, ~arg_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(830f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(724f, -978f), _wgslsmith_f_op_f32(112f * -1000f))))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1491f)) - -1027f) * _wgslsmith_f_op_f32(min(-187f, -1318f))) - 1f), vec2<u32>(arg_0, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, arg_0), 39026u), 42612u)));
    var var_1 = firstTrailingBit(-firstTrailingBit(firstTrailingBit(abs(u_input.a.ww))));
    let var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(129f, 1289f, var_0.c)), 751f, 1000f, _wgslsmith_f_op_f32(1215f + -1398f)))))));
    var_1 = -firstLeadingBit(u_input.a.yx);
    return ~20262u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = ~select(10636i, -1i, true);
    var var_1 = Struct_1(vec2<u32>(u_input.b, arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - _wgslsmith_f_op_f32(ceil(arg_1.d))), arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(441f, arg_1.b))))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, arg_2.e.x), reverseBits(arg_1.e.x)) >> (_wgslsmith_mult_u32(func_3(arg_1.a.x), ~4294967295u) % 32u), u_input.b));
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-11442i, 37483i), u_input.a.x, 0i, -(~25504i)), ~abs(vec4<i32>(37214i, -2147483647i, -2147483647i, ~u_input.a.x)));
    var var_3 = 1i | var_2.x;
    var var_4 = vec4<i32>(var_2.x, -(~(-84069i)), -25115i, u_input.c);
    return arg_2.e.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = true;
    let var_1 = arg_1;
    let var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b, func_2(all(vec2<bool>(var_1.c, true)), arg_1, var_1, vec3<bool>(false, false, true)), arg_3.x, _wgslsmith_dot_vec3_u32(~arg_0.zyy, _wgslsmith_sub_vec3_u32(arg_0.zwz, vec3<u32>(u_input.b, 1u, 51021u)))), arg_0);
    let var_3 = Struct_1(vec2<u32>(func_2(all(vec2<bool>(true, true)), Struct_1(arg_1.a, -531f, true, _wgslsmith_f_op_f32(min(-684f, 182f)), vec2<u32>(arg_0.x, 4294967295u)), var_1, select(vec3<bool>(var_0, true, var_1.c), select(vec3<bool>(true, false, false), vec3<bool>(var_1.c, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false))), 8234u << ((10387u >> (var_2.x % 32u)) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -850f), true, var_1.b, arg_1.e);
    return !(!vec3<bool>(var_3.c, true, ~u_input.c >= -13441i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 804f;
    var var_1 = select(!(!select(vec3<bool>(true, true, true), func_1(vec4<u32>(1u, u_input.b, u_input.b, 1u), Struct_1(vec2<u32>(u_input.b, 0u), -726f, false, var_0, vec2<u32>(u_input.b, u_input.b)), vec3<f32>(398f, var_0, -1039f), vec2<u32>(u_input.b, 33464u)), select(false, true, false))), select(vec3<bool>(u_input.c >= 1i, true, true), func_1(firstLeadingBit(vec4<u32>(u_input.b, 28283u, u_input.b, 26540u) ^ vec4<u32>(1u, 1u, 0u, 71417u)), Struct_1(~vec2<u32>(43845u, 11844u), _wgslsmith_f_op_f32(-var_0), all(vec3<bool>(true, true, true)), var_0, ~vec2<u32>(u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2197f, var_0, var_0))))), ~vec2<u32>(u_input.b, 4294967295u)), !(!func_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 32219u), Struct_1(vec2<u32>(0u, 4294967295u), var_0, false, 907f, vec2<u32>(4294967295u, u_input.b)), vec3<f32>(var_0, -1987f, var_0), vec2<u32>(20482u, 10382u)))), all(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), 17522i == u_input.a.x)));
    var_1 = vec3<bool>((countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(15759u, 50329u, u_input.b), vec3<u32>(u_input.b, 26279u, 48138u))) > (33381u >> (~u_input.b % 32u))) | false, var_1.x, true);
    var_1 = select(select(!vec3<bool>(var_1.x, all(vec3<bool>(var_1.x, var_1.x, var_1.x)), !var_1.x), !vec3<bool>(!var_1.x, var_1.x, false), true), select(!vec3<bool>(var_1.x, var_1.x, var_1.x & var_1.x), vec3<bool>(any(vec2<bool>(var_1.x, var_1.x)), any(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), false)), true), vec3<bool>(true, var_1.x, var_1.x)), var_1.x);
    var_1 = func_1(reverseBits((~vec4<u32>(1u, 4294967295u, 0u, u_input.b) >> ((vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u) & vec4<u32>(17961u, 1u, u_input.b, u_input.b)) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b & 73702u, _wgslsmith_add_u32(19158u, 0u), 97459u)), Struct_1(abs(~vec2<u32>(u_input.b, 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1059f, var_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-861f, var_0) + _wgslsmith_f_op_f32(-137f - -254f)))), any(!vec3<bool>(var_1.x, false, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(21261u, 1u), vec2<u32>(0u, 1u), vec2<bool>(var_1.x, var_1.x)), vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(25415u, countOneBits(5274u)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(var_0 * 554f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 586f, -918f), vec3<f32>(443f, var_0, 1429f), false)))))), ~(~vec2<u32>(u_input.b, countOneBits(0u))));
    let var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.a.x), 0i, countOneBits(u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 0i, -1i), ~vec3<i32>(var_2, -49095i, u_input.c), abs(vec3<i32>(1i, -2147483647i, u_input.a.x)))) ^ ~1i);
}

