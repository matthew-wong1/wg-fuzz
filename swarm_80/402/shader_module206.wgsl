struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: vec4<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(0u < _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(59382u, u_input.c, 4294967295u), vec3<u32>(51476u, 33738u, u_input.c), true), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 45270u), vec3<u32>(4964u, u_input.c, u_input.c))), u_input.c), _wgslsmith_mod_i32(~global0.x, abs(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.b.x, -2147483647i, 0i))))), 1u | (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u))) | firstTrailingBit(u_input.c | u_input.c)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-916f)))), Struct_1(var_0.a, var_0.b, _wgslsmith_mult_u32(1u, 1u)), var_0));
    var var_2 = ~_wgslsmith_mult_vec2_u32(min(~(~vec2<u32>(var_0.c, u_input.c)), ~select(vec2<u32>(var_1.a.c.c, var_1.a.b.c), vec2<u32>(var_0.c, 1u), vec2<bool>(false, var_1.a.b.a))), vec2<u32>(var_0.c, var_0.c));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1294f)), Struct_1(~(var_0.c & var_1.a.c.c) >= ~(70871u | var_2.x), 1i, _wgslsmith_mult_u32(var_2.x, ~(~u_input.c))), var_1.a.b);
    let var_4 = var_0;
    return var_3.a;
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = vec4<i32>(_wgslsmith_mod_i32(global0.x, _wgslsmith_clamp_i32(countOneBits(-11311i), 42585i, -1i)), _wgslsmith_mult_i32(global0.x, _wgslsmith_mult_i32(-2147483647i, abs(u_input.b.x))), global0.x, countOneBits(-abs(global0.x)));
    let var_0 = Struct_1(arg_0, -1i, 4294967295u);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(742f - 932f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(-299f, 486f))), -425f, _wgslsmith_f_op_f32(f32(-1f) * -1561f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1250f, -442f, -1044f, -550f), _wgslsmith_div_vec4_f32(vec4<f32>(557f, -130f, 1164f, -1000f), vec4<f32>(1987f, -1000f, -197f, 2040f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1277f, -430f, 1000f, 1103f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 382f, 666f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1973f, 182f, -390f, -1000f)))), !vec4<bool>(true, false, true && var_0.a, arg_0)))));
    var var_2 = var_0.c;
    var_2 = ~_wgslsmith_dot_vec2_u32(~max(vec2<u32>(0u, 1u), ~vec2<u32>(0u, u_input.c)), countOneBits(vec2<u32>(var_0.c, u_input.c) ^ select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.c, 134137u), false)));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -846f), Struct_1(select(all(vec3<bool>(true, false, arg_0)), any(vec2<bool>(false, false)), var_0.a || false), var_0.b, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, var_0.c, var_0.c), ~19916u)), Struct_1(any(select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(var_0.a, false, false, arg_0), var_0.a)), 1i, 1u)));
}

fn func_1() -> Struct_1 {
    var var_0 = !all(vec2<bool>(!any(vec3<bool>(false, false, false)), false));
    var var_1 = func_2(((-u_input.b.x | abs(u_input.a.x)) < u_input.a.x) & !(!any(vec4<bool>(false, true, true, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, var_1.a.a, 1487f) - vec3<f32>(var_1.a.a, -1000f, var_1.a.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.a, var_1.a.a, var_1.a.a), vec3<f32>(1173f, var_1.a.a, 1000f))))))));
    var var_3 = global0.ywx;
    var_1 = func_2(!all(vec2<bool>(var_1.a.c.a, false)));
    return Struct_1(var_1.a.c.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_3.x, var_3.x), vec3<i32>(-30877i, -371i, 2147483647i), u_input.a)), -max(select(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(52868i, 0i, 0i), false), ~vec3<i32>(global0.x, -1i, -9414i))), min(4294967295u << (~var_1.a.b.c % 32u), _wgslsmith_div_u32(~(39097u >> (u_input.c % 32u)), ~(~u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_f32(f32(-1f) * -164f)))), var_0, Struct_1(any(!vec3<bool>(false, var_0.a, var_0.a)), -_wgslsmith_add_i32(-1i, 52920i), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, u_input.c, var_0.c, u_input.c), firstTrailingBit(vec4<u32>(u_input.c, 1286u, u_input.c, 2097u))))), _wgslsmith_sub_u32(37532u, 1931u), u_input.c, select(select(~countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.c, var_0.c)), vec4<u32>(reverseBits(u_input.c), 1u, _wgslsmith_clamp_u32(u_input.c, 11153u, 18389u), u_input.c & u_input.c), vec4<bool>(var_0.a & var_0.a, var_0.a, false | var_0.a, any(vec2<bool>(var_0.a, var_0.a)))), firstLeadingBit(abs(vec4<u32>(9109u, 9352u, 4294967295u, u_input.c))), !var_0.a));
    let var_2 = ~(~vec4<i32>(var_0.b, max(u_input.b.x, u_input.b.x), 0i, global0.x >> (1417u % 32u)) >> (max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b.c, 62737u, 4294967295u), var_1.d.wxw), _wgslsmith_clamp_u32(1u, 25798u, u_input.c), max(5136u, 5680u), 21265u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, var_1.b, 1u, var_0.c), var_1.d), var_1.d)) % vec4<u32>(32u)));
    var_1 = Struct_4(func_2(any(select(vec2<bool>(true, false), vec2<bool>(true, true), var_1.a.c.a)) && true).a, 14841u, 4294967295u, _wgslsmith_div_vec4_u32(~firstLeadingBit(countOneBits(vec4<u32>(44435u, var_1.b, 16823u, 4251u))), vec4<u32>(1u, countOneBits(firstTrailingBit(var_0.c)), var_0.c, var_0.c)));
    let var_3 = var_1.a.a;
    var var_4 = func_1();
    var_4 = Struct_1(true, ~(-1i), ~u_input.c);
    var var_5 = -var_2.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -496f), var_1.d.xyw);
}

