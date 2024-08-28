struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) + _wgslsmith_f_op_f32(-arg_1.a.x))), firstLeadingBit(_wgslsmith_sub_vec3_i32(u_input.a.wxz, vec3<i32>(firstTrailingBit(0i), -u_input.c.x, -1i))), abs(global0.x));
    let var_1 = Struct_1(var_0.a.xwy, arg_1.b);
    var var_2 = var_0;
    let var_3 = Struct_2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1016f))), -155f, var_0.a.x), _wgslsmith_mult_vec3_i32(var_2.b, firstTrailingBit(_wgslsmith_add_vec3_i32(var_2.b, abs(u_input.b)))), global0.x);
    var var_4 = 1i;
    return all(select(select(select(!vec3<bool>(arg_0, true, var_1.b.x), vec3<bool>(true, true, true), !arg_0), !select(vec3<bool>(true, arg_0, false), vec3<bool>(false, true, arg_1.b.x), arg_1.b.x), arg_1.b.x), select(vec3<bool>(false, false && var_1.b.x, true), vec3<bool>(var_1.b.x, true, var_1.b.x), (arg_1.b.x && false) & true), vec3<bool>(80620i >= countOneBits(var_3.b.x), !any(vec3<bool>(true, var_1.b.x, false)), arg_0)));
}

