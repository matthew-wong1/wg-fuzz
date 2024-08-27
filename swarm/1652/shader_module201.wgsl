struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = Struct_3(arg_0.a.a, true);
    let var_1 = Struct_4(arg_0.a, reverseBits(~arg_0.b));
    let var_2 = Struct_1(-1225f, -1000f, ~(~_wgslsmith_mult_i32(var_1.a.a, 1i)), var_1.a.b);
    var var_3 = _wgslsmith_f_op_f32(step(-1301f, var_2.b));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-491f + _wgslsmith_f_op_f32(-var_2.a)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1459f, var_2.a) * _wgslsmith_f_op_f32(select(var_2.b, var_2.a, false)))))));
    return _wgslsmith_clamp_u32(countOneBits(arg_0.b.x & 1u), ~((arg_0.b.x | u_input.c) & u_input.c), ~var_1.b.x) << ((_wgslsmith_clamp_u32(~(~0u), 0u, ~(~43953u)) << (var_1.b.x % 32u)) % 32u);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, 347f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-559f * -249f))), 524f)));
    var var_1 = ~func_3(Struct_4(Struct_3(51520i, true), select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4872u, 44529u), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c)), vec4<u32>(31060u, u_input.c, u_input.c, 38926u), vec4<bool>(true, true, true, true))));
    var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1402f + _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-406f, _wgslsmith_f_op_f32(-1814f - var_0.x))))), var_0.x, _wgslsmith_mod_i32(u_input.b.x, firstLeadingBit(abs(0i))) <= (u_input.b.x >> (u_input.c % 32u))));
    var var_3 = Struct_4(Struct_3(1i, !all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), _wgslsmith_mult_vec4_u32(abs(~(~vec4<u32>(13912u, 4294967295u, 0u, 1u))), firstTrailingBit(vec4<u32>(103064u, u_input.c & 34363u, 44129u, 54935u))));
    return var_3.a;
}

