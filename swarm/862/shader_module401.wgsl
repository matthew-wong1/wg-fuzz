struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = select(vec3<bool>(select(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec2<bool>(true, true)), !(arg_1.x < -1i)), !all(vec4<bool>(false, false, true, true)) || false, select(any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(false, true, false, true)), true)), select(vec3<bool>(true, (4294967295u >> (u_input.d.x % 32u)) != _wgslsmith_add_u32(u_input.d.x, u_input.d.x), _wgslsmith_add_u32(u_input.d.x, u_input.d.x) > u_input.d.x), vec3<bool>(select(true, true, any(vec2<bool>(false, false))), any(vec4<bool>(true, true, true, false)), true), all(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))))), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, true, true), arg_0 < arg_0), true | select(false, false, true))));
    let var_1 = any(select(select(vec4<bool>(false, arg_1.x != -1i, true, true), !vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, false, select(false, var_0.x, var_0.x), var_0.x || true)), vec4<bool>(var_0.x, countOneBits(24904u) <= u_input.d.x, var_0.x, true), vec4<bool>(!var_0.x && any(vec2<bool>(var_0.x, var_0.x)), any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), var_0.yz)), all(vec4<bool>(false, true, true, true)), !any(vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    var var_2 = i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b, -u_input.c), arg_1.x, u_input.b);
    let var_3 = select(!vec4<bool>(true, var_1, var_0.x, false), !select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(arg_1.x != -38607i, arg_0 <= -573f, all(vec2<bool>(true, true)), true), vec4<bool>(false, true, var_0.x, true)), abs(~firstLeadingBit(u_input.d.x)) >= u_input.d.x);
    var_0 = !var_3.xxx;
    return countOneBits(abs(~select(vec4<u32>(4294967295u, 31592u, 0u, 27187u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), var_3.x)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(func_3(-387f, arg_1.zy), vec4<u32>(u_input.d.x, 0u, 5983u, 11743u)), ~u_input.d ^ (vec4<u32>(0u, 16262u, u_input.d.x, 17412u) >> (u_input.d % vec4<u32>(32u)))), -1117f, -869f, (~vec4<i32>(-22206i, 5113i, -18788i, u_input.b) & reverseBits(vec4<i32>(arg_1.x, 1i, arg_1.x, 2147483647i))) & _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -38155i, -29829i), abs(vec4<i32>(-2147483647i, 21475i, u_input.e, u_input.e))), _wgslsmith_mod_vec3_u32(u_input.d.ywy, u_input.d.yxw)), select(!select(vec4<bool>(arg_0, true, arg_0, arg_0), !vec4<bool>(true, true, arg_0, arg_0), !vec4<bool>(true, arg_0, false, false)), select(!select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, true, false, true), false), select(select(vec4<bool>(true, true, false, arg_0), vec4<bool>(true, true, arg_0, true), arg_0), select(vec4<bool>(arg_0, true, true, false), vec4<bool>(false, arg_0, false, true), vec4<bool>(true, false, true, false)), arg_0), 67535u < _wgslsmith_div_u32(u_input.d.x, u_input.d.x)), any(vec3<bool>(false, !arg_0, true))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.c);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927f - _wgslsmith_f_op_f32(-965f * _wgslsmith_f_op_f32(-var_0.a.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) + _wgslsmith_f_op_f32(round(-1130f))) * var_0.a.c) + var_0.a.c));
    let var_3 = firstLeadingBit(var_0.a.a);
    var_1 = var_0.a.b;
    return Struct_1(1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1714f, var_0.a.b)), -288f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)))))), var_0.a.c, var_0.a.d, ~(abs(reverseBits(u_input.d.zyw)) | _wgslsmith_mod_vec3_u32(vec3<u32>(var_3, var_3, 29744u), countOneBits(u_input.d.zxy))));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    let var_0 = vec4<bool>(false, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false)) & (u_input.d.x >= u_input.d.x))), true, all(vec2<bool>(true, false)) & true);
    let var_1 = func_2(var_0.x, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(-6020i, -2147483647i, u_input.b), vec3<i32>(arg_1, 49492i, arg_1), false), vec3<i32>(-85952i, 43298i, -1i) & vec3<i32>(0i, u_input.c, 2147483647i)), vec3<i32>(arg_0, abs(-1i), ~1i)), -_wgslsmith_add_vec3_i32(~vec3<i32>(arg_1, arg_0, -2147483647i), countOneBits(vec3<i32>(arg_0, 20641i, 0i)))));
    let var_2 = 12600u;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, 447f) - vec3<f32>(1872f, 548f, var_1.b)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1912f, var_1.b))), vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.c)), var_1.b, 848f)))));
    var var_4 = ~u_input.d;
    return Struct_2(var_1, vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x)) >= _wgslsmith_f_op_f32(-233f - var_3.x), var_0.x, !var_0.x, var_1.c >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1532f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0, arg_0, false)) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(abs(arg_0.x))))), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1504f - 768f), -881f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-424f, 590f) + vec2<f32>(-1789f, 537f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(609f, 1764f))), func_1(-32301i, u_input.b), func_2(false, vec3<i32>(-35167i, 0i, 7498i)))))));
    let var_2 = !(!(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(2171f)), var_1.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2057f, var_1.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1059f, var_1.x), vec2<f32>(var_1.x, 1500f))))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -544f), 728f));
    let var_3 = func_2(var_2.x, vec3<i32>(_wgslsmith_div_i32(2147483647i, -1i), i32(-1i) * -1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-22297i, -28018i, u_input.c), ~(-1i)) << (u_input.d.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(select(true, true, false), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, var_0, var_0), _wgslsmith_mod_vec3_i32(var_3.d.yxx, var_3.d.zzx))).d.wx, -abs(vec2<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.a, -1i), 0i)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1853f, var_3.c, 1272f), vec3<f32>(var_1.x, 1023f, -1154f), vec3<bool>(var_2.x, true, var_2.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(431f, var_3.b, var_3.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(159f, var_1.x, var_3.c) - vec3<f32>(556f, var_3.b, 1031f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_3.c), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - var_3.c)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(367f, var_1.x, var_3.b))), vec3<f32>(var_1.x, var_3.b, var_1.x), var_2.zwy)))), -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(var_3.d.zzz << (u_input.d.yyz % vec3<u32>(32u)), -var_3.d.www), ~var_3.d.zxw));
}

