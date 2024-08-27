struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_4(vec2<bool>(u_input.b.x > _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<i32>(u_input.b.x, u_input.b.x, -1i, 5443i), ~vec4<i32>(28040i, -2147483647i, u_input.b.x, u_input.b.x)), all(vec2<bool>(true, true))), max(vec3<u32>((1u ^ u_input.a.x) >> (~31596u % 32u), 18117u, 18822u), firstLeadingBit(~(~vec3<u32>(70777u, u_input.d.x, 0u)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, 229f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, arg_0)))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1912f))), Struct_2(Struct_1(vec3<f32>(arg_0, -1000f, 464f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1896f, 620f) - vec2<f32>(1244f, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0) + vec2<f32>(arg_0, 1186f)))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(759f, arg_0, arg_0)))), Struct_1(vec3<f32>(arg_0, arg_0, -1430f)), vec4<bool>(u_input.c.x > u_input.d.x, any(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), any(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(667f - _wgslsmith_f_op_f32(-638f - arg_0)) * -415f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.a)))), min(~3724i, _wgslsmith_clamp_i32(u_input.b.x, -3109i, u_input.b.x)) >= abs(1i))));
    var var_2 = var_0.b.x;
    let var_3 = var_0.d.b;
    let var_4 = ~(-vec4<i32>(~_wgslsmith_mult_i32(0i, u_input.b.x), u_input.b.x, firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, 9760i)), _wgslsmith_dot_vec3_i32(u_input.b, abs(u_input.b))));
    return 66869u == _wgslsmith_add_u32(abs(u_input.e.x), ~114525u | ~var_0.b.x);
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = vec2<u32>(select(u_input.a.x, 32489u, !(-6626i <= u_input.b.x) && !all(vec3<bool>(false, true, true))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 0u, 1u, 4369u), vec4<u32>(70100u, 0u, 41526u, u_input.d.x) | vec4<u32>(6339u, u_input.c.x, u_input.d.x, 56583u))));
    var_0 = u_input.d.zy;
    let var_1 = !select(select(vec4<bool>(true, func_3(-433f), any(vec4<bool>(true, false, true, true)), 799f > arg_0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), !vec4<bool>(func_3(arg_0.x), true, true, true));
    let var_2 = true;
    var var_3 = ~firstLeadingBit(~vec2<i32>(u_input.b.x, 21512i) << (_wgslsmith_mult_vec2_u32(u_input.c.yx, ~vec2<u32>(u_input.c.x, 4294967295u)) % vec2<u32>(32u)));
    return Struct_2(Struct_1(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(arg_0.x, 1345f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * _wgslsmith_div_f32(arg_0.x, arg_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, 211f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(908f, arg_0.x), _wgslsmith_div_f32(arg_0.x, 910f))), _wgslsmith_f_op_f32(arg_0.x - 769f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(522f, -587f, arg_0.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(521f, -1458f, arg_0.x), vec3<f32>(396f, arg_0.x, 202f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(181f, arg_0.x, arg_0.x))))), !(!select(var_1, select(vec4<bool>(var_2, var_1.x, var_2, var_1.x), var_1, var_1), vec4<bool>(var_2, true, var_1.x, var_1.x))));
}

fn func_1() -> u32 {
    let var_0 = -500f;
    var var_1 = abs(~u_input.b.x);
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(526f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1676f)))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(585f * 2244f), _wgslsmith_f_op_f32(-var_0)))));
    var var_3 = Struct_4(vec2<bool>(false, var_2.b.e.x), vec3<u32>(u_input.e.x, abs(u_input.e.x) ^ ~(~u_input.c.x), u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.b.x, -1338f, var_0) * vec3<f32>(1877f, var_2.b.b.x, var_2.a)), _wgslsmith_f_op_vec3_f32(sign(var_2.b.c.a)), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, 1000f, 2085f))))), var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, var_2.a, all(var_2.b.e.zzy))), _wgslsmith_f_op_f32(round(var_0))));
    let var_4 = Struct_5(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(u_input.c, var_3.b)), u_input.d), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(95001u, 4294967295u, u_input.a.x, u_input.e.x), vec4<u32>(var_3.b.x, u_input.e.x, 1u, var_3.b.x)), var_3.b.x, 1u)));
    return ~select(var_4.a.x, abs(~(~0u)), _wgslsmith_sub_u32(4294967295u, 14630u) >= var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(false != (func_1() < 33515u), -u_input.b.x != _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), i32(-1i) * -1i));
    let var_1 = var_0.x;
    var var_2 = ~(~(~vec3<u32>(4294967295u, u_input.a.x, 0u) << ((firstLeadingBit(vec3<u32>(67750u, 1u, 0u)) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-648f, -1769f), 267f, _wgslsmith_f_op_f32(1326f - 1000f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-817f, 696f, 1000f), vec3<f32>(-1761f, -881f, 176f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, 101f, 1565f))))));
    let var_4 = var_3;
    var_2 = _wgslsmith_clamp_vec3_u32(abs(select(_wgslsmith_sub_vec3_u32(u_input.c, u_input.c), u_input.d, any(vec4<bool>(var_1, true, var_1, var_1)))) ^ (~reverseBits(u_input.d) | ~vec3<u32>(var_2.x, 1u, var_2.x)), ~_wgslsmith_clamp_vec3_u32(u_input.d, ~vec3<u32>(0u, u_input.c.x, 60911u), ~vec3<u32>(70694u, u_input.e.x, 0u)), ~reverseBits(abs(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(u_input.e.x, 82133u, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, _wgslsmith_div_i32(min(firstLeadingBit(49871i), u_input.b.x), firstLeadingBit(~(-1i)))), vec3<f32>(var_4.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.a.x * var_3.a.x), _wgslsmith_f_op_f32(abs(-1305f)))))), -1226f), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(48762u, ~u_input.c.x, u_input.e.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d, countOneBits(u_input.c)), ~u_input.d ^ u_input.c, _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(var_2.x, 72998u, var_2.x)), u_input.c)), vec3<u32>(min(29274u, 4294967295u ^ var_2.x), ~var_2.x, 1u)));
}

