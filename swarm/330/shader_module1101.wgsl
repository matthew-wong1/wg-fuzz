struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_2(select(select(arg_2 & _wgslsmith_add_vec2_i32(arg_2, arg_2), -_wgslsmith_sub_vec2_i32(arg_2, vec2<i32>(2147483647i, -2147483647i)), vec2<bool>(all(vec2<bool>(arg_1, arg_1)), !arg_1)), abs((arg_2 | arg_2) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), arg_0.zx) % vec2<u32>(32u))), vec2<bool>(all(!vec3<bool>(arg_1, arg_1, true)), true)), Struct_1(_wgslsmith_div_u32(16017u, arg_0.x) > (_wgslsmith_div_u32(u_input.a, 53187u) ^ 1u), ~abs(~vec2<i32>(arg_2.x, arg_2.x))), ~u_input.a);
    var_0 = Struct_2(vec2<i32>(-_wgslsmith_mod_i32(-33861i >> (arg_0.x % 32u), var_0.a.x), var_0.a.x), var_0.b, 1u);
    let var_1 = !var_0.b.a;
    let var_2 = ~(select(vec4<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.a, 86326u), 22888u, reverseBits(u_input.a)), ~(~vec4<u32>(arg_0.x, var_0.c, u_input.a, 4294967295u)), !vec4<bool>(true, arg_1, var_0.b.a, false)) ^ _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(var_0.c, var_0.c, 136616u, var_0.c), vec4<u32>(var_0.c, u_input.a, 0u, arg_0.x), vec4<bool>(var_0.b.a, false, false, var_1)), ~(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 72402u) | vec4<u32>(58097u, u_input.a, 0u, arg_0.x)), vec4<u32>(arg_0.x, 0u, 54179u, 4294967295u) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 29866u), vec4<u32>(var_0.c, u_input.a, 21990u, u_input.a))));
    var var_3 = Struct_2(vec2<i32>(i32(-1i) * -13044i, _wgslsmith_add_i32(1i, -15551i)), Struct_1(select(true, false, !all(vec2<bool>(var_1, true))), vec2<i32>(_wgslsmith_mult_i32(arg_2.x, countOneBits(var_0.b.b.x)), -14719i)), ~arg_0.x);
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1206f - global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(min(-826f, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -621f, global0.x)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, -3032f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1944f, global0.x, 948f) + vec3<f32>(1766f, 225f, global0.x)))))), !(!select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(var_3.b.a, false, var_3.b.a), vec3<bool>(true, arg_1, var_3.b.a), var_0.b.a), true))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1382f)) * -776f), global0.x, global0.x));
    let var_0 = Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(1i, abs(-35844i), reverseBits(0i)), -1i), ~(vec2<i32>(-21655i, -2147483647i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) | firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(24637i, 4122i), vec2<i32>(2147483647i, -52644i)))), Struct_1(arg_0.x, vec2<i32>(5957i, 24052i)), u_input.a & 0u);
    let var_1 = var_0.b;
    global0 = vec3<f32>(-445f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(min(-1000f, -1851f)))))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(294f, global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, _wgslsmith_f_op_f32(abs(global0.x)), 241f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(~(~vec3<u32>(var_0.c, var_0.c, u_input.a)), arg_0.x, -var_1.b))))));
    return Struct_2(countOneBits(var_1.b << (max(~vec2<u32>(0u, u_input.a), vec2<u32>(var_0.c, 4294967295u)) % vec2<u32>(32u))), Struct_1(all(vec2<bool>(4294967295u == u_input.a, any(vec4<bool>(var_0.b.a, var_1.a, false, true)))), firstTrailingBit(var_1.b)), 12768u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(abs(-232f)), _wgslsmith_f_op_f32(global0.x * -1204f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global0.x) - -365f))), global0.x));
    let var_0 = !(!(false | (func_2(vec3<bool>(false, arg_1.b.a, false)).c >= min(14875u, 1u))));
    var var_1 = func_2(!select(vec3<bool>(global0.x > -519f, any(vec2<bool>(false, false)), all(vec3<bool>(true, var_0, true))), vec3<bool>(all(vec3<bool>(arg_0.a, false, var_0)), !arg_0.a, global0.x >= -597f), _wgslsmith_f_op_f32(825f + global0.x) > -979f)).b;
    return func_2(select(select(vec3<bool>(var_0, func_2(vec3<bool>(false, var_0, true)).b.a, arg_0.a & false), !vec3<bool>(true, var_1.a, false), arg_0.a || all(vec4<bool>(var_0, arg_0.a, arg_0.a, arg_1.b.a))), !(!select(vec3<bool>(false, var_1.a, false), vec3<bool>(arg_0.a, arg_1.b.a, true), true)), _wgslsmith_add_u32(~u_input.a, 12710u) != 0u));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    return arg_0;
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    return arg_3;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-593f, -1145f, arg_2)))))));
    let var_0 = func_6(select(any(!select(vec4<bool>(true, arg_1.a, false, arg_1.a), vec4<bool>(false, arg_1.a, true, true), vec4<bool>(arg_1.a, true, arg_1.a, true))), !arg_1.a, arg_1.a), func_5(func_4(Struct_1(false, vec2<i32>(-1i, 2147483647i) >> (vec2<u32>(16609u, u_input.a) % vec2<u32>(32u))), func_2(select(vec3<bool>(arg_1.a, false, true), vec3<bool>(false, false, false), vec3<bool>(arg_1.a, arg_1.a, arg_1.a))))), func_2(select(vec3<bool>(any(vec2<bool>(arg_1.a, true)), -118f != global0.x, arg_1.a & arg_1.a), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), func_2(vec3<bool>(false, false, arg_1.a)).b.a), select(!vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(true, true, true)))), func_4(arg_1, Struct_2(arg_1.b, arg_1, _wgslsmith_sub_u32(0u, u_input.a))));
    let var_1 = _wgslsmith_add_vec3_u32(countOneBits(firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c, u_input.a, 4294967295u), vec3<u32>(var_0.c, 0u, var_0.c), vec3<u32>(65867u, u_input.a, u_input.a)))), vec3<u32>(1u, 1u, 61206u & _wgslsmith_mod_u32(u_input.a, var_0.c << (var_0.c % 32u))));
    var var_2 = var_1.yz;
    global0 = vec3<f32>(677f, _wgslsmith_f_op_f32(-arg_2), -2894f);
    return ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(42080u, 1u, _wgslsmith_add_u32(var_2.x, 1u), 0u), ~vec4<u32>(var_2.x, 24761u, var_2.x, var_1.x)));
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2.b;
    var var_1 = func_6(arg_2.b.a, Struct_2(reverseBits(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b.b.x, 1i), arg_2.a)), Struct_1(false, reverseBits(abs(vec2<i32>(arg_2.a.x, -22330i)))), arg_2.c), func_5(arg_2), arg_2).c;
    var var_2 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_div_i32(var_0.b.x, arg_2.b.b.x)), (~vec2<i32>(arg_2.b.b.x, 0i) | countOneBits(vec2<i32>(2147483647i, var_0.b.x))) ^ -arg_2.b.b), var_0, _wgslsmith_add_u32(_wgslsmith_add_u32(~arg_2.c ^ arg_2.c, ~u_input.a), max(u_input.a, max(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.c, 9969u, 1u), vec4<u32>(arg_0, 1u, 1u, arg_2.c))))));
    var var_3 = reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(var_2.c, arg_0, 0u)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(arg_2.c, 1u, arg_0)), vec3<u32>(arg_2.c, 4294967295u, 85485u))), arg_2.c, u_input.a & ~(~arg_0)));
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(4294967295u, _wgslsmith_div_u32(arg_2.c, var_2.c), arg_0), !(arg_2.b.a || var_2.b.a), arg_2.a ^ arg_2.a)) + vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(step(-769f, _wgslsmith_f_op_f32(f32(-1f) * -1646f)))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(u_input.a, select(true, all(vec2<bool>(true, true)) && true, all(vec4<bool>(true, true, true, true))), Struct_2(vec2<i32>(2147483647i, ~(~(-2147483647i))), Struct_1(all(vec4<bool>(true, true, true, true)), vec2<i32>(~87602i, -30960i)), func_1(select(vec4<i32>(-7465i, 47026i, -2147483647i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i), true), Struct_1(true, abs(vec2<i32>(-1i, -2147483647i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -104f))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-394f, 1000f, 670f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(886f, global0.x, global0.x) + vec3<f32>(718f, global0.x, -378f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(536f, 385f, global0.x), vec3<f32>(427f, -407f, 2315f), vec3<bool>(true, true, var_0.b.a)))), !vec3<bool>(true, var_0.b.a, var_0.b.a))))));
    var var_1 = global0.x;
    let var_2 = vec2<u32>(79196u, 43794u);
    let var_3 = 2452i;
    var var_4 = vec3<u32>(_wgslsmith_div_u32(func_1(vec4<i32>(var_3, var_0.a.x, var_0.b.b.x, var_3), var_0.b, _wgslsmith_f_op_f32(min(global0.x, -1796f))), 19149u), 4294967295u, _wgslsmith_sub_u32(func_4(var_0.b, Struct_2(var_0.a, var_0.b, 12856u)).c, 1458u)) ^ ~_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(12047u, var_2.x, 4294967295u), vec3<u32>(var_2.x, u_input.a, u_input.a)), vec3<u32>(54197u, max(0u, var_0.c), var_0.c | 77793u));
    let var_5 = var_0;
    var var_6 = _wgslsmith_add_i32(-var_0.b.b.x, _wgslsmith_mult_i32(28200i, var_5.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -379f))));
}

