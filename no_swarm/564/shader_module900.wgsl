struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: i32) -> i32 {
    let var_0 = min(~arg_2, arg_2);
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-(arg_0.c.a.zyx & arg_0.c.a.xww), arg_0.c.a.xzy), arg_0.c.a.wzx), max(arg_3, 0i | _wgslsmith_add_i32(-1i ^ arg_3, firstTrailingBit(-2147483647i))), arg_0.c);
    var_1 = arg_0;
    let var_2 = ~arg_3;
    var var_3 = arg_0;
    return _wgslsmith_mod_i32(-_wgslsmith_add_i32(-15106i, (arg_0.a >> (0u % 32u)) | var_1.c.a.x), 1i);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_0.a.x, -2147483647i, Struct_1(vec4<i32>(_wgslsmith_div_i32(arg_0.a.x, arg_0.a.x) << (u_input.a.x % 32u), arg_0.a.x, 41675i, reverseBits(1i)), true));
    var var_1 = ~vec4<u32>(u_input.a.x, firstLeadingBit(_wgslsmith_add_u32(4294967295u, u_input.a.x)), ~(~2815u), u_input.a.x);
    var_0 = Struct_2(firstTrailingBit(arg_0.a.x) ^ ~1i, _wgslsmith_dot_vec2_i32(var_0.c.a.xz, var_0.c.a.wz), Struct_1(vec4<i32>(-(~1i), func_3(Struct_2(1i, arg_0.a.x, Struct_1(arg_0.a, false)), vec4<f32>(535f, 245f, 1728f, 562f), select(var_1.wz, var_1.ww, vec2<bool>(false, false)), -2147483647i), ~(~var_0.c.a.x), arg_0.a.x), !(!var_0.c.b || var_0.c.b)));
    var var_2 = Struct_2(firstTrailingBit(reverseBits(-_wgslsmith_mult_i32(-2147483647i, arg_0.a.x))), ~firstLeadingBit(~(-3839i)), Struct_1(var_0.c.a, true));
    var_2 = Struct_2(_wgslsmith_div_i32(~arg_0.a.x | ~min(-73354i, var_2.a), arg_0.a.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(~var_2.a, 0i), countOneBits(var_0.b)), var_2.c);
    return Struct_2(_wgslsmith_mod_i32(select(38054i, min(var_0.c.a.x, 11774i), all(vec2<bool>(true, false))) | -1i, countOneBits(-22744i)), -21646i, var_2.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1223f)) + _wgslsmith_f_op_f32(floor(1570f)))), _wgslsmith_f_op_f32(abs(-417f))))));
    var var_1 = func_2(Struct_1(vec4<i32>(-(~(-2147483647i)), 22143i, -58145i, -1426i), !arg_2.c.b));
    return u_input.a.yz;
}

