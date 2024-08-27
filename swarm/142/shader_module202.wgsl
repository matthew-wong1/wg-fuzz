struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(~select(u_input.a | u_input.b, abs(0u), false), firstLeadingBit(u_input.b) ^ u_input.b));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, 1067f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2184f, -232f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1348f, arg_0) + vec2<f32>(-195f, -127f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 291f) + vec2<f32>(-617f, arg_0)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * _wgslsmith_f_op_f32(-arg_0)))) > 210f, max(select(vec4<u32>(u_input.a, max(0u, 1u), _wgslsmith_add_u32(u_input.a, 20641u), ~u_input.a), vec4<u32>(4294967295u, u_input.b, 0u, 59877u) << (select(vec4<u32>(0u, 4294967295u, u_input.b, 3530u), vec4<u32>(u_input.b, u_input.a, u_input.b, 0u), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), true), min(vec4<u32>(u_input.a, u_input.b ^ 58738u, u_input.b, ~4294967295u), vec4<u32>(~u_input.b, u_input.b, u_input.b, 1u & u_input.b))));
    var var_2 = !(!any(select(!vec4<bool>(var_1.c, true, var_1.c, false), vec4<bool>(var_1.c, false, false, true), var_1.a >= 1118f)));
    var_0 = _wgslsmith_mult_u32(var_1.d.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(select(select(var_1.d.x, 15905u, false), _wgslsmith_mult_u32(900u, var_1.d.x), !var_1.c), _wgslsmith_clamp_u32(var_1.d.x, var_1.d.x, ~var_1.d.x)), 12518u >> (_wgslsmith_mult_u32(var_1.d.x, firstLeadingBit(4106u)) % 32u)));
    var var_3 = ~((~(~0u) | ~var_1.d.x) & firstTrailingBit(_wgslsmith_dot_vec2_u32(select(var_1.d.zz, vec2<u32>(u_input.b, var_1.d.x), vec2<bool>(var_1.c, var_1.c)), countOneBits(vec2<u32>(7838u, var_1.d.x)))));
    return select(!vec4<bool>(false, var_1.c, !var_1.c && any(vec4<bool>(var_1.c, false, false, true)), true), vec4<bool>(false, all(select(!vec3<bool>(var_1.c, true, var_1.c), !vec3<bool>(true, var_1.c, false), vec3<bool>(true, var_1.c, var_1.c))), var_1.c | all(select(vec2<bool>(var_1.c, true), vec2<bool>(false, true), var_1.c)), var_1.a != _wgslsmith_f_op_f32(178f + _wgslsmith_f_op_f32(f32(-1f) * -766f))), all(select(vec3<bool>(true, true, true), select(!vec3<bool>(false, true, var_1.c), vec3<bool>(var_1.c, true, var_1.c), var_1.c), select(!vec3<bool>(true, var_1.c, var_1.c), vec3<bool>(var_1.c, true, false), vec3<bool>(true, var_1.c, true)))));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(382f, -1166f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(178f)), -2152f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, -722f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-242f, -1665f), vec2<f32>(-911f, -316f))) - vec2<f32>(-800f, _wgslsmith_div_f32(304f, 195f)))), true && all(vec3<bool>(false, false, true)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 57935u, 4294967295u) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(20517u, u_input.b, u_input.b, 0u) | select(vec4<u32>(167u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.b, 4294967295u, 32669u, u_input.a), true)), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.a, 15319u)) << (vec4<u32>(1u, 0u, ~1u, _wgslsmith_mod_u32(0u, u_input.b)) % vec4<u32>(32u))));
    var var_1 = Struct_4(Struct_2(vec3<i32>(u_input.c | u_input.c, u_input.c, u_input.c | u_input.c), vec4<i32>(1i, 2147483647i, ~1i, ~(i32(-1i) * -16043i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1721f, var_0.a, var_0.b.x)))), vec2<u32>(37103u, 9035u)));
    let var_2 = min(select(_wgslsmith_dot_vec4_i32(var_1.a.b, countOneBits(vec4<i32>(10533i, var_1.a.a.x, -86565i, -7072i))), 1i, !all(select(vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(true, false, var_0.c, var_0.c)))), 2147483647i);
    var_1 = Struct_4(var_1.a);
    var_1 = Struct_4(var_1.a);
    return select(!(!vec4<bool>(true, -1i == var_1.a.b.x, false, !var_0.c)), !(!func_3(-452f)), !var_0.c);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> Struct_4 {
    var var_0 = -62289i;
    var_0 = -2147483647i;
    var_0 = 1i;
    var_0 = arg_1.e.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(-867f)), _wgslsmith_f_op_f32(ceil(arg_3.a)), -448f, arg_1.d), _wgslsmith_div_vec4_f32(vec4<f32>(-151f, arg_2.a, arg_1.d, 1320f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, 1000f, arg_1.d, arg_2.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, arg_2.a, -1231f, arg_2.a))))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(trunc(arg_2.a))), arg_2.b.x, _wgslsmith_f_op_f32(abs(-422f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1842f)), arg_1.d))));
    return Struct_4(Struct_2(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 0i, arg_1.e.x), _wgslsmith_div_vec3_i32(arg_1.e, select(arg_1.e, vec3<i32>(2147483647i, u_input.c, -67143i), arg_0.zzw)), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, 1i), arg_1.e)), vec4<i32>(_wgslsmith_add_i32(-25318i, 5883i), arg_1.c.x, arg_1.c.x, firstTrailingBit(1i)) << (~max(vec4<u32>(57937u, arg_2.d.x, 18686u, u_input.a), arg_2.d) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.a, -121f, var_1.x, arg_3.a), vec4<f32>(var_1.x, -1085f, 1216f, 205f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1430f, -1563f, arg_3.a, 671f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.a, -1207f, arg_3.b.x, 134f)))))), vec2<u32>(_wgslsmith_mult_u32(71776u, arg_3.d.x), min(arg_3.d.x, arg_3.d.x)) | _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, 57906u), vec2<u32>(52263u, 4294967295u), vec2<bool>(arg_1.b, true)), ~arg_3.d.zw)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(~9005u & _wgslsmith_div_u32(arg_3.x, 10686u)), arg_3.x, 0u & u_input.b, 22669u), vec4<u32>(firstLeadingBit(~arg_3.x | _wgslsmith_add_u32(u_input.b, 2257u)), 4294967295u, ~arg_3.x, arg_3.x));
    let var_1 = func_4(vec4<bool>(true, any(select(arg_1, func_2(), select(arg_1, vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(arg_1.x, true, arg_1.x, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2114f, 311f))) >= _wgslsmith_f_op_f32(f32(-1f) * -1447f), any(!arg_1.zxx) && !any(vec4<bool>(false, arg_1.x, false, false))), Struct_1(false && !all(vec2<bool>(false, false)), arg_1.x || true, _wgslsmith_mult_vec2_i32(arg_2, firstLeadingBit(vec2<i32>(-2147483647i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 592f)) - -803f), ~(-vec3<i32>(1i, 1i, 21025i)) << (~arg_3 % vec3<u32>(32u))), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 600f)), vec2<f32>(-832f, 227f), !all(vec4<bool>(arg_1.x, arg_1.x, true, false)), max(max(vec4<u32>(arg_3.x, 74056u, arg_3.x, 0u) ^ var_0, var_0), vec4<u32>(~4294967295u, 65867u, _wgslsmith_sub_u32(4294967295u, u_input.b), u_input.a))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(511f, -1000f)) - _wgslsmith_div_f32(125f, 676f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1029f, _wgslsmith_f_op_f32(trunc(-665f))) - vec2<f32>(_wgslsmith_f_op_f32(1302f + 1000f), _wgslsmith_f_op_f32(round(1008f)))), arg_1.x & true, _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_0.x, arg_3.x, 1u, arg_3.x)), ~vec4<u32>(arg_3.x, 3300u, 28884u, 23272u))));
    var var_2 = 53983i;
    var var_3 = firstTrailingBit(~_wgslsmith_div_i32(firstTrailingBit(~(-23144i)), -90074i));
    var var_4 = -808f;
    return -(var_1.a.b >> (vec4<u32>(~var_0.x, ~arg_3.x & (arg_3.x >> (var_1.a.d.x % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9088u, 53906u), arg_3), _wgslsmith_add_u32(~var_0.x, ~0u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(0i, select(vec4<bool>(true, any(vec4<bool>(true, false, false, true)), false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true)), false), ~(vec2<i32>(47809i, u_input.c) | firstLeadingBit(vec2<i32>(40821i, u_input.c))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 2066u, 0u), vec3<u32>(u_input.a, 0u, 48644u)))), u_input.c);
}

