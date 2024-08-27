struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, vec2<u32>(1u, 0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = 1f;
    let var_1 = Struct_2(select(u_input.c.x, firstLeadingBit(~firstTrailingBit(1u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, arg_0.x), -2147483647i) < u_input.b));
    let var_2 = Struct_1(global0.a, select(reverseBits(vec2<u32>(reverseBits(32968u), arg_1.a & 73439u)), abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.b.x, 85779u), firstTrailingBit(vec2<u32>(1u, 7401u)))), select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), u_input.c.x == u_input.d))));
    let var_3 = Struct_2(global0.b.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a));
    return _wgslsmith_dot_vec2_u32(countOneBits(firstLeadingBit(global0.b)), _wgslsmith_add_vec2_u32(~firstLeadingBit(vec2<u32>(var_2.b.x, var_3.a)), ~(~vec2<u32>(var_3.a, 35964u))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = vec3<i32>(-61966i, ~(2147483647i >> (func_3(abs(vec4<i32>(u_input.a.x, arg_1, u_input.a.x, arg_1)), Struct_2(1u), -649f) % 32u)), 16659i);
    var var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(!all(vec2<bool>(true, false)), false, any(vec4<bool>(true, false, false, true)), true), true), vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, false, select(true, true, false))), true, true), select(true, true, true) & all(vec4<bool>(true, true, true, true)));
    var var_2 = ~(~u_input.c.x);
    var var_3 = Struct_1(242f, abs(~vec2<u32>(~42797u, firstTrailingBit(21780u))));
    var_2 = var_3.b.x;
    return Struct_2(~(~_wgslsmith_mod_u32(var_3.b.x | arg_2.x, max(var_3.b.x, global0.b.x))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-819f - -162f), arg_0 >> (1u % 32u), global0.b);
    var var_1 = 59769i;
    let var_2 = u_input.b;
    let var_3 = func_2(arg_2.x, 10535i, ~(~global0.b));
    return Struct_1(1082f, _wgslsmith_mult_vec2_u32(reverseBits(global0.b), min(global0.b, ~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = func_1(~firstTrailingBit(abs(15067i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-752f * global0.a), global0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -1884f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1401f, -1379f))))))));
    var_0 = countOneBits(u_input.a);
    var_0 = vec3<i32>(-16225i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, var_0.x, -1i)), ~vec4<i32>(u_input.b, -43504i, var_0.x, var_0.x))), reverseBits(0i)) >> (firstTrailingBit(reverseBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, 1u), vec3<u32>(u_input.c.x, 1u, 1u)))) % vec3<u32>(32u));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1760f));
    var_0 = vec3<i32>(-34753i, reverseBits(~min(-15411i, min(var_0.x, var_0.x))), var_0.x);
    var_0 = max((min(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_1, u_input.b), vec3<i32>(u_input.b, 1i, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(49636i, -1i, u_input.b), vec3<i32>(var_0.x, var_0.x, -10061i))) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_1, -1i), u_input.a), vec3<i32>(var_0.x, u_input.a.x, u_input.b))) & _wgslsmith_mult_vec3_i32(vec3<i32>(37615i, 1i, var_1) >> (max(vec3<u32>(1u, global0.b.x, u_input.c.x), vec3<u32>(0u, 24902u, 29592u)) % vec3<u32>(32u)), vec3<i32>(min(var_0.x, u_input.b), 1i, 2147483647i)), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(firstLeadingBit(var_0.x), -(i32(-1i) * -1i), _wgslsmith_div_i32(max(var_1, -2147483647i), min(u_input.b, var_1)))));
    global0 = func_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(_wgslsmith_clamp_i32(0i, var_0.x, var_0.x)), _wgslsmith_mult_i32(-44776i, var_0.x), max(var_0.x >> (u_input.d % 32u), i32(-1i) * -64809i)), -1i), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), select(true, true, false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(false, !any(vec4<bool>(false, true, false, false)), ~19778u <= ~u_input.c.x, false), u_input.b <= countOneBits(u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-656f, 2140f))) - vec2<f32>(_wgslsmith_f_op_f32(-776f * -1757f), _wgslsmith_f_op_f32(round(1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 550f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2, 1923f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(277f - -750f) + _wgslsmith_f_op_f32(trunc(1200f)))), func_1(-u_input.a.x, vec4<bool>(false, true, true, false), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, var_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1113f, -321f))))).a)));
}

