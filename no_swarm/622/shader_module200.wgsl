struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> bool {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(f32(-1f) * -1734f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-339f, 982f) * _wgslsmith_f_op_f32(-1775f + -245f))))));
    var_0 = true;
    return true;
}

fn func_3() -> i32 {
    let var_0 = ~(~abs(vec2<i32>(0i, i32(-1i) * -12961i)));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(-2432i, reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 46261i, var_0.x, 15018i), vec4<i32>(var_0.x, 56167i, var_0.x, -3543i)), max(vec4<i32>(2147483647i, 0i, var_0.x, var_0.x), vec4<i32>(var_0.x, 22987i, -13049i, var_0.x)))), var_0.x, 2147483647i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.x, -1i, 118i, var_0.x), vec4<i32>(1i, _wgslsmith_mult_i32(var_0.x, 1i), -11822i, countOneBits(var_0.x))));
    let var_2 = (_wgslsmith_mult_vec2_i32(select(-vec2<i32>(var_0.x, 1843i), abs(var_0), false), abs(-vec2<i32>(1i, var_0.x))) | var_1.yz) & vec2<i32>(1i & -var_1.x, var_0.x);
    let var_3 = Struct_3(Struct_2(Struct_1(1i, ~(~u_input.b.x), vec2<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 28031u), vec4<u32>(24598u, u_input.a, u_input.a, 918u)))), Struct_1(20372i, u_input.b.x, ~(~u_input.b)), Struct_1(_wgslsmith_div_i32(-1i, -1i), _wgslsmith_mod_u32(u_input.b.x, u_input.a ^ u_input.b.x), vec2<u32>(u_input.a, u_input.b.x)), Struct_1(~var_1.x, 0u >> (1u % 32u), abs(~vec2<u32>(u_input.a, 0u))), Struct_1(var_0.x, select(~u_input.b.x, 4194u, true), (vec2<u32>(1u, u_input.b.x) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) | reverseBits(vec2<u32>(4294967295u, u_input.b.x)))), Struct_2(Struct_1(firstLeadingBit(-15890i), ~u_input.b.x >> (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), _wgslsmith_add_vec2_u32(reverseBits(u_input.b), u_input.b)), Struct_1(var_0.x, ~(u_input.b.x | 20597u), ~u_input.b), Struct_1(var_2.x, 27198u, u_input.b << (u_input.b % vec2<u32>(32u))), Struct_1(1i, ~reverseBits(u_input.b.x), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.b.x, 0u))), Struct_1(var_0.x, 4294967295u, u_input.b)));
    var var_4 = Struct_2(Struct_1(-29538i, 17183u, ~min(vec2<u32>(u_input.a, u_input.a), var_3.b.d.c)), Struct_1(2147483647i, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 0u, 4294967295u, 4294967295u)), ~(~vec4<u32>(34098u, var_3.b.d.b, 1u, 4294967295u))), var_3.a.d.c), var_3.b.a, Struct_1(var_2.x, var_3.b.e.b, vec2<u32>(64622u, u_input.b.x)), Struct_1(-abs(-1i), u_input.b.x, firstTrailingBit(vec2<u32>(1u, ~u_input.a))));
    return -60686i;
}

