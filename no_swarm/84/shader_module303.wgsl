struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1064f - _wgslsmith_f_op_f32(min(153f, 2540f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1633f, _wgslsmith_f_op_f32(f32(-1f) * -139f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1188f, 476f), -219f)), _wgslsmith_div_f32(411f, -837f)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(abs(u_input.a & arg_1.e), ~firstLeadingBit(vec3<i32>(-2147483647i, u_input.a, u_input.a)))), !select(arg_1.b, vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.e <= -23140i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1274f, -776f), vec2<f32>(-1303f, arg_1.a), true)), vec2<f32>(890f, 1543f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 400f) - vec2<f32>(arg_0, 1651f))), arg_1.d.x)), !vec3<bool>(u_input.b >= u_input.b, arg_1.d.x || true, arg_1.d.x && false), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.e, arg_1.e, -2147483647i, u_input.a), vec4<i32>(arg_1.e, u_input.a, -1i, u_input.a)), ~vec4<i32>(9623i, u_input.a, 1827i, arg_1.e)))), all(!vec4<bool>(!arg_1.d.x, true, !arg_1.d.x, true)), !vec3<bool>(select(false, arg_1.b.x != arg_1.d.x, false | arg_1.d.x), arg_1.b.x, all(vec2<bool>(true, true))), Struct_1(arg_0, vec2<bool>(true, all(select(vec4<bool>(true, arg_1.b.x, arg_1.d.x, arg_1.d.x), vec4<bool>(arg_1.d.x, arg_1.b.x, arg_1.d.x, true), false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.c), vec2<f32>(arg_0, 165f))), arg_1.c), select(vec3<bool>(arg_1.b.x != arg_1.d.x, !arg_1.b.x, !arg_1.d.x), vec3<bool>(true, 343f >= arg_1.c.x, true), true), 2147483647i), 16952i);
    let var_1 = vec2<bool>(select(!arg_1.b.x, all(select(!vec4<bool>(true, var_0.d.d.x, var_0.a.d.x, false), vec4<bool>(true, arg_1.b.x, arg_1.b.x, var_0.c.x), select(vec4<bool>(var_0.d.d.x, true, false, var_0.c.x), vec4<bool>(false, var_0.b, false, true), vec4<bool>(false, false, false, var_0.c.x)))), false), arg_1.b.x);
    var var_2 = var_0.d.d.x;
    var_2 = true || arg_1.d.x;
    let var_3 = vec4<i32>(-2147483647i, ~abs(u_input.a << (abs(u_input.b) % 32u)), _wgslsmith_clamp_i32(var_0.d.e, _wgslsmith_dot_vec2_i32(vec2<i32>(-arg_1.e, ~0i), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-46174i, -1i), vec2<i32>(var_0.a.e, arg_1.e)))), -firstLeadingBit(_wgslsmith_mult_i32(var_0.e, 0i))), ~(-arg_1.e));
    return 1u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> i32 {
    var var_0 = vec4<i32>(-23242i, 1i, u_input.a, u_input.a);
    let var_1 = arg_0.x & true;
    var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(~var_0.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a, var_0.x, var_0.x), vec4<i32>(21037i, u_input.a, 3610i, -2147483647i)), u_input.a), 7318i, -63530i), ((vec4<i32>(var_0.x, 13990i, 53198i, -7508i) | _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0.x, -20792i, var_0.x), vec4<i32>(u_input.a, -6521i, 2147483647i, 69450i))) << (vec4<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, 7983u), _wgslsmith_mod_u32(0u, u_input.b), func_2(arg_1.x, Struct_1(-679f, arg_0.zz, arg_1.xy, arg_0, u_input.a)), u_input.b) % vec4<u32>(32u))) >> (reverseBits(~vec4<u32>(41834u, u_input.b, u_input.b, 46899u)) % vec4<u32>(32u)), ~(~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, var_0.x), vec4<i32>(var_0.x, u_input.a, -2147483647i, 1i)))));
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1452f), select(!arg_0.zx, vec2<bool>(var_1, true), arg_0.yy), vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), 1f), vec3<bool>(var_1, false, all(vec2<bool>(arg_0.x, true))), 25559i), true, !arg_0, Struct_1(arg_1.x, select(arg_0.yy, select(vec2<bool>(true, arg_0.x), arg_0.xy, arg_0.x), select(vec2<bool>(false, false), arg_0.zx, arg_0.x)), arg_1.xw, vec3<bool>(all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), true, true), var_0.x), abs(~(-2147483647i))), arg_0.zx);
    var var_3 = Struct_3(var_2.a, arg_0.xy);
    return select(~(_wgslsmith_dot_vec4_i32(vec4<i32>(18369i, var_3.a.d.e, -1i, -46049i) ^ vec4<i32>(-10396i, 1i, var_2.a.a.e, 628i), -vec4<i32>(0i, 78516i, var_0.x, u_input.a)) | u_input.a), -5738i, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -12710i;
    var_0 = _wgslsmith_mult_i32(~_wgslsmith_mod_i32(func_1(vec3<bool>(false, false, false), vec4<f32>(326f, 335f, -829f, -614f)) | u_input.a, -3557i), -(countOneBits(u_input.a) << (reverseBits(~u_input.b) % 32u)));
    var var_1 = Struct_3(Struct_2(Struct_1(1f, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-248f, 576f) + vec2<f32>(1011f, 1417f)), vec2<f32>(-513f, 1000f))), vec3<bool>(true, true, true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 52300i, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, -29126i))), any(vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(213f + -1077f))), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -3186f)), 1937f), vec3<bool>(true, true, false), abs(u_input.a)), u_input.a), vec2<bool>(true, select(false, false | any(vec3<bool>(true, true, true)), true)));
    var var_2 = ~(~firstLeadingBit(1u));
    var var_3 = vec2<i32>(~(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, var_1.a.e, -34069i), -var_1.a.e) >> (71420u % 32u)), u_input.a);
    var var_4 = 1u;
    let var_5 = var_1.a;
    var var_6 = _wgslsmith_f_op_f32(round(var_1.a.a.c.x));
    var_4 = ~_wgslsmith_clamp_u32(~(~4294967295u), ~(~(~0u)), 59420u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f)));
}

