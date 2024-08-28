struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<f32> {
    let var_0 = select(vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), false)), all(vec2<bool>(true, true))), !(!vec2<bool>(true, any(vec3<bool>(false, false, true)))), select(!vec2<bool>(true, all(vec4<bool>(false, false, false, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(any(vec2<bool>(true, true)), true), false), all(vec4<bool>(true, true, true, true))));
    var var_1 = u_input.b;
    let var_2 = select(select(!vec4<bool>(var_0.x || var_0.x, true, var_0.x, !var_0.x), !(!(!vec4<bool>(false, var_0.x, false, var_0.x))), vec4<bool>(any(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, false))), var_0.x, (u_input.b << (14096u % 32u)) < ~u_input.b, all(vec4<bool>(true, var_0.x, true, true)))), select(select(select(select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, false)), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true))), select(select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, true, true, var_0.x), true), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, var_0.x, true, true)), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x)), var_0.x), select(vec4<bool>(all(vec4<bool>(var_0.x, true, true, var_0.x)), var_0.x, true, var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, true, false), true), !vec4<bool>(true, false, var_0.x, false), var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x)), vec4<bool>(var_0.x, (u_input.a | 11989i) >= firstLeadingBit(u_input.a), true, false)), select(vec4<bool>((u_input.b != u_input.b) | all(var_0), all(vec4<bool>(var_0.x, true, false, var_0.x)) && true, true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, true)))), !(!(!vec4<bool>(true, true, var_0.x, var_0.x))), any(vec2<bool>(true, true))));
    let var_3 = ~_wgslsmith_sub_u32(u_input.b, 82778u);
    var_1 = _wgslsmith_mult_u32(var_3, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(62697u, firstLeadingBit(~var_3)), 15250u >> (_wgslsmith_div_u32(u_input.b >> (1u % 32u), var_3) % 32u), ~countOneBits(var_3)));
    return vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-908f)), _wgslsmith_f_op_f32(min(1529f, 1041f)), var_0.x))), all(var_0))), -729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-643f * _wgslsmith_f_op_f32(abs(-889f)))))), -2312f);
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, 1688f)))) + _wgslsmith_f_op_f32(f32(-1f) * -476f)), arg_0.a);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3()))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.a, -1844f), _wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_f_op_f32(round(arg_0.a)), var_0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1000f, arg_0.a, 468f) * vec4<f32>(1505f, arg_0.a, -580f, -1000f)) * vec4<f32>(1365f, arg_0.a, 1955f, var_0.x)))), abs(~abs(vec4<u32>(0u, u_input.b, 1u, u_input.b) << (vec4<u32>(54523u, 42014u, 29967u, u_input.b) % vec4<u32>(32u)))), abs(vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, 1u, u_input.b), vec4<u32>(4294967295u, 1u, u_input.b, 6152u) << (vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), firstTrailingBit(~u_input.b))));
    let var_2 = Struct_2(var_0.x);
    var var_3 = arg_0.a > 737f;
    var var_4 = ~(~1u);
    return _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), firstLeadingBit(min(firstLeadingBit(min(var_1.b.yy, var_1.b.yy)), ~vec2<u32>(35023u, 0u))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)))), -552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f + _wgslsmith_f_op_f32(ceil(-148f)))), _wgslsmith_f_op_f32(-972f - -1534f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.x)))), var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 0u, 22584u, 34806u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u) | vec4<u32>(u_input.b, u_input.b, 1u, 0u)), abs(~vec4<u32>(31649u, u_input.b, arg_0, 33302u))) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 10071u, arg_2.x), ~vec4<u32>(0u, u_input.b, 49829u, u_input.b)), ~(reverseBits(vec3<u32>(1u, arg_0, arg_0) ^ vec3<u32>(arg_0, 73850u, u_input.b)) << (vec3<u32>(73035u, u_input.b | arg_0, ~arg_2.x) % vec3<u32>(32u))));
    var var_2 = var_1.a.x > -875f;
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_mult_vec4_i32(min(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, 1276i), -91916i), _wgslsmith_add_i32(arg_3.x, min(arg_3.x, arg_3.x)), arg_3.x, -_wgslsmith_mod_i32(u_input.a, 42843i)), vec4<i32>(arg_3.x << (~4294967295u % 32u), -3000i, u_input.a, 2147483647i)), -vec4<i32>(-(~39444i), -(arg_3.x >> (arg_0 % 32u)), ~(~(-7695i)), -1257i));
    return Struct_3(vec4<bool>(true, false, abs(_wgslsmith_div_i32(15972i, arg_3.x)) <= -9547i, true));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    let var_0 = vec4<u32>(~arg_0.x, ~(~_wgslsmith_dot_vec2_u32(~arg_0.yx, min(arg_0.yx, vec2<u32>(arg_0.x, 1u)))), firstLeadingBit(firstLeadingBit(4482u) >> (~4294967295u % 32u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.x, 39485u), arg_0.x, 0u));
    let var_1 = Struct_4(func_4(~1u, true, var_0.yy, vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(40049i, -31071i, -2147483647i)), firstLeadingBit(firstLeadingBit(u_input.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-212f, -1000f, -1896f, 997f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1258f, 890f, -381f, 186f) + vec4<f32>(-456f, 1686f, -614f, 617f))))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(10238u, 1u, u_input.b, var_0.x)), var_0 & ~var_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(~38699u, arg_0.x, firstTrailingBit(38327u)), vec3<u32>(u_input.b, arg_0.x, 63715u), arg_0)), var_0.zxx);
    let var_2 = func_4(0u, any(!vec2<bool>(true, true || arg_1.a.x)), vec2<u32>(~4294967295u, 0u), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(-2297i, -4430i, u_input.a, 2147483647i)), -1i));
    let var_3 = -8513i;
    var var_4 = 1068f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(618f)), -802f))))));
    return var_1;
}

