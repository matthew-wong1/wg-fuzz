struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -417f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1635f) - _wgslsmith_f_op_f32(-934f * -1657f)))), _wgslsmith_f_op_f32(f32(-1f) * -1356f)), arg_0.yx));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    var var_0 = !all(vec2<bool>(true, all(vec3<bool>(arg_0, arg_0, false)))) && (false || ((0u >= u_input.b) || false));
    let var_1 = ~vec3<i32>(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 46894i), vec3<i32>(u_input.a, u_input.a, 0i))), ~(u_input.a ^ u_input.a), u_input.a);
    var_0 = true;
    let var_2 = Struct_4(vec3<i32>(u_input.a, 2147483647i, -abs(13954i) ^ var_1.x));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-127f, arg_1.x)) + arg_1.x))), 505f, _wgslsmith_div_f32(arg_1.x, 743f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))));
    return true;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = !func_4(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(834f, 706f) - _wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(false, false, false), vec3<u32>(4294967295u, u_input.b, 4294967295u))))), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
    var var_1 = vec4<bool>(false, any(!vec3<bool>(false, any(vec2<bool>(var_0, var_0)), false)), var_0 || true, true);
    var_1 = !select(select(select(vec4<bool>(true, var_1.x, true, true), !vec4<bool>(true, var_0, var_0, true), vec4<bool>(false, true, var_1.x, var_1.x)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, true, var_0, true), var_1.x), !vec4<bool>(true, false, var_0, true)), vec4<bool>(var_1.x, true, var_1.x, true)), !select(!vec4<bool>(true, false, var_1.x, var_0), !vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, var_1.x, true, var_0)), false);
    var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x && var_1.x, !var_1.x, true, any(vec4<bool>(true, true, var_0, var_1.x))), !var_0), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(var_1.x, true, var_0, var_1.x), vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_1.x, var_0, true, false)), select(vec4<bool>(var_0, var_1.x, var_1.x, false), vec4<bool>(false, false, true, true), vec4<bool>(var_0, true, true, false)), !vec4<bool>(var_0, false, var_0, false)), vec4<bool>(true, all(vec4<bool>(true, true, true, var_1.x)), false, var_0)), vec4<bool>(false, true | any(vec2<bool>(false, false)), all(select(var_1.yw, vec2<bool>(true, var_0), vec2<bool>(var_0, false))), true));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1021f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1355f, -1357f))))), select(select(~4294967295u, 1u, true), _wgslsmith_mult_u32(~0u, abs(arg_0)), var_1.x) << (arg_0 % 32u), Struct_4(-(~vec3<i32>(u_input.a, -1i, -1i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, 0i, 8703i), ~vec3<i32>(2593i, -2958i, u_input.a))), Struct_1(vec2<bool>(var_0, any(!vec4<bool>(true, true, var_0, false)))), max(vec4<i32>(17155i, ~_wgslsmith_mult_i32(-14909i, -30518i), u_input.a, u_input.a ^ -u_input.a), ~vec4<i32>(u_input.a << (u_input.b % 32u), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -8816i), vec3<i32>(u_input.a, u_input.a, u_input.a)), 2147483647i)));
    return Struct_1(var_1.xw);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(func_2(~(_wgslsmith_mult_u32(u_input.b, u_input.b) << (56994u % 32u))), Struct_1(select(vec2<bool>(true, true), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 10649u), vec3<u32>(u_input.b, 4294967295u, 37577u))).a, true)));
    let var_1 = vec3<bool>(!(u_input.a <= (~(-2147483647i) >> (~u_input.b % 32u))), any(vec4<bool>(true, var_0.a.a.x, false, all(var_0.a.a))), var_0.b.a.x);
    let var_2 = u_input.b;
    let var_3 = vec2<bool>(false, any(!select(vec3<bool>(true, var_1.x, true), select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1, var_1), var_1)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1321f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-638f, -1467f)) - -1201f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(253f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-235f)))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), vec3<i32>(u_input.a << (reverseBits(_wgslsmith_add_u32(18035u, 16403u)) % 32u), -select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(u_input.a, 2147483647i, 33629i)), _wgslsmith_clamp_i32(-2147483647i, 1i, u_input.a), true), ~(~reverseBits(u_input.a))), Struct_1(vec2<bool>(true, false)));
    let var_1 = Struct_3(Struct_1(!(!vec2<bool>(var_0.a.a.x, true))), vec3<i32>(reverseBits(-u_input.a), var_0.b.x, -2147483647i), var_0.a);
    let var_2 = Struct_4(select(var_1.b, reverseBits(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(var_0.b.x, 1i, var_0.b.x)), vec3<i32>(var_0.b.x, -1i, u_input.a))), !select(select(vec3<bool>(false, false, var_1.c.a.x), vec3<bool>(false, true, false), vec3<bool>(var_0.a.a.x, var_1.a.a.x, var_1.c.a.x)), vec3<bool>(false, true, var_0.a.a.x), var_0.a.a.x & var_1.c.a.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2533f))));
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1490f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f)) + -988f))));
    var_3 = -517f;
    let var_4 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, u_input.b, u_input.b), ~vec4<u32>(1u, u_input.b, u_input.b, 44604u)) | countOneBits(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b) ^ vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b)), vec4<u32>(~_wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_add_u32(u_input.b, u_input.b >> (48700u % 32u)), ~(~54610u), firstTrailingBit(48328u) << ((1u & u_input.b) % 32u))), vec4<u32>(_wgslsmith_mult_u32(u_input.b, 93858u), _wgslsmith_mod_u32(u_input.b | u_input.b, _wgslsmith_add_u32(u_input.b, 8592u)), 58493u, u_input.b) ^ min(vec4<u32>(~u_input.b, 54867u, u_input.b, firstTrailingBit(69517u)), vec4<u32>(reverseBits(u_input.b), 1u, ~1u, 66632u)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(78925u, 4294967295u), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b), true)), u_input.b ^ countOneBits(u_input.b), 23777u), 51289u, ~(~3737u) | _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 0u), ~u_input.b), u_input.b));
    var var_5 = vec2<u32>(_wgslsmith_clamp_u32(var_4.x, 0u, 4294967295u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~3440u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)) * -790f)));
}

