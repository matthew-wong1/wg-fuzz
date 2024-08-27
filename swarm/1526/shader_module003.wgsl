struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(-907f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -292f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-416f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -156f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1399f, _wgslsmith_f_op_f32(710f * -1223f))) - _wgslsmith_div_f32(-617f, _wgslsmith_f_op_f32(-1575f + -1055f))))));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(234f, -255f, var_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1153f, -552f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(var_0.x + -1499f), _wgslsmith_div_f32(var_0.x, 2175f))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 1214f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1037f)))))));
    var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2074f), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-655f * var_0.x), 284f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-240f, -1615f, -158f, 975f)))), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-614f, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -1202f, 1481f, var_0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1696f, var_0.x, var_0.x, var_0.x))))))));
    return 1319f;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(~(~max(u_input.c, u_input.b) ^ ~u_input.c), Struct_1(firstTrailingBit((vec3<i32>(-1i, u_input.d, arg_1) << (vec3<u32>(arg_2, arg_2, 0u) % vec3<u32>(32u))) >> (~vec3<u32>(4294967295u, u_input.c, 1u) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1903f) + _wgslsmith_f_op_f32(f32(-1f) * -1909f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-339f * -298f))), true, _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(4294967295u, 51391u, 0u)), ~(~vec3<u32>(u_input.a, 93600u, 7870u)), ~vec3<u32>(arg_2, 14247u, 12856u) ^ ~vec3<u32>(u_input.a, 17446u, 0u))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(1157f, _wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.b.x), -307f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(345f, var_0.b.b.x)) - 822f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) * _wgslsmith_f_op_f32(f32(-1f) * -232f)))), 468f, _wgslsmith_f_op_f32(-var_0.b.b.x));
    var_0 = Struct_2(select(52889u, ~(~u_input.a) ^ var_0.b.d.x, var_0.b.a.x >= var_0.b.a.x), Struct_1(_wgslsmith_clamp_vec3_i32((var_0.b.a << (var_0.b.d % vec3<u32>(32u))) << (~vec3<u32>(24878u, 38945u, arg_2) % vec3<u32>(32u)), var_0.b.a, vec3<i32>(~(-21421i), arg_1 << (3288u % 32u), -arg_1)), var_0.b.b, any(!(!vec4<bool>(false, false, var_0.b.c, var_0.b.c))), vec3<u32>(~u_input.a, _wgslsmith_div_u32(abs(u_input.a), var_0.a), ~_wgslsmith_add_u32(var_0.a, arg_2))));
    var_0 = Struct_2(_wgslsmith_div_u32((81688u << (u_input.c % 32u)) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.b.d.x, arg_2), 4294967295u, _wgslsmith_dot_vec2_u32(var_0.b.d.yx, var_0.b.d.yx)) % 32u), _wgslsmith_div_u32(select(20636u, var_0.a, true), arg_2)), Struct_1(~var_0.b.a ^ -var_0.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.b.b)), _wgslsmith_f_op_vec2_f32(-var_0.b.b))), var_0.b.c || true, abs(vec3<u32>(countOneBits(20112u), 0u | var_0.b.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 1u, 26817u, u_input.c), vec4<u32>(0u, arg_2, arg_2, var_0.b.d.x))))));
    var_0 = Struct_2(select(abs(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mod_u32(arg_2, var_0.b.d.x), ~4294967295u)), u_input.c, any(select(select(vec4<bool>(var_0.b.c, true, var_0.b.c, var_0.b.c), vec4<bool>(var_0.b.c, false, var_0.b.c, true), vec4<bool>(var_0.b.c, false, var_0.b.c, var_0.b.c)), !vec4<bool>(var_0.b.c, var_0.b.c, var_0.b.c, false), false && var_0.b.c))), var_0.b);
    return Struct_2(~(~(arg_2 << (4580u % 32u)) >> (abs(var_0.b.d.x) % 32u)), Struct_1(var_0.b.a, var_0.b.b, any(!select(vec3<bool>(true, false, var_0.b.c), vec3<bool>(false, false, var_0.b.c), var_0.b.c)), _wgslsmith_div_vec3_u32(min(var_0.b.d, ~vec3<u32>(1u, 4294967295u, 12350u)), ~vec3<u32>(25063u, u_input.b, var_0.a))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = select(select(select(!select(vec4<bool>(false, arg_3.c, true, arg_3.c), vec4<bool>(arg_3.c, true, true, arg_2.b.c), false), vec4<bool>(arg_1, arg_3.c, true, !arg_3.c), !vec4<bool>(arg_2.b.c, true, arg_2.b.c, arg_3.c)), vec4<bool>(!select(true, arg_1, false), !all(vec3<bool>(arg_3.c, arg_2.b.c, true)), true, !arg_1), !select(vec4<bool>(arg_1, true, true, false), !vec4<bool>(arg_2.b.c, arg_2.b.c, arg_2.b.c, arg_3.c), arg_3.c)), select(vec4<bool>((1u << (0u % 32u)) >= firstTrailingBit(0u), arg_3.c, select(func_2(arg_3.a.x, 1i, arg_2.b.d.x).b.c, arg_1 | arg_2.b.c, func_2(-61189i, arg_3.a.x, u_input.c).b.c), -u_input.d <= _wgslsmith_sub_i32(2147483647i, 20i)), !(!vec4<bool>(arg_3.c, arg_3.c, true, false)), !select(vec4<bool>(arg_2.b.c, false, arg_1, arg_1), vec4<bool>(false, arg_2.b.c, arg_3.c, arg_3.c), arg_3.c)), arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1882f)))), arg_3.b.x, 1304f, _wgslsmith_div_f32(arg_3.b.x, arg_3.b.x)), vec4<f32>(arg_2.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) - _wgslsmith_f_op_f32(arg_3.b.x + arg_3.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-727f, _wgslsmith_f_op_f32(-arg_3.b.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -1751f)), func_2(arg_2.b.a.x, -u_input.d, ~(arg_2.b.d.x ^ arg_0)).b.b.x)));
    return select(!arg_1, !any(var_0.yy), false);
}

