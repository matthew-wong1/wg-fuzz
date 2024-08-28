struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> i32 {
    var var_0 = arg_1.c.x;
    let var_1 = arg_1;
    let var_2 = Struct_1(!any(!select(vec3<bool>(arg_1.a, var_1.a, var_1.a), vec3<bool>(true, arg_0, arg_0), var_1.a)), !(arg_0 & all(select(vec2<bool>(false, true), vec2<bool>(var_1.a, false), var_1.a))), vec3<f32>(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_div_f32(var_1.c.x, _wgslsmith_div_f32(1340f, 2403f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(abs(arg_1.c.x))))), -128f));
    let var_3 = _wgslsmith_clamp_vec4_i32(-firstTrailingBit(vec4<i32>(-1i ^ arg_2.x, arg_2.x ^ arg_2.x, arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -9865i, arg_2.x), vec3<i32>(-52329i, -24379i, arg_2.x)))), select(vec4<i32>(firstTrailingBit(1i), arg_2.x, -53808i, countOneBits(1i)), vec4<i32>(select(-arg_2.x, arg_2.x, arg_0), 1i, -arg_2.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(arg_2.x, arg_2.x))), arg_0), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 20872i, 35308i, 2147483647i), vec4<i32>(arg_2.x, arg_2.x, 2147483647i, arg_2.x)), vec4<i32>(0i, arg_2.x, -24834i, 0i), arg_0 == true), -min(vec4<i32>(7303i, 2303i, arg_2.x, 2147483647i), vec4<i32>(arg_2.x, arg_2.x, -1i, 0i))), arg_2.x, ~_wgslsmith_mult_i32(1i, -1i)));
    var var_4 = Struct_1(arg_0, arg_1.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-507f, arg_1.c.x, arg_1.c.x))));
    return 5933i | ~(~arg_2.x);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(min(vec2<i32>(_wgslsmith_clamp_i32(-29400i, 0i, -52005i), 3076i), ~vec2<i32>(-22111i, 1471i) << (u_input.a.yz % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(abs(select(vec2<i32>(-2147483647i, -12104i), vec2<i32>(-2147483647i, 874i), false)), vec2<i32>(i32(-1i) * -22852i, func_3(false, Struct_1(true, true, vec3<f32>(-1281f, -1000f, -316f)), vec2<i32>(1i, -27135i))))), countOneBits(-vec2<i32>(1i, 1i)));
    let var_1 = vec4<i32>(1i, -(57736i ^ firstTrailingBit(~(-1991i))), 28425i, select(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~16519i, 1i), func_3(any(vec3<bool>(true, false, false)), Struct_1(true, true, vec3<f32>(-1213f, -105f, -321f)), vec2<i32>(1i, 1i))), ~(-2147483647i), true));
    var var_2 = Struct_1(true, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-341f, _wgslsmith_f_op_f32(round(322f)), _wgslsmith_f_op_f32(-482f * 530f))))));
    return Struct_1(any(vec2<bool>(all(select(vec2<bool>(true, var_2.b), vec2<bool>(true, false), true)), var_2.a)), !var_2.a, vec3<f32>(_wgslsmith_f_op_f32(floor(161f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c.x), 480f)), _wgslsmith_f_op_f32(max(var_2.c.x, 799f))));
}

fn func_1() -> Struct_1 {
    var var_0 = -31590i;
    var_0 = -24775i;
    var_0 = 2147483647i;
    var var_1 = func_2();
    let var_2 = Struct_1(var_1.a, false, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(895f)), _wgslsmith_f_op_f32(max(var_1.c.x, var_1.c.x))), _wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_f_op_f32(floor(func_2().c.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1182f * -475f), _wgslsmith_f_op_f32(max(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(-797f - -504f)), vec3<f32>(125f, _wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~vec2<u32>(u_input.a.x, ~(10528u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 63396u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)) % 32u)));
    var var_2 = vec3<bool>(false, _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yy) < abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1358u, 724u, 13055u), u_input.a))), select(any(select(!vec4<bool>(var_0.b, true, var_0.a, var_0.b), vec4<bool>(var_0.b, true, var_0.a, var_0.b), select(vec4<bool>(var_0.b, var_0.a, var_0.b, var_0.b), vec4<bool>(false, false, true, var_0.a), vec4<bool>(var_0.b, false, var_0.b, var_0.b)))), all(select(!vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(true, false, false, false), true)), var_0.a));
    var_2 = vec3<bool>(any(vec4<bool>(true, true && !var_0.b, !(var_0.c.x < 643f), var_2.x)), var_2.x, all(select(select(!vec3<bool>(false, true, var_2.x), !vec3<bool>(true, true, var_0.b), !vec3<bool>(false, var_0.b, true)), vec3<bool>(true, !var_2.x, true), select(!var_0.b, true, true))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2588f), var_0.c.x);
    let var_4 = ~vec4<u32>(~(~1u), 1551u, 4294967295u, var_1.x);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_i32(abs(1i), -31097i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-27106i, -23056i, -30260i), vec3<i32>(23382i, 39626i, -24859i))), _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)))), countOneBits(~(~1u)));
}

