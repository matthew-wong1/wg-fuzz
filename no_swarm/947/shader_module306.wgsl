struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(all(vec2<bool>(true, true)));
    var_0 = Struct_2(select(true, true, false | var_0.a));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_2(var_0.a);
    var var_3 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1095f)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-597f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -474f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    let var_0 = vec2<i32>(u_input.c.x, ~30879i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(var_0.x, vec3<i32>(u_input.c.x, 7424i, 2147483647i) << (arg_2 % vec3<u32>(32u)), arg_0, vec2<u32>(arg_1, 11954u))))), _wgslsmith_f_op_f32(-587f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(445f + 2365f) - _wgslsmith_div_f32(1529f, -842f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(532f, -153f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + vec3<f32>(-124f, 195f, var_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1000f, var_1.x), vec3<f32>(var_1.x, -438f, var_1.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-185f, var_1.x, -488f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1092f, 442f, var_1.x), vec3<f32>(1227f, 769f, var_1.x)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 117f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, 447f, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -978f, _wgslsmith_div_f32(-1195f, -151f)))))));
    let var_2 = ~arg_2.x;
    return 1i | countOneBits(u_input.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: i32) -> Struct_3 {
    let var_0 = !arg_1.x;
    let var_1 = reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(func_2(Struct_1(vec2<u32>(u_input.a.x, arg_0.a.x)), u_input.a.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -35030i, 1207i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, 1i)), -51825i, reverseBits(-5511i)), vec4<i32>(0i, 1240i, min(u_input.c.x, -2147483647i), -2147483647i)), abs(_wgslsmith_add_i32(~(-1108i), -arg_3)), ~(-arg_3), 10422i));
    let var_2 = abs(vec3<i32>(1i, -firstTrailingBit(-22948i), u_input.d.x) & vec3<i32>(2147483647i, abs(u_input.b), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d.x, 1i, 52982i, var_1.x)), var_1)));
    var var_3 = Struct_3(1i, vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, -1i) >> (vec4<u32>(30497u, 37618u, 0u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(0i, 2147483647i, u_input.d.x, 10219i))), 2147483647i, -select(27282i, 1i, var_0)), Struct_1(_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(u_input.a.x, 6279u)), abs(arg_0.a))), vec2<u32>(abs(~u_input.a.x), (select(37901u, 4294967295u, var_0) | arg_0.a.x) ^ 122626u));
    let var_4 = Struct_3(var_2.x, ~(-abs(var_1.yzx | vec3<i32>(-13849i, -9171i, var_2.x))), arg_0, ~_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.a.xy), ~var_3.d ^ ~vec2<u32>(10944u, 1u)));
    return var_4;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = func_1(Struct_1(arg_1.c.a), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, any(vec3<bool>(true, false, false))), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true)), Struct_5(-301f), _wgslsmith_sub_i32(select(firstLeadingBit(~(-2147483647i)), 1i, (arg_0.a != arg_0.a) & true), _wgslsmith_add_i32(-arg_2 ^ 1i, -2147483647i)));
    var_0 = func_1(Struct_1(countOneBits(vec2<u32>(~arg_1.d.x, ~var_0.d.x))), select(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), false, any(vec3<bool>(false, false, true))), !vec4<bool>(true, false, u_input.a.x <= u_input.a.x, true), any(vec4<bool>(false, arg_0.a >= 790f, true, true))), Struct_5(arg_0.a), 1177i);
    let var_1 = ~(select(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 41916u, arg_1.c.a.x), select(vec4<u32>(19598u, 40034u, u_input.a.x, 10597u), vec4<u32>(13170u, 61695u, arg_1.c.a.x, u_input.a.x), true)), ~(~vec4<u32>(35459u, u_input.a.x, u_input.a.x, 0u)), false) << (vec4<u32>(_wgslsmith_mult_u32(93391u >> (u_input.a.x % 32u), ~3281u), ~countOneBits(3171u), arg_1.c.a.x, _wgslsmith_mult_u32(countOneBits(2401u), func_1(Struct_1(vec2<u32>(var_0.d.x, 44983u)), vec4<bool>(false, false, true, false), Struct_5(arg_0.a), arg_1.b.x).c.a.x)) % vec4<u32>(32u)));
    let var_2 = any(vec2<bool>(select(-213f <= arg_0.a, true, false), true)) & (_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(arg_1.a), ~(-1i), arg_2, 1i), -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b, 2147483647i, arg_2), vec4<i32>(u_input.b, arg_1.b.x, -1i, -2147483647i))) == _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.a, -45626i), 28993i), arg_2 & ~30784i));
    var_0 = func_1(func_1(Struct_1(max(var_1.yy, countOneBits(var_1.ww))), select(!vec4<bool>(var_2, var_2, var_2, true), !(!vec4<bool>(false, var_2, true, var_2)), true), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_0.a))), select(firstTrailingBit(arg_2 | -31277i), _wgslsmith_div_i32(~0i, var_0.a), var_2)).c, !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(var_2, var_2, true, true), vec4<bool>(false, var_2, false, var_2)))), Struct_5(884f), -2147483647i);
    return -1299f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 4294967295u), 9753u);
    let var_1 = !((9325i > _wgslsmith_clamp_i32(32969i, u_input.b, u_input.b)) || true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1078f, 510f)))))), _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1422f * -1234f) + -264f), -830f)) - -433f), _wgslsmith_f_op_f32(func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(325f - 1707f))), func_1(Struct_1(_wgslsmith_mult_vec2_u32(u_input.a.xy, vec2<u32>(42826u, var_0))), vec4<bool>(true && var_1, var_1, !var_1, true), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1145f)), u_input.b), -(_wgslsmith_mod_i32(-33491i, u_input.b) << (4294967295u % 32u)))));
    let var_3 = func_1(func_1(Struct_1(u_input.a.yz), select(select(!vec4<bool>(var_1, var_1, var_1, false), select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(true, true, var_1, var_1), var_1), var_1 || true), !select(vec4<bool>(false, false, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), var_1), vec4<bool>(false, false || var_1, var_1, !var_1)), Struct_5(_wgslsmith_f_op_f32(min(var_2.x, var_2.x))), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_sub_i32(func_1(Struct_1(u_input.a.xy), vec4<bool>(var_1, var_1, true, true), Struct_5(-908f), u_input.d.x).b.x, -u_input.c.x), -1i)).c, vec4<bool>(!(!var_1), any(!vec3<bool>(var_1, true, var_1)), var_1, var_1), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(568f - -1000f) * 125f))), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d.x, u_input.b), -12831i) & -30798i).c;
    let var_4 = !vec4<bool>(false, any(!vec4<bool>(var_1, false, var_1, var_1)), all(select(!vec3<bool>(var_1, false, var_1), vec3<bool>(true, var_1, true), true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -((vec2<i32>(2147483647i, 2147483647i) & u_input.d.zz) >> (var_3.a % vec2<u32>(32u))));
}