fn func_1() -> Struct_1 {
    var var_0 = all(vec4<bool>(func_4(~(35902u >> (1u % 32u)), !any(vec4<bool>(true, true, true, false)), func_2(max(u_input.d, 0i), 30040i, u_input.c), func_2(~u_input.d, 0i, 81476u).b), true, true, !(!all(vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f + -1000f) + _wgslsmith_f_op_f32(749f - 105f)) + _wgslsmith_f_op_f32(select(-330f, 421f, any(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(exp2(func_2(-u_input.d, _wgslsmith_mult_i32(u_input.d, -76038i), 29480u).b.b.x)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(1000f)))) - vec4<f32>(-1227f, _wgslsmith_f_op_f32(select(-1576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) + _wgslsmith_f_op_f32(952f * 1000f)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2125f, 1704f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1757f, _wgslsmith_f_op_f32(f32(-1f) * -1031f)), 1000f))));
    var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(abs(5148u >> (u_input.a % 32u)), ~4294967295u), _wgslsmith_add_u32(u_input.c, _wgslsmith_add_u32(_wgslsmith_clamp_u32(45836u, u_input.b, 89010u), 63208u))) == 3724u;
    let var_2 = func_2(u_input.d, u_input.d, countOneBits(firstTrailingBit(u_input.c))).b;
    var var_3 = var_1;
    return func_2(~(~func_2(var_2.a.x, _wgslsmith_clamp_i32(u_input.d, u_input.d, -39844i), abs(24275u)).b.a.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i) ^ var_2.a.yy, vec2<i32>(-23098i, 2147483647i)) ^ -1i, -1i), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, u_input.a)), vec2<u32>(77100u, 30390u))), ~_wgslsmith_clamp_vec2_u32(abs(var_2.d.yy), ~var_2.d.yy, ~vec2<u32>(1u, u_input.b)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(false, all(vec2<bool>(true, true)), !(var_0.c & true));
    let var_2 = max(~_wgslsmith_add_vec3_u32(var_0.d, ~vec3<u32>(var_0.d.x, var_0.d.x, 4294967295u)), select(~vec3<u32>(1u, 1u, 4294967295u), select(var_0.d, _wgslsmith_clamp_vec3_u32(var_0.d, var_0.d, var_0.d), select(vec3<bool>(true, var_0.c, true), vec3<bool>(var_1, true, var_0.c), vec3<bool>(var_1, true, var_0.c))), vec3<bool>(!var_1, all(vec4<bool>(false, var_1, false, true)), false))) & var_0.d;
    let var_3 = select(vec3<bool>(true, true, !(!(!var_1))), select(vec3<bool>(true, true, true), vec3<bool>(var_1, var_1, func_4(_wgslsmith_add_u32(var_2.x, var_0.d.x), select(var_0.c, var_0.c, var_1), func_2(63770i, -1i, 4294967295u), func_2(2147483647i, -35267i, 0u).b)), select(select(vec3<bool>(var_1, false, var_0.c), select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(false, false, var_0.c), vec3<bool>(false, var_0.c, var_1)), true), select(!vec3<bool>(false, var_0.c, true), vec3<bool>(false, true, false), true), var_0.c)), ~_wgslsmith_clamp_u32(~var_0.d.x, ~u_input.c, u_input.a) < 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

