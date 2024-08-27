struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1382f, 1269f));
    var var_1 = ~(-1i & u_input.a.x);
    let var_2 = !(!(!vec4<bool>(arg_2.c, arg_2.c, false, arg_0.b)));
    var var_3 = select(select(select(!var_2, select(var_2, select(var_2, var_2, vec4<bool>(var_2.x, arg_0.b, false, arg_0.b)), false), ~arg_0.c.x > _wgslsmith_mult_i32(2147483647i, 0i)), !(!select(vec4<bool>(arg_0.b, var_2.x, false, arg_0.b), var_2, var_2)), var_2.x), !vec4<bool>(false, !any(arg_2.b), false, select(!arg_0.b, select(arg_0.b, var_2.x, var_2.x), var_2.x | var_2.x)), select(var_2, var_2, _wgslsmith_f_op_f32(972f + var_0.x) < _wgslsmith_f_op_f32(1226f - _wgslsmith_f_op_f32(max(arg_0.a, arg_1.x)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1260f, -685f, var_0.x, 1241f) * vec4<f32>(-204f, 1111f, arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -492f, var_0.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.x, var_0.x, 479f))) + vec4<f32>(_wgslsmith_f_op_f32(-1965f * arg_0.a), -1166f, arg_1.x, _wgslsmith_div_f32(arg_0.a, -136f)))));
    return vec4<u32>(0u, firstTrailingBit(_wgslsmith_mod_u32(max(arg_2.e, arg_2.e | arg_2.e), ~arg_2.e)), ~_wgslsmith_mult_u32(arg_2.e, 26643u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(arg_2.e, 10760u), ~26900u, arg_2.e >> (arg_2.e % 32u)) ^ reverseBits(vec4<u32>(arg_2.e, 0u, arg_2.e, 4026u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.e, 4294967295u, arg_2.e, arg_2.e) >> (vec4<u32>(arg_2.e, arg_2.e, arg_2.e, arg_2.e) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.e, 4294967295u, 50385u, 4294967295u), vec4<u32>(arg_2.e, 4294967295u, 0u, 25540u))), vec4<u32>(~4294967295u, 1u, ~55789u, 64986u), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(arg_3.x)), all(arg_1), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 4599i, u_input.a.x, 9574i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 19971i, 2147483647i, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-19382i, 1i, 0i, u_input.a.x), vec4<i32>(18544i, u_input.a.x, -1i, 61283i)), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)))), -max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 0i, 10723i, 1i), vec4<i32>(-2147483647i, 2303i, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1i), vec4<i32>(0i, u_input.a.x, -1i, 21456i)))));
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.x)) * _wgslsmith_f_op_f32(floor(1129f)));
    let var_3 = var_0.b;
    let var_4 = Struct_2(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 1467f) + 249f)), any(!vec4<bool>(arg_0.d, any(vec4<bool>(false, true, var_3, arg_1.x)), !arg_0.b, var_0.b == var_0.b)), vec4<i32>(-1i) * -(~vec4<i32>(-3427i, u_input.a.x, var_0.c.x, 70680i)));
    return firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(1u, ~62968u)), arg_0.c, ~4294967295u);
    let var_1 = Struct_1(u_input.a.x, vec2<bool>(any(!vec4<bool>(false, arg_0.d, arg_1.d, arg_1.d)), false), any(select(vec3<bool>(arg_1.b, false, false), vec3<bool>(true, arg_1.b, arg_0.d), !vec3<bool>(false, arg_0.b, arg_0.b))) == (!any(vec4<bool>(true, false, arg_0.b, true)) || true), arg_1.d, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0, arg_0.c) << (abs(var_0) % 32u), var_0 >> (1u % 32u)), 20101u));
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 1i, -29644i & _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 1i), func_4(Struct_3(~countOneBits(arg_1.a), arg_0.b, var_1.e, true), !select(!vec2<bool>(var_1.c, arg_1.d), vec2<bool>(true, true), var_1.b), func_3(Struct_2(-1242f, all(vec4<bool>(false, var_1.d, false, arg_0.b)), countOneBits(vec4<i32>(45021i, -92667i, var_1.a, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1072f, 754f)), Struct_1(-2147483647i, vec2<bool>(var_1.c, var_1.c), arg_1.d, true, var_0 << (21533u % 32u))), vec2<f32>(_wgslsmith_div_f32(255f, _wgslsmith_f_op_f32(891f + -805f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 718f) + -350f))));
    var var_3 = _wgslsmith_mod_u32(~(~(~(1u & arg_0.c))), var_0);
    var_3 = 1u;
    return 0u;
}

fn func_1() -> Struct_1 {
    let var_0 = -vec4<i32>(u_input.a.x, 0i, -2147483647i, u_input.a.x);
    var var_1 = _wgslsmith_mod_i32(-min(countOneBits(1i), firstLeadingBit(1i)), u_input.a.x);
    let var_2 = Struct_3(vec2<u32>(4294967295u, 1u), !(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), _wgslsmith_div_u32(_wgslsmith_div_u32(21328u, func_2(Struct_3(vec2<u32>(4294967295u, 93578u), true, 1u, false), Struct_3(vec2<u32>(21781u, 40132u), true, 4294967295u, false))), ~27621u) & ~0u, false);
    var_1 = -5068i;
    var var_3 = vec4<i32>(u_input.a.x, ~_wgslsmith_clamp_i32(func_4(Struct_3(var_2.a, var_2.b, 1u, true), select(vec2<bool>(var_2.b, var_2.d), vec2<bool>(var_2.b, true), false), vec4<u32>(4294967295u, var_2.a.x, var_2.a.x, 67714u) | vec4<u32>(5627u, 1u, 66282u, var_2.a.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -447f)))).x, reverseBits(u_input.a.x << (0u % 32u)), 12525i), u_input.a.x, _wgslsmith_dot_vec4_i32(var_0, firstTrailingBit(var_0 ^ vec4<i32>(u_input.a.x, -19479i, var_0.x, u_input.a.x))));
    return Struct_1(var_3.x, select(vec2<bool>(true, var_2.b), vec2<bool>(true, true), false), true, !var_2.b, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) + 1132f);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1)))));
    var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_mult_i32(countOneBits(var_0.a), u_input.a.x), !func_1().b, var_0.b.x, false, ~(~var_0.e));
    var_0 = func_1();
    var var_3 = Struct_2(var_1, true, ~vec4<i32>(var_0.a, -409i, u_input.a.x, var_0.a) | (func_4(Struct_3(vec2<u32>(var_0.e, var_0.e), var_0.d, var_0.e, false), vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, var_0.e, 0u), vec2<f32>(-471f, var_1)) << (firstLeadingBit(~vec4<u32>(var_0.e, var_0.e, var_0.e, var_0.e)) % vec4<u32>(32u))));
    var var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(541f, ~((vec2<u32>(var_0.e, 37904u) ^ vec2<u32>(var_0.e, var_0.e)) >> (vec2<u32>(1u, var_0.e) % vec2<u32>(32u))) >> (abs(vec2<u32>(25942u, abs(1u))) % vec2<u32>(32u)), ~func_3(Struct_2(_wgslsmith_f_op_f32(var_3.a * -866f), var_0.c, -vec4<i32>(1i, -2147483647i, var_3.c.x, var_3.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1973f) - vec2<f32>(1755f, -1128f))), Struct_1(var_0.a, var_0.b, var_0.c, func_1().b.x, ~1u)).xxz, var_0.a);
}

