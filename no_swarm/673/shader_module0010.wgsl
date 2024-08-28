struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_2(_wgslsmith_mult_i32(~(i32(-1i) * -35894i), 1i << ((u_input.e >> ((u_input.c.x & 86237u) % 32u)) % 32u)), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.e, u_input.c.x), reverseBits(vec3<u32>(u_input.c.x, u_input.e, 1u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 4294967295u, 4294967295u), vec3<u32>(0u, u_input.c.x, u_input.c.x))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(93373u, 1107u, 4294967295u, u_input.e), vec4<u32>(0u, 4294967295u, u_input.e, 38302u) ^ vec4<u32>(u_input.c.x, 22105u, 27930u, 42173u)), 120u), ~u_input.c.x ^ _wgslsmith_clamp_u32(countOneBits(u_input.e), 60807u, 11720u & u_input.e)));
    global0 = select(!(!select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(true, false, global0.x))), select(!(!select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x))), vec3<bool>(select(global0.x, false, true), true, true || global0.x), !(!(false & global0.x))), all(vec4<bool>(false, true, true, true)));
    var var_1 = var_0.b.zyy;
    global0 = vec3<bool>(!any(vec2<bool>(global0.x, true)), true, any(vec3<bool>(true, true, true)));
    var var_2 = max(var_0.b.zzy, max(((var_0.b.zyx >> (var_0.b.ywy % vec3<u32>(32u))) >> (var_0.b.zwx % vec3<u32>(32u))) | vec3<u32>(~var_0.b.x, var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1276u, var_1.x, 1u), var_0.b.yxx)), _wgslsmith_clamp_vec3_u32(var_0.b.ywz, var_0.b.wxy, ~(~vec3<u32>(63565u, var_0.b.x, 48187u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2442f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(2970f)), _wgslsmith_f_op_f32(1f * -845f)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(642f, 1000f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-620f * 873f))));
}

fn func_2() -> i32 {
    var var_0 = vec3<bool>(global0.x, global0.x, global0.x);
    let var_1 = firstTrailingBit(vec4<u32>(~abs(_wgslsmith_mult_u32(4294967295u, 1u)), u_input.e >> (max(firstTrailingBit(18051u), u_input.c.x) % 32u), countOneBits(u_input.e), u_input.c.x ^ u_input.c.x));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~u_input.c.x, 10691u), min(~(~u_input.c.x), 80959u));
    let var_3 = !var_0.zy;
    global0 = select(!vec3<bool>(func_3(), ~1i > u_input.d.x, !global0.x), select(select(vec3<bool>(var_3.x, select(true, false, global0.x), all(vec4<bool>(var_3.x, true, var_3.x, var_0.x))), select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_3.x, var_0.x, var_0.x), var_0.x), vec3<bool>(true, var_3.x, false), !vec3<bool>(global0.x, var_3.x, var_0.x)), var_1.x == _wgslsmith_dot_vec3_u32(var_1.xwy, vec3<u32>(1u, u_input.e, 21875u))), !vec3<bool>(false, !global0.x, any(vec4<bool>(var_3.x, false, var_0.x, false))), all(var_3)), global0.x);
    return u_input.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-204f * -489f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -703f, false))))), any(!(!select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, false, true, true), vec4<bool>(true, global0.x, false, false)))), true, _wgslsmith_div_vec2_i32(abs(min(vec2<i32>(u_input.a, 2147483647i), u_input.b ^ vec2<i32>(u_input.b.x, u_input.b.x))), select(vec2<i32>(func_2(), u_input.b.x), abs(u_input.d.zy | u_input.d.yy), !global0.xz)), _wgslsmith_sub_i32(1551i << (_wgslsmith_add_u32(37184u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e), u_input.c)) % 32u), 2147483647i));
    let var_1 = u_input.c.x;
    global0 = !vec3<bool>(var_0.b, var_0.a < _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(f32(-1f) * -389f)), all(select(!vec2<bool>(var_0.c, global0.x), select(vec2<bool>(var_0.b, var_0.c), global0.zx, vec2<bool>(global0.x, global0.x)), true)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-774f, 1591f))), true, true, _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(0i, var_0.e)), vec2<i32>(1i, 1i)), -1i);
    var var_2 = Struct_2(abs(_wgslsmith_div_i32(~(-83615i), u_input.d.x)), ~select(vec4<u32>(u_input.c.x, 4294967295u, var_1, u_input.e) << (vec4<u32>(var_1, 13853u, 1u, 6020u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, u_input.e, 4294967295u), vec4<u32>(var_1, 45829u, var_1, u_input.e)), ~1u, 39338u, 18416u), !(!vec4<bool>(true, true, true, var_0.c))));
    return Struct_2(var_0.e, _wgslsmith_mult_vec4_u32(var_2.b, vec4<u32>(var_2.b.x, ~(~56377u), ~_wgslsmith_sub_u32(var_2.b.x, var_2.b.x), var_1 ^ ~91976u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = vec2<f32>(arg_3.a, arg_3.a);
    global0 = !vec3<bool>(_wgslsmith_f_op_f32(-155f * 898f) > _wgslsmith_f_op_f32(floor(1849f)), true, !arg_3.c);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1050f)), true, !any(vec2<bool>(false, true)), firstLeadingBit(-arg_3.d), u_input.b.x);
    global0 = vec3<bool>(arg_3.b, true, all(vec4<bool>(arg_3.c, var_1.c, !(!global0.x), !(arg_3.c || var_1.b))));
    var var_2 = ~(-40153i);
    return !(-arg_3.d.x <= -_wgslsmith_sub_i32(arg_3.d.x, 48804i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!vec3<bool>(abs(45773u) > u_input.e, global0.x, false));
    var var_0 = vec3<bool>(global0.x, u_input.e > _wgslsmith_mod_u32(~4294967295u, u_input.e), func_4(Struct_2((2147483647i >> (u_input.e % 32u)) >> (~u_input.c.x % 32u), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(39073u, 1u, u_input.c.x, u_input.e), vec4<u32>(u_input.c.x, 69193u, 2235u, u_input.e)))), ~(~(~vec4<u32>(u_input.e, 0u, 46619u, 7722u))), func_1(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)), !(!global0.x), global0.x, u_input.d.xy << (select(vec2<u32>(u_input.c.x, 33251u), vec2<u32>(49650u, u_input.c.x), true) % vec2<u32>(32u)), -9234i)));
    var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-select(u_input.b.x, 56808i, var_0.x) ^ -1i, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a | u_input.d.x, 1i), ~u_input.d.yy), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-2147483647i, -6008i, 1i), vec3<u32>(~select(firstLeadingBit(0u), ~u_input.c.x, false && var_0.x), u_input.e, reverseBits(10202u)), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(firstLeadingBit(u_input.e), ~71468u)), u_input.c.x, 4294967295u), 29293i);
}

