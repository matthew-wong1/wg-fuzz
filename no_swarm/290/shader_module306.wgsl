struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_3(select(vec2<bool>(true, true), select(vec2<bool>(!global0.a.x, global0.a.x), vec2<bool>(!global0.b.a.x, all(vec2<bool>(true, global0.b.a.x))), select(global0.b.a.xw, select(vec2<bool>(false, true), arg_0.a.xw, true), arg_0.a.x & false)), vec2<bool>(arg_0.a.x, true)), global0.b);
    var var_1 = arg_0;
    var var_2 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(min(i32(-1i) * -56052i, _wgslsmith_mod_i32(-32545i, 1i)), ~(-2147483647i)), abs(-9574i)));
    return i32(-1i) * -3836i;
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(157f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1676f)))));
    let var_1 = global0.b.a.zzx;
    let var_2 = vec2<i32>(func_3(global0.b), 1i);
    var var_3 = ~(vec4<u32>(~max(8504u, 4294967295u), 1u, reverseBits(~u_input.b), 0u) << ((~vec4<u32>(0u, u_input.b, 43942u, u_input.b) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) | vec4<u32>(u_input.a, 0u, u_input.b, 4294967295u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = Struct_3(!vec2<bool>(any(select(vec4<bool>(true, true, var_1.x, global0.a.x), vec4<bool>(false, global0.b.a.x, var_1.x, var_1.x), vec4<bool>(true, global0.b.a.x, false, true))), true), global0.b);
    return !select(global0.b.a.wy, vec2<bool>(true, false), global0.b.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(54249i, -1i, 0i) >> (~vec3<u32>(u_input.a, 1u, 0u) % vec3<u32>(32u)), abs(vec3<i32>(arg_2, -49219i, 2147483647i) ^ vec3<i32>(arg_2, arg_3.x, arg_3.x))), ~vec3<i32>(arg_3.x, 2147483647i, -1i) ^ vec3<i32>(~arg_3.x, -43714i, -16719i)), arg_3.x >> (_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.b, u_input.b, u_input.a) & vec3<u32>(u_input.b, 23582u, u_input.b)) | vec3<u32>(u_input.a, u_input.a, 8688u), ~vec3<u32>(76271u, 4294967295u, 4294967295u)) % 32u));
    var_0 = arg_2;
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(0i, 1i, _wgslsmith_sub_i32(arg_2, arg_3.x)), arg_3.x, min(max(0i, arg_3.x), 1i)), max(~select(vec3<i32>(arg_3.x, arg_3.x, arg_2), vec3<i32>(14991i, -1i, -1i), global0.a.x), vec3<i32>(-1i, 0i, reverseBits(22524i)))), Struct_1(!vec4<bool>(u_input.b > u_input.b, global0.b.a.x == true, !global0.a.x, false)), arg_1, countOneBits(1i >> (u_input.b % 32u)), ~arg_2);
    global0 = Struct_3(vec2<bool>(true && (any(global0.a) & all(var_1.b.a.wy)), any(vec3<bool>(true, true, true))), Struct_1(!arg_0.b.a));
    return global0.b;
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_2(~(vec3<i32>(~0i, countOneBits(-1i), ~(-2147483647i)) >> (vec3<u32>(firstTrailingBit(arg_0.x), arg_0.x, abs(u_input.a)) % vec3<u32>(32u))), func_4(Struct_3(select(vec2<bool>(true, true), func_2(), !global0.a.x), Struct_1(!vec4<bool>(false, global0.b.a.x, true, global0.b.a.x))), vec3<f32>(_wgslsmith_f_op_f32(select(-1131f, -2554f, arg_0.x > u_input.b)), _wgslsmith_f_op_f32(select(-511f, _wgslsmith_f_op_f32(1154f + 450f), true)), _wgslsmith_f_op_f32(f32(-1f) * -196f)), 25406i, _wgslsmith_div_vec2_i32(firstLeadingBit(-vec2<i32>(1i, -12043i)), vec2<i32>(firstTrailingBit(-4496i), 10277i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1608f + -1051f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1143f + 541f)))), 961f), ~1i, ~_wgslsmith_sub_i32(-1i, -17075i) & func_3(global0.b));
    let var_1 = ((-(var_0.a.x << (0u % 32u)) << ((_wgslsmith_dot_vec3_u32(arg_0.xzz, arg_0.zyw) >> (~u_input.a % 32u)) % 32u)) << (max(~(~arg_0.x), max(u_input.a, 4294967295u)) % 32u)) | 1i;
    let var_2 = Struct_2(countOneBits(~(var_0.a & var_0.a) ^ _wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(-2147483647i, 15802i, var_1))), func_4(Struct_3(vec2<bool>(true, true), Struct_1(vec4<bool>(true, var_0.b.a.x, false, global0.a.x))), var_0.c, 2147483647i, abs(var_0.a.zy)), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1585f - 583f) + _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_div_i32(-44630i ^ ~countOneBits(var_1), var_0.a.x ^ ~func_3(Struct_1(global0.b.a))), reverseBits(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_0.d, 11001i, var_1, -2147483647i), -vec4<i32>(var_1, var_1, var_1, var_0.a.x), !global0.b.a.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -14227i, -1i, 34280i), vec4<i32>(-1i, -2147483647i, 1i, var_1)))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.c.x, -123f, -847f, _wgslsmith_f_op_f32(f32(-1f) * -105f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), global0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1494f, var_0.c.x, -414f, 2433f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(769f, var_2.c.x, var_0.c.x, 1620f))))))));
    let var_4 = var_2;
    return Struct_3(var_2.b.a.yz, Struct_1(vec4<bool>(all(select(vec4<bool>(false, false, var_4.b.a.x, var_0.b.a.x), var_2.b.a, var_4.b.a)), true, u_input.b != ~67477u, global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec4<u32>(u_input.b, ~u_input.a, ~(~u_input.b) & _wgslsmith_div_u32(~0u, countOneBits(1u)), select(u_input.a | (36173u ^ u_input.b), _wgslsmith_mod_u32(~u_input.b, reverseBits(25835u)), !any(global0.b.a.zzw))));
    let var_0 = func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(5712u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 48885u), vec4<u32>(29527u, 1u, u_input.a, u_input.a)), 51328u, ~(~u_input.a)), ~firstLeadingBit(vec4<u32>(1u, u_input.b, 33120u, 63731u))));
    global0 = Struct_3(!func_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 55542u, u_input.a), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.a), abs(vec4<u32>(u_input.b, 4294967295u, 8974u, u_input.a)))).b.a.xx, func_4(func_1(vec4<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, u_input.a), u_input.b ^ u_input.a, select(u_input.b, 27653u, var_0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1342f - 1884f))), _wgslsmith_f_op_f32(step(1492f, _wgslsmith_f_op_f32(min(1000f, 1108f)))), -155f), 37553i, vec2<i32>(2147483647i, -firstTrailingBit(1i))));
    global0 = var_0;
    let var_1 = Struct_2(min(vec3<i32>(-8102i, reverseBits(firstLeadingBit(-2147483647i)), (i32(-1i) * -39667i) >> (u_input.a % 32u)), _wgslsmith_sub_vec3_i32(-vec3<i32>(32977i, 34550i, 2147483647i) | select(vec3<i32>(1i, 0i, -26706i), vec3<i32>(18669i, -130710i, -1i), vec3<bool>(global0.b.a.x, false, false)), -(~vec3<i32>(2147483647i, -2147483647i, -1i)))), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-482f, -955f, -908f), vec3<f32>(-1578f, 612f, -1158f))), vec3<f32>(_wgslsmith_f_op_f32(1434f - -1299f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1000f + 630f))))), i32(-1i) * -2147483647i, max(1i, -11583i));
    var var_2 = global0.b;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 66231u) >> (~abs(vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u)), firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(35401u, 8827u), vec2<u32>(u_input.b, 4294967295u)))), max(select(8961i, _wgslsmith_sub_i32(-1i, 35881i), false | var_0.b.a.x), 22224i) << (_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b, 1u, 0u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.a, 40336u, u_input.a))) % 32u));
}

