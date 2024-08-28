struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<bool>) -> bool {
    let var_0 = select(~(~vec2<u32>(98147u, ~u_input.a.x)), vec2<u32>(_wgslsmith_div_u32(0u, firstLeadingBit(_wgslsmith_sub_u32(1u, u_input.a.x))), _wgslsmith_add_u32(~4294967295u, 19207u)), !arg_3.x && (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 27541i, u_input.b, 38841i), vec4<i32>(arg_0.b, arg_0.b, -1i, arg_0.b)) >= -arg_0.b));
    let var_1 = vec4<u32>(~reverseBits(33382u), 1u, 20374u, 4657u);
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<f32>) -> bool {
    var var_0 = !(!select(select(vec3<bool>(arg_0, true, arg_1.x), vec3<bool>(arg_0, false, false), !vec3<bool>(false, arg_1.x, arg_0)), vec3<bool>(false, true, false), func_3(Struct_1(false, -1i), _wgslsmith_dot_vec3_u32(u_input.a.wwx, u_input.a.yxz), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(129f, arg_2.x, -2003f, -720f), vec4<f32>(arg_2.x, 734f, arg_2.x, 2254f))), !vec2<bool>(arg_0, arg_1.x))));
    var var_1 = reverseBits(vec3<i32>(_wgslsmith_clamp_i32(~reverseBits(u_input.b), 2147483647i, max(1i, 1i)), abs(u_input.b), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, 0i), -u_input.b)));
    var_0 = vec3<bool>(true, arg_1.x, arg_0);
    var_0 = select(!(!select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, true, true), !vec3<bool>(arg_0, arg_0, false))), select(select(!select(vec3<bool>(var_0.x, arg_0, var_0.x), vec3<bool>(true, arg_1.x, false), vec3<bool>(var_0.x, var_0.x, true)), select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(arg_0, var_0.x, false), vec3<bool>(false, true, arg_1.x)), select(vec3<bool>(var_0.x, arg_0, arg_1.x), vec3<bool>(var_0.x, false, arg_1.x), true), var_0.x | arg_1.x), vec3<bool>(false, func_3(Struct_1(true, u_input.b), 4294967295u, vec4<f32>(203f, -1295f, 1011f, 246f), vec2<bool>(true, false)), arg_0 & true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, var_0.x, arg_1.x), arg_0 != true), func_3(Struct_1(func_3(Struct_1(arg_0, u_input.b), 0u, vec4<f32>(arg_2.x, 2295f, arg_2.x, -760f), vec2<bool>(arg_1.x, false)), _wgslsmith_div_i32(-14031i, var_1.x)), ~select(1u, u_input.a.x, arg_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 278f, 720f, arg_2.x), vec4<f32>(arg_2.x, arg_2.x, 1000f, 244f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 698f, arg_2.x, 1075f))), var_0.yx)), vec3<bool>(!arg_0, !(!(u_input.a.x < 79114u)), false));
    var var_2 = ~(~u_input.a.x);
    return true;
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(false, i32(-1i) * -62232i);
    var var_1 = min(u_input.a, vec4<u32>(~u_input.a.x, ~reverseBits(_wgslsmith_add_u32(41028u, 2431u)), (u_input.a.x << (~64534u % 32u)) & ~u_input.a.x, 1u));
    var_1 = select(abs(vec4<u32>(~abs(var_1.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 13407u), vec2<u32>(var_1.x, 29564u)), 0u, ~_wgslsmith_div_u32(32832u, u_input.a.x))), u_input.a, !(!vec4<bool>(arg_0.x, true, var_1.x >= 28489u, true)));
    var_1 = u_input.a;
    var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~abs(4294967295u), firstLeadingBit(var_1.x), max(u_input.a.x, _wgslsmith_sub_u32(var_1.x, 1u)), var_1.x), min(vec4<u32>(43304u, _wgslsmith_add_u32(0u, select(15316u, u_input.a.x, arg_0.x)), 35373u, _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, u_input.a.x, var_1.x), u_input.a), 1u)), ~firstLeadingBit(u_input.a)));
    return Struct_1((var_0.a & (true && func_2(var_0.a, arg_0, vec2<f32>(1547f, 954f)))) | arg_0.x, -var_0.b);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = u_input.b <= arg_0.x;
    var_0 = true;
    var_0 = false;
    let var_1 = func_4(!select(vec2<bool>(false, any(vec4<bool>(false, true, false, true))), vec2<bool>(true, true), vec2<bool>(true, func_2(true, vec2<bool>(false, true), vec2<f32>(-981f, 1480f)))));
    var var_2 = vec3<bool>(!var_1.a, true, true);
    return func_4(select(select(select(vec2<bool>(true, true), !vec2<bool>(var_1.a, var_2.x), false), select(vec2<bool>(var_1.a, var_2.x), vec2<bool>(false, var_2.x), true), vec2<bool>(var_2.x, select(var_2.x, true, true))), var_2.yy, !(!vec2<bool>(var_1.a, true))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = !func_4(select(select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, true), select(vec2<bool>(arg_1.a, true), vec2<bool>(true, arg_1.a), false)), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(select(false, arg_0.a, arg_1.a), arg_2.x >= 1129f))).a;
    let var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = ~abs(2147483647i);
    var_3 = ~0i;
    return Struct_1(true, -36166i);
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(587f)))))), 484f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)), _wgslsmith_f_op_f32(step(-752f, arg_0))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - -1000f))));
    var var_1 = arg_3;
    var var_2 = reverseBits(vec2<i32>(-u_input.b, -2147483647i));
    let var_3 = ~max(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 37976u), u_input.a) & firstLeadingBit(u_input.a);
    return vec4<f32>(arg_0, 806f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-449f)) * _wgslsmith_f_op_f32(var_0.x + -508f))) + _wgslsmith_f_op_f32(min(-183f, arg_0))), var_0.x);
}

