struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = 47114u;
    return Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.a, arg_2.x), abs(var_1), var_1, arg_0.x), ~(arg_1 & vec4<u32>(4294967295u, arg_2.x, 4294967295u, var_1))), ~var_1, arg_2.x, reverseBits(~(~var_1))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f)), _wgslsmith_add_vec4_i32(~reverseBits(-vec4<i32>(-1i, 1i, -25451i, -2109i)), vec4<i32>(-(i32(-1i) * -2909i), reverseBits(-2147483647i), -1i, -(~(-3878i)))), func_1(vec2<u32>(23463u, ~(~u_input.a)), ~select(select(vec4<u32>(u_input.a, u_input.a, 0u, 44395u), vec4<u32>(u_input.a, 72480u, 4294967295u, 0u), vec4<bool>(false, false, true, false)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), true), ~(~vec2<u32>(u_input.a, u_input.a) << (select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, 0u), vec2<bool>(true, true)) % vec2<u32>(32u)))));
    var var_1 = -798f;
    var var_2 = !all(vec3<bool>(true, true, true));
    let var_3 = func_1(_wgslsmith_add_vec2_u32(vec2<u32>(43273u, _wgslsmith_mod_u32(1u, u_input.a)), vec2<u32>(~4294967295u, 11895u)) >> (vec2<u32>(~(~u_input.a), u_input.a) % vec2<u32>(32u)), var_0.c.a, countOneBits(~(firstTrailingBit(vec2<u32>(u_input.a, var_0.c.a.x)) << (vec2<u32>(u_input.a, 44018u) % vec2<u32>(32u)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(trunc(-2215f)))))));
    return ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(47138u, 4294967295u, 10562u, 27850u), var_0.c.a)) & ~min(vec4<u32>(var_0.c.a.x, 85476u, 37626u, 50174u) << (var_3.a % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(var_0.c.a, var_3.a)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = !(!vec2<bool>(arg_1.x, false));
    var var_1 = abs(-reverseBits(arg_0.b));
    let var_2 = _wgslsmith_sub_vec4_u32(arg_0.c.a, func_3());
    var var_3 = arg_0;
    var_1 = abs(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, var_1.x), max(arg_0.b.x, 0i)), firstTrailingBit(var_1.x)), -(~(-330i)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, var_3.b.x), firstLeadingBit(var_1.wzx)), 2147483647i), abs(-1i)));
    return Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-var_3.b, vec4<i32>(arg_0.b.x, arg_2, 30971i, var_1.x)) & countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_3.b.x, var_3.b.x, var_3.b.x), vec4<i32>(0i, -1i, var_3.b.x, var_1.x))), select(abs(~vec4<i32>(10644i, arg_2, -1i, var_1.x)), reverseBits(var_3.b) ^ (var_3.b << (vec4<u32>(42359u, 27752u, 22281u, var_3.c.a.x) % vec4<u32>(32u))), true)), func_1(_wgslsmith_div_vec2_u32(max(vec2<u32>(1u, 0u), ~vec2<u32>(5162u, 82603u)), var_2.wx & (var_2.yy | var_2.yx)), min(max(min(var_3.c.a, var_3.c.a), ~var_2), _wgslsmith_div_vec4_u32(var_3.c.a, vec4<u32>(var_3.c.a.x, 1u, 6426u, 4689u))), var_2.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_2(1635f, vec4<i32>(1i, -(~(-14505i)), 1i, ~_wgslsmith_div_i32(0i, -1i)), func_1(vec2<u32>(firstLeadingBit(u_input.a), u_input.a), ~vec4<u32>(1u, u_input.a, u_input.a, 43744u), firstLeadingBit(vec2<u32>(u_input.a, 0u)))), select(vec2<bool>(!select(false, true, true), true), vec2<bool>(false, select(true, true, true) & true), true), ~(-20601i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-501f, -743f, -306f) * _wgslsmith_div_vec3_f32(vec3<f32>(792f, 950f, 1577f), vec3<f32>(195f, 841f, -615f))) - vec3<f32>(-216f, _wgslsmith_f_op_f32(abs(-240f)), _wgslsmith_div_f32(332f, 112f)))));
    var_0 = func_2(Struct_2(-390f, -vec4<i32>(var_0.b.x << (u_input.a % 32u), _wgslsmith_add_i32(-2147483647i, -1i), var_0.b.x << (39426u % 32u), i32(-1i) * -29634i), var_0.c), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), u_input.a != var_0.c.a.x), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(max(965f, var_0.a)) <= var_0.a), -2147483647i, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(121f, _wgslsmith_f_op_f32(-var_0.a))))), 514f, var_0.a));
    var var_1 = _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a >> (1u % 32u));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.a + var_0.a), var_0.b, var_0.c);
    var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), var_2.b, Struct_1(~vec4<u32>(_wgslsmith_mod_u32(50851u, var_2.c.a.x), _wgslsmith_mult_u32(var_0.c.a.x, 18556u), 1u, 0u)));
    var_0 = func_2(func_2(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-367f + 872f))), vec4<i32>(9861i ^ var_2.b.x, var_0.b.x, 0i, _wgslsmith_add_i32(var_0.b.x, 9128i)), var_2.c), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), false), 23663i, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2292f, -174f, _wgslsmith_f_op_f32(-333f + 372f))))), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)) || true), vec2<bool>(all(vec4<bool>(true, true, false, true)), select(true, any(vec2<bool>(true, false)), var_2.b.x == var_0.b.x)), false), -reverseBits(0i) & -func_2(func_2(Struct_2(var_0.a, vec4<i32>(var_2.b.x, var_2.b.x, var_2.b.x, var_0.b.x), Struct_1(var_0.c.a)), vec2<bool>(false, false), 0i, vec3<f32>(var_2.a, var_2.a, var_0.a)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), -var_2.b.x, vec3<f32>(var_0.a, var_0.a, 723f)).b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(125f, 1258f, -1392f))))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1657f, 1057f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-683f, -2592f, var_0.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.x, _wgslsmith_dot_vec3_i32(abs(var_2.b.zxx >> (var_0.c.a.yyy % vec3<u32>(32u))), vec3<i32>(var_0.b.x & ~var_2.b.x, func_2(Struct_2(var_2.a, vec4<i32>(var_2.b.x, -11011i, var_2.b.x, -1i), var_0.c), vec2<bool>(true, false), 0i, _wgslsmith_f_op_vec3_f32(vec3<f32>(2027f, var_0.a, var_0.a) * vec3<f32>(var_0.a, var_2.a, 627f))).b.x, -1i)));
}

