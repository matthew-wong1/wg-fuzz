struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 31>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> Struct_1 {
    return Struct_1(false, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 10912u, u_input.a.x), ~vec3<u32>(117375u, u_input.a.x, u_input.a.x)) & 15569u, 1u << (u_input.a.x % 32u), ~u_input.a.x), select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(select(arg_1, arg_1, arg_1), !arg_1, !(11120u == u_input.a.x)), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1000f)), -186f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -712f)))));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = 1044f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1250f, -134f) - _wgslsmith_f_op_f32(-arg_2.d)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.d + arg_2.d), -1000f)))));
    let var_1 = ~(-65897i);
    var var_2 = Struct_2(Struct_1(arg_1.x, 21698u, vec3<bool>(false, arg_2.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, 54525u, 1u), u_input.a) != 0u), _wgslsmith_f_op_f32(-1f)), arg_1.x & !select(true, 4294967295u != arg_3, any(vec4<bool>(true, true, false, true))), func_2(vec4<bool>(true, arg_2.c.x, true, !any(vec4<bool>(arg_2.a, true, arg_2.c.x, arg_2.c.x))), true, -1i), func_2(!(!vec4<bool>(arg_1.x, arg_1.x, false, arg_2.c.x)), true, i32(-1i) * -2147483647i), vec2<f32>(-216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(757f, _wgslsmith_f_op_f32(f32(-1f) * -558f))) * _wgslsmith_f_op_f32(-arg_2.d))));
    return ~_wgslsmith_div_u32(0u, u_input.a.x);
}

fn func_1() -> u32 {
    let var_0 = (firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(7039u, u_input.a.x, u_input.a.x, 10532u), vec4<u32>(0u, u_input.a.x, 32785u, u_input.a.x))) ^ ~4294967295u) == 26220u;
    var var_1 = Struct_2(Struct_1(true, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(69963u, u_input.a.x, u_input.a.x) & u_input.a)), !(!select(vec3<bool>(false, var_0, false), vec3<bool>(true, var_0, false), vec3<bool>(false, false, var_0))), -1215f), !(func_3(_wgslsmith_f_op_f32(474f - 322f), select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, false, false), vec3<bool>(var_0, var_0, false)), func_2(vec4<bool>(false, true, var_0, var_0), var_0, u_input.b), u_input.a.x) == u_input.a.x), Struct_1(true, 1u, vec3<bool>(true, !(!var_0), func_2(select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(false, false, true, false), var_0), !var_0, u_input.b & -35082i).c.x), 601f), Struct_1(!(!any(vec2<bool>(false, var_0))), _wgslsmith_sub_u32(21195u & u_input.a.x, countOneBits(u_input.a.x >> (u_input.a.x % 32u))), select(vec3<bool>(false, true, any(vec4<bool>(false, false, true, true))), select(!vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, true), select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, false, true), vec3<bool>(false, var_0, var_0))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1725f * 1132f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1622f - 104f), _wgslsmith_f_op_f32(trunc(137f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.d * 305f)))) + 582f));
    let var_3 = Struct_2(Struct_1(any(var_1.c.c.yx) | var_0, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.c.b, 11827u), _wgslsmith_mod_u32(var_1.a.b, u_input.a.x)), var_1.a.c, _wgslsmith_f_op_f32(select(-510f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.d.d)) + _wgslsmith_f_op_f32(floor(var_2))), true))), var_0, func_2(vec4<bool>(var_1.d.c.x, true, true, var_1.d.a || !var_0), false, 41350i), Struct_1(abs(_wgslsmith_sub_u32(29896u, u_input.a.x)) <= _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, var_1.c.b), u_input.a.x | var_1.c.b), ~reverseBits(~var_1.a.b), var_1.a.c, -1851f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_2)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.e)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.d, var_2) - vec2<f32>(-363f, var_2)) * var_1.e))));
    global2 = abs(0i) << (firstLeadingBit(~select(1u, ~1u, select(var_3.b, var_3.c.c.x, true))) % 32u);
    return _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.b, func_3(-723f, !vec3<bool>(false, var_0, var_3.a.a), Struct_1(false, 0u, vec3<bool>(var_3.b, true, false), 1495f), ~22775u), ~_wgslsmith_div_u32(98410u, var_1.a.b)), abs(vec3<u32>(~var_3.a.b, u_input.a.x << (0u % 32u), 1u))), _wgslsmith_div_u32(var_3.d.b, _wgslsmith_mod_u32(func_2(select(vec4<bool>(var_3.d.a, var_3.a.c.x, var_0, false), vec4<bool>(false, var_3.a.a, false, var_1.b), false), false, firstLeadingBit(u_input.b)).b, 64726u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(func_1(), u_input.a.x, countOneBits(u_input.a.x), u_input.a.x) & (vec4<u32>(u_input.a.x, 32352u, u_input.a.x, 71456u) | vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x)), abs(vec4<u32>(1u, 0u, u_input.a.x, 59245u) ^ select(vec4<u32>(1u, 58285u, 37077u, 0u), vec4<u32>(6186u, u_input.a.x, 4294967295u, u_input.a.x), false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-173f, -1785f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(435f, -104f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(793f, -893f))), true | all(vec3<bool>(true, false, false)))) * vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-261f + -333f), -586f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f))), !(!vec2<bool>(func_2(vec4<bool>(false, false, false, false), false, 0i).a, true))));
    let var_2 = Struct_3(firstLeadingBit(select(reverseBits(vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), vec4<i32>(-1i, -1i, u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b)), true)), Struct_2(Struct_1(!all(vec2<bool>(false, true)), 1u, vec3<bool>(true, true, any(vec3<bool>(false, false, false))), var_1.x), any(!func_2(vec4<bool>(true, false, true, true), false, 11525i).c.yx), Struct_1(true, u_input.a.x, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(var_1.x - 991f)), func_2(vec4<bool>(true, true, true, true), false, u_input.b), _wgslsmith_f_op_vec2_f32(var_1 - var_1)), _wgslsmith_div_i32(~abs(u_input.b) >> (~max(1u, u_input.a.x) % 32u), -u_input.b), 51521u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1746f * -1000f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2.b.c.d), var_1.x)) - vec4<f32>(384f, _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.d.d, -473f) + _wgslsmith_f_op_f32(var_2.b.a.d + -1000f)), 2125f)));
    let var_4 = Struct_3(vec4<i32>(-2147483647i, 8930i, -1i, _wgslsmith_div_i32(1i, 2147483647i)) >> (_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(28479u, 15625u, 15523u, 9373u)), select(min(vec4<u32>(var_2.d, u_input.a.x, var_2.b.d.b, 27011u), vec4<u32>(var_2.d, u_input.a.x, 38631u, var_2.b.c.b)), vec4<u32>(10675u, u_input.a.x, var_0.x, 0u), vec4<bool>(true, false, true, true))) % vec4<u32>(32u)), var_2.b, ~var_2.a.x, _wgslsmith_mod_u32(countOneBits(_wgslsmith_mult_u32(~u_input.a.x, reverseBits(38829u))), var_2.d));
    global0 = -228f;
    global1 = array<vec2<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, -2147483647i, -1i, var_4.c), var_4.a, vec4<i32>(var_2.c, u_input.b, 42089i, 2147483647i))), var_2.a, any(var_2.b.a.c.yy)));
}

