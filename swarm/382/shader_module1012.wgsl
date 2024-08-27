struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-815f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) - _wgslsmith_f_op_f32(-1466f - 266f))));
    var var_2 = u_input.c.x;
    let var_3 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, 1i)), ((vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.d.x) << (vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a) % vec4<u32>(32u))) ^ ~u_input.c) | u_input.c);
    let var_4 = Struct_1(-2077f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-250f, -2078f), _wgslsmith_f_op_f32(-1934f * -1322f), true))), any(select(!vec4<bool>(var_1, var_1, false, true), select(vec4<bool>(true, var_1, var_1, var_0), vec4<bool>(true, var_0, true, true), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, var_0, false, false))), !var_0)));
    return var_4;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(func_2(), 8501i, _wgslsmith_clamp_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.b, 28911u, 1u, 37360u))), ~vec4<u32>(u_input.b ^ u_input.a, 7699u, u_input.a & u_input.a, max(1u, 0u)), vec4<u32>(~u_input.a, u_input.b, ~(~0u), ~_wgslsmith_sub_u32(47130u, u_input.a))), ~vec4<i32>(2147483647i, 20767i, _wgslsmith_div_i32(u_input.d.x, arg_0), ~(-6423i | u_input.c.x)), _wgslsmith_f_op_f32(991f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(345f, _wgslsmith_f_op_f32(1099f - 699f)))));
    let var_1 = select(select(vec4<bool>(var_0.a.a, all(vec3<bool>(var_0.a.b, false, false)), false, select(!arg_1.b, var_0.a.b, true)), vec4<bool>(true, false, false, any(vec4<bool>(arg_1.a, false, false, var_0.a.b))), select(select(select(vec4<bool>(true, arg_1.b, var_0.a.b, false), vec4<bool>(false, false, false, var_0.a.b), vec4<bool>(var_0.a.a, arg_1.b, false, var_0.a.b)), vec4<bool>(false, true, false, arg_1.a), vec4<bool>(false, true, false, arg_1.b)), !(!vec4<bool>(var_0.a.b, var_0.a.a, arg_1.b, false)), !select(vec4<bool>(false, arg_1.a, false, true), vec4<bool>(false, var_0.a.b, var_0.a.a, arg_1.a), true))), !select(!vec4<bool>(false, arg_1.a, true, arg_1.b), select(vec4<bool>(true, true, arg_1.b, arg_1.b), select(vec4<bool>(true, true, false, var_0.a.a), vec4<bool>(var_0.a.b, false, arg_1.a, true), var_0.a.b), true), true), !vec4<bool>(true, false, arg_1.a, any(vec4<bool>(true, true, true, true))));
    let var_2 = func_2();
    var_0 = Struct_2(func_2(), arg_0 >> (~12972u % 32u), var_0.c, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(63268i, var_0.b, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(22273i, arg_0, 1i), vec3<i32>(0i, u_input.c.x, 2147483647i))), _wgslsmith_dot_vec3_i32(var_0.d.wyw, var_0.d.xyy), ~2147483647i, (u_input.c.x | u_input.d.x) & ~u_input.d.x), -vec4<i32>(~var_0.d.x, i32(-1i) * -62622i, arg_0, ~(-1i))), _wgslsmith_f_op_f32(1279f + var_0.e));
    let var_3 = func_2();
    return Struct_2(func_2(), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.zww, ~var_0.d.yyz), vec3<i32>(arg_0, 1i, -u_input.d.x))), var_0.c, var_0.d ^ -vec4<i32>(-u_input.c.x, firstTrailingBit(2147483647i), u_input.d.x, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, var_0.e)), var_0.e))));
}

fn func_1() -> u32 {
    let var_0 = func_3(-10083i, func_2());
    var var_1 = ~var_0.c;
    var var_2 = var_0.b & u_input.c.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-588f, var_0.e, func_3(abs(1i), func_2()).e, var_0.e));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(482f - var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1291f), _wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-447f, 487f), var_3.x)))), var_0.e, var_3.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(vec2<u32>(u_input.b, 1u) ^ (vec2<u32>(5133u, 1u) | vec2<u32>(u_input.b, 1u)))));
    let var_1 = vec2<u32>(_wgslsmith_mult_u32((abs(4294967295u) | u_input.a) >> (55826u % 32u), u_input.b), ~_wgslsmith_add_u32(func_1(), ~u_input.b & (var_0.x ^ 5306u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(823f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-257f)) + _wgslsmith_f_op_f32(f32(-1f) * -547f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1111f + 273f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(53695u, 77835u << (_wgslsmith_dot_vec3_u32(vec3<u32>(15267u, u_input.a, var_0.x), vec3<u32>(0u, var_1.x, 4294967295u)) % 32u)), var_1.x, 0u), vec3<u32>(u_input.a, ~(~_wgslsmith_add_u32(0u, 4294967295u)), ~63034u));
    var var_4 = true;
    let var_5 = func_3(abs(_wgslsmith_add_i32(u_input.c.x, _wgslsmith_div_i32(u_input.d.x >> (52608u % 32u), max(1724i, u_input.c.x)))), func_3(abs(u_input.c.x), Struct_1(-31232i == -u_input.d.x, false)).a).a;
    let var_6 = var_5;
    var_3 = ~(~(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0.x, u_input.b, 44933u)), ~vec3<u32>(var_3.x, 41455u, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(57737i, abs(countOneBits(120i))), -1136f, -u_input.d, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 1u), vec3<u32>(u_input.a, 1u, 4393u)), ~48586u), abs(var_0.x)), abs(_wgslsmith_div_u32(1u, var_0.x))));
}

