struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(1134f)), u_input.c.x, select(_wgslsmith_add_i32(~max(18347i, arg_0.d.c), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, u_input.d.x, -3700i, -1i), vec4<i32>(arg_0.d.c, arg_0.d.c, 0i, 44130i)), select(vec4<i32>(-19530i, arg_0.b.c, u_input.d.x, u_input.a), vec4<i32>(-11102i, arg_0.b.c, u_input.d.x, arg_0.a.c), true))), _wgslsmith_add_i32(3536i, 23310i ^ u_input.b.x) >> (u_input.c.x % 32u), all(vec4<bool>(true, true, true, true))));
    var var_1 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.d.c, var_0.c), vec2<i32>(var_0.c, abs(arg_0.b.c))), ~max(firstTrailingBit(-1i), ~arg_0.b.c), abs(~_wgslsmith_mult_i32(u_input.a, 7098i)), select(u_input.b.x, var_0.c, true) | u_input.a);
    var var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(2257u, u_input.c.x, arg_0.a.b, ~var_0.b), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 65372u, u_input.c.x, u_input.c.x), vec4<u32>(76388u, var_0.b, u_input.c.x, 17679u)));
    let var_3 = !vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), select(true, false, true), false);
    let var_4 = vec4<i32>(arg_0.a.c, 1i, _wgslsmith_sub_i32(0i, arg_0.d.c) << (reverseBits(_wgslsmith_dot_vec2_u32(select(u_input.c, vec2<u32>(var_0.b, var_0.b), vec2<bool>(var_3.x, false)), u_input.c)) % 32u), arg_0.b.c);
    return _wgslsmith_f_op_f32(-arg_0.a.a);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(622f - 312f) - 1f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-791f + -505f)))), u_input.c.x, u_input.b.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-119f, 34272u, u_input.a), Struct_1(335f, 5937u, u_input.a), vec4<f32>(194f, -203f, 425f, -1604f), Struct_1(1277f, 9687u, -2147483647i)))), -929f))), u_input.c.x, ~(i32(-1i) * -16634i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, 296f, -797f, -150f)) + _wgslsmith_div_vec4_f32(vec4<f32>(2803f, -301f, -348f, 590f), vec4<f32>(918f, -353f, 1578f, 353f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-964f, -596f, 265f, -697f), vec4<f32>(1557f, 879f, -1224f, 231f))) - vec4<f32>(-1000f, 584f, -513f, -1069f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-623f)), -283f, _wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_f_op_f32(sign(-515f))))), Struct_1(-378f, 0u, u_input.d.x));
    let var_1 = var_0.a.c >> (_wgslsmith_sub_u32(53652u, var_0.b.b >> (_wgslsmith_clamp_u32(firstLeadingBit(u_input.c.x), var_0.b.b, abs(85856u)) % 32u)) % 32u);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(step(390f, var_0.a.a))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 1u, var_0.d.b)), vec3<u32>(u_input.c.x, 65768u, 4376u)), select(u_input.c.x, 0u, true)), 18885i), var_0.d, var_0.c, var_0.a);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2249f)) - -1000f))), _wgslsmith_f_op_f32(var_0.a.a - 718f)));
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    var var_0 = u_input.d;
    var_0 = ~(~countOneBits(vec3<i32>(0i, _wgslsmith_mod_i32(-2147483647i, var_0.x), u_input.d.x)));
    let var_1 = Struct_1(-312f, ~1u, u_input.a);
    var_0 = u_input.d;
    var var_2 = _wgslsmith_add_vec2_i32(firstTrailingBit(arg_1), firstTrailingBit(arg_1));
    return -1345f;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(1000f, u_input.c.x, ~(u_input.d.x << (u_input.c.x % 32u))), func_2(), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1078f, 686f, -2058f, 1258f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1413f, -1171f, 1097f, -170f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(200f))), _wgslsmith_mod_u32(abs(u_input.c.x), select(u_input.c.x, u_input.c.x, true)), u_input.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(~(-u_input.b), _wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, u_input.b.x), reverseBits(vec2<i32>(1i, 0i)))), 0i)));
    var var_1 = _wgslsmith_add_vec3_i32(select(vec3<i32>(-28108i << (~u_input.c.x % 32u), -u_input.a ^ max(u_input.d.x, 2147483647i), 0i), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(20716i, 2147483647i, -2147483647i)), -u_input.d), vec3<bool>(true, true, true)), -vec3<i32>(-select(u_input.a, 2147483647i, true), 58380i, -select(631i, u_input.b.x, true)));
    var var_2 = -_wgslsmith_sub_i32(0i, reverseBits(select(firstLeadingBit(u_input.b.x), u_input.b.x, any(vec4<bool>(false, false, false, false)))));
    var var_3 = firstLeadingBit(firstTrailingBit(reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, 1i, u_input.b.x, -36470i), vec4<i32>(0i, 2147483647i, var_1.x, 0i) >> (vec4<u32>(0u, 9552u, 0u, u_input.c.x) % vec4<u32>(32u))))));
    let var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 43517u), select(vec2<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), ~(~u_input.c.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(62957u, 93089u, 56484u, u_input.c.x), vec4<u32>(4647u, u_input.c.x, u_input.c.x, 0u)), u_input.c.x), vec2<u32>(4294967295u, 20119u)), true), abs(u_input.c));
    return 2999f;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = vec3<bool>(true, any(select(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, false, true)))), true);
    var var_1 = reverseBits(~(~(~vec2<u32>(u_input.c.x, arg_1.b))));
    var var_2 = Struct_1(629f, _wgslsmith_div_u32(87316u, var_1.x | ~var_1.x), arg_1.c);
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-586f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(arg_1, Struct_1(-978f, 10000u, -2147483647i), vec4<f32>(684f, arg_0.x, -1035f, arg_1.a), Struct_1(225f, 4294967295u, arg_3.x)), vec2<i32>(2147483647i, -1i))) - _wgslsmith_f_op_f32(var_2.a - 1068f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(223f * 497f), 1315f, any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)))) * arg_1.a)), abs(~func_2().b), 1i);
    var var_3 = func_2();
    return Struct_2(arg_1, Struct_1(arg_1.a, _wgslsmith_mod_u32(var_3.b, 1u), -select(reverseBits(var_3.c), 14860i, all(vec3<bool>(true, true, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(func_2(), Struct_1(806f, 0u, arg_1.c), vec4<f32>(906f, arg_1.a, -418f, var_2.a), arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.a, -455f))) * arg_1.a), _wgslsmith_f_op_f32(-1117f * arg_0.x), var_2.a), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + 550f))))), Struct_1(-112f, reverseBits(21542u), _wgslsmith_add_i32(_wgslsmith_add_i32(23099i << (u_input.c.x % 32u), -2147483647i), -22587i)), _wgslsmith_f_op_f32(f32(-1f) * -188f), max(u_input.d.zx, firstTrailingBit(abs(u_input.b))));
    var var_1 = any(vec4<bool>(!all(vec4<bool>(true, true, true, true)), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), !all(vec2<bool>(true, true)), select(select(false, true, true) || (var_0.a.a <= var_0.d.a), all(vec4<bool>(false, true, true, true)), true)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_div_u32(var_0.b.b, 1u), 1i), func_2(), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a - -1000f) * var_0.b.a))), -1087f, -535f, 767f), var_0.a);
    var_0 = func_5(var_0.c.yz, func_2(), 796f, vec2<i32>(i32(-1i) * -2147483647i, -func_5(var_0.c.zy, var_0.d, var_0.a.a, u_input.d.yx).d.c) | ~u_input.d.xy);
    let var_2 = var_0.c.zwz;
    let x = u_input.a;
    s_output = StorageBuffer(-2113f, u_input.c & ~min(u_input.c, firstLeadingBit(vec2<u32>(u_input.c.x, u_input.c.x))), vec2<u32>(1u, ~u_input.c.x) >> (_wgslsmith_clamp_vec2_u32(u_input.c, ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_0.b.b, 10909u)), ~_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(56997u, 27220u))) % vec2<u32>(32u)));
}