fn func_7(arg_0: vec4<f32>, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = func_1(vec3<i32>(0i, _wgslsmith_mult_i32(u_input.b, -u_input.b), -2147483647i));
    let var_1 = Struct_1(!all(select(vec4<bool>(true, false, var_0.a, false), select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, false, false, var_0.a)), select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a), var_0.a))), -76242i);
    return StorageBuffer(_wgslsmith_div_vec2_i32(~vec2<i32>(max(u_input.b, -1i), 29698i), -vec2<i32>(1i, var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x >> (~_wgslsmith_add_u32(select(~46933u, u_input.a.x, true), u_input.a.x ^ ~1u) % 32u);
    var var_1 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(~(-32014i), 0i, ~u_input.b, ~0i), ~select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -21109i, u_input.b, u_input.b), true));
    var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(min(-11025i, var_1.x), var_1.x, -var_1.x, 1i), select(vec4<i32>(var_1.x, abs(var_1.x), firstLeadingBit(u_input.b), 40370i), vec4<i32>(-1i) * -vec4<i32>(-41843i, 0i, var_1.x, u_input.b), vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, true))))), select(vec4<i32>(-3316i, min(var_1.x << (u_input.a.x % 32u), 27268i ^ var_1.x), ~1i, _wgslsmith_mult_i32(min(var_1.x, u_input.b), 1i)), ~vec4<i32>(_wgslsmith_mod_i32(u_input.b, 0i), _wgslsmith_dot_vec3_i32(var_1.zyw, var_1.xyx), u_input.b, -9643i), true));
    var var_2 = Struct_1(any(vec2<bool>(!all(vec3<bool>(false, true, false)), any(vec4<bool>(false, true, false, false)))), ~var_1.x);
    var_0 = _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(~u_input.a.x, u_input.a.x >> (4294967295u % 32u)), 42053u, _wgslsmith_mod_u32(~min(4294967295u, 4294967295u), ~(~4294967295u))), 4294967295u);
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_6(-321f, true, func_5(Struct_1(false, -7172i), func_1(vec3<i32>(23436i, u_input.b, -27903i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1079f, -286f))), _wgslsmith_add_i32(5154i, i32(-1i) * -1i))))), ~u_input.a.zzw);
}

