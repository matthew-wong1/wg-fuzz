struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
    let var_0 = vec4<bool>(false, all(vec3<bool>(true, true, true)) & true, true, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-324f + _wgslsmith_f_op_f32(f32(-1f) * -896f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -138f) + 1728f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1413f, -1091f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3090f))) * vec3<f32>(_wgslsmith_f_op_f32(round(-1632f)), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-126f - 978f), _wgslsmith_f_op_f32(f32(-1f) * -374f))))));
    var var_2 = 68020u | min(43589u, u_input.b);
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, 763f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(530f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f + var_1.x) * _wgslsmith_f_op_f32(-1645f * var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(step(var_1.x, 667f))), _wgslsmith_f_op_f32(f32(-1f) * -1124f))), _wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(29212u, 20337u, 0u, 48408u), ~vec4<u32>(48804u, u_input.b, 4294967295u, 1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b), _wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b, 0u), select(reverseBits(vec4<u32>(0u, 1u, u_input.b, 4294967295u)), vec4<u32>(41873u, u_input.b, 0u, u_input.d), vec4<bool>(true, true, var_0.x, var_0.x)))));
    return ~vec4<i32>(countOneBits(u_input.c.x), _wgslsmith_mult_i32(-5008i, -(~(-11006i))), ~u_input.c.x | ~1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.c.x, 0i), vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, u_input.c.x, 7363i)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = arg_1;
    let var_1 = true;
    let var_2 = u_input.c;
    let var_3 = func_3() & -abs(func_3() << (countOneBits(arg_1.b) % vec4<u32>(32u)));
    global0 = arg_1.a.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + var_0.a.x)), 179f, 184f) - arg_1.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(floor(arg_2.a.x));
    global0 = -414f;
    global0 = arg_2.a.x;
    var var_0 = ~arg_2.b.yx;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -840f);
    return arg_2;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = func_4(~(~firstLeadingBit(countOneBits(vec4<i32>(u_input.a, -2147483647i, u_input.c.x, u_input.c.x)))), arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_i32(min(u_input.a, 1i), 33780i | u_input.c.x), Struct_1(vec4<f32>(-554f, 1595f, arg_2.a.x, -689f), vec4<u32>(40615u, arg_0.x, 0u, arg_2.b.x) >> (arg_2.b % vec4<u32>(32u))))), reverseBits(_wgslsmith_div_vec4_u32(arg_2.b, ~arg_2.b))));
    let var_1 = u_input.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - var_0.a.x));
    var_0 = func_4(_wgslsmith_mod_vec4_i32(vec4<i32>((i32(-1i) * -1i) & ~u_input.c.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 19204i, 0i, -2147483647i), vec4<i32>(var_1, var_1, 1i, u_input.a) << (arg_2.b % vec4<u32>(32u))), -(~1154i), var_1), vec4<i32>(abs(-13735i) << (1u % 32u), var_1 ^ u_input.a, abs(-13153i), reverseBits(~u_input.c.x))), true, func_4(vec4<i32>(reverseBits(-9704i), _wgslsmith_add_i32(0i, u_input.a), firstLeadingBit(u_input.c.x), ~abs(2597i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + 1f) < 822f, arg_2));
    var var_2 = -_wgslsmith_dot_vec3_i32(u_input.c | (vec3<i32>(2147483647i, -63358i, u_input.a) | reverseBits(u_input.c)), vec3<i32>(32342i, var_1, _wgslsmith_mult_i32(u_input.a >> (u_input.d % 32u), var_1)));
    return arg_2;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) + arg_1.a)))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.b.xx, arg_1.b.yx) << (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)), ~(arg_1.b.zx | vec2<u32>(4294967295u, u_input.b))), _wgslsmith_add_u32(arg_1.b.x, 1u), 1u, func_1(arg_1.b.wy, true, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d, arg_1.b.x, u_input.d), vec4<u32>(u_input.b, u_input.b, 49174u, u_input.d))), arg_1.b.x | abs(50575u)).b.x));
    var var_1 = arg_1.b.wzw;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, var_0.a.x, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-248f, arg_1.a.x, 737f, 498f), var_0.a, false)))))), reverseBits(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, 1u, 36950u, var_0.b.x) ^ arg_1.b), vec4<u32>(var_0.b.x, countOneBits(4294967295u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.x, 122424u), var_0.b)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(620f, -1009f, arg_1.a.x, arg_1.a.x)))))), firstLeadingBit(reverseBits(abs(vec4<u32>(80471u, arg_1.b.x, 41091u, u_input.d)))));
    var_0 = func_4(~(~max(vec4<i32>(1i, 1i, arg_0.x, 1i), ~vec4<i32>(1i, 25432i, u_input.a, -8277i))), ~(func_4(vec4<i32>(9453i, arg_0.x, -70838i, u_input.a), true, arg_1).b.x << (~var_1.x % 32u)) > _wgslsmith_div_u32(3361u, arg_1.b.x), func_4(vec4<i32>(-26494i, ~u_input.c.x, arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.zz, vec2<i32>(arg_0.x, u_input.a))), false, func_4(max(vec4<i32>(11135i, arg_0.x, -81i, -28229i), vec4<i32>(u_input.c.x, -2147483647i, 16991i, arg_0.x)), any(vec2<bool>(true, true)), func_1(vec2<u32>(13414u, 50166u), true, func_1(arg_1.b.yw, false, arg_1, 97222u), var_0.b.x >> (var_1.x % 32u)))));
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.b, 49273u, 5763u)), vec3<u32>(0u, arg_1.b.x, u_input.d)), firstLeadingBit(var_0.b.zxy)), 63617u), 16733u, ~firstLeadingBit(_wgslsmith_sub_u32(var_1.x << (4294967295u % 32u), _wgslsmith_mult_u32(78547u, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -564f), -231f)), -2087f))));
    let var_0 = ~vec4<i32>(-7791i, reverseBits(_wgslsmith_sub_i32(-u_input.c.x, 0i)), firstTrailingBit(u_input.c.x >> (u_input.d % 32u)), u_input.a);
    var var_1 = vec2<f32>(775f, -204f);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f * -198f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(699f, 858f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -598f) * vec2<f32>(var_1.x, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))));
    var var_2 = Struct_1(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x), var_1.x, 170f), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(u_input.b, 59028u)), ~(~21234u), func_5(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.c.x), vec3<i32>(45525i, 1693i, var_0.x)), func_1(vec2<u32>(4294967295u, u_input.d), true, Struct_1(vec4<f32>(220f, var_1.x, -1062f, -795f), vec4<u32>(u_input.b, 0u, 0u, 61080u)), u_input.d)), ~(~u_input.b)) >> (~func_4(~var_0, true, Struct_1(vec4<f32>(-986f, 1588f, var_1.x, var_1.x), vec4<u32>(1u, 3784u, u_input.d, u_input.b))).b % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(var_0.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 330f, var_2.a.x, _wgslsmith_f_op_f32(step(var_1.x, var_1.x))), ~(~vec4<u32>(4294967295u, 1u, var_2.b.x, 113449u)))))));
    let var_4 = -(var_0 & ~vec4<i32>(~2147483647i, var_0.x, 0i, abs(8277i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b, var_2.b.x >> (var_2.b.x % 32u), 0u, _wgslsmith_mod_u32(41421u & var_2.b.x, u_input.b) & (countOneBits(u_input.b) >> (func_4(var_0, false, Struct_1(var_2.a, vec4<u32>(28610u, 4294967295u, 55421u, 0u))).b.x % 32u))), -31695i, u_input.c.yx);
}

