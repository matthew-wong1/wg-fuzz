struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 26110u;

var<private> global1: Struct_1;

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-47260i, -12443i), vec2<i32>(1i, -33922i), vec2<i32>(-71038i, 23330i), vec2<i32>(-53060i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 12886i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-35327i, 1857i), vec2<i32>(-8928i, 17049i), vec2<i32>(-17212i, 33077i), vec2<i32>(5217i, 5110i), vec2<i32>(-7488i, 0i), vec2<i32>(-28229i, -3114i), vec2<i32>(-8861i, -25357i), vec2<i32>(-56562i, -3999i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(5356i, i32(-2147483648)), vec2<i32>(0i, 19010i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(16770i, 2147483647i), vec2<i32>(-19685i, -17197i), vec2<i32>(i32(-2147483648), 60728i), vec2<i32>(i32(-2147483648), 6014i), vec2<i32>(3017i, i32(-2147483648)), vec2<i32>(6910i, -70021i), vec2<i32>(-46597i, 1i), vec2<i32>(65541i, -22286i), vec2<i32>(39908i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-9240i, 40652i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    global1 = Struct_1(!((_wgslsmith_f_op_f32(trunc(317f)) < 738f) | all(select(vec3<bool>(global1.a, false, true), vec3<bool>(false, true, false), global1.a))), _wgslsmith_sub_u32(u_input.b, 4294967295u), global2.x);
    global0 = firstLeadingBit(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(36598u, 4294967295u), 4294967295u, global1.b >> (global1.b % 32u))) & 23035u;
    var var_0 = Struct_1(global1.a == ((min(global2.x, global2.x) ^ 1i) != max(global1.c, global2.x)), ~_wgslsmith_add_u32(u_input.a, ~(~1u)), select(-global1.c, firstLeadingBit(firstTrailingBit(1i) >> (countOneBits(50953u) % 32u)), all(select(!vec3<bool>(global1.a, false, global1.a), select(vec3<bool>(global1.a, global1.a, true), vec3<bool>(true, false, global1.a), global1.a), vec3<bool>(global1.a, global1.a, global1.a)))));
    var var_1 = Struct_1(false, ~(~_wgslsmith_sub_u32(global1.b, 89084u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~global2.x, var_0.c, firstLeadingBit(var_0.c)), _wgslsmith_mult_vec3_i32(~global2.yzw, global2.zww)), _wgslsmith_sub_vec3_i32(global2.yxz, -countOneBits(global2.zyy))));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1490f, 1121f) * -928f), _wgslsmith_f_op_f32(ceil(-600f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-913f * -397f) - 1159f))), u_input.a, vec4<bool>(!(true | !var_0.a), false, all(vec3<bool>(true, true, var_1.a)), true), !(all(select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, true), var_1.a)) & !(!var_0.a)));
    return select(var_2.c, vec4<bool>(global1.a, -582f > var_2.a.x, var_2.d, all(vec3<bool>(true, true, true))), global1.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<f32> {
    global2 = vec4<i32>(~countOneBits(global1.c), _wgslsmith_sub_i32(1i, -1i), -global2.x, global1.c);
    global0 = 2245u;
    global0 = max(arg_1.b, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37287u, 4294967295u), vec3<u32>(1850u, arg_1.b, 4294967295u)), firstLeadingBit(0u)) >> (~(~(~arg_1.b)) % 32u));
    global3 = array<vec2<i32>, 32>();
    var var_0 = vec3<i32>(reverseBits(i32(-1i) * -global1.c), 0i, (global2.x >> (~1u % 32u)) << (global1.b % 32u)) | vec3<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.c, global1.c, 1i), global2.wyx), global2.yww), _wgslsmith_mod_i32(global2.x, 1i), global1.c);
    return vec3<f32>(_wgslsmith_f_op_f32(max(-888f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1331f, 1083f))), -471f);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<f32>) -> bool {
    global1 = Struct_1(global1.a, 1u, global2.x);
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_3(), Struct_2(vec3<f32>(698f, arg_3.x, -2190f), _wgslsmith_mod_u32(u_input.b, 4294967295u), vec4<bool>(global1.a, true, global1.a, global1.a), true))), arg_3.www), global1.b, !(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, global1.a, false), !vec4<bool>(global1.a, global1.a, global1.a, global1.a))), !global1.a);
    global1 = Struct_1(var_0.d, u_input.b, -arg_0);
    let var_1 = Struct_2(var_0.a, u_input.b, select(select(var_0.c, !var_0.c, !vec4<bool>(var_0.d, true, true, global1.a)), vec4<bool>(~global1.c != _wgslsmith_dot_vec3_i32(global2.xxx, vec3<i32>(14699i, arg_2.x, 20250i)), var_0.c.x && var_0.c.x, global2.x <= _wgslsmith_div_i32(global1.c, arg_0), all(var_0.c.yxy)), select(!vec4<bool>(false, false, false, global1.a), select(vec4<bool>(true, var_0.d, global1.a, var_0.d), var_0.c, true), var_0.c)), any(vec3<bool>(!var_0.c.x, all(var_0.c), !var_0.d)) | true);
    let var_2 = var_1;
    return true;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(all(vec3<bool>(func_2(arg_0, _wgslsmith_f_op_f32(2019f - 1912f), min(vec2<i32>(2147483647i, global1.c), global2.xx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 393f, -1218f, -1144f))), _wgslsmith_f_op_f32(f32(-1f) * -2768f) <= _wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(global1.a, true, false, global1.a), Struct_2(vec3<f32>(353f, -648f, 1111f), 1u, vec4<bool>(true, false, true, true), global1.a))).x, global1.a)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~(~15960u), 51456u, _wgslsmith_sub_u32(_wgslsmith_div_u32(global1.b, u_input.a), _wgslsmith_div_u32(48208u, 4294967295u))), ~select(global1.b, u_input.b & 1u, all(vec2<bool>(true, global1.a)))), abs(abs(_wgslsmith_mult_i32(global2.x, arg_0))) | global2.x);
    global1 = Struct_1(false, 20483u, arg_0);
    var var_1 = min(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, 28157i), ~global2.wz), ~1i, arg_0), global2.zzw);
    let var_2 = func_3().zx;
    global2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(abs(vec4<i32>(var_1.x, global2.x, global2.x, 39561i))), vec4<i32>(var_1.x, reverseBits(-18849i), min(1i, global1.c), global1.c)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(~48203i, var_0.c, i32(-1i) * -1038i, arg_0), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 1i, arg_0, arg_0), vec4<i32>(-13780i, global1.c, global1.c, -4237i)) | -vec4<i32>(var_1.x, var_0.c, arg_0, 43736i), ~(vec4<i32>(0i, global2.x, arg_0, -1i) << (vec4<u32>(u_input.a, 26367u, 4294967295u, global1.b) % vec4<u32>(32u)))), -(vec4<i32>(-13868i, abs(2147483647i), _wgslsmith_clamp_i32(2147483647i, -28560i, 1i), -6613i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    return Struct_1(var_0.a, ~(1u & firstTrailingBit(u_input.b)), ~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-48768i, ~global2.x, global2.x, firstTrailingBit(_wgslsmith_mult_i32(-global2.x, -2147483647i)) >> (u_input.b % 32u));
    var var_1 = -221f;
    let var_2 = -(~global2.yz);
    global0 = 0u;
    global1 = func_1(global1.c);
    global2 = var_0 & vec4<i32>(-1i, -1i, 0i, _wgslsmith_div_i32(_wgslsmith_add_i32(1675i, _wgslsmith_clamp_i32(-2147483647i, -16556i, global1.c)), 0i));
    let var_3 = select(vec4<bool>((true && global1.a) || !any(vec2<bool>(false, global1.a)), global1.a, !global1.a, any(!select(vec2<bool>(global1.a, true), vec2<bool>(true, global1.a), global1.a))), select(vec4<bool>(global1.a, u_input.b >= 1u, true, global1.a), select(vec4<bool>(true, global1.a, false, !global1.a), func_3(), select(vec4<bool>(true, true, global1.a, global1.a), vec4<bool>(true, global1.a, global1.a, global1.a), func_3().x)), !select(vec4<bool>(true, false, global1.a, global1.a), !vec4<bool>(false, global1.a, global1.a, false), global1.a)), func_3());
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(global1.b, 58567u, u_input.b)), vec3<u32>(u_input.a, global1.b, u_input.b | 6412u))), abs(~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1.b), vec2<u32>(u_input.a, global1.b)))), -102f);
}