fn func_2() -> vec4<u32> {
    var var_0 = vec3<bool>(false, any(vec2<bool>(select(true, true, func_3(false, Struct_1(vec3<f32>(320f, 134f, 1483f), vec2<bool>(true, true)))), all(vec3<bool>(false, true, false)) | false)), true);
    var var_1 = ~(~(~(4294967295u | global0.x)) ^ ~(~69804u << (0u % 32u)));
    var_0 = select(!select(vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), true, 0u == global0.x), vec3<bool>(u_input.a.x > u_input.c.x, any(vec2<bool>(var_0.x, false)), false), ~(-12183i) == countOneBits(u_input.a.x)), select(vec3<bool>(!(var_0.x & true), !(!var_0.x), var_0.x), select(!(!vec3<bool>(false, var_0.x, false)), vec3<bool>(true, !var_0.x, var_0.x), true), (_wgslsmith_sub_i32(-22931i, 0i) & ~u_input.b.x) <= (-u_input.b.x ^ select(0i, -2147483647i, false))), select(select(!vec3<bool>(true, var_0.x, false), vec3<bool>(true, true, true), !vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(var_0.x, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), global0.x < global0.x), false));
    var_0 = vec3<bool>(any(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), all(vec2<bool>(var_0.x, true))), select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), !any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), all(vec2<bool>(true, var_0.x)), u_input.a.x > _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2934i, 2147483647i, u_input.b.x, u_input.c.x), u_input.c), 60367i & u_input.a.x), u_input.a.yw));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1477f, 1489f, 491f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(795f, 608f, -429f))) + vec3<f32>(2533f, 736f, 1000f)))), !select(var_0.zz, select(select(vec2<bool>(false, false), var_0.xy, var_0.zz), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), var_0.x), false), vec2<bool>(var_0.x, true)));
    return min(~reverseBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 842u, 4294967295u, 1u)), vec4<u32>(43990u, global0.x, global0.x, global0.x))), ~vec4<u32>(~12924u, _wgslsmith_sub_u32(global0.x, 0u), 0u, ~(~49874u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    global0 = func_2();
    let var_0 = _wgslsmith_clamp_i32((arg_1.b.x & (u_input.b.x & 57895i)) << (~select(~arg_1.c, arg_1.c, 939f < arg_1.a.x) % 32u), 2147483647i, min(_wgslsmith_dot_vec2_i32(select(u_input.a.yx << (global0.wz % vec2<u32>(32u)), vec2<i32>(arg_1.b.x, 1i), any(vec3<bool>(true, false, false))), _wgslsmith_clamp_vec2_i32(u_input.c.zy, vec2<i32>(42616i, u_input.b.x), u_input.c.zz) ^ -vec2<i32>(u_input.b.x, u_input.c.x)), -5960i));
    global0 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(26066u, 1u, 96558u, _wgslsmith_dot_vec2_u32(global0.wy, vec2<u32>(global0.x, arg_1.c)))), firstTrailingBit(max(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 105998u, arg_1.c, global0.x) & vec4<u32>(global0.x, 1u, 70662u, 8326u), ~vec4<u32>(4294967295u, global0.x, global0.x, 1u)), vec4<u32>(~global0.x, abs(0u), abs(4294967295u), ~arg_1.c))));
    global0 = _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(~global0.x, 67125u), arg_1.c, 3571u, 17480u), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(19022u, global0.x & 1u), global0.x >> (arg_1.c % 32u)), ~0u, ~_wgslsmith_add_u32(1u, arg_1.c), ~arg_1.c));
    let var_1 = vec4<u32>(0u, 41831u << (0u % 32u), 36531u, firstLeadingBit(arg_1.c));
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.a, arg_1.a)), vec4<f32>(-1000f, arg_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x))), arg_1.a.x)), arg_0, _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, abs(arg_1.c)), 1u));
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    global0 = ~vec4<u32>(max(select(_wgslsmith_mult_u32(arg_0.c, 42358u), arg_0.c, all(vec4<bool>(false, false, false, false))), 0u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(reverseBits(arg_0.c), reverseBits(arg_0.c)), func_1(reverseBits(u_input.b), Struct_2(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -1111f), vec3<i32>(-1i, 43603i, u_input.c.x), global0.x)).c, 35178u), countOneBits(func_2().x), ~(~0u));
    var var_0 = _wgslsmith_div_vec3_f32(arg_0.a.xzx, arg_0.a.zzw);
    let var_1 = Struct_1(arg_0.a.yxx, vec2<bool>(true, func_3(!any(vec3<bool>(false, false, false)), Struct_1(arg_0.a.xzx, vec2<bool>(true, false)))));
    global0 = vec4<u32>(_wgslsmith_div_u32(~func_2().x, _wgslsmith_clamp_u32(~select(35698u, 44062u, var_1.b.x), 31943u, arg_0.c)), _wgslsmith_div_u32(~arg_0.c << (~func_1(vec3<i32>(25870i, -32830i, 0i), Struct_2(arg_0.a, u_input.b, global0.x)).c % 32u), reverseBits(1u)), ~(~24123u), ~_wgslsmith_div_u32(arg_0.c, global0.x));
    var var_2 = vec3<i32>(u_input.c.x, u_input.a.x, arg_0.b.x);
    return firstTrailingBit(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(53740u, 1967u, ~0u, ~global0.x)), vec4<u32>(0u, ~49065u, ~1u, 50190u) & vec4<u32>(firstLeadingBit(13703u), ~2313u, 24821u & arg_0.c, _wgslsmith_div_u32(61918u, 40071u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = func_4(func_1(~reverseBits(-u_input.a.zxz), Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-246f, -406f, -1078f, 1572f), vec4<f32>(-1000f, 442f, -725f, 144f)), vec4<f32>(262f, 624f, 1000f, 1873f))), firstLeadingBit(u_input.a.wyw) << (global0.wxw % vec3<u32>(32u)), _wgslsmith_sub_u32(~26107u, ~global0.x))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(func_1(func_1(vec3<i32>(u_input.a.x, u_input.a.x, -64328i), Struct_2(vec4<f32>(-684f, 127f, 2880f, -738f), u_input.c.xxy, global0.x)).b, Struct_2(vec4<f32>(787f, 741f, 1000f, -879f), u_input.a.ywz, global0.x)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-758f, -323f, 897f, -133f))))))), _wgslsmith_clamp_vec3_i32(u_input.a.xyz, ~(-u_input.a.zyw), u_input.b), abs(~max(~global0.x, firstLeadingBit(4294967295u))));
    let var_2 = countOneBits(min(var_1.b.xy, _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c.x, 24356i), u_input.a.yx))) >> (global0.xx % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.x, countOneBits(var_2.x), u_input.a.x), var_1.b), func_1(~countOneBits(u_input.b), Struct_2(var_1.a, abs(vec3<i32>(-2147483647i, var_1.b.x, -8136i)), var_1.c))).a.ywz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(min(var_1.a.x, 1740f)), _wgslsmith_f_op_f32(-var_1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(459f + var_1.a.x), var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x * 841f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, -891f, var_1.a.x), vec3<f32>(var_1.a.x, 1030f, -206f))), vec3<f32>(var_1.a.x, var_1.a.x, -827f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1196f, -2589f, -1000f)))))), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, any(vec2<bool>(true, true)), true), true), vec3<bool>(_wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)) != _wgslsmith_f_op_f32(ceil(149f)), any(vec2<bool>(false, true)) && true, ~u_input.c.x <= -2147483647i), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var_1 = func_1(var_1.b, func_1(u_input.a.wwz, func_1(reverseBits(vec3<i32>(var_1.b.x, -30115i, 0i)) ^ _wgslsmith_div_vec3_i32(var_1.b, var_1.b), Struct_2(_wgslsmith_f_op_vec4_f32(-var_1.a), var_1.b, _wgslsmith_mult_u32(50213u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, func_1(var_1.b ^ vec3<i32>(-25281i, _wgslsmith_mult_i32(u_input.b.x, var_2.x), _wgslsmith_sub_i32(u_input.b.x, var_1.b.x)), func_1(u_input.a.wyw, Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -368f, var_1.a.x, 2034f), var_1.a), -vec3<i32>(28624i, var_1.b.x, -2147483647i), global0.x))).a);
}

