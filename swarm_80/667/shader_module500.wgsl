struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(step(-259f, 1000f)), _wgslsmith_f_op_f32(step(1000f, -1039f)), -2020f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1592f, -1659f, -1045f, 1200f))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-190f)), _wgslsmith_f_op_f32(round(-771f)), _wgslsmith_f_op_f32(-1725f - -617f), 1643f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1656f, 1000f, -469f, 1000f))))))));
    var var_1 = vec2<u32>(4294967295u, max(_wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_0.a.x, _wgslsmith_sub_u32(arg_1, 1u)), 21956u), 1u));
    var var_2 = ~u_input.a.x;
    var var_3 = select(vec2<u32>(~arg_0.a.x << (arg_0.a.x % 32u), min(var_1.x, _wgslsmith_add_u32(~arg_1, arg_1 << (70179u % 32u)))), arg_0.a, select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, true, false, true)) || true), !vec2<bool>(arg_0.a.x < 39635u, any(vec4<bool>(true, false, false, false)))));
    var_1 = countOneBits(reverseBits(vec2<u32>(0u, 38941u)));
    return -2147483647i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(reverseBits(vec2<u32>(4294967295u, 4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -940f), -969f));
    var var_2 = max(-u_input.c << (countOneBits(~(~63412u)) % 32u), 25823i);
    let var_3 = Struct_1(_wgslsmith_add_vec2_u32(var_0.a, _wgslsmith_div_vec2_u32(var_0.a, ~var_0.a)));
    let var_4 = _wgslsmith_mult_i32(1020i, u_input.b.x) | func_3(var_0, ~(~var_3.a.x) >> (_wgslsmith_dot_vec2_u32(var_3.a, var_3.a) % 32u));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, 60401i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 0i, -8363i), vec3<i32>(1i, 57393i, 34570i))), u_input.a.x), min(u_input.c & -17441i, -(~u_input.a.x))) < _wgslsmith_dot_vec3_i32(vec3<i32>(0i ^ (u_input.a.x << (16980u % 32u)), -u_input.c, func_3(func_2(), _wgslsmith_div_u32(arg_0.a.x, 32065u))), ~_wgslsmith_sub_vec3_i32(u_input.b.wyx, _wgslsmith_clamp_vec3_i32(vec3<i32>(27899i, -16432i, u_input.a.x), u_input.b.yxx, u_input.a.wwz)));
    var var_1 = func_2();
    let var_2 = Struct_1(vec2<u32>(arg_1.a.x, 4294967295u));
    var_1 = arg_1;
    var var_3 = func_2();
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), false)) & (_wgslsmith_f_op_f32(-1081f * _wgslsmith_f_op_f32(floor(arg_2.x))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(238f)) + 281f)), true, true, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(4090i, arg_0 >> (arg_3.a.x % 32u))), -(arg_1 | _wgslsmith_add_i32(arg_0, 65543i)), _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), min(~arg_1, max(arg_1, arg_0))), 0i), firstTrailingBit(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_1, 56748i, -1i), u_input.a)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) + vec2<f32>(arg_2.x, arg_2.x)), vec2<f32>(arg_2.x, arg_2.x))), vec2<f32>(_wgslsmith_f_op_f32(round(434f)), arg_2.x)), arg_2.zz));
    var var_3 = reverseBits(countOneBits(7939i));
    var_0 = vec4<bool>(false, false == !all(vec4<bool>(false, false, var_0.x, false)), any(vec2<bool>(true, false)), -2147483647i == _wgslsmith_add_i32(abs(-u_input.c), 39255i));
    return Struct_1(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), select(arg_3.a, countOneBits(arg_3.a), !var_0.wz), ~func_4(Struct_1(vec2<u32>(1276u, 14850u)), arg_3).a), vec2<u32>(arg_3.a.x, 4294967295u)));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1185f);
    let var_2 = Struct_1(vec2<u32>(~abs(abs(55861u)), abs(~(~48683u))));
    let var_3 = all(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, arg_1)), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, false), true), !vec3<bool>(arg_1, arg_1, true))));
    return func_5(-39378i, u_input.b.x, vec4<f32>(1584f, 618f, var_1, 1000f), arg_0);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = func_6(Struct_1(min(vec2<u32>(1u, 1u), vec2<u32>(firstTrailingBit(63820u), _wgslsmith_mult_u32(4294967295u, 1u)))), false, func_5(26900i, u_input.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(261f, -559f, -628f, -1012f) + vec4<f32>(-1102f, -565f, 1014f, -286f))), vec4<f32>(-410f, _wgslsmith_f_op_f32(-426f * 962f), _wgslsmith_f_op_f32(-1000f + 777f), 843f), _wgslsmith_mod_i32(u_input.b.x, u_input.a.x) != u_input.b.x)), func_4(Struct_1(~vec2<u32>(13861u, 0u)), func_2())));
    let var_1 = ~var_0.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1348f, _wgslsmith_f_op_f32(-681f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-500f - 195f), _wgslsmith_div_f32(-1000f, -740f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-842f)) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f * _wgslsmith_f_op_f32(round(155f))) + -771f)));
    var var_3 = min((-u_input.b | u_input.a) & _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.c, -40012i, 36901i, 47276i), u_input.a, vec4<bool>(arg_0.x, true, false, arg_0.x)), u_input.a, u_input.a), select(u_input.a, _wgslsmith_div_vec4_i32(~u_input.a, select(u_input.a, u_input.a, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false), !arg_0.x))) << (max(max(~vec4<u32>(27733u, var_1, 1239u, var_1), vec4<u32>(var_0.a.x, var_1, 12459u, 4294967295u)) ^ (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 4294967295u, 38287u, 126549u), vec4<u32>(4294967295u, var_0.a.x, 34960u, 22211u)) >> (~vec4<u32>(var_1, 1u, var_1, 1u) % vec4<u32>(32u))), min(_wgslsmith_add_vec4_u32(max(vec4<u32>(0u, var_0.a.x, var_1, var_1), vec4<u32>(0u, var_1, 57040u, var_1)), abs(vec4<u32>(var_0.a.x, 98838u, 30857u, var_0.a.x))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_1, var_1, var_1, var_1)), vec4<u32>(var_0.a.x, var_0.a.x, var_1, var_0.a.x)))) % vec4<u32>(32u));
    return i32(-1i) * -57248i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec3<i32>(func_1(vec3<bool>(true, true, true)), ~34577i, 70945i));
    var var_1 = Struct_1(vec2<u32>(1u, 1u));
    let var_2 = _wgslsmith_mod_vec2_i32(firstLeadingBit(-u_input.a.yz), vec2<i32>(-var_0.x | 1i, u_input.b.x));
    var_1 = Struct_1(abs(abs(func_4(func_2(), Struct_1(var_1.a)).a)));
    var_0 = u_input.b.yxw;
    var_1 = Struct_1(vec2<u32>(func_6(Struct_1(vec2<u32>(var_1.a.x, 0u)), true, func_4(Struct_1(var_1.a), Struct_1(var_1.a))).a.x << (_wgslsmith_add_u32(func_6(Struct_1(var_1.a), false, Struct_1(var_1.a)).a.x, 0u) % 32u), var_1.a.x));
    let var_3 = ~(-var_2.x) >= var_2.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1024f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(750f))))), -1295f, 1093f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-972f - -2083f), -459f)), 1437f, 810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -429f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_4.x))))), -734f));
}