fn func_1() -> Struct_3 {
    return func_2();
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(arg_0.a, ~(firstLeadingBit(_wgslsmith_mod_vec4_u32(arg_1.b, vec4<u32>(34878u, u_input.c, u_input.c, 4294967295u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<u32>(arg_1.b.x, 37198u, u_input.c, 4294967295u) ^ arg_0.b) % vec4<u32>(32u))));
    let var_1 = Struct_3(_wgslsmith_mod_i32(reverseBits(_wgslsmith_clamp_i32(-1i, u_input.b.x, var_0.a.a)), max(func_2().a, -18480i)), true);
    var_0 = Struct_4(Struct_3(-(func_2().a << (var_0.b.x % 32u)), !all(select(vec4<bool>(true, true, true, var_0.a.b), vec4<bool>(var_0.a.b, arg_0.a.b, true, true), vec4<bool>(arg_0.a.b, true, arg_1.a.x, arg_0.a.b)))), max(var_0.b, _wgslsmith_add_vec4_u32(vec4<u32>(76190u, arg_0.b.x, 47892u, 38146u), vec4<u32>(0u, u_input.c, var_0.b.x, 63683u))) >> (vec4<u32>(4294967295u, var_0.b.x, 4294967295u, u_input.c) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(sign(-1558f)), _wgslsmith_f_op_f32(round(119f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-605f, 1389f, -259f) - vec3<f32>(825f, 175f, -357f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1009f, 1000f, -514f)))))), vec3<f32>(1f, 1f, 1f)));
    var_0 = Struct_4(func_2(), min(arg_0.b, vec4<u32>(_wgslsmith_sub_u32(1u, 1u), 30440u, _wgslsmith_mult_u32(arg_0.b.x ^ 1u, ~58711u), ~(~19235u))));
    return Struct_1(_wgslsmith_f_op_f32(1120f * _wgslsmith_f_op_f32(select(var_2.x, var_2.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1459f, 568f))))), u_input.b.x, false);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    let var_0 = ~abs(max(-(~u_input.b.x), arg_2.c));
    var var_1 = vec2<i32>(select(1i, arg_2.c & -2147483647i, arg_2.d && !any(vec3<bool>(arg_1, arg_1, arg_1))), ~(~(i32(-1i) * -1i)) << (_wgslsmith_add_u32(func_3(Struct_4(Struct_3(1i, arg_2.d), arg_0)), ~u_input.c) % 32u));
    var var_2 = !select(select(select(vec4<bool>(arg_2.d, false, arg_1, false), select(vec4<bool>(arg_1, true, arg_2.d, arg_1), vec4<bool>(false, false, false, arg_1), arg_2.d), true), !select(vec4<bool>(arg_1, arg_2.d, arg_2.d, arg_2.d), vec4<bool>(true, false, arg_1, true), true), !(!vec4<bool>(false, arg_2.d, true, arg_1))), vec4<bool>(!(u_input.c >= u_input.c), !all(vec4<bool>(arg_1, arg_2.d, arg_2.d, false)), select(any(vec3<bool>(true, true, true)), all(vec3<bool>(arg_2.d, arg_2.d, false)), arg_2.d), arg_2.d), !select(vec4<bool>(true, true, arg_2.d, arg_2.d), vec4<bool>(arg_1, false, arg_1, true), !vec4<bool>(arg_2.d, arg_2.d, arg_1, true)));
    var_1 = vec2<i32>(-_wgslsmith_div_i32(u_input.a.x, var_1.x), -61308i);
    return Struct_3(_wgslsmith_sub_i32(-48390i, (1i >> (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u)) << (abs(u_input.c) % 32u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<u32>(4294967295u, u_input.c, ~firstLeadingBit(u_input.c), 49560u), any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), func_4(Struct_4(func_1(), vec4<u32>(countOneBits(u_input.c), ~113240u, 29569u, ~u_input.c)), Struct_2(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), ~select(vec4<u32>(30276u, u_input.c, 4294967295u, u_input.c), vec4<u32>(1u, 4945u, u_input.c, 38544u), vec4<bool>(false, true, false, false)))));
    var var_1 = false;
    var_1 = var_0.b;
    let var_2 = func_5(select(~(~vec4<u32>(u_input.c, u_input.c, 15005u, u_input.c)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c)) & vec4<u32>(u_input.c, u_input.c, 1u, 0u), ~vec4<u32>(u_input.c, 1u, u_input.c, 8930u)), !select(select(vec4<bool>(var_0.b, true, true, var_0.b), vec4<bool>(var_0.b, false, var_0.b, var_0.b), var_0.b), vec4<bool>(true, true, false, var_0.b), var_0.b)), !var_0.b, func_4(Struct_4(func_5(vec4<u32>(45187u, u_input.c, 54097u, u_input.c), !var_0.b, Struct_1(1000f, -769f, 36708i, var_0.b)), vec4<u32>(u_input.c, ~u_input.c, u_input.c | 4294967295u, _wgslsmith_mult_u32(u_input.c, u_input.c))), Struct_2(vec2<bool>(!var_0.b, !var_0.b), _wgslsmith_div_vec4_u32(vec4<u32>(39102u, u_input.c, u_input.c, 34761u), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 26857u, 22316u, u_input.c), vec4<u32>(21085u, 0u, 1u, 5398u)) % vec4<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1526f, -805f)))));
    var_1 = !var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_u32(29384u, 42683u)), max(0i, ~var_0.a), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(6767u, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), ~vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c))), ~min(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) & vec4<u32>(91903u, 26198u, 4294967295u, u_input.c), ~vec4<u32>(4294967295u, 0u, u_input.c, 0u))), min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_sub_u32(u_input.c, 1u), 0u), reverseBits(max(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(0u, u_input.c, 1u)))), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 65463u) << (vec3<u32>(u_input.c, u_input.c, 20251u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u), vec3<u32>(1u, 30163u, 21672u)), vec3<u32>(u_input.c, 0u, u_input.c)), vec3<u32>(4294967295u, u_input.c, 4294967295u) << (abs(vec3<u32>(u_input.c, 9330u, u_input.c)) % vec3<u32>(32u)), any(select(vec4<bool>(var_2.b, var_0.b, var_0.b, var_2.b), vec4<bool>(false, false, true, true), vec4<bool>(var_2.b, false, var_2.b, var_0.b))))), ~_wgslsmith_mod_u32(~(0u ^ u_input.c), min(_wgslsmith_sub_u32(u_input.c, 17847u), _wgslsmith_add_u32(38450u, 50632u))));
}

