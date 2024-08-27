struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f), -340f));
    let var_1 = Struct_2(-7995i, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(step(1000f, var_0)))), true, vec3<u32>(1u, 1u, 1u), vec3<f32>(-2034f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1480f - 313f)), -1599f)), true, _wgslsmith_add_i32(reverseBits(i32(-1i) * -1i), u_input.a.x));
    let var_2 = -1i & _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(var_1.a, u_input.a.x))), ~abs(-936i << (var_1.b.d.x % 32u)));
    let var_3 = 14876u;
    let var_4 = ~var_1.b.d.x;
    return var_1.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = ~func_2().d.x;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.e.zy)), vec2<f32>(_wgslsmith_f_op_f32(-601f - 569f), -1000f));
    var var_2 = arg_1;
    var_1 = arg_0.e.zz;
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-39570i, u_input.a.x), vec2<i32>(16037i, u_input.a.x)) >> (7393u % 32u), u_input.a.x), u_input.a.x), ~(-u_input.a.xyx | u_input.a.wyw) << (~vec3<u32>(~var_0, var_0, 1u) % vec3<u32>(32u)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(882f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(465f, 1611f) + _wgslsmith_f_op_f32(var_1.x + arg_2.e.x)), _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-var_1.x)))), arg_2.e);
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(Struct_1(vec2<bool>(true, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(518f)) + _wgslsmith_f_op_f32(sign(790f))), 465f), true, abs(vec3<u32>(72219u, firstTrailingBit(27041u), 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<bool>(false, false), -1000f, true, vec3<u32>(16172u, 1411u, 1u), vec3<f32>(-1000f, 1256f, -2136f)), vec2<bool>(true, false), func_2(), vec4<u32>(1u, 19285u, 101783u, 24361u))))), Struct_2(reverseBits(abs(firstTrailingBit(u_input.a.x))), func_2(), any(vec4<bool>(true, true, true, true)), firstLeadingBit(u_input.a.x)), -7369i >= max(_wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), _wgslsmith_mod_i32(0i, 6449i)), func_2().a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, -1335f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-803f, -1107f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, 1000f))))));
    var var_1 = ~(vec4<u32>(var_0.a.d.x, _wgslsmith_div_u32(0u, var_0.a.d.x), ~_wgslsmith_mod_u32(var_0.a.d.x, 1370u), 13548u) >> ((_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.b.d.x, var_0.a.d.x, 62221u, var_0.b.b.d.x), vec4<u32>(4294967295u, 4294967295u, var_0.b.b.d.x, 0u)), vec4<u32>(4294967295u, var_0.b.b.d.x, var_0.a.d.x, 1u), vec4<u32>(4294967295u, 0u, 33852u, 4294967295u)) & vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.b.b.d, vec3<u32>(var_0.a.d.x, var_0.a.d.x, 0u)), firstTrailingBit(var_0.b.b.d.x), countOneBits(1u), _wgslsmith_div_u32(0u, 1u))) % vec4<u32>(32u)));
    var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~firstTrailingBit(1u), var_0.b.b.d.x, _wgslsmith_mult_u32(1u ^ var_0.b.b.d.x, _wgslsmith_dot_vec3_u32(var_0.a.d, var_0.b.b.d)), _wgslsmith_mult_u32(~45663u, _wgslsmith_dot_vec3_u32(vec3<u32>(18548u, 4294967295u, 2668u), vec3<u32>(var_1.x, var_1.x, 0u)))), vec4<u32>(53186u, ~1u, ~_wgslsmith_clamp_u32(0u, 1u, var_1.x), var_0.a.d.x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) + _wgslsmith_f_op_f32(trunc(var_0.a.b))), var_0.b.b.e.x, _wgslsmith_f_op_vec3_f32(func_3(func_2(), vec2<bool>(false, var_0.b.b.a.x), Struct_1(var_0.a.a, var_0.a.b, any(select(vec2<bool>(false, true), vec2<bool>(false, var_0.d.x), var_0.b.b.c)), _wgslsmith_mult_vec3_u32(~var_1.xwx, vec3<u32>(var_1.x, 4294967295u, var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(var_0.b.b.b - var_0.b.b.e.x), 243f)), vec4<u32>(0u, ~var_0.a.d.x, ~(~var_0.b.b.d.x), min(~126891u, 43263u)))).x, _wgslsmith_f_op_f32(-1090f - _wgslsmith_f_op_f32(select(838f, var_0.a.b, var_0.d.x))));
    var_1 = vec4<u32>(firstLeadingBit(81400u), func_2().d.x, ~reverseBits(max(0u, var_0.a.d.x | 45398u)), min(~(~(~var_1.x)), 4294967295u));
    return Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, var_2.x, -949f, 622f) - vec4<f32>(-769f, 197f, var_0.e.x, var_2.x)))))), select(vec3<bool>(var_0.b.c, var_0.b.c, !any(vec4<bool>(true, var_0.b.c, var_0.b.b.a.x, true))), !select(select(vec3<bool>(var_0.c, false, var_0.d.x), vec3<bool>(var_0.d.x, false, var_0.d.x), vec3<bool>(var_0.c, true, var_0.c)), vec3<bool>(false, var_0.a.c, false), select(vec3<bool>(var_0.d.x, false, var_0.c), vec3<bool>(var_0.d.x, true, var_0.a.c), vec3<bool>(true, var_0.b.b.c, var_0.b.c))), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.b.c & var_0.b.c, false), !(!vec3<bool>(false, false, var_0.c)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<bool>(true, false), 1146f, false, var_1.xxw, vec3<f32>(387f, var_2.x, var_2.x)), !var_0.a.a, Struct_1(vec2<bool>(false, true), -1000f, var_0.d.x, var_1.yxx, var_0.a.e), _wgslsmith_add_vec4_u32(vec4<u32>(18311u, 96755u, 12283u, 0u), vec4<u32>(4294967295u, 4294967295u, var_1.x, var_1.x)))).x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(341f, var_0.e.x) - var_2.x)), var_0.a.e.x, 526f), var_0.a.e.x);
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> u32 {
    var var_0 = vec2<u32>(1u, 27540u);
    let var_1 = func_1();
    var_0 = reverseBits(abs(vec2<u32>(20096u, ~20672u))) | ~(~(~vec2<u32>(var_0.x, var_0.x)));
    var_0 = ~vec2<u32>(max(~var_0.x, var_0.x >> ((18823u << (0u % 32u)) % 32u)), var_0.x);
    var var_2 = -49065i;
    return 50357u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~17109u, 92179u, reverseBits(1u), _wgslsmith_mod_u32(1u, 5261u)), vec4<u32>(1u, 1u, 1u, 1u))), ~19753u);
    var_0 = ~_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 57796u, 107609u, 47657u)), ~vec4<u32>(54520u, 106515u, 0u, 18004u)), func_4(~1i, func_1())), max(_wgslsmith_dot_vec4_u32(vec4<u32>(51050u, 25412u, 93824u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), ~4294967295u) ^ 1u);
    var var_1 = 5057u;
    let var_2 = _wgslsmith_add_u32(1u, (~func_2().d.x ^ _wgslsmith_add_u32(1u, 1u)) ^ firstLeadingBit(_wgslsmith_dot_vec4_u32(max(vec4<u32>(19371u, 11487u, 1u, 46630u), vec4<u32>(30160u, 0u, 67329u, 1u)), abs(vec4<u32>(12779u, 91118u, 0u, 0u)))));
    var var_3 = !select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))), var_2 < 1u, true, any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, var_2, ~(~firstTrailingBit(vec3<u32>(var_2, 1u, 0u) & vec3<u32>(1u, var_2, 67413u))), i32(-1i) * -reverseBits(firstTrailingBit(u_input.a.x)));
}