fn func_1() -> Struct_4 {
    let var_0 = func_5(~abs(~vec3<u32>(0u, u_input.b, u_input.b)), Struct_3(vec4<bool>(true, true, true, true)), func_4(~firstTrailingBit(_wgslsmith_clamp_u32(51569u, 419u, u_input.b)), true, select(~func_2(Struct_2(292f)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, u_input.b), select(vec2<u32>(u_input.b, 0u), vec2<u32>(23059u, 26131u), vec2<bool>(false, false)), vec2<u32>(1u, u_input.b)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), max(firstTrailingBit(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a)), abs(~vec2<i32>(u_input.a, 15846i)))));
    var var_1 = min(vec3<u32>(abs(21278u), ~(~0u), ~func_5(var_0.c, var_0.a, Struct_3(var_0.a.a)).b.b.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(var_0.b.b.xyx, vec3<u32>(var_0.b.c.x, 45847u, 13783u)), vec3<u32>(~1u, u_input.b, var_0.b.c.x), var_0.b.b.www)) >> (var_0.c % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a.x, var_0.b.a.x, 1422f, var_0.b.a.x), var_0.b.a, var_0.a.a)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1778f)))), var_0.b.a.x, _wgslsmith_f_op_f32(max(779f, 179f)), -1625f))), _wgslsmith_f_op_vec4_f32(var_0.b.a + var_0.b.a), ~(~(~20729u)) >= _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(firstTrailingBit(var_0.b.c.x), 1u))));
    var var_3 = Struct_2(var_2.x);
    let var_4 = 0i;
    return func_5(var_0.b.c, Struct_3(var_0.a.a), Struct_3(vec4<bool>(all(!var_0.a.a.xzy), true, false, !any(vec3<bool>(true, false, var_0.a.a.x)))));
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = arg_3.a;
    var_0 = arg_3.a;
    var var_1 = any(vec2<bool>(true, arg_3.a.a.x));
    var var_2 = _wgslsmith_f_op_f32(-746f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x * _wgslsmith_f_op_f32(511f + 120f))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 668f))))));
    return vec2<bool>(arg_3.a.a.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<u32>(6494u, _wgslsmith_mod_u32(~u_input.b, u_input.b), _wgslsmith_mult_u32(0u, 0u), abs(4294967295u)) << (~vec4<u32>(abs(47660u), 11384u, _wgslsmith_mod_u32(u_input.b, 7192u), u_input.b) % vec4<u32>(32u)));
    let var_1 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, false)), func_6(countOneBits(1u), -2147483647i, -12462i, func_1())), func_1().a.a.xy, !vec2<bool>(u_input.a != 44484i, all(vec4<bool>(false, true, true, true)))), func_6(_wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, 33890u), select(~var_0.x, firstTrailingBit(u_input.b), select(false, false, false))), ~(-countOneBits(1i)), -2901i, func_1()), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-480f, 1792f), 450f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1060f), -1426f, _wgslsmith_f_op_f32(-1260f * -732f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(func_3())), -2147483647i & u_input.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(189f, 298f))));
}

