struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, _wgslsmith_clamp_u32(arg_3.d.b, arg_0.a, 0u)) << (vec2<u32>(~arg_2.b, min(0u, arg_0.b)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, arg_0.b) >> (vec2<u32>(0u, arg_3.d.b) % vec2<u32>(32u)), abs(vec2<u32>(1u, u_input.a))) | _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 27625u), vec2<u32>(4294967295u, 38670u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a, u_input.a), vec2<u32>(4294967295u, 117151u)))), firstLeadingBit(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(8854u, arg_2.a), vec2<u32>(arg_2.b, 13483u)), vec2<u32>(4294967295u, 52680u) << (vec2<u32>(arg_3.d.b, arg_0.b) % vec2<u32>(32u)))), ~(~(~vec2<u32>(arg_2.b, u_input.a))) & vec2<u32>(0u, ~max(32629u, 1u)));
    global0 = ~arg_3.d.b;
    global0 = arg_0.a;
    let var_1 = arg_2;
    let var_2 = Struct_1(abs(47997u & var_1.a), u_input.a);
    return _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(-79205i), _wgslsmith_mult_i32(arg_1.x, arg_3.a.x), abs(arg_1.x)), arg_3.a.yxy);
}

fn func_2() -> Struct_1 {
    var var_0 = (vec3<i32>(~1i, 2147483647i, u_input.b) & (-func_3(Struct_1(u_input.a, u_input.a), vec4<i32>(u_input.b, 16652i, u_input.b, u_input.b), Struct_1(24564u, u_input.a), Struct_2(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), -42078i, Struct_1(u_input.a, u_input.a), Struct_1(u_input.a, 1u))) >> (vec3<u32>(_wgslsmith_sub_u32(1u, u_input.a), 8054u << (u_input.a % 32u), u_input.a) % vec3<u32>(32u)))) >> (~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 96426u, 4294967295u), reverseBits(abs(vec3<u32>(0u, u_input.a, u_input.a)))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, u_input.a, u_input.a)), ~u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(88493u, 54944u, u_input.a), firstTrailingBit(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    var_0 = vec3<i32>(_wgslsmith_div_i32(~abs(var_0.x), -1i), func_3(Struct_1(4294967295u, u_input.a >> (_wgslsmith_sub_u32(var_1.x, 94999u) % 32u)), vec4<i32>(u_input.b, min(-2147483647i, u_input.b), _wgslsmith_mod_i32(0i, var_0.x), _wgslsmith_mult_i32(u_input.b, var_0.x)) >> (~vec4<u32>(70225u, var_1.x, u_input.a, u_input.a) % vec4<u32>(32u)), Struct_1(u_input.a, countOneBits(13048u >> (var_1.x % 32u))), Struct_2(-(vec4<i32>(var_0.x, var_0.x, -1i, var_0.x) ^ vec4<i32>(-7594i, 6955i, var_0.x, -34041i)), u_input.b, Struct_1(_wgslsmith_clamp_u32(var_1.x, 1u, 4294967295u), ~6920u), Struct_1(18784u, ~var_1.x))).x, 31829i);
    var_0 = max(~select(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, u_input.b, -63184i), -vec3<i32>(u_input.b, 21582i, -33655i)), vec3<i32>(-26496i, ~0i, ~(-42665i)), any(vec2<bool>(false, true))), vec3<i32>(-abs(8048i), _wgslsmith_div_i32(-20590i, -1i), var_0.x));
    let var_2 = !vec3<bool>(all(vec3<bool>(true, true, true)), true, true);
    return Struct_1(20998u, min(1u, abs(_wgslsmith_div_u32(var_1.x, var_1.x))) >> (var_1.x % 32u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = max(_wgslsmith_add_u32(~(min(1u, arg_1.x) ^ max(arg_3.a, u_input.a)), _wgslsmith_sub_u32(19555u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(u_input.a, u_input.a)), 1u))), func_2().a);
    let var_0 = Struct_2(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i) << (vec4<u32>(_wgslsmith_mod_u32(u_input.a, 64035u), 1u ^ u_input.a, u_input.a << (24278u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_3.b), vec2<u32>(79686u, 44971u))) % vec4<u32>(32u)), abs(select(min(vec4<i32>(u_input.b, 0i, u_input.b, 2147483647i), vec4<i32>(-1i, 0i, -1i, -28374i)), vec4<i32>(-6080i, u_input.b, u_input.b, u_input.b), true))), ~_wgslsmith_mult_i32(min(-u_input.b, firstLeadingBit(4603i)), u_input.b), arg_3, arg_3);
    let var_1 = var_0;
    global0 = u_input.a;
    let var_2 = Struct_2(var_0.a, ~var_1.b, Struct_1(abs(~arg_1.x | var_0.d.a), arg_1.x), var_0.c);
    return _wgslsmith_add_i32(~(_wgslsmith_dot_vec4_i32(~var_0.a, -var_0.a) >> (u_input.a % 32u)), 28417i);
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.b << (u_input.a % 32u), -u_input.b, u_input.b, u_input.b)), vec4<i32>(func_4(vec3<bool>(true, false, true), vec4<u32>(47042u, u_input.a, u_input.a, 7715u), 384f, func_2()), ~(-49394i), _wgslsmith_mod_i32(-u_input.b, firstLeadingBit(u_input.b)), 1i), vec4<i32>(~u_input.b, ~u_input.b, u_input.b, i32(-1i) * -u_input.b)), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(27820u, u_input.a, 12815u) % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-2147483647i, u_input.b, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)))), Struct_1(19354u, u_input.a), Struct_1(func_2().b, ~u_input.a));
    var_0 = Struct_2(vec4<i32>(-4356i, -select(u_input.b, -1i, true), 1i, var_0.a.x), _wgslsmith_mod_i32(~abs(max(u_input.b, -17529i)), ~(~u_input.b)), var_0.c, var_0.c);
    let var_1 = var_0.c;
    let var_2 = Struct_2(-(~vec4<i32>(31388i, 12310i, var_0.b, var_0.a.x)) & var_0.a, 2147483647i, func_2(), var_0.c);
    var var_3 = vec4<u32>(0u, ~var_0.d.b, ~1u, ~(~var_0.c.b));
    return vec4<i32>(var_0.a.x, -firstLeadingBit(func_3(var_0.c, select(var_0.a, vec4<i32>(2147483647i, u_input.b, var_0.a.x, var_2.a.x), true), var_2.c, Struct_2(var_2.a, -26706i, var_2.d, var_0.c)).x), _wgslsmith_mod_i32(countOneBits(22520i), countOneBits(var_0.a.x)), ~(1i | ~var_0.b) & -firstLeadingBit(-346i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = Struct_2(func_1(), ~u_input.b, Struct_1(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.a, u_input.a, 57608u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~(~u_input.a) << (reverseBits(817u) % 32u)), func_2());
    let var_1 = var_0;
    let var_2 = ~(vec3<u32>(reverseBits(~var_0.c.a), ~1549u & ~var_1.c.a, firstLeadingBit(u_input.a) >> (_wgslsmith_sub_u32(78246u, u_input.a) % 32u)) >> (~(vec3<u32>(var_1.c.a, u_input.a, var_1.c.b) ^ ~vec3<u32>(var_1.c.a, var_0.c.a, 1291u)) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2118f))))))));
    var var_4 = u_input.a;
    let var_5 = var_1.c.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~var_0.c.b, ~4294967295u), u_input.a, _wgslsmith_add_u32(var_2.x, ~var_0.d.a)), ~vec3<u32>(firstLeadingBit(var_2.x), _wgslsmith_div_u32(84711u, var_2.x), 32053u));
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 30889u, var_2.x), vec3<u32>(4294967295u, var_2.x, var_1.c.a)), vec3<u32>(var_0.d.b, var_2.x, ~_wgslsmith_mult_u32(var_1.c.b, 67794u))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_3, vec2<f32>(_wgslsmith_f_op_f32(var_3 + var_3), 141f));
}

