struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = arg_2;
    return ~reverseBits(4294967295u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = Struct_1(arg_1, arg_1, ~(~(~vec3<u32>(74251u, 0u, arg_0.x))));
    let var_1 = _wgslsmith_add_i32(-2147483647i, firstTrailingBit(arg_2.c.x));
    var_0 = Struct_1(vec2<i32>(reverseBits((2147483647i >> (1u % 32u)) >> (arg_2.a % 32u)), 29460i), _wgslsmith_mult_vec2_i32(select(var_0.a & var_0.b, arg_1, any(select(vec4<bool>(arg_2.d, arg_2.d, arg_2.d, true), vec4<bool>(true, arg_2.d, false, arg_2.d), vec4<bool>(true, arg_2.d, true, false)))), firstTrailingBit(abs(vec2<i32>(var_1, -1i)))), ~(~arg_0 >> (vec3<u32>(arg_0.x << (4294967295u % 32u), ~var_0.c.x, arg_0.x) % vec3<u32>(32u))));
    var var_2 = !select(select(vec4<bool>(var_1 < 37726i, arg_2.d, arg_2.d, all(vec2<bool>(true, arg_2.d))), vec4<bool>(true, !arg_2.d, !arg_2.d, any(vec4<bool>(true, true, false, true))), !select(vec4<bool>(true, arg_2.d, arg_2.d, arg_2.d), vec4<bool>(false, false, arg_2.d, false), false)), select(select(select(vec4<bool>(true, arg_2.d, true, arg_2.d), vec4<bool>(arg_2.d, arg_2.d, arg_2.d, false), false), vec4<bool>(arg_2.d, arg_2.d, arg_2.d, arg_2.d), vec4<bool>(true, arg_2.d, false, false)), vec4<bool>(all(vec2<bool>(arg_2.d, true)), !arg_2.d, any(vec3<bool>(true, false, arg_2.d)), any(vec3<bool>(false, true, arg_2.d))), !arg_2.d && all(vec4<bool>(arg_2.d, arg_2.d, true, arg_2.d))), arg_2.d || true);
    let var_3 = arg_2;
    return ~select(arg_0 << ((arg_2.b.c >> (~vec3<u32>(4294967295u, var_3.b.c.x, arg_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.c, vec3<bool>(true, !all(vec4<bool>(var_3.d, var_2.x, arg_2.d, true)), true));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(select(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), any(vec4<bool>(true, arg_3, arg_3, true)))), vec4<i32>(~u_input.a, _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, -40041i), u_input.a ^ -51031i), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), ~u_input.a), u_input.a)), u_input.a);
    let var_1 = Struct_1(reverseBits(vec2<i32>(max(0i, min(u_input.a, 2147483647i)), 1i)), abs(vec2<i32>(_wgslsmith_div_i32(7043i, -1i), 57017i)), max(select(select(vec3<u32>(arg_0, 67262u, arg_2), ~arg_1, !vec3<bool>(false, false, arg_3)), vec3<u32>(arg_0 ^ 9184u, ~arg_1.x, ~arg_2), arg_3), func_3(select(arg_1, vec3<u32>(arg_2, 1u, 87737u) ^ arg_1, any(vec3<bool>(true, arg_3, arg_3))), select(-vec2<i32>(u_input.a, -35851i), _wgslsmith_add_vec2_i32(vec2<i32>(-52947i, 46974i), vec2<i32>(u_input.a, 5631i)), true), Struct_2(~arg_1.x, Struct_1(vec2<i32>(0i, 22166i), vec2<i32>(u_input.a, u_input.a), vec3<u32>(59330u, 1u, arg_1.x)), abs(vec2<i32>(0i, 1i)), true))));
    var var_2 = countOneBits(reverseBits(firstLeadingBit(vec4<u32>(arg_1.x, 88280u, arg_2, 7113u)) | ~vec4<u32>(41255u, 1u, 4294967295u, 0u))) ^ firstLeadingBit(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_1.x, arg_2, 111918u), vec4<u32>(arg_0, arg_0, 96154u, 35576u), vec4<u32>(arg_1.x, 21105u, 89230u, arg_0))));
    let var_3 = !vec4<bool>(!all(vec3<bool>(false, arg_3, false)), !(!arg_3) | true, true & (all(vec2<bool>(false, arg_3)) & false), all(!(!vec2<bool>(arg_3, true))));
    let var_4 = !(!(!any(!vec4<bool>(true, arg_3, true, true))));
    return vec2<u32>(min(min(1u, var_1.c.x) | _wgslsmith_mod_u32(arg_1.x, arg_0), ~(~var_1.c.x)), func_3(select(abs(vec3<u32>(14145u, var_1.c.x, arg_0)), vec3<u32>(21475u, arg_2, 77170u), all(var_3.wzy)), firstTrailingBit(vec2<i32>(-86624i, u_input.a)) >> (min(var_2.zz, vec2<u32>(1u, arg_2)) % vec2<u32>(32u)), Struct_2(0u, Struct_1(var_1.b, var_1.b, vec3<u32>(arg_2, arg_0, var_2.x)), ~var_1.b, !arg_3)).x) | _wgslsmith_clamp_vec2_u32(func_3(select(~vec3<u32>(var_1.c.x, arg_2, arg_2), max(var_2.zxy, vec3<u32>(0u, 31188u, arg_2)), var_3.xxz), var_1.b, Struct_2(1u, Struct_1(var_1.a, var_1.b, arg_1), var_1.a, var_4 || false)).yz, var_1.c.yx, vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.c.zy, var_1.c.yy) << (countOneBits(4294967295u) % 32u), min(_wgslsmith_mod_u32(var_1.c.x, 52946u), firstTrailingBit(64420u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(min(vec3<i32>(-(~u_input.a), u_input.a, firstTrailingBit(~u_input.a)), ~(~vec3<i32>(30414i, -2147483647i, 50248i))), select(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(u_input.a, 14434i, u_input.a), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(7994i, u_input.a, 11692i), vec3<i32>(u_input.a, u_input.a, -2147483647i)), -vec3<i32>(u_input.a, -1i, u_input.a)), any(vec4<bool>(false, true, false, true))) & select(countOneBits(vec3<i32>(-7130i, -40255i, 2147483647i)), vec3<i32>(1i, u_input.a, 0i), vec3<bool>(true, true, true)));
    var var_1 = countOneBits(vec2<u32>(_wgslsmith_mult_u32(func_1(Struct_2(1278u, Struct_1(var_0.yy, vec2<i32>(-3409i, var_0.x), vec3<u32>(1u, 17856u, 1u)), vec2<i32>(u_input.a, u_input.a), false), -964f, 1u, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(61205u, 48440u, 26909u, 116250u), vec4<u32>(223u, 1u, 29667u, 36783u))), 0u) | _wgslsmith_clamp_vec2_u32(~vec2<u32>(30481u, 0u), ~vec2<u32>(0u, 41232u), _wgslsmith_mod_vec2_u32(func_2(519u, vec3<u32>(0u, 84685u, 39605u), 1u, false), vec2<u32>(48463u, 4294967295u))));
    var var_2 = Struct_1(firstTrailingBit(var_0.yy), reverseBits(abs(_wgslsmith_sub_vec2_i32(reverseBits(var_0.zy), var_0.xy))), abs(reverseBits(min(~vec3<u32>(4294967295u, 35789u, 0u), ~vec3<u32>(0u, var_1.x, 4294967295u)))));
    let var_3 = Struct_2(0u, Struct_1(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(-u_input.a, var_0.x, var_0.x)), var_0.xx, abs(var_2.c)), countOneBits((select(vec2<i32>(var_0.x, 29241i), vec2<i32>(var_0.x, var_0.x), false) | firstTrailingBit(var_2.a)) | vec2<i32>(~2147483647i, -var_0.x)), true);
    var_1 = _wgslsmith_clamp_vec2_u32(reverseBits(reverseBits(var_3.b.c.yz)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.a, ~0u), vec2<u32>(0u, ~1u))), var_3.b.c.zx);
    var var_4 = var_1.x;
    let var_5 = vec4<i32>(min(u_input.a, reverseBits(~_wgslsmith_add_i32(55337i, 1i))), var_0.x, 1i, 0i);
    let var_6 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, min(_wgslsmith_mod_u32(~1u, 1u), 4594u)), reverseBits(4294967295u), reverseBits((~vec4<u32>(var_3.b.c.x, 33460u, 0u, var_6.c.x) << ((vec4<u32>(7256u, 0u, 23825u, 62291u) & vec4<u32>(var_1.x, var_1.x, var_3.a, var_1.x)) % vec4<u32>(32u))) ^ ~(vec4<u32>(var_6.c.x, var_3.b.c.x, 80836u, 0u) << (vec4<u32>(var_6.c.x, var_3.b.c.x, 25295u, var_2.c.x) % vec4<u32>(32u)))));
}

