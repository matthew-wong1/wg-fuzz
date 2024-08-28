struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_0.wz;
    return select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, false), (any(vec2<bool>(false, true)) && !any(vec2<bool>(false, false))) | !any(vec4<bool>(true, false, true, true)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_add_u32(var_0, min(abs(1u), _wgslsmith_div_u32(0u, u_input.a) << (u_input.a % 32u)));
    return Struct_2(false, -abs(_wgslsmith_sub_vec2_i32(select(vec2<i32>(24265i, 2147483647i), vec2<i32>(1i, 25309i), arg_0), vec2<i32>(u_input.b, u_input.b))), Struct_1(any(vec4<bool>(true, arg_1, !arg_1, true))));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    var var_0 = func_3(select(vec2<bool>(true, _wgslsmith_clamp_u32(11971u, u_input.a, 4294967295u) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), select(vec2<bool>(all(vec4<bool>(false, false, true, true)), -20355i <= u_input.b), vec2<bool>(true, true), select(func_2(vec4<i32>(u_input.b, 1944i, 40901i, 1i)), func_2(vec4<i32>(3647i, -8866i, 3444i, -14778i)), true)), func_2(vec4<i32>(8495i >> (u_input.a % 32u), firstLeadingBit(u_input.b), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), u_input.b)).x), !all(vec2<bool>(true, false)));
    var var_1 = func_3(!(!vec2<bool>(false, !var_0.a)), var_0.a);
    let var_2 = select(vec4<bool>(true, true, var_0.c.a, var_0.a), vec4<bool>(!any(!vec3<bool>(var_0.a, true, false)), !all(vec2<bool>(var_1.a, var_1.a)) && false, var_1.c.a, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(arg_0))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -1166f))), !select(vec4<bool>(true, var_0.c.a, true, true), !select(vec4<bool>(true, var_1.a, true, var_1.c.a), vec4<bool>(true, false, var_0.a, true), vec4<bool>(var_0.a, var_0.a, var_1.c.a, var_0.a)), any(vec2<bool>(true, var_1.a))));
    let var_3 = func_3(vec2<bool>(!var_2.x || false, true), false).c;
    let var_4 = ~(~abs(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)));
    return abs(abs((-var_1.b ^ var_0.b) ^ _wgslsmith_mod_vec2_i32(var_0.b, var_1.b)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_2 {
    return func_3(!vec2<bool>(func_2(-vec4<i32>(-45388i, -62944i, -4800i, arg_1.b.x)).x, !any(vec3<bool>(false, arg_0.c.a, arg_1.a))), arg_2.a);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.c;
    var_0 = arg_0.c;
    var_0 = func_4(Struct_2(true, -vec2<i32>(-36357i, _wgslsmith_div_i32(arg_0.b.x, 29150i)), func_3(select(vec2<bool>(false, true), !vec2<bool>(false, arg_0.c.a), vec2<bool>(arg_0.c.a, false)), true).c), func_3(vec2<bool>(false != (arg_0.c.a & true), true), var_0.a), arg_0.c, countOneBits(vec3<i32>(arg_0.b.x, reverseBits(-2147483647i), _wgslsmith_mult_i32(-1i, 1i)))).c;
    let var_1 = _wgslsmith_f_op_f32(-986f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 2159f) + _wgslsmith_f_op_f32(-547f - 1000f)) + 1462f))));
    var var_2 = _wgslsmith_f_op_f32(floor(-1985f));
    return func_3(select(!vec2<bool>(any(vec4<bool>(true, var_0.a, true, false)), arg_0.c.a), vec2<bool>(true, !arg_0.c.a), func_2(max(vec4<i32>(56036i, 5986i, u_input.b, u_input.b), vec4<i32>(0i, -1i, 35300i, u_input.b)) ^ vec4<i32>(arg_0.b.x, -16732i, -34229i, 0i))), all(vec2<bool>((true | arg_0.c.a) | all(vec4<bool>(false, var_0.a, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, var_0.a), false))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_2(!(u_input.a <= u_input.a), vec2<i32>(~u_input.b, ~u_input.b), Struct_1(all(vec4<bool>(true, false, false, true)))), Struct_2(!any(vec4<bool>(true, false, true, true)), ~func_1(-1183f), func_3(vec2<bool>(true, true), true).c), Struct_1(true), ~(~vec3<i32>(0i, -1i, 1i))));
    let var_1 = func_3(select(!select(vec2<bool>(var_0.a, var_0.a), func_2(vec4<i32>(u_input.b, 18690i, -9937i, -1i)), select(vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, false))), !vec2<bool>(var_0.a, var_0.a), !(!func_2(vec4<i32>(11698i, u_input.b, 0i, -1178i)))), var_0.a);
    let var_2 = var_1.c;
    var_0 = Struct_1(true);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1893f, 833f, 143f, -599f) + vec4<f32>(-554f, 760f, 873f, 234f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-701f, 110f, 223f, 739f), vec4<f32>(318f, -1000f, 952f, -282f))))))), -(-11018i << ((_wgslsmith_dot_vec3_u32(vec3<u32>(94162u, u_input.a, u_input.a), vec3<u32>(64019u, 1u, u_input.a)) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 68563u), vec4<u32>(15019u, u_input.a, 116555u, u_input.a))) % 32u)), -vec2<i32>(16305i, min(_wgslsmith_add_i32(u_input.b, u_input.b), ~(-2147483647i))));
}

