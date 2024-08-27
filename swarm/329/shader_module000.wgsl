struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -594f), -429f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-629f, 757f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global1 = vec2<bool>(!(!select(global1.x | false, true, true)), false);
    let var_1 = !(!vec3<bool>(true, false, !global1.x));
    global0 = u_input.b.x;
    global0 = _wgslsmith_div_i32((i32(-1i) * -45805i) | _wgslsmith_add_i32(_wgslsmith_mult_i32(reverseBits(u_input.b.x), u_input.b.x), ~_wgslsmith_mod_i32(-43485i, u_input.b.x)), 2147483647i);
    return _wgslsmith_f_op_f32(round(var_0.x));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(global1.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2238f, 1000f, -898f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * 534f), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1247f - 262f))))), Struct_1(arg_1, vec3<f32>(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(483f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1828f))), -235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(152f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-466f, 411f)))), vec4<u32>(u_input.a.x, countOneBits(u_input.a.x & 4294967295u), ~(~_wgslsmith_add_u32(46843u, arg_3.x)), arg_0), u_input.b.xx);
    global1 = select(select(vec2<bool>(true, true), vec2<bool>(all(!vec3<bool>(false, false, arg_1)), true), select(vec2<bool>(true, true), select(vec2<bool>(global1.x, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(false, false), vec2<bool>(false, true)), !vec2<bool>(true, var_0.a.a)), !(!vec2<bool>(arg_1, global1.x)))), vec2<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1021f, var_0.b.b.x)))) >= 481f, !(!(var_0.a.a | var_0.b.a))), !vec2<bool>(all(!vec4<bool>(arg_1, false, false, global1.x)), all(vec4<bool>(true, global1.x, arg_1, true)) | (-144f >= var_0.a.b.x)));
    var var_1 = var_0.a.b.yx;
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(var_0.b.b.yx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(max(1183f, -709f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.b.zy, vec2<f32>(1171f, 1178f))), all(!vec3<bool>(var_0.b.a, false, global1.x)))), var_0.a.b.zy)));
    global1 = vec2<bool>(var_0.a.d > var_1.x, all(select(vec3<bool>(arg_1, true, var_0.b.a), vec3<bool>(true, arg_1, false), var_0.a.a)));
    return select(!vec3<bool>(true, var_0.a.a, _wgslsmith_f_op_f32(ceil(-770f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1661f)), select(select(!vec3<bool>(arg_1, true, false), !(!vec3<bool>(var_0.a.a, arg_1, false)), vec3<bool>(arg_1, true, any(vec2<bool>(var_0.a.a, true)))), vec3<bool>(true, all(select(vec4<bool>(true, arg_1, false, global1.x), vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, false, true, arg_1))), 8447i >= (arg_2.x ^ var_0.d.x)), select(vec3<bool>(false, !global1.x, true), vec3<bool>(false, var_0.b.c > var_0.b.b.x, !var_0.a.a), select(true, true, false))), true);
}

fn func_1() -> StorageBuffer {
    global1 = select(vec2<bool>(!all(func_2(u_input.a.x, global1.x, vec4<i32>(0i, -2147483647i, u_input.b.x, u_input.b.x), vec2<u32>(u_input.a.x, u_input.a.x))), all(func_2(u_input.a.x, func_2(34850u, false, vec4<i32>(23756i, u_input.b.x, 30029i, u_input.b.x), vec2<u32>(109299u, 0u)).x, vec4<i32>(0i, u_input.b.x, u_input.b.x, 27215i) >> (u_input.a % vec4<u32>(32u)), ~u_input.a.zy))), select(!vec2<bool>(global1.x & true, global1.x), select(select(vec2<bool>(false, false), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), vec2<bool>(global1.x, false)), func_2(u_input.a.x, false, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.a.x, u_input.a.x)).xx), vec2<bool>(global1.x, any(vec2<bool>(false, true))), vec2<bool>(global1.x | false, true)), select(select(vec2<bool>(global1.x, false), !vec2<bool>(false, global1.x), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), global1.x), select(!vec2<bool>(true, global1.x), vec2<bool>(false, false), any(vec3<bool>(false, false, global1.x))))), any(select(vec4<bool>(func_2(u_input.a.x, true, vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), u_input.a.xy).x, false, true, true), select(vec4<bool>(true, true, false, global1.x), !vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, global1.x, false, global1.x)), vec4<bool>(true, global1.x & global1.x, global1.x, true))));
    let var_0 = Struct_2(Struct_1(firstLeadingBit(abs(82187u)) > ~u_input.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(161f, 1183f, -457f), vec3<f32>(-1090f, -455f, 2258f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, -1000f, -324f) * vec3<f32>(-977f, 398f, -620f)), !global1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-430f * 3006f), _wgslsmith_f_op_f32(f32(-1f) * -1144f)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-326f))))), Struct_1(any(select(vec3<bool>(true, true, global1.x), !vec3<bool>(global1.x, true, global1.x), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-462f, _wgslsmith_f_op_f32(f32(-1f) * -1900f), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -100f), -803f), ~u_input.a, ~_wgslsmith_clamp_vec2_i32(u_input.b.yy, _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.zz | u_input.b.zx), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 2147483647i)) >> (~u_input.a.yx % vec2<u32>(32u))));
    var var_1 = func_2(_wgslsmith_mult_u32(~(~(~u_input.a.x)), ~(~_wgslsmith_dot_vec2_u32(var_0.c.yw, vec2<u32>(16625u, 1u)))), true, ~firstTrailingBit(countOneBits(-vec4<i32>(var_0.d.x, u_input.b.x, 0i, var_0.d.x))), vec2<u32>(55180u, u_input.a.x | _wgslsmith_div_u32(u_input.a.x, 4294967295u)) & vec2<u32>(max(~var_0.c.x, abs(1u)), var_0.c.x)).zz;
    let var_2 = Struct_1(func_2(352u, false, _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_0.d.x, u_input.b.x, 5658i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 57522i, var_0.d.x, var_0.d.x), ~vec4<i32>(-36449i, -378i, 2147483647i, 0i))), ~var_0.c.xz).x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.b + _wgslsmith_f_op_vec3_f32(-var_0.b.b)), _wgslsmith_f_op_vec3_f32(-var_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), -832f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-828f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f)))));
    let var_3 = 33577u;
    return StorageBuffer(firstLeadingBit(abs(u_input.a.x & _wgslsmith_mod_u32(var_3, 1u))), 2147483647i, _wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a.x, 0u, var_3, var_0.c.x) ^ abs(var_0.c)), reverseBits(vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(74694u, var_0.c.x), ~12903u, ~82990u))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(~0u), 0u), max(29137u, max(var_0.c.x, u_input.a.x) >> (~0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -35806i;
    let x = u_input.a;
    s_output = func_1();
}