fn func_1() -> Struct_2 {
    var var_0 = all(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), !vec2<bool>(func_2(), any(vec4<bool>(false, false, false, false))), true));
    var_0 = !all(vec4<bool>(true, true, true, !all(vec4<bool>(false, false, true, false))));
    var var_1 = !(!(abs(func_3()) <= -24963i));
    let var_2 = Struct_2(Struct_1(-26030i, u_input.b.x, ~(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)) & vec2<u32>(104297u, u_input.b.x))), Struct_1(-countOneBits(_wgslsmith_mod_i32(2147483647i, 21403i)), abs(56714u), ~abs(vec2<u32>(0u, 41725u)) << (u_input.b % vec2<u32>(32u))), Struct_1(0i, _wgslsmith_mod_u32(_wgslsmith_mult_u32(61234u, 1u), _wgslsmith_sub_u32(u_input.a, u_input.a)) ^ u_input.b.x, ~_wgslsmith_mult_vec2_u32(vec2<u32>(27457u, u_input.a) & vec2<u32>(1u, u_input.b.x), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(8525u, u_input.b.x)))), Struct_1(45678i, _wgslsmith_mod_u32(1662u, u_input.b.x), u_input.b), Struct_1(~_wgslsmith_mod_i32(~40015i, 13407i), 4294967295u, vec2<u32>(u_input.a, ~firstTrailingBit(1u))));
    let var_3 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, u_input.a == var_2.a.c.x), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true))), !vec3<bool>(true, all(vec2<bool>(true, false)) | false, true), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), false && (true || any(vec4<bool>(true, true, false, false)))));
    return Struct_2(Struct_1(countOneBits(var_2.b.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e.b, 0u >> (var_2.a.c.x % 32u)), _wgslsmith_clamp_vec2_u32(var_2.a.c, _wgslsmith_mult_vec2_u32(vec2<u32>(29896u, u_input.b.x), var_2.b.c), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), u_input.b))), var_2.e.c), Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-31077i, 1i), vec2<i32>(var_2.c.a, var_2.d.a)), -var_2.c.a), (-1775i | var_2.a.a) | ~var_2.d.a), 0u, u_input.b << (vec2<u32>(abs(u_input.b.x), min(4294967295u, 31500u)) % vec2<u32>(32u))), Struct_1(0i, ~u_input.b.x >> (reverseBits(4294967295u) % 32u), firstTrailingBit(abs(vec2<u32>(5619u, 14193u)) << (u_input.b % vec2<u32>(32u)))), var_2.e, Struct_1(-var_2.d.a ^ var_2.e.a, ~_wgslsmith_mod_u32(firstTrailingBit(var_2.d.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(8535u, 10887u, 0u), vec3<u32>(u_input.a, var_2.e.b, 24290u))), vec2<u32>(10740u, ~var_2.b.b)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: f32) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_2.x, 2147483647i, 0i, 0i), vec4<i32>(35705i, arg_2.x, arg_0.x, arg_2.x)), vec4<i32>(arg_1.c.a, -28836i, -31739i, arg_1.e.a) & vec4<i32>(0i, arg_0.x, arg_2.x, -873i)), 39533u, ~(~arg_1.b.c)), func_1().c, func_1().d, func_1().a, Struct_1(40022i, u_input.b.x, u_input.b)), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -21428i;
    var var_1 = func_4(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, var_0 << (51745u % 32u)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(41426i, -9330i), vec2<i32>(-3965i, var_0), vec2<bool>(true, false)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0, 2147483647i), vec2<i32>(var_0, -81151i))), var_0), _wgslsmith_sub_i32(var_0, var_0), 0i), func_1(), ~countOneBits(~(-vec2<i32>(47866i, -1i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1696f, -691f)))), _wgslsmith_f_op_f32(select(2205f, _wgslsmith_f_op_f32(abs(-1067f)), true))))));
    let var_2 = func_4(~(-_wgslsmith_div_vec3_i32(-vec3<i32>(var_0, 0i, var_1.a.b.a), ~vec3<i32>(-19048i, var_1.b.d.a, 1i))), Struct_2(Struct_1(-13910i, _wgslsmith_add_u32(var_1.b.e.b, 33067u), ~select(vec2<u32>(4294967295u, var_1.b.c.c.x), u_input.b, true)), func_4(firstLeadingBit(~vec3<i32>(1i, var_1.a.a.a, var_1.a.e.a)), var_1.a, _wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.a.a, -63721i) >> (vec2<u32>(var_1.a.a.c.x, u_input.b.x) % vec2<u32>(32u)), -vec2<i32>(var_0, 6813i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1017f)) * _wgslsmith_f_op_f32(f32(-1f) * -1426f))).a.c, func_1().c, func_4(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_1.a.b.a), vec2<i32>(2147483647i, var_0)), 2147483647i, -var_0), func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, var_0, -2147483647i), vec3<i32>(var_1.a.a.a, -9455i, 2147483647i)), var_1.a, abs(vec2<i32>(-1851i, 38170i)), _wgslsmith_div_f32(-249f, 1403f)).b, -abs(vec2<i32>(var_1.b.d.a, 2147483647i)), _wgslsmith_f_op_f32(-1f)).a.a, Struct_1(-_wgslsmith_div_i32(var_1.b.b.a, var_1.b.b.a), 4294967295u, firstLeadingBit(~u_input.b))), select(vec2<i32>(2147483647i, var_0) & -vec2<i32>(var_0, var_0), firstTrailingBit(~vec2<i32>(38006i, var_1.a.d.a)), true) | vec2<i32>(firstTrailingBit(func_4(vec3<i32>(var_1.b.e.a, var_1.b.e.a, var_0), var_1.a, vec2<i32>(var_1.a.b.a, var_1.b.d.a), -952f).b.e.a), 37790i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f * 344f) - 1f) - _wgslsmith_f_op_f32(min(-1183f, _wgslsmith_f_op_f32(313f - 1479f)))))));
    var_1 = func_4(firstLeadingBit(_wgslsmith_add_vec3_i32(-(vec3<i32>(var_2.a.e.a, var_0, var_2.a.b.a) | vec3<i32>(18871i, -20810i, var_1.a.b.a)), min(vec3<i32>(8375i, -1i, var_2.b.d.a), vec3<i32>(-58451i, var_0, 39111i)) | -vec3<i32>(-1i, 0i, -2147483647i))), var_2.b, countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 9337i), vec2<i32>(20550i, -4685i))) | _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -1i), select(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_1.a.d.a), vec2<i32>(var_2.a.d.a, 28218i)), vec2<i32>(939i, -60143i), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1486f) - 1f));
    var_1 = var_2;
    var_1 = func_4(~vec3<i32>(_wgslsmith_div_i32(abs(35760i), -12098i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.b.a, 2147483647i, 0i, -2147483647i), -vec4<i32>(var_0, var_0, -1i, 29346i)), abs(abs(-2147483647i))), var_2.b, vec2<i32>(-36699i, -12824i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -779f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-642f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.a.b, func_4(vec3<i32>(-1i, countOneBits(-2147483647i), var_1.a.a.a), var_2.b, vec2<i32>(var_2.a.e.a, -var_1.a.b.a), -250f).b.a.a, vec2<f32>(1f, 1f), -31025i);
}

