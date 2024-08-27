struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2036f + 873f) + _wgslsmith_f_op_f32(max(-624f, 2576f)))), 793f))));
    var_0 = _wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -957f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-879f))))))) - _wgslsmith_f_op_f32(sign(-421f)));
    var var_2 = firstTrailingBit(abs(vec4<i32>(~(-59539i), ~_wgslsmith_mult_i32(u_input.c.x, arg_1), -(~u_input.a), _wgslsmith_mult_i32(u_input.a, ~0i))));
    let var_3 = firstLeadingBit(countOneBits(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, 24684u), u_input.d), abs(1u), ~_wgslsmith_mod_u32(u_input.d, u_input.d), u_input.d)));
    return 0u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = (-22018i << (func_3(-u_input.c.yy | u_input.c.yw, ~(i32(-1i) * -1i)) % 32u)) > (_wgslsmith_dot_vec3_i32(~(u_input.c.xzz >> (vec3<u32>(u_input.b.x, var_0, u_input.b.x) % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(1i, -1i, -2147483647i))) << (_wgslsmith_mult_u32(42677u, ~select(arg_0.x, 36773u, true)) % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(286f)) - _wgslsmith_f_op_f32(710f - 490f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -464f))), -508f, -461f));
    var var_3 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~4294967295u, arg_0.x, ~var_0), ~min(vec4<u32>(0u, u_input.d, u_input.b.x, u_input.d), u_input.b)) > firstTrailingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(405f, _wgslsmith_f_op_f32(exp2(var_2.x))))), var_1);
    let var_4 = Struct_3(Struct_2(Struct_1((u_input.b.xxx | vec3<u32>(var_0, u_input.d, 1u)) ^ _wgslsmith_sub_vec3_u32(u_input.b.yyw, vec3<u32>(0u, 0u, 1u)), u_input.c >> (_wgslsmith_add_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u))), Struct_1((u_input.b.yzw ^ vec3<u32>(u_input.b.x, 18053u, arg_0.x)) >> (u_input.b.wzy % vec3<u32>(32u)), vec4<i32>(-1i & u_input.c.x, countOneBits(u_input.c.x), -16814i, u_input.c.x)), _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.c.zzw, ~u_input.c.xzy)), ~_wgslsmith_mult_u32(u_input.b.x, firstTrailingBit(4294967295u)));
    return var_4.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32) -> bool {
    let var_0 = arg_0.c;
    var var_1 = select(vec3<bool>(arg_1.x, !arg_1.x && !select(true, arg_1.x, arg_1.x), all(select(!vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), !(!(!vec3<bool>(arg_1.x, arg_1.x, true))), any(vec3<bool>(_wgslsmith_f_op_f32(step(var_0, 145f)) == _wgslsmith_f_op_f32(-arg_0.c), all(vec2<bool>(true, arg_1.x)), 1708f < arg_0.c)));
    var var_2 = arg_0.a.b.xyy | vec3<i32>(reverseBits(_wgslsmith_div_i32(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -1i, u_input.c.x), vec4<i32>(-1i, 1i, -2147483647i, -15235i)))), -52459i, abs(2147483647i));
    var var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(u_input.b.xxy, abs(vec3<u32>(u_input.d, u_input.d, 4294967295u))), vec4<i32>(1i, i32(-1i) * -2147483647i, u_input.c.x, _wgslsmith_mod_i32(var_2.x, 2147483647i)) & u_input.c), func_2(u_input.b.zx), _wgslsmith_f_op_f32(-arg_0.c), (_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.x, arg_2), ~1i) >> (14229u % 32u)) >> (1u % 32u));
    var_3 = arg_0;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<bool>(func_4(Struct_2(Struct_1(u_input.b.xyw << (u_input.b.yzz % vec3<u32>(32u)), abs(u_input.c)), func_2(u_input.b.xx), _wgslsmith_f_op_f32(max(812f, -1558f)), u_input.a), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), vec2<bool>(true, true)), u_input.c.x), all(vec4<bool>(any(vec3<bool>(true, true, true)), true, func_4(Struct_2(Struct_1(vec3<u32>(0u, 13810u, u_input.b.x), u_input.c), Struct_1(vec3<u32>(u_input.d, 914u, 0u), vec4<i32>(u_input.c.x, 1i, u_input.a, u_input.c.x)), -1000f, u_input.c.x), select(vec2<bool>(false, true), vec2<bool>(true, false), true), countOneBits(1i)), select(u_input.d <= u_input.b.x, false, all(vec4<bool>(false, true, false, false))))), !(0u >= _wgslsmith_dot_vec3_u32(select(vec3<u32>(763u, u_input.d, 118256u), vec3<u32>(u_input.b.x, 21783u, 4294967295u), false), u_input.b.xwy)), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), true), true)));
    let var_1 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(29204u, u_input.b.x), ~func_2(u_input.b.xz & vec2<u32>(4294967295u, u_input.b.x)).a.zx));
    var var_2 = 16430u;
    var var_3 = true;
    let var_4 = u_input.b.x;
    return func_2(u_input.b.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(u_input.b.xxy), vec4<i32>(1599i, _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-3933i), u_input.a, -33670i, select(u_input.c.x, 15712i, false)), u_input.c << (u_input.b % vec4<u32>(32u)))));
    var_0 = func_1();
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a ^ ~vec3<u32>(71335u, u_input.d, var_0.a.x), u_input.c), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(325f - 971f)))), abs(func_1().b.x)), ~(~u_input.b.x));
    var_0 = func_1();
    let var_2 = u_input.c.x;
    var var_3 = var_1.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b, ~(-1i), var_1.a.c);
}

