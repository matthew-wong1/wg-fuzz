struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = Struct_4(firstTrailingBit(select(abs(vec3<u32>(104616u, arg_1.c, arg_1.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, u_input.a, u_input.c.x), vec3<u32>(arg_1.c, 40388u, arg_3), vec3<u32>(arg_3, 29525u, 4294967295u)), vec3<bool>(arg_0.x, arg_0.x, true)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 0u, 1u), ~vec3<u32>(u_input.d.x, u_input.b, 1u)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-arg_2);
    var var_2 = Struct_4(firstTrailingBit(select(vec3<u32>(~arg_1.c, firstTrailingBit(31700u), var_0.a.x), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_0.a, var_0.a), var_0.a << (var_0.a % vec3<u32>(32u))), any(select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(false, true, false, arg_0.x), vec4<bool>(true, arg_0.x, false, false))))));
    var_2 = var_0;
    return 41573u;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, ~select(func_3(vec2<bool>(false, true), Struct_1(vec2<i32>(26610i, -32996i), vec2<i32>(1i, u_input.e.x), u_input.b), -336f, 1u), countOneBits(u_input.b), true)), max(_wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(0u), ~1u, 31259u), vec3<u32>(4294967295u, 71229u, u_input.b)), vec3<u32>(u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 6962u), vec3<u32>(0u, u_input.a, 4294967295u)), 1u)));
    let var_1 = !(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(true, false)))));
    return Struct_1(_wgslsmith_clamp_vec2_i32((_wgslsmith_sub_vec2_i32(u_input.e.xw, u_input.e.yw) << (u_input.c % vec2<u32>(32u))) ^ abs(abs(u_input.e.yw)), -vec2<i32>(firstTrailingBit(u_input.e.x), ~(-1i)), max(-u_input.e.wz & vec2<i32>(u_input.e.x, u_input.e.x), abs(vec2<i32>(2147483647i, u_input.e.x)) & abs(vec2<i32>(u_input.e.x, 2147483647i)))), -_wgslsmith_div_vec2_i32(vec2<i32>(53226i, u_input.e.x), ~vec2<i32>(43009i, u_input.e.x)) ^ u_input.e.xw, _wgslsmith_sub_u32(u_input.a, 4294967295u));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = !select(!vec3<bool>(all(vec3<bool>(arg_1.a, true, false)), true, arg_1.a), select(select(!vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(true, true, true), all(vec2<bool>(arg_1.a, false))), vec3<bool>(true, arg_1.a, any(vec2<bool>(arg_1.a, arg_1.a))), true), !(-arg_2.x != u_input.e.x));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1147f), _wgslsmith_f_op_f32(-558f - arg_1.c));
    var var_2 = select(!vec3<bool>(arg_1.a, var_0.x, var_0.x), !select(vec3<bool>(!var_0.x, var_0.x || var_0.x, var_0.x), !vec3<bool>(arg_1.a, false, arg_1.a), !select(vec3<bool>(false, true, var_0.x), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), var_0.x)), false);
    var_2 = !select(select(vec3<bool>(var_0.x, var_0.x, any(vec2<bool>(arg_1.a, arg_1.a))), vec3<bool>(true, true, true), arg_1.a), !(!(!vec3<bool>(var_2.x, arg_1.a, var_2.x))), !vec3<bool>(-1000f < var_1, any(vec4<bool>(var_2.x, true, true, arg_1.a)), arg_1.a && false));
    var_2 = vec3<bool>(any(select(vec2<bool>(all(vec4<bool>(false, var_0.x, var_2.x, var_2.x)), true), !select(vec2<bool>(var_0.x, false), var_2.yz, var_2.x), vec2<bool>(false, all(vec2<bool>(arg_1.a, true))))), var_0.x, !all(vec3<bool>(false, true, !var_2.x)));
    return Struct_3(firstLeadingBit(~countOneBits(32732u)), 2147483647i, ~u_input.c.x, func_2(), u_input.e.zz);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = -vec3<i32>(reverseBits(arg_1.d.a.x), max(_wgslsmith_sub_i32(-37637i, u_input.e.x), max(u_input.e.x, 1i)), 1i) << (arg_3 % vec3<u32>(32u));
    let var_1 = vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(86611i, ~var_0.x), _wgslsmith_div_i32(var_0.x, var_0.x >> (4294967295u % 32u))), ~(-1i), (arg_1.b & 4310i) << (reverseBits(func_4(_wgslsmith_mod_i32(arg_1.d.b.x, -1i), Struct_2(false, Struct_1(arg_1.d.b, var_0.yx, 4294967295u), arg_0), abs(u_input.e), arg_1).d.c) % 32u), abs(-20016i));
    var var_2 = arg_1;
    let var_3 = func_2();
    var_2 = arg_1;
    return var_2.d;
}

