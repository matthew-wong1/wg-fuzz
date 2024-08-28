struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(254f, 1397f, 366f), true, vec2<u32>(4294967295u, 27880u), vec3<bool>(false, false, true));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<bool> {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(~48909i), u_input.a.x), u_input.a.x);
    return !vec3<bool>(all(vec3<bool>(global0.d.x, all(global0.d), any(global0.d.zy))), global0.b, !global0.d.x);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 253f, global0.a.x)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-297f, 912f, global0.a.x)) * _wgslsmith_f_op_vec3_f32(exp2(global0.a))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.a)))))), all(global0.d), global0.c, func_3(~59878u, arg_2.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(635f, var_0.a.x, global0.a.x, -240f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, -1000f, var_0.a.x, var_0.a.x), vec4<f32>(global0.a.x, -202f, var_0.a.x, global0.a.x)), true)), vec4<f32>(_wgslsmith_f_op_f32(1560f + var_0.a.x), _wgslsmith_f_op_f32(trunc(396f)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-824f * global0.a.x)))) + vec4<f32>(-1209f, global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), global0.a.x));
    let var_2 = 0u;
    let var_3 = Struct_2(var_0, !global0.d.zx);
    global0 = var_0;
    return var_3;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = 7837u;
    var var_1 = func_2(_wgslsmith_mult_u32(~26690u, ~arg_0.a.c.x), ~vec2<i32>(u_input.a.x, ~u_input.a.x), ~(_wgslsmith_mod_vec4_u32(~vec4<u32>(71941u, 0u, global0.c.x, 4294967295u), vec4<u32>(67901u, 21353u, 5507u, arg_0.a.c.x)) >> (countOneBits(vec4<u32>(3849u, global0.c.x, 4294967295u, 55009u)) % vec4<u32>(32u))), false).a;
    var var_2 = arg_0;
    var var_3 = select(countOneBits(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(0u, var_2.a.c.x, 1u)), ~vec3<u32>(u_input.b, 0u, 0u))), vec3<u32>(_wgslsmith_add_u32(~global0.c.x, arg_0.a.c.x), var_1.c.x, 1u), select(_wgslsmith_add_u32(25360u & arg_0.a.c.x, 1u), (var_1.c.x << (4294967295u % 32u)) & ~8542u, -2147483647i != ~u_input.a.x) >= _wgslsmith_mult_u32(~4294967295u, ~1u));
    let var_4 = false;
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a.a - global0.a), false, var_3.xy, global0.d);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, global0.a.x, -1785f))) - vec3<f32>(-631f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(1000f))))), false, vec2<u32>(u_input.b, firstLeadingBit(7618u)), !(!select(global0.d, global0.d, false)));
    let var_1 = global0.a.x;
    global0 = func_4(func_2(global0.c.x ^ u_input.b, ~u_input.a, max(~vec4<u32>(global0.c.x, 34365u, 41661u, 3278u), vec4<u32>(4294967295u, _wgslsmith_add_u32(var_0.c.x, global0.c.x), firstLeadingBit(global0.c.x), 4294967295u & u_input.b)), _wgslsmith_add_i32(-1i, ~u_input.a.x) <= 0i));
    let var_2 = _wgslsmith_mult_vec3_i32(~vec3<i32>(1i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x), vec3<i32>(67635i, _wgslsmith_sub_i32(u_input.a.x, 1i >> (global0.c.x % 32u)), countOneBits(_wgslsmith_mult_i32(u_input.a.x, -47824i)))) >> (abs((_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_0.c.x, u_input.b), vec3<u32>(0u, 1u, 29325u)) << (vec3<u32>(var_0.c.x, var_0.c.x, global0.c.x) % vec3<u32>(32u))) | abs(abs(vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x)))) % vec3<u32>(32u));
    return vec2<u32>(global0.c.x, ~4294967295u & max(~(~global0.c.x), ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(global0.a.x - global0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -535f)), global0.d.x, ~func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, -675f), vec2<f32>(1848f, -1138f), global0.d.x)) * _wgslsmith_div_vec2_f32(global0.a.zz, vec2<f32>(-453f, -1540f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.xy), global0.a.yx)), vec3<bool>(!any(global0.d), global0.d.x | select(false, true, global0.b), all(!select(vec4<bool>(false, global0.b, global0.d.x, false), vec4<bool>(global0.b, global0.d.x, global0.b, true), vec4<bool>(global0.d.x, global0.b, false, global0.b)))));
    let var_0 = _wgslsmith_f_op_f32(min(-2703f, global0.a.x));
    global0 = Struct_1(func_2(~(42293u >> (~u_input.b % 32u)), _wgslsmith_div_vec2_i32(max(u_input.a | u_input.a, min(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)))), ~select(vec4<u32>(global0.c.x, global0.c.x, u_input.b, 0u) >> (vec4<u32>(0u, 0u, u_input.b, 47489u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 4294967295u, global0.c.x, 0u), select(vec4<bool>(global0.b, true, false, false), vec4<bool>(global0.d.x, false, false, false), true)), all(!global0.d) || (all(vec4<bool>(global0.b, global0.d.x, global0.b, false)) | func_2(1u, vec2<i32>(-33117i, -14844i), vec4<u32>(0u, u_input.b, 3667u, u_input.b), true).a.d.x)).a.a, !(global0.d.x & any(vec4<bool>(true, true, true, global0.d.x))), ~(~(~(global0.c & vec2<u32>(u_input.b, u_input.b)))), vec3<bool>(false, (global0.b || (global0.b | global0.d.x)) | true, !(any(global0.d) && true)));
    global0 = func_4(func_2(87992u, u_input.a, vec4<u32>(select(4294967295u, ~global0.c.x, !global0.b), 1786u, firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 53112u)), _wgslsmith_sub_u32(u_input.b, _wgslsmith_clamp_u32(76779u, 14803u, global0.c.x))), global0.d.x));
    global0 = Struct_1(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(func_4(func_2(31999u, vec2<i32>(-1i, u_input.a.x), vec4<u32>(global0.c.x, 1u, u_input.b, 1u), global0.d.x)).a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1030f, global0.a.x) * _wgslsmith_f_op_f32(sign(-1000f)))), var_0), global0.b, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.c.x, _wgslsmith_sub_u32(global0.c.x, global0.c.x)), global0.c) & func_4(func_2(36572u, vec2<i32>(-1i, 0i), ~vec4<u32>(u_input.b, 42300u, u_input.b, 4294967295u), global0.d.x)).c, !select(!select(global0.d, vec3<bool>(global0.d.x, global0.b, true), true), global0.d, !func_4(Struct_2(Struct_1(vec3<f32>(-192f, 454f, global0.a.x), global0.b, global0.c, vec3<bool>(true, false, true)), vec2<bool>(global0.d.x, false))).d));
    global0 = func_2(_wgslsmith_sub_u32(~(~(~0u)), u_input.b), ~_wgslsmith_sub_vec2_i32(abs(u_input.a) | _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(1i, u_input.a.x)), select(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), u_input.a, global0.b)), ~_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4740u, global0.c.x, global0.c.x, global0.c.x), vec4<u32>(u_input.b, 24485u, global0.c.x, global0.c.x)), ~firstLeadingBit(vec4<u32>(89981u, u_input.b, u_input.b, global0.c.x))), any(select(func_2(u_input.b, u_input.a, vec4<u32>(1u, 0u, global0.c.x, u_input.b), true).a.d, global0.d, false)) && global0.b).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(355f, var_0, var_0), global0.a.x, abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, -53989i, u_input.a.x, -26107i)) | (-35351i << (u_input.b % 32u)), -22124i)));
}

