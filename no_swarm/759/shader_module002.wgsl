struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> bool {
    return true;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = -firstTrailingBit(select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a, 0i, 23890i), vec3<i32>(-2147483647i, arg_1.a, u_input.a.x), vec3<i32>(2147483647i, -3930i, 2147483647i)), -reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    let var_1 = -38118i;
    var var_2 = 11000u;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-812f, 544f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(791f, -855f))) + vec2<f32>(-352f, -1235f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-851f, -487f)) + vec2<f32>(-331f, -706f))))));
    var var_4 = arg_0;
    return vec2<bool>(select(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false)), true), !(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))) || true));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_1(~vec2<u32>(1u, 1u), !func_3(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(41772u, 4294967295u, 4294967295u, 3297u), vec4<u32>(4294967295u, 453u, 32615u, 4294967295u)), ~1u, 146191u, ~16386u), Struct_2(_wgslsmith_add_i32(u_input.a.x, arg_0))));
    let var_1 = vec4<bool>(false, !((var_0.b.x & all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))) | var_0.b.x), !(false != any(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(var_0.b.x, var_0.b.x, true, false), vec4<bool>(true, false, true, false)))), false);
    var var_2 = ~_wgslsmith_mod_vec3_u32(~min(_wgslsmith_add_vec3_u32(vec3<u32>(48931u, var_0.a.x, 0u), vec3<u32>(4294967295u, var_0.a.x, var_0.a.x)), abs(vec3<u32>(1u, 1u, 4294967295u))), ~(~(vec3<u32>(var_0.a.x, 1601u, var_0.a.x) | vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x))));
    let var_3 = vec2<i32>(max(-2147483647i, u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-u_input.a.x, u_input.a.x, -2147483647i), ~2147483647i));
    var_2 = _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, var_0.a.x, var_0.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, var_2.x, 72397u), vec3<u32>(0u, var_2.x, var_2.x)))), ~vec3<u32>(select(7245u, 30354u, false), 8963u, 5281u) << (vec3<u32>(var_0.a.x, abs(firstTrailingBit(4294967295u)), 13756u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, countOneBits(min(33969u, 9310u)), select(_wgslsmith_div_u32(4294967295u, var_2.x), var_0.a.x, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, var_2.x, _wgslsmith_mod_u32(var_0.a.x, 26647u)), vec3<u32>(_wgslsmith_mult_u32(var_2.x, var_2.x), 8467u, var_0.a.x & var_0.a.x))));
    return Struct_2(var_3.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    let var_0 = -vec3<i32>(0i | _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, arg_0.a)), -2147483647i, _wgslsmith_sub_i32(1i, u_input.a.x));
    var var_1 = arg_0;
    let var_2 = Struct_4(vec4<bool>(func_3(firstLeadingBit(firstTrailingBit(vec4<u32>(0u, 1u, 3153u, 1u))), func_2(_wgslsmith_mod_i32(82575i, var_0.x))).x, true, all(vec2<bool>(true, true)), true));
    let var_3 = Struct_3(select(var_2.a.x, u_input.a.x != (_wgslsmith_div_i32(-26842i, u_input.a.x) << (1u % 32u)), select(!(var_2.a.x && true), any(var_2.a.zy), true)), arg_0);
    return Struct_3(any(!vec3<bool>(all(var_2.a.zxy), var_3.a, !var_3.a)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    let var_1 = !(!all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    var var_2 = var_1;
    let var_3 = func_4(func_2(2147483647i), u_input.a.x);
    var_0 = true | var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-1023f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1811f, 2014f)))))), vec4<i32>(~u_input.a.x >> (~94372u % 32u), min(u_input.a.x, func_2(var_3.b.a).a), -1i, ~_wgslsmith_mult_i32(var_3.b.a, var_3.b.a)) ^ firstLeadingBit(vec4<i32>(var_3.b.a, u_input.a.x, _wgslsmith_clamp_i32(var_3.b.a, 1i, u_input.a.x), firstTrailingBit(2147483647i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(340f, -2270f), -458f) - vec2<f32>(960f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(337f, -573f), _wgslsmith_f_op_f32(f32(-1f) * -918f))))));
}

