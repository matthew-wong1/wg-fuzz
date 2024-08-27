struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> bool {
    return true;
}

fn func_3() -> u32 {
    var var_0 = abs(u_input.d.zzy);
    let var_1 = select(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), vec2<bool>(true, all(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true))), vec2<bool>(false, true), true), vec2<bool>(func_1(~vec3<u32>(var_0.x, 4294967295u, 52505u) | u_input.d.zyy, u_input.e), func_1(_wgslsmith_sub_vec3_u32(u_input.d.wwz, u_input.d.yxx), abs(u_input.e))), !vec2<bool>(true, _wgslsmith_f_op_f32(-1671f + -678f) <= _wgslsmith_f_op_f32(step(1424f, -654f))));
    var_0 = u_input.d.ywx;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-591f, -1221f))))));
    var_2 = -740f;
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zxz));
    var var_1 = ~firstLeadingBit(~min(func_3(), _wgslsmith_clamp_u32(arg_0.b.x, 16635u, arg_0.b.x)));
    var_1 = func_3();
    var var_2 = firstTrailingBit(-_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 12661i, 1i), vec3<i32>(26127i, -51738i, -1i)), u_input.e.xxz));
    var var_3 = Struct_3(!(-789f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1.x))))));
    return !select(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_3.a, true, var_3.a, true), vec4<bool>(true, var_3.a, false, var_3.a)), vec4<bool>(var_3.a, arg_0.c, var_3.a, false), !arg_0.c), select(!(!vec4<bool>(true, arg_0.c, arg_0.c, true)), vec4<bool>(-1705f <= arg_1.x, true, any(vec3<bool>(true, var_3.a, true)), var_3.a & var_3.a), select(!vec4<bool>(var_3.a, var_3.a, arg_0.c, arg_0.c), select(vec4<bool>(var_3.a, var_3.a, true, arg_0.c), vec4<bool>(true, var_3.a, false, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), arg_0.c))), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>((func_1(vec3<u32>(26023u, u_input.c, u_input.d.x), vec4<i32>(-2147483647i, u_input.e.x, -1i, u_input.e.x)) == true) & func_1(vec3<u32>(55017u, 0u, 114680u), vec4<i32>(u_input.a.x, 4558i, u_input.e.x, u_input.b)), _wgslsmith_dot_vec3_i32(abs(u_input.e.wzx), u_input.e.xzz) != 1i, true, -854f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(130f)) + _wgslsmith_f_op_f32(604f - -3104f))), select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, true, true, true), u_input.e.x > 2147483647i), false), vec4<bool>(true, !any(vec3<bool>(true, false, true)), false, all(vec4<bool>(true, true, true, true))), func_2(Struct_1(-u_input.e.xx, vec2<u32>(u_input.c, u_input.d.x), all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(147f - 144f)), vec4<f32>(-920f, -1127f, -123f, -551f))), vec4<bool>(true, all(vec3<bool>(true, true, true)), false, any(vec2<bool>(true, false))));
    let var_1 = Struct_3(all(vec2<bool>(any(var_0.zz) & true, !var_0.x && !var_0.x)));
    let var_2 = u_input.e.wwx;
    let var_3 = Struct_1(~(-vec2<i32>(_wgslsmith_add_i32(var_2.x, -1647i), var_2.x)), vec2<u32>(1u, ~func_3()), func_1(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(1u, u_input.c, 32114u), abs(u_input.d.zww)), min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 60313u, 4294967295u), vec3<u32>(1u, 72413u, 56796u)), vec3<u32>(0u, 4294967295u, 4294967295u)), true), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f))));
    var var_4 = Struct_2(u_input.a.x & (~var_3.a.x & _wgslsmith_dot_vec2_i32(var_2.xx >> (vec2<u32>(34950u, var_3.b.x) % vec2<u32>(32u)), firstLeadingBit(u_input.e.xz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1495f, var_3.d, -1600f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.d, -519f, var_3.d)))), vec2<i32>(reverseBits(-var_2.x), select(var_3.a.x, ~(~u_input.b), func_2(Struct_1(u_input.e.zw, vec2<u32>(4294967295u, 1u), var_1.a, var_3.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, -883f, var_3.d, var_3.d))).x)), select(-reverseBits(vec2<i32>(u_input.e.x, 18906i)), vec2<i32>(reverseBits(firstLeadingBit(1i)), _wgslsmith_add_i32(1i, var_2.x)), select(vec2<bool>(var_3.c != var_3.c, any(vec2<bool>(var_3.c, true))), select(vec2<bool>(true, false), func_2(var_3, vec4<f32>(941f, -2488f, 115f, -1000f)).yw, vec2<bool>(false, false)), func_2(Struct_1(var_2.yy, vec2<u32>(17755u, u_input.c), false, var_3.d), vec4<f32>(-1508f, 462f, var_3.d, var_3.d)).yw)), u_input.c);
    var var_5 = select(~11258u, 1u >> (u_input.c % 32u), u_input.c <= var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, 133470u), 1u), var_4.e)), ~u_input.e.zzz, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-7771i, u_input.e.x, max(-87936i, var_4.a), 58340i)), vec4<i32>(-8444i, -var_3.a.x, _wgslsmith_clamp_i32(2147483647i, abs(1i), reverseBits(-1i)), abs(u_input.a.x))), var_3.d, var_3.d);
}

