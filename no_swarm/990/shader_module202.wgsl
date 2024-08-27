struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = -abs(_wgslsmith_div_i32(48345i, i32(-1i) * -2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1390f * 516f) + _wgslsmith_f_op_f32(min(1000f, 514f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(790f - 1123f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1176f, _wgslsmith_f_op_f32(ceil(-755f)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(abs(-268f)))))));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-513f - var_2.x), _wgslsmith_div_f32(var_2.x, -1426f), _wgslsmith_f_op_f32(var_2.x * -1028f))))));
    return 313f;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -720f, _wgslsmith_f_op_f32(func_3(u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -1132f)))), any(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(871f, 550f))))), -523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2327f, var_0.a.x)) - var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1898f - 228f))), all(select(!(!vec4<bool>(false, var_0.b, true, var_0.b)), !select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(true, false, true, false), var_0.b), !any(vec2<bool>(false, false)))));
    var var_2 = -48900i;
    var var_3 = countOneBits(~4294967295u);
    var var_4 = (~u_input.d.x ^ u_input.d.x) ^ _wgslsmith_sub_u32(abs(~(~u_input.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), ~min(u_input.a.zyy, vec3<u32>(32834u, 19722u, u_input.d.x))));
    return _wgslsmith_div_i32(abs(-1i), 23471i & max(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 37889i)), max(i32(-1i) * -1i, 75028i)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, 3903i, 37094i, 0i), vec4<i32>(-2147483647i, -2147483647i, 31753i, 18945i)), vec4<i32>(~21151i >> ((u_input.b.x << (u_input.b.x % 32u)) % 32u), ~(2147483647i >> (u_input.a.x % 32u)), select(~(-2147483647i), -2147483647i, any(vec3<bool>(true, false, true))), ~firstLeadingBit(26300i))), func_2());
    var_0 = vec2<i32>(select(select(2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(12347i, var_0.x, 2147483647i, var_0.x), vec4<i32>(-2147483647i, var_0.x, -5867i, var_0.x)), -var_0.x == -var_0.x), var_0.x, (0i ^ select(-4822i, var_0.x, false)) == _wgslsmith_div_i32(_wgslsmith_mod_i32(24419i, var_0.x), var_0.x)), 2147483647i);
    var_0 = countOneBits(~(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -24881i), vec2<i32>(-1i, var_0.x)))));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-133f, 578f, 1063f, 584f), vec4<f32>(-1373f, 1729f, -663f, 326f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(482f, -134f, -712f, 910f) + vec4<f32>(-1234f, -189f, -112f, 834f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-295f, -790f, 616f, -1075f), vec4<f32>(611f, 1080f, 1000f, 212f))), any(vec2<bool>(true, true)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1068f, 1000f, true))), -1596f) != 1f);
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(-(~vec4<i32>(12649i, -2147483647i, -2147483647i, 1i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(-13682i, 2147483647i, var_0.x, -2147483647i), vec4<i32>(var_0.x, var_0.x, -26601i, 17824i)), select(vec4<i32>(30435i, -8105i, -23748i, -10672i), vec4<i32>(var_0.x, var_0.x, -79037i, 2147483647i), vec4<bool>(var_1.b, var_1.b, false, var_1.b))), vec4<bool>(true, true, true, true)), select(vec4<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), 0i, _wgslsmith_mod_i32(-37319i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, var_0.x), vec3<i32>(-1i, 0i, -2147483647i))), -vec4<i32>(var_0.x, var_0.x, 0i, 39430i) >> (u_input.d % vec4<u32>(32u)), select(vec4<bool>(var_1.b, var_1.b, true, var_1.b), vec4<bool>(var_1.b, var_1.b, false, true), var_1.b))), var_0.x);
    return Struct_1(var_1.a, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(-_wgslsmith_div_i32(-1i >> (u_input.a.x % 32u), -2147483647i)));
    var var_1 = func_1();
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.a))))), false);
    var var_2 = !vec4<bool>(false, false, min(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 1i), vec2<i32>(var_0, 6973i))) < func_2(), _wgslsmith_sub_u32(~0u, ~u_input.d.x) > _wgslsmith_div_u32(u_input.c.x ^ 5940u, abs(u_input.a.x)));
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1955f)), -2216f)))), -303f, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f))), true);
    let var_3 = Struct_1(var_1.a, var_1.b || false);
    var var_4 = -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(30314i, var_0, var_0), ~vec3<i32>(-2147483647i, var_0, 60346i)), max(vec3<i32>(6739i, 1i, var_0) << (vec3<u32>(u_input.a.x, 4294967295u, 110221u) % vec3<u32>(32u)), -vec3<i32>(var_0, var_0, -22946i))), vec3<i32>(-41383i, 16069i, countOneBits(max(-6316i, var_0))));
    var_2 = !vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x * var_1.a.x)) > _wgslsmith_f_op_f32(-var_3.a.x), var_3.b, func_1().a.x == _wgslsmith_f_op_f32(783f * 177f));
    let var_5 = vec3<i32>(var_0, var_4.x, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(-968f, -(~_wgslsmith_mod_vec3_i32(vec3<i32>(-13713i, 2147483647i, var_5.x), var_5)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x)), select(var_4.x, var_4.x, var_3.a.x == var_3.a.x));
}

