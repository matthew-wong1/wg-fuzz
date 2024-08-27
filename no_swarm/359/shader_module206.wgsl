struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<u32> {
    var var_0 = false;
    var_0 = true;
    var var_1 = Struct_4(_wgslsmith_sub_i32(max(1i, -u_input.c) | ~_wgslsmith_mult_i32(u_input.b, 0i), abs(-2147483647i)), Struct_1(true, u_input.a.x, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), all(vec3<bool>(true, false, true))), true)));
    let var_2 = var_1.b.c.x;
    let var_3 = var_1.b;
    return vec2<u32>(~1u, ~_wgslsmith_mod_u32(~1u, abs(~71735u)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2067f, 597f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-848f, 516f, 1295f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-897f, -1096f, -185f), vec3<f32>(-154f, 842f, 496f)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(-596f, -445f)), _wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_f32(-841f - 177f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1248f, -268f, -1578f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 1000f, 887f), vec3<f32>(828f, -1323f, -2068f)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-496f, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), -525f, _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-177f + 562f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))))));
    var var_1 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4985u, 64253u, 26212u, 5752u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 56730u), vec4<u32>(4294967295u, 51006u, 9631u, 5497u), abs(vec4<u32>(4294967295u, 10785u, 1u, 211u))) % vec4<u32>(32u)), vec4<u32>(select(abs(0u), 1u, true), ~4294967295u, 1u, 70553u)) >> (~vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(41300u, 1u, 52311u, 0u), vec4<u32>(30877u, 0u, 0u, 0u))), 1u, _wgslsmith_clamp_u32(0u, ~4294967295u, 1u), abs(1u)) % vec4<u32>(32u));
    var var_2 = !((all(vec3<bool>(false, false, false)) || all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))) != !(arg_0 != ~2147483647i));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -159f, _wgslsmith_f_op_f32(-230f - _wgslsmith_f_op_f32(-764f * -893f)))));
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)) + _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1066f)))) == var_0.x);
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> f32 {
    var var_0 = Struct_2(arg_1.b, arg_1.b.b, Struct_1(true, 0i, arg_1.b.c), vec4<u32>(4294967295u, firstLeadingBit(~1u), ~1u, _wgslsmith_dot_vec2_u32(min(func_2(), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 7144u), vec2<u32>(32248u, 39609u))), ~vec2<u32>(4294967295u, 42209u))));
    var_0 = Struct_2(Struct_1(func_3(-1i), _wgslsmith_mod_i32(1i, -var_0.c.b) ^ arg_2, vec4<bool>(true, select(var_0.d.x == var_0.d.x, true, arg_0 || true), arg_1.b.c.x, any(arg_1.b.c.ww) && func_3(2147483647i))), _wgslsmith_div_i32(min(-(var_0.a.b | arg_1.b.b), 34043i), u_input.a.x), arg_1.b, (var_0.d & _wgslsmith_clamp_vec4_u32(~var_0.d, var_0.d | vec4<u32>(var_0.d.x, 4294967295u, var_0.d.x, 1u), var_0.d)) >> (_wgslsmith_mult_vec4_u32(var_0.d, firstTrailingBit(vec4<u32>(var_0.d.x, var_0.d.x, 0u, var_0.d.x) | vec4<u32>(var_0.d.x, 0u, 112194u, 4294967295u))) % vec4<u32>(32u)));
    var_0 = Struct_2(var_0.c, ~(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.b.b, -1i, 2147483647i, var_0.c.b)), vec4<i32>(arg_1.a, var_0.b, var_0.b, 1i))), Struct_1(!arg_0, arg_2, select(vec4<bool>(any(arg_1.b.c.wx), true, arg_1.b.c.x, true), select(arg_1.b.c, select(var_0.a.c, vec4<bool>(var_0.a.a, var_0.c.a, arg_1.b.a, true), vec4<bool>(var_0.c.a, arg_0, true, false)), true), all(!vec2<bool>(var_0.c.c.x, false)))), ~(~vec4<u32>(var_0.d.x, 94350u, var_0.d.x, var_0.d.x)) & _wgslsmith_mod_vec4_u32(firstTrailingBit(var_0.d) << (~vec4<u32>(var_0.d.x, 4294967295u, var_0.d.x, var_0.d.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(var_0.d.x, var_0.d.x), var_0.d.x, ~1u, var_0.d.x)));
    var_0 = Struct_2(Struct_1(any(vec2<bool>(true, true)), i32(-1i) * -2147483647i, arg_1.b.c), arg_1.a, Struct_1(!(!var_0.c.c.x) & ((var_0.a.a && var_0.a.c.x) || false), ~reverseBits(0i) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.d.x, 67566u, 69177u), vec3<u32>(var_0.d.x, 1u, var_0.d.x)) % 32u), vec4<bool>(!all(vec3<bool>(arg_1.b.c.x, arg_1.b.c.x, false)), false, !arg_1.b.a, !arg_0)), vec4<u32>(min(1u, ~_wgslsmith_div_u32(var_0.d.x, 10118u)), abs(_wgslsmith_mod_u32(22854u, var_0.d.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 65645u, var_0.d.x, 1u), vec4<u32>(0u, 99923u, 1u, var_0.d.x))), abs(var_0.d.x & 1u), ~_wgslsmith_mod_u32(var_0.d.x, var_0.d.x) >> (91953u % 32u)));
    let var_1 = !vec3<bool>(true, !arg_1.b.c.x, var_0.c.a);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1435f), _wgslsmith_f_op_f32(ceil(508f)))) + 136f), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1602f, 1130f)), _wgslsmith_f_op_f32(min(-1625f, 388f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2135f), 2230f, _wgslsmith_f_op_f32(min(-619f, _wgslsmith_f_op_f32(f32(-1f) * -688f))), 732f);
    var var_1 = !all(!vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(func_1(any(vec4<bool>(true, true, true, true)), Struct_4(min(3624i, u_input.b), Struct_1(false, countOneBits(u_input.c), vec4<bool>(true, false, false, false))), 1i)));
    var var_3 = vec2<u32>(reverseBits(_wgslsmith_sub_u32(1u, 1u)), ~75293u);
    var var_4 = select(vec2<u32>(~var_3.x, firstTrailingBit(var_3.x)) >> (vec2<u32>(var_3.x & ~4294967295u, _wgslsmith_sub_u32(abs(0u), var_3.x)) % vec2<u32>(32u)), ~vec2<u32>(~(~1460u), ~abs(25083u)), true);
    var_4 = ~(vec2<u32>(55681u, 1u) << (~(vec2<u32>(var_4.x, var_4.x) ^ (vec2<u32>(var_3.x, 4108u) | vec2<u32>(38164u, var_4.x))) % vec2<u32>(32u)));
    var var_5 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, -422f, var_0.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 727f, -1028f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-708f, var_0.x, -2031f) + vec3<f32>(var_0.x, var_0.x, -1169f)), vec3<bool>(true, true, true)))), var_0.yxw)), !(!(_wgslsmith_clamp_u32(var_4.x, 16383u, 59652u) >= (var_3.x >> (0u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~(~104351u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_4.x, var_4.x), firstLeadingBit(var_3.x)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(63666u, var_3.x), vec2<u32>(var_3.x, 1u))))));
}

