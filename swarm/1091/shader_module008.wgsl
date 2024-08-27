struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1112f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = !any(vec2<bool>(false, -6847i <= max(-43841i, arg_0.b.x)));
    global0 = 1000f;
    let var_1 = 312f;
    var var_2 = Struct_5(arg_0, vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(-650f, _wgslsmith_div_f32(arg_2, 1000f))), arg_2, -(~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b.x, 1i), arg_0.b.yz), min(vec2<i32>(u_input.b, arg_0.b.x), arg_0.b.xx))));
    var_2 = Struct_5(var_2.a, var_2.b, _wgslsmith_f_op_f32(step(323f, -2012f)), arg_0.b.x);
    return !(all(vec2<bool>(!arg_1, all(vec3<bool>(arg_1, arg_1, true)))) || true);
}

fn func_2() -> vec4<bool> {
    let var_0 = select(!(!vec2<bool>(true, all(vec2<bool>(true, true)))), vec2<bool>(true, all(vec4<bool>(func_3(Struct_3(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.c.x), vec3<i32>(-2147483647i, -434i, u_input.b)), false, -1681f), true, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, -1000f, -565f, -524f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -985f, -529f, 255f), vec4<f32>(851f, -1000f, 1576f, -419f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(591f, 808f, -248f, -661f), vec4<f32>(662f, -724f, -1000f, 148f))))))));
    var var_2 = -164f;
    let var_3 = select(select(select(vec4<bool>(func_3(Struct_3(vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 13098u), vec3<i32>(u_input.b, -2147483647i, u_input.b)), var_0.x, var_1.x), func_3(Struct_3(vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.a), vec3<i32>(45643i, -26999i, -25029i)), var_0.x, var_1.x), true, var_0.x), vec4<bool>(!var_0.x, true, true, var_1.x <= var_1.x), true | !var_0.x), !select(!vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)), 100248u <= _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), 1u)), !vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, true, true, true));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(426f + var_1.x))));
    return !var_3;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 688f, -805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f + -1451f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 2559f)) + _wgslsmith_f_op_f32(-738f - 1369f)))), 1f, -393f, 612f));
    global0 = var_0.x;
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 809f), -321f);
    var var_2 = Struct_1(vec2<i32>(1i, ~23689i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(378f, -352f, 1549f))))), ~(_wgslsmith_sub_u32(u_input.c.x, arg_2.a.x) & (u_input.c.x ^ 33182u)) >> (14677u % 32u));
    var_2 = Struct_1(arg_2.b.zz, _wgslsmith_f_op_vec3_f32(-var_2.b), ~_wgslsmith_sub_u32(~var_2.c, ~(~4294967295u)));
    return Struct_1(vec2<i32>(_wgslsmith_add_i32(~firstLeadingBit(-21558i), 1i), firstLeadingBit(u_input.b << (firstLeadingBit(0u) % 32u))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1109f, -1000f, var_0.x))), ~1u);
}

fn func_1() -> f32 {
    let var_0 = u_input.b;
    let var_1 = func_4(func_2(), Struct_2(min(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.b, 19750i) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5256i, -11401i), vec2<i32>(2147483647i, u_input.b), vec2<i32>(var_0, 19329i)), countOneBits(vec2<i32>(-23372i, -46384i)))), vec3<i32>(abs(-32855i), abs(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(43623i, 15314i) >> (vec2<u32>(u_input.a, 3168u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(584i, -1i), vec2<i32>(u_input.b, var_0))))), Struct_3(vec4<u32>(u_input.a, 4294967295u, ~u_input.a, _wgslsmith_sub_u32(15460u, 1u)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0 ^ u_input.b, var_0, ~u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(-28809i, 2147483647i, 2147483647i), ~vec3<i32>(u_input.b, -32778i, -2147483647i)))), firstLeadingBit(i32(-1i) * -40943i));
    var var_2 = !(!select(vec4<bool>(true, all(vec2<bool>(true, true)), true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(func_2().xz)));
    var var_3 = all(func_2().xwz);
    var_3 = func_3(Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, func_4(vec4<bool>(var_2.x, var_2.x, true, var_2.x), Struct_2(var_1.a, vec3<i32>(var_0, var_1.a.x, var_0)), Struct_3(vec4<u32>(12751u, u_input.c.x, u_input.c.x, var_1.c), vec3<i32>(-48942i, 0i, u_input.b)), var_1.a.x).c, var_1.c, _wgslsmith_mult_u32(47538u, var_1.c)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_1.c, 1u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(27611u, 1u, 90480u, 1u), vec4<u32>(39841u, u_input.c.x, u_input.a, u_input.a)))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-37333i, 8309i, u_input.b), var_0, ~var_1.a.x), countOneBits(u_input.b) >> (41383u % 32u), _wgslsmith_div_i32(var_1.a.x, var_1.a.x) << (1u % 32u))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, var_1.a.x, 0i, var_1.a.x), vec4<i32>(16614i, u_input.b, 2147483647i, -28752i), true), vec4<i32>(-29272i, -21069i, 31558i, u_input.b) ^ vec4<i32>(-1i, u_input.b, -62421i, u_input.b)), _wgslsmith_div_i32(_wgslsmith_div_i32(var_1.a.x, -9889i), var_0)) < (_wgslsmith_add_i32(~u_input.b, ~var_1.a.x) << ((var_1.c ^ _wgslsmith_sub_u32(var_1.c, var_1.c)) % 32u)), -412f);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x)), var_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1409f, -1411f, -1715f, 651f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1238f, 1000f, 570f, -2026f), vec4<f32>(515f, 267f, -2045f, -841f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(516f, 597f, -806f, -197f)), vec4<f32>(-1348f, -177f, 467f, -476f)))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(175f, -108f), _wgslsmith_f_op_f32(-1000f - 1000f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-704f))), _wgslsmith_f_op_f32(func_1()))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-562f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(538f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -587f)) - _wgslsmith_f_op_f32(-var_0.x)) + var_0.x))));
    let var_1 = select(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.b, 1i, 0i)), vec3<i32>(u_input.b, ~_wgslsmith_mod_i32(u_input.b, u_input.b), ~u_input.b >> ((u_input.c.x | u_input.c.x) % 32u))), abs(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -25504i, u_input.b), vec3<i32>(u_input.b, -1i, u_input.b)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, -34010i), vec3<i32>(u_input.b, -9084i, 35762i)), ~vec3<i32>(u_input.b, u_input.b, u_input.b))), 1000f <= var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * 715f))), var_0.x, _wgslsmith_f_op_f32(-244f * _wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    var var_2 = _wgslsmith_mult_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.c, u_input.c)), ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

