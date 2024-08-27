struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = 27653u;
    let var_1 = Struct_4(firstTrailingBit(vec4<u32>(u_input.a, _wgslsmith_add_u32(1u, select(1u, u_input.a, false)), firstTrailingBit(u_input.a) | 11638u, abs(~1u))));
    var var_2 = !vec4<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(all(vec2<bool>(false, false)), true, u_input.b.x != u_input.c.x, all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -318f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-363f, -1152f))), !(_wgslsmith_f_op_f32(select(1000f, -161f, true)) >= -403f));
    var_0 = ~_wgslsmith_dot_vec2_u32(min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_1.a.wy >> (var_1.a.zw % vec2<u32>(32u))), ~var_1.a.xx), max(vec2<u32>(u_input.a, 4294967295u) << (select(vec2<u32>(1u, var_1.a.x), vec2<u32>(4294967295u, var_1.a.x), var_2.x) % vec2<u32>(32u)), vec2<u32>(1u, 1u)));
    var_2 = select(select(vec4<bool>(!var_2.x, _wgslsmith_f_op_f32(sign(249f)) < -301f, var_2.x, false), vec4<bool>(var_2.x, true || var_2.x, any(select(var_2.xxz, var_2.xxy, var_2.zyx)), false), select(true, !(!var_2.x), all(!vec3<bool>(var_2.x, var_2.x, true)))), select(vec4<bool>(any(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), var_2.x, all(vec2<bool>(var_2.x, false)) || any(vec4<bool>(true, var_2.x, var_2.x, false)), true), vec4<bool>(var_2.x, var_2.x, true, any(vec2<bool>(var_2.x, var_2.x))), true), vec4<bool>(!var_2.x, var_2.x, !var_2.x, false));
    return ((all(!vec4<bool>(var_2.x, var_2.x, var_2.x, false)) && (var_2.x || var_2.x)) & any(!select(vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(true, true, true, var_2.x), false))) & (true && !var_2.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = _wgslsmith_mod_i32(reverseBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(~u_input.b.x, 1i), countOneBits(-u_input.b.x))), -13553i);
    var var_1 = arg_3.d.b.a.x;
    let var_2 = vec3<u32>(firstLeadingBit(arg_3.d.a.x), 1u, 0u);
    let var_3 = select(arg_0, vec2<bool>(any(select(arg_0, arg_0, true)), arg_3.a), !select(1i <= var_0, countOneBits(u_input.b.x) <= 0i, !func_3()));
    var_1 = -1108f;
    return vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, u_input.a) << (var_2.yy % vec2<u32>(32u)), ~var_2.xx), var_2.xz), var_2.yx), 0u);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(~1u, ~u_input.a));
    var var_1 = ~vec4<u32>(min(var_0.x, _wgslsmith_div_u32(~u_input.a, abs(u_input.a))), 4294967295u, _wgslsmith_mult_u32(u_input.a, ~u_input.a), u_input.a << (9099u % 32u));
    var var_2 = Struct_3(_wgslsmith_mod_u32(var_1.x, 1u) < 55089u, Struct_2(_wgslsmith_add_vec2_u32(abs(countOneBits(vec2<u32>(var_1.x, u_input.a))), func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), true), Struct_1(vec3<f32>(1000f, -480f, -2040f)), -1155f, Struct_3(true, Struct_2(var_1.yy, Struct_1(vec3<f32>(-463f, 927f, 329f))), vec4<u32>(u_input.a, u_input.a, var_0.x, var_1.x), Struct_2(var_1.wx, Struct_1(vec3<f32>(-1000f, 113f, -396f))), vec2<f32>(-230f, 691f)))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-809f, -540f, 2291f)), vec3<f32>(-903f, 1000f, -119f)))), max(abs(vec4<u32>(var_0.x & var_1.x, ~0u, 1u, 4294967295u)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(567u, var_0.x, 480u, 0u)), vec4<u32>(var_0.x, 35570u, 15271u, var_1.x)), var_1.x, ~32263u)), Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~71513u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(var_1.x, 32917u, 92189u))), ~(~vec2<u32>(71080u, var_1.x))), Struct_1(vec3<f32>(-786f, -846f, 1410f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -535f), -1010f))));
    var_2 = Struct_3(!all(!select(vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(var_2.a, false, var_2.a), vec3<bool>(false, var_2.a, var_2.a))), Struct_2(var_1.xy, var_2.b.b), var_2.c, Struct_2(_wgslsmith_mod_vec2_u32(var_1.zy, vec2<u32>(1u, 24156u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(var_2.e.x)), var_2.b.b.a.x, 1000f))), var_2.b.b.a.zy);
    var_1 = _wgslsmith_mod_vec4_u32(var_2.c, var_2.c);
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = Struct_2(_wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(~var_0.a, var_0.a)), max(select(var_0.a, vec2<u32>(var_0.a.x, 34206u), false), vec2<u32>(var_0.a.x, 36130u)) ^ select(select(vec2<u32>(83715u, 1u), var_0.a, vec2<bool>(false, false)), var_0.a, true)), func_1().b);
    var_0 = func_1();
    var_0 = Struct_2(_wgslsmith_sub_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(8213u, var_0.a.x))), ~select(abs(var_0.a), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 95160u), vec2<u32>(var_0.a.x, 0u)), true)), var_0.b);
    var_0 = Struct_2(max(var_0.a, _wgslsmith_mult_vec2_u32(min(var_0.a, vec2<u32>(5058u, 0u)), ~var_0.a)), Struct_1(func_1().b.a));
    var_0 = Struct_2(reverseBits(var_0.a), var_0.b);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.a.x, var_0.b.a.x, false)) * _wgslsmith_f_op_f32(ceil(var_0.b.a.x))) - -573f), var_0.b.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.a.x - 1167f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a.x), -626f))), -709f);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<bool>(true, !func_3()), var_0.b, -830f, Struct_3(1i == ~u_input.b.x, func_1(), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.x, u_input.a, 1u, u_input.a), vec4<u32>(4294967295u, 6200u, var_0.a.x, 68460u)), func_1(), vec2<f32>(_wgslsmith_f_op_f32(324f * 699f), var_2.b.a.x))).x, _wgslsmith_f_op_f32(244f - _wgslsmith_f_op_f32(-var_2.b.a.x)), _wgslsmith_f_op_vec3_f32(select(var_1.wwy, _wgslsmith_f_op_vec3_f32(var_2.b.a - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b.a.x, 482f, var_0.b.a.x)))), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))))));
}

