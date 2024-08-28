struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_sub_i32(u_input.a.x, u_input.b);
    var_0 = -14479i;
    var_0 = _wgslsmith_mult_i32(firstTrailingBit(u_input.a.x) << (arg_0.x % 32u), _wgslsmith_div_i32(u_input.b, -1i));
    var_0 = reverseBits(-1i);
    return 1f;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(15406i, ~_wgslsmith_mod_i32(~(-56297i), -43512i)), firstLeadingBit(-(~u_input.b)) >> (arg_1.x % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1111f - _wgslsmith_f_op_f32(select(-486f, -374f, false)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_1, vec4<bool>(true, true, true, true), 70515u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1146f)) * 1f))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(-655f, var_1)), var_1, _wgslsmith_f_op_f32(max(var_1, var_1)), _wgslsmith_f_op_f32(step(1330f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), var_1))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1160f), 245f, -478f, _wgslsmith_f_op_f32(f32(-1f) * -1451f));
    var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), -983f, -346f, -350f)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 1366f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-654f + var_1) - _wgslsmith_f_op_f32(-2161f - var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1, vec4<bool>(false, false, false, true), 30910u))), 1828f))));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(func_3(arg_1, vec4<bool>(true, true, true, true), _wgslsmith_div_u32(18358u, arg_1.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = 15436i;
    var_0 = -20026i;
    var var_1 = -min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, arg_3.b, -53386i) >> (vec3<u32>(4294967295u, 4294967295u, 9908u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 22424i, u_input.b), vec3<i32>(-1i, arg_1.b, arg_3.b)), vec3<i32>(72195i, u_input.b, u_input.a.x) >> (vec3<u32>(31838u, 29352u, 1u) % vec3<u32>(32u))), abs(vec3<i32>(arg_1.b, -3078i, u_input.a.x))) | -countOneBits(~max(vec3<i32>(arg_1.b, u_input.b, -1i), vec3<i32>(arg_1.b, arg_1.b, 1i)));
    let var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(43928u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 1u, 4294967295u)), vec3<u32>(35668u, 30815u, 0u)), 1u, ~_wgslsmith_add_u32(0u, 1u)), reverseBits(vec4<u32>(53166u, _wgslsmith_div_u32(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 52545u, 4294967295u), vec3<u32>(2570u, 1u, 36594u))), 4294967295u, abs(4086u) >> (countOneBits(20897u) % 32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, 648f, arg_3.c.x, -1386f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2041f, arg_1.c.x, arg_0.a, -1073f) * vec4<f32>(238f, 645f, 1149f, -118f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, arg_1.c.x, arg_3.c.x, arg_0.a)))));
    return !select(vec2<bool>(arg_3.a, all(vec2<bool>(true, arg_3.a))), select(!vec2<bool>(false, arg_1.a), select(vec2<bool>(arg_1.a, false), select(vec2<bool>(arg_3.a, arg_1.a), vec2<bool>(arg_1.a, arg_3.a), true), !arg_3.a), select(!vec2<bool>(arg_1.a, false), !vec2<bool>(arg_3.a, false), !vec2<bool>(arg_3.a, arg_1.a))), !(!select(vec2<bool>(false, true), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, false))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = true;
    let var_1 = arg_0.a.a;
    var_0 = any(func_4(func_2(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b, -44502i, u_input.a.x)), ~vec3<i32>(u_input.a.x, -3043i, -62759i)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 59267u), vec2<u32>(arg_2, 75387u)), _wgslsmith_div_vec2_u32(vec2<u32>(59470u, arg_2), vec2<u32>(0u, 1u)))), arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1211f * arg_0.a.c.x)), _wgslsmith_f_op_f32(-arg_0.a.c.x)), Struct_1(any(!vec3<bool>(false, arg_0.b.a, arg_1.a.a)), u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1665f, 429f) + vec3<f32>(arg_0.b.c.x, -1675f, arg_1.a.c.x)))));
    var_0 = !var_1;
    var_0 = arg_0.a.a;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = vec3<bool>(arg_1, true, !(true && (arg_2.b.c.x <= -1103f)));
    var_0 = vec3<bool>(arg_3 && true, true, !func_1(func_1(Struct_2(Struct_1(true, 0i, arg_2.b.c), arg_2.b), arg_2, 1u), Struct_2(arg_2.b, func_1(Struct_2(Struct_1(arg_1, arg_2.b.b, arg_2.a.c), arg_2.b), arg_0, 18078u).b), firstTrailingBit(23434u)).a.a);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(arg_2.b.c.x + -1143f));
    let var_2 = Struct_1(!arg_1, _wgslsmith_add_i32(-53677i, (-21561i & (-2147483647i & u_input.a.x)) >> ((35462u << (_wgslsmith_dot_vec4_u32(vec4<u32>(51820u, 28511u, 1u, 0u), vec4<u32>(417u, 4294967295u, 4294967295u, 26304u)) % 32u)) % 32u)), vec3<f32>(arg_0.b.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1337f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.c.x + 954f), _wgslsmith_f_op_f32(-arg_0.a.c.x))), !arg_2.a.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.b.c.x * _wgslsmith_f_op_f32(abs(1000f))), -550f))));
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(ceil(1821f));
}

fn func_6(arg_0: vec4<f32>, arg_1: u32) -> StorageBuffer {
    return StorageBuffer(-(74004i & u_input.a.x), 25238u, ~select(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 12528u, 20693u), vec3<u32>(0u, 4294967295u, arg_1))), ~(vec3<u32>(4294967295u, 26005u, 47294u) << (vec3<u32>(arg_1, arg_1, 0u) % vec3<u32>(32u))), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), firstLeadingBit(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec2<bool>(false && (u_input.b != u_input.a.x), any(vec2<bool>(true, false))));
    var var_1 = _wgslsmith_mult_i32(-1i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.b), vec3<i32>(-47885i, u_input.b, -25851i))) >> (~_wgslsmith_add_u32(select(12589u, 4294967295u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 3138u), vec2<u32>(9796u, 4294967295u))) % 32u));
    var_0 = true;
    let var_2 = Struct_3(-149f);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a + 1494f)));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a * 268f))), -928f, var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.a, var_3)), -240f)) - vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(true, -16638i, vec3<f32>(var_3, 760f, var_3)), Struct_1(true, u_input.a.x, vec3<f32>(392f, var_3, var_2.a))), any(vec3<bool>(true, false, false)), func_1(Struct_2(Struct_1(true, u_input.b, vec3<f32>(var_3, -1039f, var_3)), Struct_1(false, 2147483647i, vec3<f32>(671f, var_3, -309f))), Struct_2(Struct_1(false, -1i, vec3<f32>(-1000f, 165f, var_2.a)), Struct_1(false, -10580i, vec3<f32>(1349f, var_2.a, -1409f))), 0u), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - var_2.a), -1416f, var_2.a)), _wgslsmith_sub_u32(~countOneBits(_wgslsmith_add_u32(30831u, 14822u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(2106u, 0u, 1u, 1u), select(vec4<u32>(60877u, 47561u, 65849u, 1u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<bool>(true, true, true, false))))));
}

