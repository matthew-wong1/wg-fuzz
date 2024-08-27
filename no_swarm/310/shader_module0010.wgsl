struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-303f))), 1356f, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), true)))), vec3<f32>(-101f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_f_op_f32(max(186f, -635f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(882f - 533f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-557f * -1842f), -1652f)), 1318f))));
    var var_1 = -vec4<i32>(arg_0, countOneBits(arg_0), max(_wgslsmith_mod_i32(-2147483647i, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), -2147483647i) >> (select(~(~abs(vec4<u32>(21410u, 4294967295u, u_input.c, 1u))), ~(vec4<u32>(u_input.c, 40925u, u_input.d.x, u_input.c) >> (vec4<u32>(u_input.d.x, 14639u, u_input.d.x, 0u) % vec4<u32>(32u))) ^ (min(vec4<u32>(u_input.d.x, 62299u, u_input.d.x, u_input.c), vec4<u32>(4294967295u, u_input.c, 4294967295u, u_input.d.x)) << (~vec4<u32>(u_input.d.x, 68352u, u_input.c, 4294967295u) % vec4<u32>(32u))), true) % vec4<u32>(32u));
    var var_2 = vec2<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -774f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - 744f) * _wgslsmith_f_op_f32(var_0.b.x - 1000f))) | (any(vec2<bool>(false, true)) | (_wgslsmith_add_i32(-1i, 1i) <= arg_1)), any(select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, true), vec2<bool>(false, false)), true)));
    let var_3 = -vec4<i32>(var_1.x, arg_1, -2147483647i, -998i);
    var_1 = vec4<i32>(-21989i, ~(~reverseBits(arg_0) ^ _wgslsmith_dot_vec4_i32(-var_3, vec4<i32>(var_3.x, var_3.x, -13096i, -2262i))), 72569i, -10492i >> (~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, 46536u, 1u)), u_input.d.x) % 32u));
    return 626f;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~u_input.b.x, arg_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -852f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(199f, 513f, -233f) - vec3<f32>(-1185f, 177f, 137f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1093f, -1000f, 1583f) - vec3<f32>(513f, -280f, 568f))))));
    var_0 = Struct_4(var_0.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(339f, var_0.a, var_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(min(var_0.b.x, 946f)), 1068f), vec3<f32>(var_0.b.x, var_0.a, var_0.b.x)))));
    var var_1 = Struct_4(var_0.a, var_0.b);
    let var_2 = arg_0;
    var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(151f * var_0.b.x)))) * 244f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), 1000f, var_0.b.x)) * vec3<f32>(_wgslsmith_f_op_f32(1533f + -1634f), var_0.b.x, 815f)));
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, u_input.d.x, ~(117096u >> (0u % 32u))), 0u << (firstLeadingBit(u_input.c) % 32u)), u_input.d.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 18417u, 17526u), vec3<u32>(u_input.c, 4294967295u, u_input.d.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 89149u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.c, 88092u)))) << (vec3<u32>(_wgslsmith_add_u32(1u, abs(19213u)), 4294967295u, func_2(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 26677i, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, arg_1, -1i, 26452i))))) % vec3<u32>(32u));
    var_0 = vec3<u32>(u_input.c, ~(~59285u), 0u);
    var_0 = ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 43376u, 4294967295u), ~vec3<u32>(u_input.c, 1044u, 0u))) & vec3<u32>(var_0.x, ~4294967295u, 0u);
    let var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(firstLeadingBit(abs(vec4<u32>(var_0.x, 13368u, u_input.c, var_0.x))), vec4<u32>(4294967295u ^ var_0.x, _wgslsmith_dot_vec2_u32(var_0.yy, var_0.zy), u_input.d.x, ~0u)), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(1u, 14628u, 4294967295u, var_0.x)), abs(vec4<u32>(14699u, 1u, u_input.d.x, 37191u))), (vec4<u32>(u_input.c, 4294967295u, 60136u, 4294967295u) << (~vec4<u32>(u_input.d.x, var_0.x, 98758u, 2952u) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), 63109u, var_0.x, 79740u)));
    let var_2 = u_input.b.x <= -u_input.a;
    return ~(~(65810u >> ((0u >> (u_input.c % 32u)) % 32u)) & var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 28426u;
    var_0 = ~57484u | countOneBits(u_input.d.x);
    var_0 = _wgslsmith_add_u32(~func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-494f, 280f, 373f, -639f) * vec4<f32>(-1216f, -3238f, 1422f, 2666f)))), max(~(-11570i), ~(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-920f))), vec2<f32>(445f, _wgslsmith_f_op_f32(ceil(724f)))), u_input.d.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1461f))) - -1506f)));
    let var_2 = Struct_2(-max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(36907i, u_input.b.x, u_input.a, -33195i)), 1i) == 1i, ~firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, 0u), _wgslsmith_div_u32(u_input.d.x, 51400u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -675f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-943f + 896f) + _wgslsmith_f_op_f32(select(-658f, -1999f, true))) * 212f) - _wgslsmith_f_op_f32(f32(-1f) * -218f)));
    let var_4 = (_wgslsmith_dot_vec2_u32(u_input.d, abs(~u_input.d)) & 31571u) << (_wgslsmith_dot_vec2_u32(reverseBits(max(_wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(1u, 33854u), u_input.d), ~u_input.d)), ~u_input.d) % 32u);
    let var_5 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1098f - 871f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1213f, -885f)), _wgslsmith_f_op_f32(f32(-1f) * -561f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1063f)), _wgslsmith_f_op_f32(1586f - _wgslsmith_f_op_f32(f32(-1f) * -538f))))), -1000f, vec2<bool>(true, all(select(!vec2<bool>(var_2.a, var_2.a), vec2<bool>(var_2.a, var_2.a), true))), u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-667f, -617f, 1177f) + vec3<f32>(-226f, -2135f, -1000f)))), vec3<f32>(1f, 1f, 1f), any(vec2<bool>(var_2.a, false))))));
    var_1 = -1619f;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.b.zy, -u_input.b.zy), -573f);
}

