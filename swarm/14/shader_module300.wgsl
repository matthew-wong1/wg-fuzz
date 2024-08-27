struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, all(vec3<bool>(false, false, true)), true), true, true, any(vec4<bool>(u_input.b.x <= 1i, any(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, true, true))))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(all(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, false, true, true)), true, any(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false)));
    let var_1 = _wgslsmith_add_i32(firstTrailingBit(-25004i) | u_input.b.x, _wgslsmith_add_i32(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_1.b.x), vec2<i32>(-1i, u_input.b.x))), 1i)));
    let var_2 = var_0.zwz;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(-arg_1.d)), -1158f)), var_2.x, var_0.xzz, Struct_1(arg_1.c, var_2.x, 43312i, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d)))))));
    let var_4 = Struct_2(442f, (true && !(!var_2.x)) || false, vec3<bool>(false, var_3.b, all(select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_3.c.x, var_3.d.e, false), true)) | !var_0.x), var_3.d, var_3.a);
    return any(select(select(!vec4<bool>(true, var_2.x, var_3.b, var_0.x), select(vec4<bool>(true, var_4.c.x, false, true), vec4<bool>(var_0.x, var_0.x, false, var_3.d.e), select(vec4<bool>(false, var_3.c.x, true, false), vec4<bool>(var_4.b, var_0.x, false, var_0.x), vec4<bool>(true, var_2.x, true, var_2.x))), vec4<bool>(var_4.c.x | false, true, true, any(vec4<bool>(var_2.x, true, true, var_0.x)))), !select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, var_3.c.x, true, true), !var_3.b), vec4<bool>(var_3.c.x, any(!vec3<bool>(false, var_0.x, false)), all(select(var_0.wyw, vec3<bool>(false, true, true), false)), 2147483647i <= var_3.d.c)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(-max(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), reverseBits(25896i)), countOneBits(arg_1.c), i32(-1i) * -2147483647i), 15682i, ~_wgslsmith_div_i32(abs(arg_2), -(~arg_2)));
    let var_1 = -5307i >> ((firstLeadingBit(u_input.a.x) & _wgslsmith_div_u32(arg_1.a ^ 4294967295u, 1u ^ ~u_input.a.x)) % 32u);
    var var_2 = !(!vec4<bool>(!all(vec2<bool>(arg_1.d, arg_1.b)), any(vec4<bool>(arg_0, true, arg_1.b, arg_0)), true, _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(-7954i, u_input.b.x)) > ~1i));
    var_2 = !vec4<bool>(_wgslsmith_f_op_f32(step(582f, -1630f)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(564f, -668f)))), any(!select(vec2<bool>(true, var_2.x), vec2<bool>(false, var_2.x), var_2.x)), true, !func_3(~vec4<u32>(10998u, u_input.a.x, u_input.a.x, 30232u), Struct_3(vec4<u32>(arg_1.a, arg_1.a, u_input.a.x, u_input.a.x), u_input.b, 10513u, 1258f), vec3<u32>(1u, 32008u, arg_1.a)));
    var_2 = vec4<bool>((1u > select(reverseBits(34046u), _wgslsmith_add_u32(0u, u_input.a.x), all(var_2.wxx))) == !any(var_2.yw), !var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1412f) + -1798f) * _wgslsmith_f_op_f32(min(-599f, _wgslsmith_div_f32(433f, 1544f)))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(204f)) * _wgslsmith_f_op_f32(234f - -476f)))), true);
    return reverseBits(vec4<u32>(arg_1.a, select(~4294967295u, arg_1.a, arg_1.b), _wgslsmith_sub_u32(arg_1.a, u_input.a.x), reverseBits(abs(~4294967295u))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = reverseBits(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 47219u), vec3<u32>(15326u, 4294967295u, 28079u)) ^ select(vec3<u32>(214u, 1u, 2667u), vec3<u32>(1u, 50415u, 27500u), vec3<bool>(arg_0, arg_0, true)))) << (~vec3<u32>(~_wgslsmith_add_u32(3949u, 308u), _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x), 27008u) % vec3<u32>(32u));
    var var_1 = firstLeadingBit(func_4((false | !arg_1) && any(select(vec2<bool>(arg_1, false), vec2<bool>(true, true), arg_1)), Struct_1(57278u, (var_0.x != var_0.x) | func_3(vec4<u32>(0u, 111485u, 1u, u_input.a.x), Struct_3(vec4<u32>(29919u, var_0.x, var_0.x, var_0.x), vec3<i32>(u_input.b.x, -1i, -52636i), 12876u, 1293f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_i32(max(2147483647i, arg_2.x), u_input.b.x << (116843u % 32u)), true & arg_0, arg_1), reverseBits(-arg_2.x), !select(vec2<bool>(arg_0, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), arg_1), true)));
    let var_2 = ~select(firstLeadingBit(vec4<u32>(58015u, max(14316u, 0u), var_0.x, u_input.a.x)), vec4<u32>(~6132u, select(0u, 16797u, false), 1u, _wgslsmith_mult_u32(0u, var_0.x)) & ~(~vec4<u32>(var_0.x, u_input.a.x, var_0.x, 79755u)), select(vec4<bool>(func_3(vec4<u32>(u_input.a.x, 0u, var_1.x, 15670u), Struct_3(vec4<u32>(var_0.x, 32246u, 1u, 15479u), u_input.b, var_1.x, 1176f), vec3<u32>(var_0.x, var_0.x, 76u)), false, arg_0, arg_1), select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, true, arg_0, true), select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, false, arg_0, arg_1), arg_0)), vec4<bool>(arg_1 || false, any(vec3<bool>(true, false, false)), arg_0 & arg_0, false)));
    var_1 = max(var_2, firstLeadingBit(var_2) >> (vec4<u32>(1u, var_2.x, ~(~u_input.a.x), var_2.x) % vec4<u32>(32u)));
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~40922u, var_2.x << (4294967295u % 32u)), var_0.x << ((24348u << (var_1.x % 32u)) % 32u)), var_1.x, _wgslsmith_div_u32(u_input.a.x, ~var_2.x << (~58360u % 32u))), ~(~u_input.a.x), var_0.x);
    return Struct_4(Struct_2(-1000f, any(vec3<bool>(true, !arg_0, true | arg_0)), vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1665f) >= _wgslsmith_f_op_f32(sign(-641f)), !any(vec4<bool>(false, arg_1, arg_1, true))), Struct_1(max(u_input.a.x, _wgslsmith_div_u32(var_0.x, var_2.x)), true, u_input.b.x, all(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_1, arg_0), vec3<bool>(arg_1, false, arg_0))), any(select(vec3<bool>(false, false, arg_1), vec3<bool>(true, false, arg_0), arg_0))), -2255f), Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, ~var_0.x, ~var_0.x, ~4294967295u), ~var_2), u_input.b, 5465u, _wgslsmith_div_f32(1000f, 1f)), min(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.x, -2147483647i), -2147483647i), min(41482i, u_input.b.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<bool>) -> bool {
    let var_0 = vec2<f32>(arg_2.a.e, -1040f);
    let var_1 = _wgslsmith_mod_vec4_u32(~(~(~countOneBits(vec4<u32>(arg_1.d.a, arg_1.d.a, arg_2.b.a.x, 91280u)))), vec4<u32>(select(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_1.d.a, u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.d.a, u_input.a.x, arg_2.a.d.a), vec3<u32>(arg_1.d.a, arg_2.b.c, 1u))), 4294967295u, (u_input.b.x <= 9282i) & false), func_4(any(arg_2.a.c.yx) || false, Struct_1(u_input.a.x, all(vec2<bool>(arg_1.d.e, false)), arg_1.d.c >> (0u % 32u), true, 1429f <= arg_2.b.d), (arg_1.d.c << (1u % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(48403u, 0u, u_input.a.x), arg_2.b.a.yxw) % 32u), select(arg_2.a.c.yy, vec2<bool>(false, true), arg_2.a.c.xz)).x, _wgslsmith_add_u32(~arg_1.d.a >> (u_input.a.x % 32u), 2603u), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.a.x, arg_2.b.c), ~(~arg_1.d.a))));
    var var_2 = Struct_1(39482u, all(!(!(!arg_1.c.xy))), u_input.b.x, -581f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1305f)), _wgslsmith_f_op_f32(f32(-1f) * -122f))), any(select(vec2<bool>(true, true), arg_2.a.c.zz, ~u_input.a.x != ~var_1.x)));
    var_2 = func_2(true & all(func_2(any(vec3<bool>(false, arg_2.a.b, false)), arg_1.c.x == true, countOneBits(vec2<i32>(1i, -39324i))).a.c), any(!vec3<bool>(false, arg_3.x, -1000f >= var_0.x)), vec2<i32>(arg_1.d.c, -arg_1.d.c)).a.d;
    var_2 = func_2(true, arg_1.d.d, arg_2.b.b.yy).a.d;
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = Struct_4(arg_2, Struct_3(~(~(vec4<u32>(arg_2.d.a, 4294967295u, 23670u, 16331u) ^ vec4<u32>(4294967295u, 67397u, 21262u, u_input.a.x))), u_input.b, ~(u_input.a.x | arg_2.d.a), _wgslsmith_f_op_f32(f32(-1f) * -472f)), countOneBits(_wgslsmith_clamp_i32(-10128i << (arg_0.a % 32u), arg_2.d.c, 59369i) << (abs(~446u) % 32u)));
    let var_1 = true;
    var var_2 = 1i;
    var var_3 = vec3<bool>(all(!(!vec4<bool>(false, var_1, false, false))) == func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(523f + var_0.a.e))), arg_2, func_2(any(vec4<bool>(var_1, var_0.a.c.x, false, true)), true, var_0.b.b.yz), func_2(var_0.b.a.x == 0u, false, countOneBits(vec2<i32>(arg_2.d.c, arg_0.c))).a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.e))) - var_0.b.d) < 786f, false || all(vec2<bool>(true, var_0.a.e != arg_2.e)));
    var var_4 = ~_wgslsmith_div_vec4_u32(var_0.b.a, min(select(var_0.b.a & vec4<u32>(39406u, 4294967295u, var_0.b.a.x, var_0.a.d.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.d.a, 64888u, u_input.a.x, u_input.a.x), vec4<u32>(8347u, var_0.b.c, arg_0.a, arg_0.a), vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a, 57264u)), !arg_1.x), vec4<u32>(55471u | u_input.a.x, min(4294967295u, arg_0.a), ~0u, 130u)));
    return -_wgslsmith_clamp_vec3_i32(var_0.b.b, abs(~firstLeadingBit(var_0.b.b)), select(-u_input.b, vec3<i32>(2147483647i, 17221i, 2147483647i), arg_2.c) & ~_wgslsmith_mod_vec3_i32(var_0.b.b, vec3<i32>(u_input.b.x, 2147483647i, 44912i)));
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(select(abs(select(u_input.b.zx, vec2<i32>(2147483647i, arg_1.b.x), false)), u_input.b.yz, select(vec2<bool>(true, true), func_2(true, false, arg_1.b.xz).a.c.zy, vec2<bool>(true, true))), arg_1.b.xz & -u_input.b.yx), _wgslsmith_add_i32(arg_0, 0i) >> ((select(_wgslsmith_sub_u32(arg_1.a.x, u_input.a.x), select(u_input.a.x, 68462u, true), all(vec3<bool>(false, true, true))) | ~(u_input.a.x | arg_1.c)) % 32u));
    var var_1 = _wgslsmith_mod_u32(0u, arg_1.c);
    var_1 = 10535u;
    var var_2 = func_2(true, !select(any(func_2(false, true, u_input.b.yy).a.c.yy), true, true), vec2<i32>(_wgslsmith_dot_vec2_i32(-arg_1.b.xy, vec2<i32>(29013i, -37864i) << (vec2<u32>(arg_1.a.x, 31913u) % vec2<u32>(32u))) >> (u_input.a.x % 32u), arg_1.b.x));
    var var_3 = _wgslsmith_add_i32(-39659i, _wgslsmith_div_i32(func_1(var_2.a.d, !var_2.a.c, func_2(var_2.a.d.d, var_2.a.c.x, vec2<i32>(12352i, 2147483647i)).a).x, max(4081i, _wgslsmith_mult_i32(var_2.b.b.x, var_0.x))) >> (_wgslsmith_dot_vec4_u32(~(vec4<u32>(8479u, 4294967295u, arg_1.c, 0u) << (vec4<u32>(2413u, 64808u, var_2.a.d.a, 1u) % vec4<u32>(32u))), vec4<u32>(~u_input.a.x, 24170u | u_input.a.x, u_input.a.x | u_input.a.x, firstLeadingBit(4294967295u))) % 32u));
    return StorageBuffer(~_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u | u_input.a.x, arg_1.c & 39845u), arg_1.a.x), ~u_input.a.x, _wgslsmith_add_vec2_i32(var_2.b.b.xz, var_2.b.b.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(u_input.b.x, ~u_input.b.x, ~(-2147483647i)), u_input.b.x, ~firstLeadingBit(u_input.b.x)), Struct_3(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 6101u)), reverseBits(vec4<u32>(23450u, u_input.a.x, u_input.a.x, 1u))), func_1(Struct_1(0u, true, u_input.b.x, true, true), vec3<bool>(true, false, false), Struct_2(331f, true, vec3<bool>(true, true, true), Struct_1(1u, true, 14346i, false, false), 908f)) ^ firstLeadingBit(u_input.b), func_2(true & (u_input.b.x <= u_input.b.x), true, u_input.b.yz).a.d.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(519f * _wgslsmith_f_op_f32(f32(-1f) * -209f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(872f))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))))));
}