fn func_1() -> u32 {
    var var_0 = min(((vec2<i32>(-1i) * -vec2<i32>(-11587i, -2147483647i)) >> (countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(2507u, u_input.a.x))) % vec2<u32>(32u))) >> (reverseBits(vec2<u32>(u_input.a.x & 79403u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, 30197u), vec4<u32>(41084u, u_input.a.x, u_input.a.x, 38356u)))) % vec2<u32>(32u)), min(firstTrailingBit(vec2<i32>(0i, _wgslsmith_mult_i32(-14039i, 632i))), ~vec2<i32>(21547i, 2066i)));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, u_input.a.x)) << ((~vec3<u32>(u_input.a.x, 60549u, u_input.a.x) ^ u_input.a) % vec3<u32>(32u)), u_input.a), ~u_input.a.x);
    var_0 = _wgslsmith_sub_vec2_i32(~(-vec2<i32>(var_0.x, var_0.x)) >> ((func_4(func_2(Struct_1(vec4<i32>(-22906i, var_0.x, -40517i, 15874i), true)), Struct_2(37791i, 0i, Struct_1(vec4<i32>(var_0.x, var_0.x, 1i, -1i), false)), Struct_2(1i, var_0.x, Struct_1(vec4<i32>(var_0.x, var_0.x, 1i, -2147483647i), false))) >> (vec2<u32>(var_1, _wgslsmith_sub_u32(u_input.a.x, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(19615i | _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.x, 1i), var_0.x ^ 3599i, var_0.x), -reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, -18644i)))));
    var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~var_0.x, func_2(Struct_1(vec4<i32>(41947i, -18467i, -2147483647i, var_0.x), true)).a), _wgslsmith_sub_vec2_i32(vec2<i32>(23484i, -22296i), vec2<i32>(246i, var_0.x)) & countOneBits(abs(vec2<i32>(1i, var_0.x))), vec2<i32>(var_0.x, abs(countOneBits(var_0.x)))), ~abs(_wgslsmith_add_vec2_i32(~vec2<i32>(-38617i, 0i), vec2<i32>(var_0.x, -4595i) ^ vec2<i32>(1i, -41409i))));
    var var_2 = false;
    return 64118u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec4<u32>(~min(func_1(), 0u), _wgslsmith_sub_u32(u_input.a.x, func_1()), 4294967295u, max(~(70715u >> (u_input.a.x % 32u)), abs(10690u))));
    var_0 = ~firstTrailingBit(~select(countOneBits(vec4<u32>(u_input.a.x, 69266u, 0u, 30526u)), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 64761u)), vec4<bool>(false, true, false, false)));
    let var_1 = 1i;
    let var_2 = _wgslsmith_mod_i32(0i, var_1);
    let var_3 = !select(select(vec2<bool>(true, any(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(false, any(vec2<bool>(false, true))), any(vec3<bool>(false, true, 82384u <= u_input.a.x)));
    var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0.zyz, var_0.yxy), _wgslsmith_mult_vec3_u32(vec3<u32>(64974u, 18449u, var_0.x), var_0.yyy)), var_0.x, ~func_4(Struct_2(-23040i, var_2, Struct_1(vec4<i32>(-15702i, var_2, var_1, var_1), false)), Struct_2(-2147483647i, 7597i, Struct_1(vec4<i32>(var_2, var_1, -2147483647i, var_2), var_3.x)), Struct_2(var_1, var_1, Struct_1(vec4<i32>(-2147483647i, -1i, -15952i, var_1), true))).x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), var_0.yx), u_input.a.yz)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, var_0.x), vec4<u32>(4294967295u, 0u, var_0.x, 1u) >> (vec4<u32>(u_input.a.x, var_0.x, var_0.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u)), select(vec4<u32>(66239u, var_0.x, 4294967295u, 39248u), reverseBits(vec4<u32>(0u, u_input.a.x, 0u, 1u)), vec4<bool>(true, true, true, true)), !(false & var_3.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(25673u, 47303u), _wgslsmith_clamp_u32(var_0.x, 4824u, var_0.x), ~var_0.x, ~4294967295u), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 37606u) >> (vec4<u32>(1u, u_input.a.x, 1u, 1u) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, 20815u, 63037u, u_input.a.x) | countOneBits(vec4<u32>(u_input.a.x, 0u, var_0.x, 66721u)))));
    let var_4 = vec2<bool>(true, var_3.x);
    let var_5 = Struct_2(2147483647i, var_1, func_2(Struct_1(vec4<i32>(var_2 >> (u_input.a.x % 32u), -36866i | var_2, _wgslsmith_add_i32(var_2, var_2), var_2), var_1 == (9718i | var_2))).c);
    var_0 = ~_wgslsmith_add_vec4_u32(abs(firstLeadingBit(vec4<u32>(57942u, u_input.a.x, var_0.x, var_0.x))), abs(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 36913u)), ~vec4<u32>(0u, u_input.a.x, var_0.x, 7231u), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(-var_2, var_2, func_2(func_2(Struct_1(var_5.c.a, var_5.c.b)).c).c.b));
}

