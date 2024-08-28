struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: f32,
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>) -> vec2<f32> {
    let var_0 = any(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), all(vec2<bool>(true, true)))) && true;
    var var_1 = -257f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(767f - 1560f) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), -323f)))));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(359f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(747f * 698f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(930f, 1177f)) * _wgslsmith_div_f32(-1196f, 179f))))));
    var var_2 = Struct_4(abs(_wgslsmith_div_i32(select(2147483647i, ~9645i, select(false, true, var_0)), u_input.b)), select(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), vec4<i32>(-1i, -8964i, u_input.b, 1i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 19818i, u_input.b, -39i), vec4<i32>(u_input.b, 21508i, -50980i, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(20616i, u_input.b, 22659i, u_input.b), vec4<i32>(1i, 1i, 2147483647i, -50109i), vec4<i32>(1i, u_input.b, 1i, u_input.b)), min(vec4<i32>(u_input.b, -1i, u_input.b, -38550i), vec4<i32>(u_input.b, u_input.b, -20216i, u_input.b))), any(select(vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0)))) << (select(vec4<u32>(26u, 1u, 38008u, 42667u) & firstTrailingBit(arg_0), vec4<u32>(~u_input.a, 1u, arg_0.x, ~0u), vec4<bool>(var_0, true, u_input.b < 15995i, true)) % vec4<u32>(32u)));
    return vec2<f32>(-268f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -598f), -755f)))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.x, u_input.b), u_input.b), -vec4<i32>(_wgslsmith_mult_i32(-55732i, arg_0.x & -33172i), min(0i, arg_0.x), -1i, -(u_input.b << (84726u % 32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1452f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(1u, u_input.a, u_input.a, 0u))))))), vec3<i32>(0i, ~1i, u_input.b), (select(vec4<u32>(11643u, 4294967295u, 33759u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true)) ^ min(vec4<u32>(u_input.a, 5550u, u_input.a, 65205u), vec4<u32>(u_input.a, u_input.a, 1u, 4392u) & vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))) | _wgslsmith_mod_vec4_u32(vec4<u32>(25105u, u_input.a, min(u_input.a, 60415u), u_input.a << (u_input.a % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 27661u), ~vec4<u32>(u_input.a, u_input.a, 4874u, u_input.a))), ~(~1u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(u_input.a, u_input.a, 0u, 151u))).x, _wgslsmith_f_op_f32(abs(1207f)))) * -125f), -1468f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -847f))), 555f));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(var_1.e.xzx));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(var_1.e, var_1.e));
    var var_4 = reverseBits(select(-_wgslsmith_sub_i32(-16216i, ~arg_0.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(arg_0.x), 0i), 1i | _wgslsmith_sub_i32(arg_0.x, -2147483647i)), true));
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-969f, var_3.x, var_1.a.x, var_3.x)))), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(273f - 1525f), 477f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_1.a.x, 470f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1000f, -179f, -597f), var_3))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x + var_1.a.x), 1f)), var_0.b.wwx, vec4<u32>(var_1.d, max(2582u, ~35047u), firstTrailingBit(select(0u, 4294967295u, false)), 19521u), _wgslsmith_add_u32(var_1.d, _wgslsmith_sub_u32(~var_1.d, u_input.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1339f, var_2.x, -1735f, var_3.x), var_1.e))))), reverseBits(vec2<u32>(reverseBits(~u_input.a), firstTrailingBit(27777u))), -21328i);
}

fn func_1(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = func_2(~max(_wgslsmith_mod_vec4_i32(vec4<i32>(18436i, 2147483647i, u_input.b, u_input.b) | vec4<i32>(u_input.b, -13633i, u_input.b, -1i), ~vec4<i32>(-66800i, u_input.b, u_input.b, -76982i)), firstTrailingBit(-vec4<i32>(-1i, -1i, u_input.b, 20389i))));
    var var_1 = select(vec3<bool>(any(vec3<bool>(true, true, true)), false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), select(!vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), vec3<bool>(all(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))), false), select(select(!(u_input.b >= u_input.b), any(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x * 242f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -228f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * var_0.a.x) <= var_0.a.x));
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(~(~(i32(-1i) * -2147483647i)), _wgslsmith_mult_i32(0i, -1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(select(0i, u_input.b, false), 0i), _wgslsmith_div_i32(firstLeadingBit(23162i), _wgslsmith_clamp_i32(u_input.b, -56943i, 2147483647i))), _wgslsmith_div_i32(u_input.b, u_input.b)), min(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d, u_input.b, var_0.b.b.x, -11948i), vec4<i32>(-1i, var_0.b.b.x, 41433i, -31490i), vec4<i32>(u_input.b, var_0.d, u_input.b, var_0.d)), max(vec4<i32>(-45994i, u_input.b, 2147483647i, var_0.d), vec4<i32>(u_input.b, -2334i, u_input.b, -19524i))), min(abs(vec4<i32>(u_input.b, u_input.b, -24927i, 1i)), vec4<i32>(var_0.b.b.x, var_0.d, 11849i, var_0.b.b.x))), -vec4<i32>(0i, 1i, 0i, -var_0.b.b.x)));
    var_1 = vec3<bool>(var_1.x, false, true);
    var var_3 = var_0.b.d;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(859f * 713f)))), -1142f, _wgslsmith_f_op_f32(f32(-1f) * -1444f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1105f, 276f, -186f) * vec3<f32>(1084f, -1405f, -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2046f, -135f, -1631f), vec3<f32>(-492f, -718f, 366f), true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1193f, -1441f, 195f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-802f, -709f, 863f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, -228f);
    let var_2 = 675f;
    let var_3 = ~countOneBits(u_input.a);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 * var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(86889u, var_3), abs(_wgslsmith_div_u32(_wgslsmith_add_u32(123842u, u_input.a), func_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)).b.c.x)) ^ 1u, 48706u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, 157f, var_0.x, -1469f)), vec4<f32>(374f, var_2, 277f, -675f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(438f, -1000f, -525f, var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-392f)) + 1000f));
}

