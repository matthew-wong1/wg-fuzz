struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = vec2<bool>(!all(vec3<bool>(!arg_3.c.c.x, false, false)), true);
    var var_1 = select(!select(select(!vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(!(!any(vec4<bool>(arg_3.c.c.x, false, var_0.x, arg_3.c.c.x))), false, any(vec4<bool>(var_0.x, true, false, var_0.x)) | all(select(vec4<bool>(arg_3.c.c.x, true, false, true), vec4<bool>(var_0.x, var_0.x, arg_3.c.c.x, arg_3.c.c.x), vec4<bool>(arg_3.c.c.x, false, true, arg_3.c.c.x))), true), firstTrailingBit(abs(max(1i, arg_3.b))) <= min(1i << (_wgslsmith_div_u32(arg_0, arg_1.x) % 32u), arg_3.b));
    var_1 = vec4<bool>(var_1.x, true, any(vec3<bool>(!select(false, true, var_1.x), ~arg_1.x > 22472u, arg_3.c.c.x)), false);
    var_1 = select(vec4<bool>(var_1.x, false, true, (_wgslsmith_f_op_f32(arg_3.c.a.x * 1729f) > -885f) || false), select(select(select(vec4<bool>(false, false, arg_3.c.c.x, true), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_1.x, false, true, var_1.x), var_0.x), true), select(select(vec4<bool>(true, arg_3.c.c.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), true), select(vec4<bool>(var_1.x, false, arg_3.c.c.x, true), vec4<bool>(var_1.x, var_0.x, var_0.x, true), false), !vec4<bool>(true, var_1.x, false, false)), _wgslsmith_mod_i32(u_input.a, u_input.a) >= reverseBits(arg_3.c.b.x)), !vec4<bool>(arg_3.c.a.x < 436f, true, var_1.x, var_1.x), var_0.x), var_0.x);
    let var_2 = arg_1.xz;
    return vec2<bool>(true, !var_0.x);
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_2(~1u, -2147483647i, Struct_1(vec3<f32>(1f, 1f, 1f), ~(~(~vec3<i32>(u_input.b, -1i, u_input.b))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), select(func_3(4294967295u, vec4<u32>(32820u, 18536u, 355u, 1u), vec4<f32>(461f, 608f, -368f, 1078f), Struct_2(35369u, -1i, Struct_1(vec3<f32>(1294f, -448f, 236f), vec3<i32>(-2147483647i, -11045i, u_input.b), vec2<bool>(true, true), vec2<u32>(16129u, 9750u)), vec2<u32>(37882u, 1u))), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), true), abs(vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u));
    var_0 = Struct_2(var_0.c.d.x, ~min(-var_0.c.b.x >> (_wgslsmith_add_u32(1u, var_0.d.x) % 32u), -countOneBits(1i)), Struct_1(var_0.c.a, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.c.b.zz, vec2<i32>(0i, var_0.c.b.x)), _wgslsmith_add_vec2_i32(var_0.c.b.xy, var_0.c.b.xx)), u_input.b, i32(-1i) * -10448i), var_0.c.c, var_0.c.d), var_0.d);
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d.x & _wgslsmith_div_u32(13163u & var_0.d.x, var_0.a ^ var_0.c.d.x), ~(~var_0.c.d.x)), vec2<u32>(_wgslsmith_div_u32(~var_0.d.x | ~4294967295u, var_0.c.d.x), ~(~var_0.d.x)), vec2<u32>(countOneBits(~(~0u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, 4294967295u, var_0.c.d.x, var_0.a), vec4<u32>(4294967295u, var_0.d.x, 1u, var_0.a)))));
    var var_2 = false;
    var_2 = var_0.c.c.x;
    return var_0.c.b;
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(select(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(4503u, 4294967295u, 1u), _wgslsmith_mod_u32(55464u, 57912u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(67211u, 1u), vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)))), firstTrailingBit(0u), ~(_wgslsmith_mod_u32(~81255u, ~0u) ^ _wgslsmith_div_u32(~4294967295u, select(16271u, 4294967295u, true))));
    var_0 = _wgslsmith_clamp_u32(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(16319u, 18549u, 4294967295u), vec3<u32>(0u, 15564u, 1192u))), ~1u, ~1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(21532u, 4294967295u, 21151u, 4294967295u), vec4<u32>(7538u, 57282u, 4294967295u, 61243u)), min(904u, 39183u)) | abs(abs(vec4<u32>(15972u, 1u, 1u, 38558u))), vec4<u32>(13189u, 1u, ~(~4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 1u))));
    var_0 = 22012u;
    var var_1 = vec4<i32>(-(~u_input.a), -_wgslsmith_clamp_i32(arg_0.x, u_input.a, func_2().x), firstLeadingBit(arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(u_input.b, arg_0.x, arg_0.x, u_input.a)), -vec4<i32>(~(-29529i), _wgslsmith_div_i32(0i, arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 2147483647i), arg_0), firstLeadingBit(-10004i))));
    return Struct_2(1u, _wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(1i, var_1.x | select(u_input.b, 0i, false), var_1.x ^ arg_0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, -385f, -1562f))))), _wgslsmith_mult_vec3_i32(vec3<i32>(-var_1.x, ~arg_0.x, var_1.x), vec3<i32>(min(arg_0.x, 1i), 1i, var_1.x)), vec2<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))), vec2<u32>(1u, 1u)), firstLeadingBit(~vec2<u32>(23627u, ~68436u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = true;
    var var_1 = func_4(_wgslsmith_mult_vec3_i32(func_2(), _wgslsmith_mod_vec3_i32(arg_1.c.b, func_2())) & countOneBits(arg_1.c.b));
    let var_2 = func_4(-vec3<i32>(u_input.a, abs(reverseBits(43206i)), u_input.b));
    let var_3 = func_4(arg_1.c.b);
    let var_4 = Struct_1(var_1.c.a, max(vec3<i32>(abs(min(-28598i, var_2.c.b.x)), arg_1.c.b.x, 0i), _wgslsmith_div_vec3_i32(countOneBits(var_1.c.b), _wgslsmith_mult_vec3_i32(arg_1.c.b, vec3<i32>(-2272i, u_input.a, arg_1.b))) | abs(-var_1.c.b)), select(func_3(_wgslsmith_add_u32(20207u, ~arg_1.d.x), ~(~vec4<u32>(1u, 77299u, var_1.a, var_3.a)), vec4<f32>(var_3.c.a.x, _wgslsmith_f_op_f32(step(1615f, var_2.c.a.x)), var_3.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -798f)), func_4(vec3<i32>(u_input.b, var_2.c.b.x, var_2.c.b.x) & var_2.c.b)), var_2.c.c, !arg_1.c.c), var_3.d);
    return var_4.b.x & -(~firstTrailingBit(_wgslsmith_dot_vec3_i32(var_3.c.b, vec3<i32>(2147483647i, 47649i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~18808i;
    var var_1 = -_wgslsmith_add_i32(~(_wgslsmith_clamp_i32(u_input.b, var_0, -16323i) ^ func_1(vec3<u32>(1u, 10529u, 1u), Struct_2(4294967295u, -20980i, Struct_1(vec3<f32>(1000f, 617f, 1389f), vec3<i32>(u_input.b, var_0, -2147483647i), vec2<bool>(true, true), vec2<u32>(0u, 95587u)), vec2<u32>(46743u, 7806u)))), u_input.b);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(abs(1934f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(178f - _wgslsmith_div_f32(531f, _wgslsmith_f_op_f32(f32(-1f) * -524f))), -214f, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(9045u, min(~4294967295u, 1u), abs(_wgslsmith_mult_u32(69038u, 0u))));
}

