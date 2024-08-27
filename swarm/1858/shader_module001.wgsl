struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_1(1i, vec4<u32>(arg_1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 24185u), _wgslsmith_add_vec3_u32(arg_1, arg_1)), vec3<u32>(59771u, arg_1.x, arg_1.x << (31164u % 32u))), reverseBits(~(arg_1.x ^ 4294967295u)), max(1u, arg_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(40456u, arg_1.x, 53405u, 4294967295u), vec4<u32>(arg_1.x, 4275u, 36658u, arg_1.x)) % 32u))), 0i, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2291i, -2147483647i, 35167i, 17259i), vec4<i32>(firstLeadingBit(-1i), 2147483647i, u_input.a, -1i)) | firstLeadingBit(~countOneBits(vec4<i32>(u_input.a, -12130i, u_input.a, u_input.a))));
    var_0 = Struct_1(-18093i, firstTrailingBit(~firstTrailingBit(firstLeadingBit(var_0.b))), _wgslsmith_dot_vec3_i32(~max(vec3<i32>(46404i, 2147483647i, -1i) >> (var_0.b.xwy % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, arg_0.x, var_0.c), vec3<i32>(-1i, 2147483647i, -30569i))), firstTrailingBit(var_0.d.ywy)), vec4<i32>(_wgslsmith_clamp_i32(~1i, 2147483647i, firstLeadingBit(u_input.a)), select(firstLeadingBit(20407i), 10255i ^ min(1i, u_input.a), var_0.b.x == _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 38335u, 68266u), arg_1)), ~(~(-1i)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0.d.xx, arg_0 & vec2<i32>(43207i, u_input.a)), var_0.d.zy)));
    var_0 = Struct_1(~0i, ~(~max(firstLeadingBit(vec4<u32>(56671u, var_0.b.x, 14281u, arg_1.x)), vec4<u32>(0u, arg_1.x, 4294967295u, 11973u))), u_input.a >> (4294967295u % 32u), var_0.d);
    let var_1 = Struct_1(abs(u_input.a) & arg_0.x, _wgslsmith_mod_vec4_u32((vec4<u32>(arg_1.x, 0u, arg_1.x, 4294967295u) << (vec4<u32>(var_0.b.x, arg_1.x, arg_1.x, 1u) % vec4<u32>(32u))) ^ var_0.b, firstTrailingBit(var_0.b)) | var_0.b, countOneBits(_wgslsmith_dot_vec4_i32(~var_0.d, -vec4<i32>(var_0.a, arg_0.x, -5334i, u_input.a))) | (min(arg_0.x, u_input.a << (0u % 32u)) & -39394i), var_0.d | firstLeadingBit(_wgslsmith_mult_vec4_i32(var_0.d, var_0.d << (vec4<u32>(var_0.b.x, 1u, arg_1.x, 0u) % vec4<u32>(32u)))));
    let var_2 = Struct_1(max(-2147483647i, firstLeadingBit(var_1.a & u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, firstLeadingBit(8826u), _wgslsmith_div_u32(1u, 5128u), ~arg_1.x), reverseBits(vec4<u32>(0u, var_0.b.x, 33032u, var_1.b.x))), ~arg_1.x, arg_1.x, _wgslsmith_dot_vec3_u32(~arg_1, ~var_1.b.yzw)), firstTrailingBit(var_0.a), vec4<i32>(-firstLeadingBit(arg_0.x) ^ 5417i, abs(arg_0.x) << (35034u % 32u), firstTrailingBit(var_1.a), _wgslsmith_dot_vec3_i32(var_1.d.zzy, firstLeadingBit(var_0.d.zyy))));
    return abs(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -2147483647i, var_2.d.x), select(vec4<i32>(0i, -2147483647i, 2147483647i, var_1.d.x), var_2.d, false), vec4<i32>(var_2.a, 5785i, arg_0.x, var_0.d.x)), abs(select(var_0.d, vec4<i32>(37495i, u_input.a, 0i, 2147483647i), vec4<bool>(false, true, true, false)))), 2147483647i));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(firstTrailingBit(select(-33872i, 37104i, arg_0.x)), _wgslsmith_div_i32(6829i, _wgslsmith_clamp_i32(arg_1.a, u_input.a, -50475i)), ~_wgslsmith_dot_vec2_i32(arg_2.d.yz, arg_2.d.zx)) & _wgslsmith_dot_vec2_i32(max(func_3(vec2<i32>(u_input.a, arg_2.c), arg_2.b.yyw), vec2<i32>(19778i, arg_2.d.x)), vec2<i32>(-1i, _wgslsmith_mult_i32(-34513i, -13959i))), select(~abs(max(vec4<u32>(arg_1.b.x, 16136u, 4294967295u, 1u), vec4<u32>(arg_2.b.x, arg_1.b.x, 0u, 4294967295u))), ~arg_1.b, any(select(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(false, arg_0.x, true, arg_0.x), true), any(arg_0)))), ~_wgslsmith_mod_i32(-u_input.a, ~reverseBits(arg_2.c)), arg_1.d);
    var var_1 = arg_1;
    var_0 = arg_1;
    let var_2 = arg_0.x;
    return select(!vec2<bool>(true | any(vec2<bool>(arg_0.x, arg_0.x)), !any(vec4<bool>(true, false, false, false))), select(!vec2<bool>(true, -37574i <= var_0.a), vec2<bool>(arg_0.x, ~u_input.a > ~arg_1.c), false), arg_0.x && var_2);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_sub_vec4_i32((-firstLeadingBit(vec4<i32>(-21519i, -2147483647i, 1i, arg_0.a)) & countOneBits(-vec4<i32>(9376i, var_0.c, 2147483647i, 25902i))) >> (~(~(vec4<u32>(4294967295u, 30400u, 0u, 39119u) & vec4<u32>(arg_2.x, 0u, 31841u, arg_0.b.x))) % vec4<u32>(32u)), -(-_wgslsmith_div_vec4_i32(arg_0.d, var_0.d) >> (arg_0.b % vec4<u32>(32u))));
    let var_2 = !vec2<bool>(!all(func_2(vec2<bool>(false, true), Struct_1(arg_1.d.x, vec4<u32>(4294967295u, 0u, arg_0.b.x, 4294967295u), arg_1.d.x, vec4<i32>(-39161i, u_input.a, var_1.x, 8998i)), Struct_1(u_input.a, vec4<u32>(arg_2.x, 12412u, 51844u, arg_1.b.x), 14650i, vec4<i32>(24591i, arg_1.c, -1i, u_input.a)))), !(!(var_0.d.x >= arg_0.a)));
    var_1 = vec4<i32>(u_input.a, abs(-(0i >> (firstTrailingBit(8015u) % 32u))), var_0.c, firstLeadingBit(~arg_0.c ^ ~11236i));
    var_1 = vec4<i32>(-1i) * -arg_1.d;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(1u, select(1u, func_1(Struct_1(-1i, vec4<u32>(0u, 6938u, 1u, 49589u), 1i, vec4<i32>(20151i, u_input.a, u_input.a, u_input.a)), Struct_1(-12042i, vec4<u32>(1u, 34057u, 1047u, 11064u), u_input.a, vec4<i32>(u_input.a, -20464i, u_input.a, -1i)), vec2<u32>(4294967295u, 63973u), 807f), true), 1u, min(~8527u, _wgslsmith_div_u32(4294967295u, 4294967295u))), ~(~select(vec4<u32>(61440u, 1u, 24920u, 12620u), vec4<u32>(0u, 64966u, 58763u, 33514u), false))), select(u_input.a, select(u_input.a, 1i, true), true), (vec4<i32>(u_input.a | u_input.a, u_input.a, u_input.a, _wgslsmith_sub_i32(-1i, -23915i)) >> (vec4<u32>(1u, 9707u, 1u, ~4294967295u) % vec4<u32>(32u))) >> (~(~(~vec4<u32>(1u, 68799u, 4294967295u, 27759u))) % vec4<u32>(32u)));
    let var_1 = ~(~4294967295u);
    var var_2 = Struct_1(-(~u_input.a), firstTrailingBit(min(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_1, 19822u, 1u, 9129u)), min(vec4<u32>(var_1, 0u, 80995u, 4294967295u), vec4<u32>(var_1, var_0.b.x, var_1, 0u))), select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, var_1, 10517u, 1u), var_0.b), var_0.b ^ var_0.b, true))), _wgslsmith_div_i32(0i, 20412i), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.c, u_input.a, -2732i, var_0.a) & -_wgslsmith_sub_vec4_i32(var_0.d, vec4<i32>(24946i, u_input.a, u_input.a, -14404i)), ~var_0.d));
    let var_3 = 1974f;
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3 + -309f), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(var_2.b.x, _wgslsmith_add_u32(max(var_0.b.x, 58672u), var_0.b.x)), ~_wgslsmith_mod_u32(1u, ~34437u), ~(~countOneBits(var_0.b.x)), _wgslsmith_div_u32(~33239u ^ ~var_2.b.x, ~4294967295u)), var_1, ~1i, _wgslsmith_sub_i32(var_0.a, 2147483647i) | -u_input.a, -2147483647i);
}

