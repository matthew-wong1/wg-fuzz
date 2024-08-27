struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = min(~(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 38599u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 84814u)))), select(select(vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 557u), vec4<u32>(u_input.b.x, 0u, 80453u, u_input.b.x)), u_input.b.x), countOneBits(max(vec4<u32>(4294967295u, 1u, u_input.b.x, 72396u), vec4<u32>(u_input.b.x, 0u, 49876u, u_input.b.x))), false), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(110983u, u_input.b.x, u_input.b.x, 32826u)) << (firstTrailingBit(vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x)) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, max(4512u, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 4294967295u), vec4<u32>(~1u, firstLeadingBit(4294967295u), 1u, u_input.b.x)), vec4<bool>(any(arg_0.yw), any(vec2<bool>(false, true)), true, any(select(arg_0, vec4<bool>(true, true, arg_0.x, arg_0.x), false)))));
    var var_1 = Struct_3(Struct_1(arg_0, _wgslsmith_mod_vec2_u32(select(u_input.b.xx, vec2<u32>(38855u, 1u), !arg_0.x), u_input.b.yy)), Struct_1(vec4<bool>(arg_0.x, all(!vec2<bool>(false, arg_0.x)), true, all(arg_0.yz)), select(select(~vec2<u32>(u_input.b.x, 0u), u_input.b.yy, select(arg_0.yx, arg_0.xx, arg_0.x)), vec2<u32>(1u, ~u_input.b.x), select(arg_0.zy, !vec2<bool>(arg_0.x, arg_0.x), true | arg_0.x))), Struct_1(!arg_0, firstLeadingBit(u_input.b.xz)));
    var var_2 = -(~(u_input.a.x | abs(u_input.a.x | u_input.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f) * _wgslsmith_f_op_f32(abs(1088f))) + _wgslsmith_f_op_f32(max(-1226f, _wgslsmith_f_op_f32(f32(-1f) * -857f))))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1265f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -2139f))), 977f)), 539f) - vec3<f32>(_wgslsmith_f_op_f32(round(-599f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true))))));
    var var_1 = Struct_3(Struct_1(vec4<bool>(true, true, select(false, all(vec2<bool>(true, false)), any(vec3<bool>(true, true, false))), var_0.x >= _wgslsmith_f_op_f32(floor(var_0.x))), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 92525u), vec2<u32>(u_input.b.x, u_input.b.x)))), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, false)), false, select(false, false, false)), vec4<bool>(true, true, true, true)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b.xy)), Struct_1(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true)), reverseBits(u_input.b.zx)));
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(42258u, 4268u), u_input.b.yy), _wgslsmith_clamp_vec2_u32(var_1.a.b, vec2<u32>(95187u, var_1.a.b.x), vec2<u32>(var_1.b.b.x, var_1.a.b.x))), u_input.b.xx), u_input.b.x);
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(abs(1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - var_0.x), -294f);
    let var_3 = false;
    return Struct_3(var_1.c, var_1.a, var_1.c);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = -(~(i32(-1i) * -arg_1.x));
    var_0 = -42466i;
    var var_1 = Struct_2(func_2().a.a.ywx, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.a.b.x, u_input.b.x, arg_0.c.b.x, arg_0.c.b.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 33506u, arg_0.a.b.x, 0u), vec4<u32>(u_input.b.x, 65664u, arg_0.c.b.x, 4294967295u)), vec4<u32>(~34233u, ~75042u, ~arg_0.a.b.x, arg_0.a.b.x)), Struct_1(select(arg_0.a.a, select(func_2().a.a, vec4<bool>(true, arg_0.b.a.x, false, true), vec4<bool>(true, true, true, true)), select(!vec4<bool>(arg_0.c.a.x, arg_0.a.a.x, false, true), vec4<bool>(false, false, arg_0.a.a.x, arg_0.a.a.x), func_2().c.a.x)), ~(~(vec2<u32>(arg_0.b.b.x, 4294967295u) ^ arg_0.c.b))), arg_0.c, ~arg_0.a.b.x);
    var_0 = abs(~9498i);
    var_1 = Struct_2(vec3<bool>(~1u > _wgslsmith_dot_vec3_u32(firstTrailingBit(var_1.b.yzx), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(32031u, u_input.b.x, 10956u), vec3<u32>(4294967295u, var_1.b.x, u_input.b.x))), select(true, !(arg_0.b.a.x || true), var_1.a.x & (u_input.a.x > u_input.a.x)), all(vec3<bool>(false, true, arg_0.a.a.x))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(_wgslsmith_add_u32(1u, var_1.e), abs(4294967295u), arg_0.b.b.x, reverseBits(35749u)), max(~var_1.b, ~vec4<u32>(arg_0.a.b.x, 4294967295u, arg_0.b.b.x, 68632u))), var_1.b, vec4<u32>(arg_0.a.b.x, _wgslsmith_mult_u32(29923u, ~var_1.d.b.x), arg_0.b.b.x, _wgslsmith_div_u32(min(1u, arg_0.a.b.x), _wgslsmith_mod_u32(arg_0.a.b.x, 4294967295u)))), Struct_1(!vec4<bool>(true, var_1.d.a.x, !arg_0.b.a.x, var_1.c.a.x != arg_0.b.a.x), vec2<u32>(_wgslsmith_mod_u32(66307u, 33306u), ~39793u) << (abs(vec2<u32>(u_input.b.x, 44429u)) % vec2<u32>(32u))), func_2().a, _wgslsmith_add_u32(33345u, var_1.e));
    return func_2();
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = -462f;
    let var_2 = false;
    let var_3 = Struct_4(func_4(func_2(), (select(vec2<i32>(-14588i, 1i), vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(true, true)) & _wgslsmith_mod_vec2_i32(u_input.a.zz, u_input.a.xx)) << (func_2().c.b % vec2<u32>(32u))), !var_2, vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(var_2 || var_2, 36538i > u_input.a.x, var_2, !var_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(487f * var_1))), _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(2164f * 1691f)))), var_1), 729f, Struct_2(func_4(func_2(), max(reverseBits(u_input.a.yy), u_input.a.xz)).c.a.xyz, _wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x)), abs(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)) ^ vec4<u32>(u_input.b.x, 4294967295u, 45784u, u_input.b.x)), Struct_1(!func_2().a.a, u_input.b.yy), Struct_1(vec4<bool>(!var_2, true, !var_2, var_2 || true), firstTrailingBit(abs(u_input.b.yx))), u_input.b.x));
    var var_4 = var_3.a.a.a.xzx;
    return var_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(select(vec2<i32>(u_input.a.x, _wgslsmith_add_i32(-u_input.a.x, u_input.a.x ^ u_input.a.x)), ~(-vec2<i32>(-13918i, u_input.a.x)) | _wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.a.x, -33879i), u_input.a.zx, true), _wgslsmith_mult_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, 2147483647i))), all(vec4<bool>(true, true, true, true))));
    let var_1 = u_input.b.x;
    var var_2 = Struct_3(Struct_1(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, false), false), u_input.b.xz), func_1(), func_4(func_4(func_2(), -u_input.a.zy << ((vec2<u32>(45030u, 30u) ^ u_input.b.yz) % vec2<u32>(32u))), vec2<i32>(reverseBits(-25378i), _wgslsmith_div_i32(-1i, -13545i | var_0.x))).c);
    var_0 = u_input.a.xy;
    var var_3 = ~u_input.a;
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1328f * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(898f + 1237f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(519f))))), reverseBits(~vec3<u32>(1u, 2260u, 24230u) << (select(u_input.b, vec3<u32>(1u, 1u, var_1), true) % vec3<u32>(32u))));
}