fn func_1() -> bool {
    var var_0 = func_5(_wgslsmith_f_op_f32(-288f - -1083f), func_4(-u_input.e.x, Struct_2(true, func_2(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1452f * -2233f)))), vec4<i32>(firstTrailingBit(u_input.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-23461i, u_input.e.x), min(vec2<i32>(u_input.e.x, u_input.e.x), u_input.e.yy)), _wgslsmith_clamp_i32(~2147483647i, 5431i, -1i), u_input.e.x), Struct_3(reverseBits(u_input.c.x), u_input.e.x, (51095u | u_input.a) | ~4294967295u, Struct_1(vec2<i32>(-79400i, -7061i), vec2<i32>(1i, 1i), u_input.c.x), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(29800i, 0i, u_input.e.x, -29759i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)), _wgslsmith_mult_i32(u_input.e.x, 1i)))), Struct_4(select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), firstLeadingBit(vec3<u32>(u_input.b, 93585u, u_input.d.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(54421u, u_input.a, 4294967295u), vec3<u32>(u_input.b, u_input.a, 8615u)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(61145u, 4294967295u, u_input.a), vec3<u32>(1u, 0u, 62593u), vec3<u32>(63667u, 3201u, u_input.d.x)), vec3<u32>(0u, u_input.c.x, 4294967295u) ^ vec3<u32>(46724u, 82768u, u_input.d.x)), select(vec3<u32>(4294967295u, u_input.c.x, u_input.a), vec3<u32>(0u, 17425u, 9276u), false) | abs(vec3<u32>(0u, 0u, 40131u))), firstLeadingBit(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 32486u), vec3<u32>(4294967295u, 4294967295u, 5732u), vec3<u32>(u_input.b, 0u, u_input.c.x)))), countOneBits(~vec3<u32>(1u, 0u, 17826u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 1u), ~vec3<u32>(103070u, 18950u, 65927u)) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1023f, 1168f), vec2<f32>(-934f, -803f), vec2<bool>(false, false)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1165f, 723f) * vec2<f32>(-1474f, 882f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(450f, 1000f))))))))));
    let var_2 = func_4((-23278i << (u_input.a % 32u)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, 19012u, var_0.c, u_input.d.x), vec4<u32>(var_0.c, 4247u, var_0.c, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, var_0.c), vec4<u32>(var_0.c, 76350u, u_input.a, 13984u)), countOneBits(vec4<u32>(0u, u_input.d.x, u_input.a, var_0.c))), select(reverseBits(vec4<u32>(21098u, var_0.c, u_input.b, 1u)), ~vec4<u32>(0u, 0u, u_input.b, 1469u), vec4<bool>(true, true, true, true))) % 32u), Struct_2(false, func_4(func_2().b.x, Struct_2(false, Struct_1(vec2<i32>(2147483647i, u_input.e.x), vec2<i32>(1196i, var_0.b.x), 11480u), _wgslsmith_div_f32(var_1.x, var_1.x)), ~(~u_input.e), Struct_3(0u, -1i, ~var_0.c, func_2(), _wgslsmith_div_vec2_i32(vec2<i32>(-6080i, u_input.e.x), u_input.e.yx))).d, _wgslsmith_f_op_f32(min(-921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1127f))))), u_input.e, Struct_3(var_0.c, 1i, 1u, Struct_1(u_input.e.wx & -u_input.e.yx, _wgslsmith_mod_vec2_i32(var_0.a | var_0.a, _wgslsmith_mod_vec2_i32(u_input.e.xx, vec2<i32>(u_input.e.x, -2147483647i))), 0u), var_0.b));
    let var_3 = select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), (_wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(1461f + -434f)) && !select(false, true, false)), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) || true, true));
    let var_4 = -50441i;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(false, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false), true), vec3<bool>(false, all(vec4<bool>(false, false, false, true)), true), true), !vec3<bool>(select(false, true, false), func_1(), true)), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), all(vec2<bool>(true, false))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), false), vec3<bool>(false, true, all(vec2<bool>(true, false)))), vec3<bool>(true, !select(false, true, true), select(all(vec3<bool>(true, true, false)), true, all(vec3<bool>(false, false, true)))), true), any(vec3<bool>(1i != u_input.e.x, 4294967295u >= u_input.d.x, all(vec3<bool>(true, true, false)))) && (select(-59181i, _wgslsmith_add_i32(61728i, u_input.e.x), true) > max(~(-54131i), u_input.e.x)));
    let var_1 = Struct_4(vec3<u32>(max(u_input.b, 86483u >> (~u_input.d.x % 32u)), ~(u_input.c.x << ((2199u | u_input.a) % 32u)), ~_wgslsmith_div_u32(24764u, u_input.a) & max(1u, u_input.c.x)));
    var var_2 = -func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f + 1508f)), func_4(_wgslsmith_dot_vec3_i32(-u_input.e.zxx, vec3<i32>(u_input.e.x, 1i, 0i)), Struct_2(var_0.x, Struct_1(u_input.e.zz, vec2<i32>(0i, -2147483647i), var_1.a.x), _wgslsmith_f_op_f32(sign(508f))), _wgslsmith_div_vec4_i32(-u_input.e, -u_input.e), func_4(5687i, Struct_2(var_0.x, Struct_1(vec2<i32>(u_input.e.x, 2147483647i), vec2<i32>(1i, u_input.e.x), u_input.c.x), -842f), u_input.e, Struct_3(u_input.b, -533i, u_input.a, Struct_1(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(0i, -47318i), var_1.a.x), vec2<i32>(u_input.e.x, u_input.e.x)))), var_1, abs(~(vec3<u32>(22983u, var_1.a.x, var_1.a.x) & vec3<u32>(0u, u_input.c.x, 4294967295u)))).a;
    let var_3 = Struct_4(~select(min(reverseBits(var_1.a), vec3<u32>(1u, 50723u, u_input.d.x)), var_1.a, !var_0));
    var var_4 = Struct_3(1u, _wgslsmith_div_i32(14519i, _wgslsmith_div_i32(2147483647i, u_input.e.x) ^ var_2.x), 0u, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1306f)) - -119f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1427f, 1571f)), 318f)), Struct_3(_wgslsmith_mult_u32(_wgslsmith_add_u32(11586u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, 12976u, 7985u), var_3.a)), -28073i, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 38525u, var_1.a.x, 0u), vec4<u32>(39574u, u_input.c.x, 4294967295u, 0u)), func_5(-1314f, func_4(u_input.e.x, Struct_2(true, Struct_1(vec2<i32>(var_2.x, var_2.x), u_input.e.ww, 32529u), -1470f), vec4<i32>(var_2.x, u_input.e.x, -1i, 1i), Struct_3(8205u, u_input.e.x, 62494u, Struct_1(vec2<i32>(2147483647i, 18049i), vec2<i32>(u_input.e.x, u_input.e.x), u_input.d.x), vec2<i32>(var_2.x, var_2.x))), Struct_4(var_3.a), _wgslsmith_mod_vec3_u32(vec3<u32>(53582u, 0u, var_3.a.x), vec3<u32>(var_3.a.x, u_input.d.x, u_input.a))), ~(-vec2<i32>(22933i, var_2.x))), Struct_4(~var_1.a), ~(~var_3.a) | abs(~var_1.a)), max(vec2<i32>(func_4(u_input.e.x, Struct_2(true, Struct_1(u_input.e.wy, vec2<i32>(13659i, u_input.e.x), 40131u), 903f), vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, 2147483647i), func_4(-2147483647i, Struct_2(var_0.x, Struct_1(vec2<i32>(var_2.x, 47548i), vec2<i32>(var_2.x, -1i), var_1.a.x), -1138f), u_input.e, Struct_3(u_input.a, u_input.e.x, 54613u, Struct_1(u_input.e.xz, u_input.e.zx, u_input.c.x), vec2<i32>(-88785i, var_2.x)))).d.b.x, -var_2.x), vec2<i32>(u_input.e.x, -(~u_input.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(121f, ~countOneBits(var_3.a));
}

