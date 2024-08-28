struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec4<i32> {
    var var_0 = vec3<i32>(u_input.c.x << (4294967295u % 32u), 11027i, -firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.c & vec4<i32>(-2147483647i, u_input.c.x, 52109i, u_input.c.x), -u_input.c)));
    var_0 = u_input.c.xzy | u_input.c.yzw;
    let var_1 = Struct_1(firstLeadingBit(1i), 520f, _wgslsmith_div_i32(reverseBits(2147483647i) >> (~(~u_input.a) % 32u), 3791i << ((~20951u >> (~u_input.d % 32u)) % 32u)), ~vec2<u32>(~u_input.a, u_input.a));
    let var_2 = Struct_1(abs(var_0.x), var_1.b, min(~24718i << (var_1.d.x % 32u), var_1.c) >> (var_1.d.x % 32u), (~vec2<u32>(1u, 4294967295u) & vec2<u32>(~4294967295u, var_1.d.x)) ^ var_1.d);
    var_0 = u_input.c.zzy;
    return _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(countOneBits(~u_input.c), ~(u_input.c & vec4<i32>(u_input.c.x, u_input.c.x, 9594i, var_0.x))), -(~select(u_input.c, u_input.c & vec4<i32>(18586i, -35555i, 2147483647i, var_0.x), vec4<bool>(false, false, true, true))));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2055f - 342f)), _wgslsmith_f_op_f32(f32(-1f) * -399f)), select(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(false, true))), vec2<bool>(false, true), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, all(vec4<bool>(false, true, true, true))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))))));
    var var_1 = -vec2<i32>(66156i, -28397i);
    var_1 = ~vec2<i32>(u_input.c.x, 17120i);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1747f)), true))));
    var_1 = u_input.c.xx;
    return 66370u;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~vec4<u32>(u_input.a, arg_3.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 24941u & arg_3.d.x, u_input.a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.d.x, 93005u, u_input.d, 4294967295u), vec4<u32>(arg_2.x, arg_2.x, 1u, 75887u))), func_3(~66207u) ^ _wgslsmith_dot_vec4_u32(arg_2, ~arg_2));
    var_0 = vec4<u32>(arg_3.d.x, 37674u, func_3(_wgslsmith_div_u32(arg_3.d.x, max(0u, ~var_0.x))), var_0.x);
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_3.b)), _wgslsmith_f_op_f32(1359f - arg_3.b), _wgslsmith_f_op_f32(trunc(-343f)), 1107f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-448f, -1912f, 762f, -1000f), vec4<f32>(arg_3.b, arg_3.b, 548f, arg_3.b), vec4<bool>(true, arg_1, arg_1, arg_1))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, -515f, -303f, arg_3.b) - vec4<f32>(arg_3.b, arg_3.b, 763f, arg_3.b)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(449f, arg_3.b, arg_3.b, arg_3.b), vec4<f32>(-197f, -1485f, arg_3.b, arg_3.b))), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1, arg_1, arg_1, false), false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_3.b, -762f, 350f)) * vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b), arg_3.b, arg_3.b, arg_3.b))), select(select(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(true, arg_1, true, arg_1), select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, arg_1, true, false), vec4<bool>(false, true, true, arg_1))), vec4<bool>(!arg_1, false, all(vec3<bool>(true, arg_1, false)), all(vec4<bool>(arg_1, true, true, false))), select(vec4<bool>(arg_1, false, arg_1, arg_1), select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, false, arg_1)), vec4<bool>(false, true, arg_1, arg_1))), vec4<bool>(arg_1, arg_1, !(arg_3.a >= -19066i), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, true), true), vec4<bool>(arg_1, true, arg_1, arg_1)), !(!vec4<bool>(true, arg_1, true, false)), !all(vec2<bool>(arg_1, arg_1))))));
    var_0 = ~vec4<u32>(27249u, _wgslsmith_div_u32(var_1, 57594u) | arg_3.d.x, ~(~0u), arg_3.d.x >> (~16400u % 32u)) ^ vec4<u32>(~_wgslsmith_mod_u32(arg_3.d.x, 74430u), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, var_0.x, 4294967295u), ~arg_2.zxw, false), ~var_0.xxx), 1u, 81282u >> (1u % 32u));
    return Struct_1(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(arg_3.a, -44730i), arg_0 >> (1u % 32u)), arg_3.b, u_input.c.x, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, ~(~63931u)), var_0.wy));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_mod_i32(arg_0.x ^ ~u_input.c.x, arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2(firstTrailingBit(-76325i), all(vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(114336u, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<u32>(u_input.b, u_input.a, 29809u, 38407u), vec4<u32>(535u, u_input.b, 1u, 4726u)), func_2(-1i, false, vec4<u32>(u_input.d, 71635u, u_input.a, u_input.b), Struct_1(arg_1.a, arg_1.b, -54797i, arg_1.d))).b))), arg_0.x, _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_mult_u32(arg_1.d.x, 24089u), ~1u)), arg_1.d));
    var var_1 = func_2(countOneBits(-69759i), arg_1.a != 40690i, vec4<u32>(~_wgslsmith_div_u32(u_input.b, 6061u), _wgslsmith_dot_vec2_u32(~arg_1.d, min(firstTrailingBit(vec2<u32>(68307u, 4294967295u)), var_0.d)), arg_1.d.x, _wgslsmith_div_u32(12069u, func_3(u_input.d))), func_2(abs(var_0.c), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))), _wgslsmith_add_vec4_u32(~(vec4<u32>(arg_1.d.x, 0u, var_0.d.x, 59466u) ^ vec4<u32>(34428u, 1u, arg_1.d.x, 1u)), ~(vec4<u32>(4294967295u, arg_1.d.x, 0u, 55059u) | vec4<u32>(31697u, var_0.d.x, 23139u, 22956u))), arg_1));
    var_0 = arg_1;
    var_1 = func_2(-(~var_0.a & arg_1.c), false, vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_1.d, abs(vec2<u32>(u_input.b, var_0.d.x))), vec2<u32>(1444u, 1u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4504u, var_0.d.x, var_0.d.x), abs(vec3<u32>(1u, 4294967295u, 0u)) << (min(vec3<u32>(var_1.d.x, u_input.b, 1u), vec3<u32>(var_1.d.x, 0u, 1u)) % vec3<u32>(32u))), 3097u, 116756u), arg_1);
    var var_2 = arg_1;
    return (~_wgslsmith_dot_vec4_i32(max(vec4<i32>(-3392i, 2147483647i, -2147483647i, 24664i), vec4<i32>(arg_0.x, var_1.c, -8282i, arg_0.x)), vec4<i32>(22647i, 43544i, var_1.c, var_1.c)) & var_0.a) != ~arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), all(vec2<bool>(true, true)), func_4(func_1(), func_2(2147483647i, true, vec4<u32>(u_input.a, u_input.a, 19510u, 47199u), Struct_1(-2764i, -942f, -44457i, vec2<u32>(6133u, u_input.d)))), true));
    var var_1 = -243f;
    var var_2 = Struct_1(_wgslsmith_mult_i32(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-49112i, -62352i), vec2<i32>(u_input.c.x, 2147483647i)) >> (1u % 32u), true, abs(~vec4<u32>(u_input.b, 61697u, 4294967295u, u_input.b)), Struct_1(45806i, _wgslsmith_f_op_f32(select(671f, -1000f, false)), u_input.c.x, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, 1u)))).a, select(-2147483647i, u_input.c.x, true)), -1351f, 34314i, _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.b, 1u)), ~(~vec2<u32>(u_input.d, 0u))) & vec2<u32>(u_input.a, _wgslsmith_div_u32(abs(11103u), u_input.d)));
    let var_3 = Struct_1(~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), -758f)), abs(firstTrailingBit(var_2.c ^ u_input.c.x)) >> (var_2.d.x % 32u), var_2.d);
    var_0 = true;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-549f)), _wgslsmith_f_op_f32(exp2(var_2.b)))), 143f) - var_2.b);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(sign(func_2(var_2.c, true, firstTrailingBit(vec4<u32>(var_2.d.x, var_2.d.x, 0u, var_2.d.x)), func_2(-1i, false, vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), Struct_1(2147483647i, var_3.b, var_3.c, var_2.d))).b))), 438f, 616f);
    let x = u_input.a;
    s_output = StorageBuffer(min(-max(u_input.c, _wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(var_2.a, u_input.c.x, u_input.c.x, u_input.c.x))), u_input.c), u_input.d, vec4<i32>(-22902i, 1i, ~21159i, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(u_input.c.wwz, vec3<i32>(u_input.c.x, -1i, var_2.c)), _wgslsmith_mult_i32(max(-2147483647i, u_input.c.x), func_2(2147483647i, true, vec4<u32>(4294967295u, var_3.d.x, var_2.d.x, u_input.d), Struct_1(u_input.c.x, 147f, var_3.a, vec2<u32>(0u, 4294967295u))).c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1089f, var_2.b, 623f, -235f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-951f, -685f, 950f, var_2.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2065f, -1891f, -145f, -1000f) * vec4<f32>(var_2.b, -571f, var_4.x, 1240f)))))));
}

