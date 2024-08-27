struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(1u, -vec2<i32>(-arg_0 >> (_wgslsmith_sub_u32(4294967295u, u_input.b) % 32u), 1i), select(true, true, true) != false, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false))), arg_0);
    let var_1 = var_0;
    let var_2 = select(vec2<i32>(var_1.e, _wgslsmith_mod_i32(-u_input.c, 1i)), var_1.b, var_1.d);
    var var_3 = select(vec3<u32>(~_wgslsmith_mult_u32(16604u, _wgslsmith_dot_vec3_u32(vec3<u32>(30484u, u_input.b, var_1.a), vec3<u32>(var_0.a, var_0.a, var_1.a))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(74093u, var_1.a, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(7811u, var_1.a, u_input.a), vec3<u32>(var_0.a, 57616u, var_0.a)), ~vec3<u32>(1u, u_input.b, 4294967295u))), var_1.a), ~(vec3<u32>(0u, var_1.a, 1u) & _wgslsmith_sub_vec3_u32(~vec3<u32>(27753u, var_1.a, 1u), firstTrailingBit(vec3<u32>(var_1.a, 2515u, 9272u)))), select(select(select(vec3<bool>(false, var_1.c, true), !vec3<bool>(var_0.c, true, var_1.c), 1u <= var_0.a), vec3<bool>(false, true, true), select(vec3<bool>(var_1.d, var_1.c, true), select(vec3<bool>(var_1.c, true, true), vec3<bool>(false, true, true), var_0.d), any(vec2<bool>(var_0.c, true)))), select(!vec3<bool>(true, var_0.d, true), select(vec3<bool>(true, var_0.d, var_1.d), select(vec3<bool>(false, var_0.c, true), vec3<bool>(var_1.d, true, var_0.c), var_0.d), select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(var_0.c, var_0.d, var_0.d), true)), var_0.c), !all(vec3<bool>(var_0.d, false, var_0.c))));
    var_3 = ~vec3<u32>(abs(1u), u_input.a, ~var_3.x);
    return var_1.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> vec2<u32> {
    let var_0 = vec2<f32>(arg_2, arg_2);
    var var_1 = Struct_2(Struct_1(u_input.a, -select(~vec2<i32>(u_input.c, u_input.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(0i, 2147483647i), vec2<i32>(-2223i, u_input.c)), select(vec2<bool>(true, true), arg_0.yz, false)), all(arg_0), all(!vec4<bool>(arg_3, false, true, true)), 1i));
    var_1 = Struct_2(Struct_1(func_3(i32(-1i) * -15618i), var_1.a.b, false, arg_3, u_input.c));
    let var_2 = Struct_1(11291u << (arg_1.x % 32u), var_1.a.b, var_1.a.d, true, -var_1.a.b.x);
    var var_3 = 4294967295u;
    return select(vec2<u32>(arg_1.x, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a, var_2.a, var_1.a.a), vec4<u32>(var_1.a.a, var_2.a, arg_1.x, var_2.a)), ~var_2.a), arg_1.x)), arg_1, false);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    return arg_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = select(!(!vec2<bool>(0u != u_input.a, arg_0.x && arg_0.x)), arg_0.yx, arg_2.a.c);
    var var_1 = vec3<bool>((-(~(-1i)) > arg_2.a.e) && (_wgslsmith_f_op_f32(select(-888f, _wgslsmith_f_op_f32(-1428f * -883f), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))) != -1000f), true, true | var_0.x);
    let var_2 = ~(~(~(~select(vec4<u32>(52800u, 0u, arg_2.a.a, arg_1.x), vec4<u32>(97853u, u_input.a, arg_1.x, arg_2.a.a), true))));
    let var_3 = !(!vec4<bool>(any(select(vec4<bool>(false, false, var_1.x, arg_0.x), vec4<bool>(var_1.x, true, false, arg_2.a.d), vec4<bool>(arg_0.x, var_1.x, false, false))), select(false, true, !arg_0.x), ~arg_2.a.a < _wgslsmith_mod_u32(u_input.a, 7172u), select(all(arg_0), true, arg_2.a.d)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f))))) - 2084f);
    return ~(reverseBits(arg_2.a.b) ^ arg_2.a.b);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = Struct_1(1u, func_5(vec3<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), true), abs(firstLeadingBit(vec2<u32>(arg_0, arg_0) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)))), func_4(Struct_1(~16779u, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(u_input.c, 19373i)), any(vec4<bool>(true, false, true, true)), true, ~(-14815i)), ~vec2<u32>(arg_0, 4294967295u) | func_2(vec4<bool>(false, false, false, false), vec2<u32>(18740u, 39656u), 1248f, false), Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.c, -15478i), false, true, u_input.c)), Struct_1(441u, vec2<i32>(u_input.c, u_input.c), true, true, 0i))), !(!(!all(vec2<bool>(true, true)))), !(!any(vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(24198i, ~max(_wgslsmith_dot_vec2_i32(vec2<i32>(-11633i, u_input.c), vec2<i32>(-18119i, u_input.c)), _wgslsmith_div_i32(5532i, 28620i))));
    var var_1 = Struct_2(func_4(Struct_1(u_input.a, -vec2<i32>(var_0.e, var_0.b.x), var_0.d, var_0.d | var_0.c, 1i), select(vec2<u32>(var_0.a, 1u) >> (vec2<u32>(arg_0, 52989u) % vec2<u32>(32u)), abs(vec2<u32>(21539u, 66928u)), !vec2<bool>(false, var_0.c)) | _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 41436u), vec2<u32>(14063u, 41154u), vec2<u32>(var_0.a, u_input.a)), ~vec2<u32>(var_0.a, 20115u)), func_4(func_4(Struct_1(u_input.a, var_0.b, false, var_0.c, var_0.e), vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(arg_0, var_0.a) % vec2<u32>(32u)), Struct_2(var_0), func_4(var_0, vec2<u32>(44902u, u_input.b), Struct_2(var_0), Struct_1(3467u, vec2<i32>(0i, 1i), true, var_0.d, -46053i)).a).a, vec2<u32>(arg_0, ~0u), Struct_2(func_4(var_0, vec2<u32>(1u, arg_0), Struct_2(var_0), var_0).a), var_0), var_0).a);
    let var_2 = func_4(Struct_1(_wgslsmith_mult_u32(var_1.a.a, ~(~u_input.b)), vec2<i32>(_wgslsmith_clamp_i32(u_input.c, select(-2412i, var_1.a.b.x, true), 1i), ~var_0.e), false, 9972u != reverseBits(u_input.a), ~var_0.b.x), firstLeadingBit(firstTrailingBit(~func_2(vec4<bool>(var_0.c, var_0.d, false, var_0.d), vec2<u32>(0u, 4294967295u), 1633f, var_1.a.d))), func_4(var_0, ~(~vec2<u32>(var_1.a.a, arg_0)) | _wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, 30875u), vec2<u32>(4294967295u, 43196u), true), vec2<u32>(1u, var_1.a.a)), func_4(Struct_1(reverseBits(arg_0), ~var_1.a.b, all(vec3<bool>(var_1.a.c, true, true)), all(vec3<bool>(false, var_1.a.c, false)), func_5(vec3<bool>(var_1.a.c, var_1.a.d, var_0.c), vec2<u32>(0u, var_1.a.a), Struct_2(var_1.a)).x), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, var_1.a.a), vec2<u32>(u_input.b, arg_0)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.a, 11429u), vec2<u32>(var_1.a.a, 66187u)), Struct_2(Struct_1(arg_0, var_1.a.b, false, var_0.c, -60245i)), var_1.a), func_4(func_4(var_0, _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.a, arg_0), vec2<u32>(var_0.a, 12282u)), Struct_2(var_0), Struct_1(39654u, var_1.a.b, var_1.a.d, true, -96088i)).a, vec2<u32>(var_1.a.a, arg_0) & ~vec2<u32>(0u, arg_0), Struct_2(func_4(Struct_1(var_0.a, var_1.a.b, false, var_1.a.d, 2147483647i), vec2<u32>(u_input.a, arg_0), Struct_2(var_0), Struct_1(var_0.a, var_0.b, var_0.c, false, 2147483647i)).a), func_4(func_4(var_0, vec2<u32>(1u, arg_0), Struct_2(Struct_1(var_0.a, vec2<i32>(-2147483647i, u_input.c), var_1.a.d, var_0.d, 0i)), Struct_1(var_1.a.a, var_0.b, false, true, 1i)).a, vec2<u32>(var_1.a.a, 111810u) ^ vec2<u32>(var_1.a.a, var_1.a.a), Struct_2(var_0), Struct_1(u_input.b, var_1.a.b, true, var_1.a.d, 35712i)).a).a), func_4(var_0, countOneBits(~countOneBits(vec2<u32>(var_0.a, 51598u))), func_4(Struct_1(~1821u, _wgslsmith_mult_vec2_i32(var_1.a.b, var_1.a.b), true, all(vec4<bool>(var_0.c, false, true, var_1.a.c)), i32(-1i) * -2300i), abs(vec2<u32>(51368u, var_1.a.a) & vec2<u32>(44791u, 4294967295u)), Struct_2(Struct_1(62052u, vec2<i32>(46037i, 1i), false, var_0.c, u_input.c)), Struct_1(func_3(1i), vec2<i32>(-15114i, u_input.c) >> (vec2<u32>(1u, arg_0) % vec2<u32>(32u)), false, true && var_0.d, 1i)), func_4(var_1.a, func_2(!vec4<bool>(var_0.c, var_0.d, var_0.c, false), vec2<u32>(var_0.a, arg_0), _wgslsmith_f_op_f32(237f - 1000f), any(vec4<bool>(false, var_0.d, true, false))), Struct_2(var_0), Struct_1(var_0.a, abs(vec2<i32>(66826i, 0i)), true, !var_0.d, ~var_1.a.e)).a).a);
    let var_3 = -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-(~vec4<i32>(u_input.c, var_1.a.e, 2147483647i, 70488i)), vec4<i32>(i32(-1i) * -1i, var_1.a.e, var_0.e, -27210i)), firstTrailingBit(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, var_0.b.x, var_0.b.x, 2147483647i), vec4<i32>(u_input.c, 11165i, var_1.a.b.x, u_input.c)))));
    let var_4 = func_4(func_4(var_0, ~vec2<u32>(~arg_0, 0u), Struct_2(func_4(func_4(var_2.a, vec2<u32>(var_2.a.a, var_1.a.a), var_2, Struct_1(var_0.a, var_2.a.b, true, false, -2147483647i)).a, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 32618u), vec2<u32>(40718u, 4294967295u), vec2<u32>(13016u, 9221u)), var_2, Struct_1(1u, vec2<i32>(-21947i, -39482i), var_2.a.d, var_1.a.c, var_1.a.e)).a), var_0).a, func_2(!select(!vec4<bool>(var_2.a.c, true, var_0.d, false), vec4<bool>(false, var_2.a.d, var_1.a.c, true), var_2.a.c), vec2<u32>(63065u, _wgslsmith_dot_vec2_u32(vec2<u32>(8955u, var_1.a.a) << (vec2<u32>(62880u, var_0.a) % vec2<u32>(32u)), vec2<u32>(39408u, 14455u))), 1501f, all(vec2<bool>(var_2.a.c, true))), var_2, Struct_1(countOneBits(u_input.a), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, 1i, -1i), var_3), abs(func_5(vec3<bool>(false, true, var_1.a.d), vec2<u32>(var_0.a, var_2.a.a), var_2).x)), true, true, func_5(!select(vec3<bool>(var_1.a.c, var_0.c, var_1.a.c), vec3<bool>(var_0.c, true, true), vec3<bool>(false, true, var_1.a.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.a, var_1.a.a) ^ vec2<u32>(var_2.a.a, u_input.a), ~vec2<u32>(var_2.a.a, arg_0)), Struct_2(Struct_1(u_input.b, var_2.a.b, var_0.c, true, -2147483647i))).x)).a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(430f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(_wgslsmith_f_op_f32(round(-440f)) <= _wgslsmith_f_op_f32(f32(-1f) * -987f), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(func_1(u_input.a)), true));
    var_0 = false;
    var var_1 = _wgslsmith_add_vec2_u32(abs(~vec2<u32>(u_input.a, ~7930u)), ~vec2<u32>(21694u, _wgslsmith_div_u32(~1u, 47114u)));
    var var_2 = ~select(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.c, u_input.c) << (vec4<u32>(var_1.x, u_input.b, u_input.b, var_1.x) % vec4<u32>(32u)), vec4<i32>(u_input.c, 0i, 1i, -35246i)), -min(vec4<i32>(1014i, 7894i, 72609i, 1i), vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c))), vec4<i32>(min(u_input.c ^ -72696i, 1i), u_input.c, u_input.c, ~u_input.c), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_3 = func_4(func_4(func_4(Struct_1(~u_input.b, min(vec2<i32>(var_2.x, -859i), vec2<i32>(55269i, 0i)), func_4(Struct_1(0u, var_2.xy, false, false, -47943i), vec2<u32>(4294967295u, u_input.a), Struct_2(Struct_1(var_1.x, vec2<i32>(var_2.x, u_input.c), false, true, -37434i)), Struct_1(7056u, vec2<i32>(-62426i, var_2.x), true, true, u_input.c)).a.d, true, -var_2.x), firstLeadingBit(abs(vec2<u32>(50549u, 0u))), func_4(func_4(Struct_1(u_input.b, vec2<i32>(0i, var_2.x), true, true, 31187i), vec2<u32>(9753u, var_1.x), Struct_2(Struct_1(1u, vec2<i32>(0i, var_2.x), false, false, u_input.c)), Struct_1(u_input.a, vec2<i32>(-2147483647i, -2593i), true, false, -31793i)).a, ~vec2<u32>(var_1.x, u_input.a), Struct_2(Struct_1(u_input.b, vec2<i32>(0i, u_input.c), false, true, var_2.x)), func_4(Struct_1(var_1.x, var_2.xw, true, true, u_input.c), vec2<u32>(4294967295u, u_input.a), Struct_2(Struct_1(17686u, var_2.zw, false, true, 1i)), Struct_1(4294967295u, vec2<i32>(u_input.c, u_input.c), false, false, 43663i)).a), func_4(Struct_1(2279u, var_2.zy, true, true, 2147483647i), vec2<u32>(u_input.a, var_1.x) | vec2<u32>(1u, 0u), Struct_2(Struct_1(8734u, var_2.xw, false, false, 28628i)), func_4(Struct_1(4294967295u, vec2<i32>(8737i, var_2.x), false, false, 0i), vec2<u32>(u_input.a, u_input.a), Struct_2(Struct_1(4294967295u, var_2.xx, false, true, -1i)), Struct_1(39655u, vec2<i32>(u_input.c, 1i), false, false, var_2.x)).a).a).a, _wgslsmith_mod_vec2_u32(select(~vec2<u32>(var_1.x, 27091u), vec2<u32>(0u, var_1.x), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<u32>(max(var_1.x, 1u), 24440u)), Struct_2(func_4(Struct_1(u_input.b, var_2.xw, false, false, -2147483647i), _wgslsmith_mod_vec2_u32(vec2<u32>(31825u, var_1.x), vec2<u32>(var_1.x, 4294967295u)), Struct_2(Struct_1(4294967295u, var_2.xx, true, false, -43693i)), Struct_1(22138u, vec2<i32>(2147483647i, 46669i), false, false, 2147483647i)).a), func_4(Struct_1(var_1.x, vec2<i32>(0i, 22389i), true, true, i32(-1i) * -37055i), ~vec2<u32>(32369u, 4294967295u) >> (reverseBits(vec2<u32>(55639u, var_1.x)) % vec2<u32>(32u)), func_4(func_4(Struct_1(4294967295u, var_2.ww, true, false, 34787i), vec2<u32>(1u, 72244u), Struct_2(Struct_1(4294967295u, var_2.xw, false, true, u_input.c)), Struct_1(8722u, var_2.xx, false, true, var_2.x)).a, vec2<u32>(var_1.x, 55771u), Struct_2(Struct_1(var_1.x, vec2<i32>(-2147483647i, -53550i), false, true, var_2.x)), Struct_1(70159u, vec2<i32>(10174i, 16191i), false, false, 18551i)), Struct_1(firstLeadingBit(48393u), vec2<i32>(var_2.x, var_2.x), any(vec3<bool>(false, true, false)), true, u_input.c)).a).a, firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, var_1.x) ^ vec2<u32>(var_1.x, u_input.b), vec2<u32>(1u, var_1.x))) ^ reverseBits(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u))), func_4(Struct_1(countOneBits(abs(43082u)), (var_2.wy ^ vec2<i32>(var_2.x, u_input.c)) | var_2.xy, true, all(vec2<bool>(true, true)), _wgslsmith_mult_i32(firstLeadingBit(43045i), -26529i)), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_1.x) ^ vec2<u32>(1u, 0u), vec2<u32>(var_1.x, var_1.x))), func_4(func_4(func_4(Struct_1(var_1.x, var_2.yw, true, false, -2147483647i), vec2<u32>(1u, u_input.b), Struct_2(Struct_1(u_input.b, vec2<i32>(u_input.c, var_2.x), true, false, var_2.x)), Struct_1(1u, var_2.zy, true, true, -1i)).a, select(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 40957u), vec2<bool>(false, false)), func_4(Struct_1(42971u, var_2.xw, false, false, -2147483647i), vec2<u32>(0u, u_input.a), Struct_2(Struct_1(var_1.x, vec2<i32>(var_2.x, var_2.x), false, true, -1i)), Struct_1(var_1.x, var_2.ww, true, false, -19007i)), func_4(Struct_1(var_1.x, vec2<i32>(49980i, -2147483647i), false, true, u_input.c), vec2<u32>(50512u, u_input.a), Struct_2(Struct_1(var_1.x, vec2<i32>(-1i, var_2.x), false, false, var_2.x)), Struct_1(var_1.x, vec2<i32>(var_2.x, u_input.c), true, true, 25633i)).a).a, max(vec2<u32>(u_input.b, var_1.x), abs(vec2<u32>(1u, u_input.a))), func_4(func_4(Struct_1(1u, vec2<i32>(u_input.c, var_2.x), true, false, 62821i), vec2<u32>(109120u, var_1.x), Struct_2(Struct_1(0u, vec2<i32>(-1i, var_2.x), true, true, u_input.c)), Struct_1(40622u, var_2.wy, false, true, var_2.x)).a, vec2<u32>(10896u, 39840u), Struct_2(Struct_1(var_1.x, vec2<i32>(u_input.c, u_input.c), true, true, var_2.x)), func_4(Struct_1(76634u, var_2.yx, true, false, 9118i), vec2<u32>(0u, 1u), Struct_2(Struct_1(u_input.b, vec2<i32>(-31656i, 8181i), true, false, u_input.c)), Struct_1(var_1.x, vec2<i32>(u_input.c, 1i), false, true, -1i)).a), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 8744u), vec3<u32>(var_1.x, 36315u, 10342u)), func_4(Struct_1(var_1.x, vec2<i32>(0i, var_2.x), true, true, -17636i), vec2<u32>(4294967295u, u_input.b), Struct_2(Struct_1(6176u, var_2.yw, true, false, var_2.x)), Struct_1(var_1.x, var_2.zz, true, true, var_2.x)).a.b, false, any(vec3<bool>(true, false, true)), 0i)), func_4(Struct_1(1u, vec2<i32>(-20361i, -16180i), false, all(vec3<bool>(true, false, true)), func_4(Struct_1(61946u, vec2<i32>(var_2.x, 27065i), false, true, u_input.c), vec2<u32>(118068u, var_1.x), Struct_2(Struct_1(0u, vec2<i32>(var_2.x, 1i), false, false, 15352i)), Struct_1(9703u, vec2<i32>(u_input.c, 7834i), false, false, -7670i)).a.b.x), max(vec2<u32>(0u, 23883u), vec2<u32>(36229u, 0u)) | vec2<u32>(19906u, var_1.x), Struct_2(Struct_1(0u, var_2.xz, false, true, 2147483647i)), func_4(Struct_1(u_input.a, vec2<i32>(var_2.x, var_2.x), false, false, -2147483647i), ~vec2<u32>(4111u, var_1.x), Struct_2(Struct_1(var_1.x, vec2<i32>(2147483647i, -1i), true, true, var_2.x)), Struct_1(77686u, vec2<i32>(u_input.c, var_2.x), false, true, 0i)).a).a), func_4(func_4(func_4(func_4(Struct_1(0u, var_2.yx, false, false, -1i), vec2<u32>(4294967295u, 0u), Struct_2(Struct_1(24488u, var_2.zz, true, false, 1i)), Struct_1(0u, vec2<i32>(1i, -32002i), true, true, u_input.c)).a, ~vec2<u32>(var_1.x, u_input.a), func_4(Struct_1(4294967295u, var_2.xx, false, true, -1i), vec2<u32>(83082u, 1u), Struct_2(Struct_1(9561u, var_2.ww, true, true, -64802i)), Struct_1(var_1.x, vec2<i32>(-13975i, var_2.x), false, true, 1i)), func_4(Struct_1(81473u, vec2<i32>(0i, var_2.x), false, false, -1i), vec2<u32>(u_input.a, 1u), Struct_2(Struct_1(var_1.x, var_2.ww, false, true, 42042i)), Struct_1(var_1.x, vec2<i32>(var_2.x, -17805i), true, false, u_input.c)).a).a, vec2<u32>(reverseBits(var_1.x), var_1.x & 4294967295u), Struct_2(Struct_1(36228u, var_2.zy, false, false, u_input.c)), func_4(func_4(Struct_1(0u, vec2<i32>(2147483647i, var_2.x), true, true, -1430i), vec2<u32>(23632u, var_1.x), Struct_2(Struct_1(u_input.a, var_2.wx, true, false, -2147483647i)), Struct_1(4294967295u, vec2<i32>(-33551i, -2147483647i), false, true, 2147483647i)).a, ~vec2<u32>(30619u, var_1.x), func_4(Struct_1(1u, var_2.zw, true, false, 16104i), vec2<u32>(var_1.x, u_input.b), Struct_2(Struct_1(1u, vec2<i32>(u_input.c, var_2.x), false, false, -42598i)), Struct_1(0u, var_2.xw, false, false, var_2.x)), Struct_1(24134u, vec2<i32>(var_2.x, -1498i), false, true, 5162i)).a).a, ~(~(~vec2<u32>(u_input.b, u_input.b))), func_4(Struct_1(u_input.a << (0u % 32u), var_2.wz, any(vec2<bool>(true, true)), true, 2147483647i), vec2<u32>(~4294967295u, abs(u_input.a)), Struct_2(func_4(Struct_1(var_1.x, var_2.zz, false, false, var_2.x), vec2<u32>(var_1.x, u_input.a), Struct_2(Struct_1(u_input.a, var_2.yz, false, false, 20645i)), Struct_1(u_input.b, vec2<i32>(var_2.x, -2147483647i), true, true, -2147483647i)).a), func_4(Struct_1(u_input.b, vec2<i32>(2147483647i, 1i), true, true, 20534i), ~vec2<u32>(0u, var_1.x), Struct_2(Struct_1(var_1.x, var_2.yy, false, false, -34075i)), func_4(Struct_1(u_input.a, var_2.xz, false, false, var_2.x), vec2<u32>(u_input.b, 34044u), Struct_2(Struct_1(var_1.x, vec2<i32>(5840i, 1i), false, false, 1i)), Struct_1(u_input.b, vec2<i32>(u_input.c, var_2.x), false, false, var_2.x)).a).a), func_4(func_4(Struct_1(var_1.x, vec2<i32>(-18360i, -33423i), false, true, var_2.x), abs(vec2<u32>(10065u, 16258u)), func_4(Struct_1(var_1.x, var_2.wz, true, true, u_input.c), vec2<u32>(var_1.x, u_input.a), Struct_2(Struct_1(u_input.b, var_2.wy, true, false, u_input.c)), Struct_1(var_1.x, var_2.xx, true, false, -1i)), func_4(Struct_1(13507u, var_2.wx, true, false, u_input.c), vec2<u32>(u_input.b, var_1.x), Struct_2(Struct_1(u_input.b, vec2<i32>(137045i, 2147483647i), false, false, 5786i)), Struct_1(u_input.b, vec2<i32>(u_input.c, u_input.c), false, false, var_2.x)).a).a, firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 2028u), vec2<u32>(1u, u_input.a))), func_4(func_4(Struct_1(63546u, vec2<i32>(var_2.x, 4721i), false, false, var_2.x), vec2<u32>(0u, 43734u), Struct_2(Struct_1(10099u, var_2.zz, true, false, var_2.x)), Struct_1(var_1.x, var_2.yx, true, false, var_2.x)).a, vec2<u32>(var_1.x, u_input.a) >> (vec2<u32>(var_1.x, 75497u) % vec2<u32>(32u)), Struct_2(Struct_1(0u, vec2<i32>(u_input.c, var_2.x), false, false, 1i)), Struct_1(48338u, var_2.xz, false, false, u_input.c)), func_4(Struct_1(u_input.a, vec2<i32>(var_2.x, u_input.c), false, true, var_2.x), ~vec2<u32>(u_input.a, 2364u), Struct_2(Struct_1(u_input.a, vec2<i32>(var_2.x, 2147483647i), true, false, var_2.x)), Struct_1(12270u, vec2<i32>(-2147483647i, 0i), true, false, 0i)).a).a).a).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(abs(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(var_1.x, u_input.b), vec2<u32>(17364u, 4294967295u)))), ~vec2<u32>(_wgslsmith_clamp_u32(1u, 14027u, var_3.a), _wgslsmith_mod_u32(u_input.a, var_1.x))), _wgslsmith_mod_i32(u_input.c, abs(_wgslsmith_mod_i32(u_input.c, 2147483647i)) >> (countOneBits(_wgslsmith_add_u32(var_3.a, var_1.x)) % 32u)), vec3<u32>(select(var_3.a, u_input.b << (~var_3.a % 32u), !any(vec3<bool>(true, true, var_3.c))), ~u_input.a, 12572u), -8676i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), 922f));
}

