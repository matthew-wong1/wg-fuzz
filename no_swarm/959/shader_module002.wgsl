struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = min(select(_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, 29926u, arg_1.b, u_input.c)), ~vec4<u32>(arg_1.b, u_input.c, arg_1.b, 113985u) | vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u)), vec4<u32>(_wgslsmith_div_u32(0u, arg_1.b) & 1u, u_input.c, 1u, ~1u >> (u_input.c % 32u)), !(!(!vec4<bool>(true, false, arg_2, false)))), (select(max(vec4<u32>(3369u, 9955u, arg_1.b, 0u), vec4<u32>(u_input.c, arg_1.b, arg_1.b, 18705u)), ~vec4<u32>(0u, u_input.c, u_input.c, 14580u), !vec4<bool>(true, true, arg_2, false)) >> (firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, u_input.c, 4294967295u, arg_1.b))) % vec4<u32>(32u))) << (vec4<u32>(abs(reverseBits(52157u)), arg_1.b << (arg_1.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(12226u, 1u), vec2<u32>(arg_1.b, 38259u) & vec2<u32>(0u, arg_1.b)), 1u) % vec4<u32>(32u)));
    let var_1 = ~firstTrailingBit(vec3<i32>(arg_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 2552i, arg_1.a.x, u_input.b), vec4<i32>(arg_1.a.x, 0i, u_input.b, u_input.a)), _wgslsmith_add_i32(~(-18919i), abs(-43262i))));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(68843u, ~4294967295u >> (~var_0.x % 32u), ~arg_1.b | ~(~var_0.x), 92768u), ~((~vec4<u32>(3043u, arg_1.b, 1u, var_0.x) & ~vec4<u32>(0u, 65141u, u_input.c, 21467u)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 36939u, 107705u, arg_1.b), abs(vec4<u32>(var_0.x, var_0.x, arg_1.b, 4294967295u)))));
    let var_2 = arg_0 | !all(select(!vec3<bool>(arg_2, arg_2, true), !vec3<bool>(true, arg_0, arg_0), true));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-550f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(select(763f, -1000f, true))))), -180f));
    return -1000f;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = 4294967295u << (_wgslsmith_sub_u32(~u_input.c, ~(~u_input.c | _wgslsmith_add_u32(0u, u_input.c))) % 32u);
    let var_1 = -166f;
    let var_2 = arg_1;
    let var_3 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, u_input.b) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), countOneBits(vec2<i32>(-56938i, u_input.a)), arg_3 < var_1), ~vec2<i32>(41682i, -12541i)), u_input.a), u_input.a, -42113i, u_input.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f * arg_1.a.x) + _wgslsmith_f_op_f32(func_3(false || any(vec3<bool>(false, arg_2.a, arg_2.a)), Struct_2(vec3<i32>(-2147483647i, -1i, u_input.b), 4294967295u, var_1, var_2.b), true))));
}

fn func_5(arg_0: f32) -> f32 {
    var var_0 = Struct_3(vec3<f32>(-104f, 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(true, Struct_2(vec3<i32>(-59980i, 42993i, u_input.b), 0u, arg_0, Struct_1(false)), true)), _wgslsmith_f_op_f32(sign(arg_0)), all(vec4<bool>(true, false, false, true))))))), Struct_1(false));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)) * arg_0)));
    let var_2 = _wgslsmith_mult_i32(-43226i, _wgslsmith_div_i32(-_wgslsmith_sub_i32(1i, -2095i), 1i));
    var var_3 = 56938u;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(370f, var_0.a.x)));
    return _wgslsmith_f_op_f32(-481f - _wgslsmith_f_op_f32(f32(-1f) * -503f));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(false, Struct_2(vec3<i32>(u_input.a, 33163i, -2147483647i), 4294967295u, -1512f, Struct_1(true)), true)), Struct_3(vec3<f32>(1597f, 989f, 388f), Struct_1(true)), Struct_1(true), _wgslsmith_f_op_f32(f32(-1f) * -348f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + -600f), 787f))));
    let var_1 = ~arg_1.x;
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(abs(_wgslsmith_add_i32(-u_input.b, 16814i)), -u_input.a), -_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.a, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -10253i), vec2<i32>(-17604i, u_input.a))), ~(vec2<i32>(-25951i, u_input.b) | vec2<i32>(u_input.b, u_input.b))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1480f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-2256f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, 890f)), _wgslsmith_f_op_f32(select(arg_0.x, 440f, false)))))));
    return Struct_1(true);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    let var_0 = u_input.a;
    let var_1 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1526f), 549f, _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(select(arg_2.x, 3675f, arg_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(arg_2, arg_2, arg_0.x)))) * arg_2)), func_2(_wgslsmith_f_op_vec2_f32(arg_2.zy - vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), -683f)), ~firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 1u, 77779u))));
    let var_2 = abs(20202i);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, -149f, false))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - -350f)))), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1824f - -780f), _wgslsmith_f_op_f32(var_1.a.x - arg_2.x)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(-1619f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.a.x)), -437f)))));
    var var_4 = ~_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(628u, u_input.c, u_input.c, u_input.c)) >> (firstLeadingBit(~vec4<u32>(0u, 44099u, u_input.c, u_input.c)) % vec4<u32>(32u)), vec4<u32>(min(1u, 4294967295u), ~u_input.c, u_input.c << (_wgslsmith_mult_u32(u_input.c, 1u) % 32u), (109541u << (u_input.c % 32u)) & u_input.c));
    return _wgslsmith_f_op_f32(select(-978f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(ceil(var_1.a.x)))) - _wgslsmith_f_op_f32(ceil(var_1.a.x))), var_3.x)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -39805i), vec3<i32>(-36251i, -1i, 7080i), ~vec3<i32>(0i, u_input.a, u_input.b))), ~max(83416u, 1u << (u_input.c % 32u)), -594f, Struct_1(-523f > _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, false, true), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1009f, 1000f, -201f))))));
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c, -1042f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)), -1000f), !vec2<bool>(var_0.c < var_0.c, var_0.d.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, 1043f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1154f, 304f), vec2<f32>(var_0.c, 445f), false))))), select(vec2<bool>(true, func_2(vec2<f32>(1506f, var_0.c), vec4<u32>(u_input.c, var_0.b, 2334u, u_input.c) | vec4<u32>(u_input.c, u_input.c, var_0.b, u_input.c)).a), !select(!vec2<bool>(true, var_0.d.a), vec2<bool>(true, true), true), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(361f, var_0.c), vec2<f32>(333f, var_0.c), vec2<bool>(var_0.d.a, var_0.d.a))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, -475f), vec2<f32>(-220f, var_0.c))), select(vec4<u32>(var_0.b, 1u, 0u, 29287u), vec4<u32>(u_input.c, 24947u, var_0.b, 75541u), vec4<bool>(true, var_0.d.a, var_0.d.a, false)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(6831u, 1u, 4294967295u, 59007u))).a)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1298f, 1179f, var_2.x)), vec3<f32>(1173f, var_1, 1525f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-242f, -263f, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(3060f, var_2.x, 624f) * vec3<f32>(var_2.x, var_1, 279f)), var_0.c != var_2.x)))), var_0.d);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2065f, 541f, 1000f, -437f)))) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1348f, var_2.x)), -1000f, var_2.x)));
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zx, min(firstTrailingBit(countOneBits(~vec3<u32>(u_input.c, u_input.c, var_0.b))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(0u, ~96557u), ~reverseBits(var_0.b))));
}

