struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec2<bool> {
    let var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_sub_u32(firstLeadingBit(arg_0.x >> (u_input.a % 32u)) ^ arg_1.b.x, select(arg_0.x, _wgslsmith_div_u32(1u, arg_1.a) | _wgslsmith_clamp_u32(4294967295u, 1u, 1u), arg_2 == countOneBits(2147483647i))), _wgslsmith_sub_vec2_u32(arg_0, ~vec2<u32>(~82955u, ~arg_1.b.x)), any(!select(vec4<bool>(true, arg_1.c, arg_1.c, arg_1.c), !vec4<bool>(true, arg_1.c, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.c, true, true, false), true))));
    let var_2 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(1i, -51792i << (1u % 32u), arg_3)), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_2, var_0, -45813i) >> (vec4<u32>(var_1.b.x, arg_1.a, 0u, 6545u) % vec4<u32>(32u)), vec4<i32>(2147483647i, arg_3, -30644i, 0i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, 8718i, 8547i, arg_3), vec4<i32>(arg_3, 41600i, 0i, -2147483647i))), _wgslsmith_div_i32(arg_3, _wgslsmith_clamp_i32(arg_2 & -16812i, _wgslsmith_mult_i32(-14493i, arg_2), ~1i)), -reverseBits(_wgslsmith_add_i32(-13671i, var_0))));
    let var_3 = var_1.b.x;
    var_1 = Struct_1(abs(49374u), ~(vec2<u32>(50374u, 34175u) ^ var_1.b) ^ min(arg_0, ~vec2<u32>(arg_0.x, arg_1.a)), !(min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, var_1.b.x), vec2<u32>(1u, var_1.b.x)), _wgslsmith_mult_u32(arg_0.x, 38613u)) >= var_1.b.x));
    return vec2<bool>(any(select(select(vec3<bool>(true, var_1.c, arg_1.c), vec3<bool>(arg_1.c, var_1.c, false), select(vec3<bool>(arg_1.c, false, arg_1.c), vec3<bool>(true, true, arg_1.c), true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, arg_1.c), vec3<bool>(true, arg_1.c, true)), !(arg_1.c && var_1.c))), true);
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = select(func_3(~(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(u_input.a, u_input.a)), Struct_1(u_input.a, (vec2<u32>(6722u, 3528u) ^ vec2<u32>(u_input.a, 1u)) << (~vec2<u32>(0u, 165u) % vec2<u32>(32u)), all(vec4<bool>(true, true, true, true))), -(arg_0 << ((u_input.a << (u_input.a % 32u)) % 32u)), -34223i), func_3(vec2<u32>(reverseBits(select(u_input.a, 1u, false)), u_input.a >> (u_input.a % 32u)), Struct_1(~_wgslsmith_mult_u32(u_input.a, 0u), ~vec2<u32>(u_input.a, 0u) ^ (vec2<u32>(36160u, u_input.a) & vec2<u32>(u_input.a, 79055u)), func_3(vec2<u32>(27245u, 13138u), Struct_1(u_input.a, vec2<u32>(0u, 51098u), true), arg_0, -8847i).x && true), i32(-1i) * -13285i, _wgslsmith_clamp_i32(reverseBits(~arg_0), -arg_0, ~arg_0)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), u_input.a > 44082u)));
    let var_1 = arg_0;
    var_0 = vec2<bool>(func_3(vec2<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(4294967295u, u_input.a)), u_input.a), Struct_1(1u, abs(select(vec2<u32>(20369u, u_input.a), vec2<u32>(1u, u_input.a), vec2<bool>(true, var_0.x))), var_0.x), 1960i, -_wgslsmith_add_i32(select(1i, 49612i, false), select(-1i, arg_0, false))).x, false);
    let var_2 = Struct_1(~4436u, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, ~0u), max(~(vec2<u32>(u_input.a, 51877u) ^ vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(16820u, u_input.a)))), all(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, false, var_0.x, var_0.x), !select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true)))));
    var var_3 = !var_0.x;
    return any(!(!vec3<bool>(true, true, var_0.x)));
}

fn func_1() -> vec4<bool> {
    let var_0 = !select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec3<bool>(!func_2(60501i), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)));
    var var_1 = !var_0.zz;
    var var_2 = vec4<bool>(true, true, true, true);
    let var_3 = Struct_1(u_input.a, vec2<u32>(select(_wgslsmith_clamp_u32(4294967295u & u_input.a, ~1u, u_input.a), ~(~u_input.a), true), 40481u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 13432u, 14686u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 26145u) % vec4<u32>(32u))) % 32u)), any(select(select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_1.x)), vec3<bool>(var_1.x, true, all(var_2.zyw)), vec3<bool>(var_1.x, var_0.x, true))));
    let var_4 = var_0.xz;
    return vec4<bool>(all(select(!vec4<bool>(false, var_3.c, false, false), select(vec4<bool>(var_4.x, var_4.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_4.x, false, var_1.x), true), func_3(var_3.b, Struct_1(var_3.a, vec2<u32>(u_input.a, u_input.a), var_1.x), 2147483647i, -2147483647i).x)) & false, true, false, var_1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(~arg_1.b.x, arg_1.b, false);
    var var_1 = countOneBits((arg_0.ywz << (vec3<u32>(firstTrailingBit(var_0.b.x), ~u_input.a, ~arg_0.x) % vec3<u32>(32u))) | abs(~(~vec3<u32>(arg_1.b.x, var_0.b.x, 25541u))));
    var_1 = abs(arg_0.ywx) ^ vec3<u32>(arg_2.b.x ^ ~(~32839u), firstTrailingBit(u_input.a), abs(max(22713u, 60484u)));
    var var_2 = arg_1;
    var_1 = vec3<u32>(min(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(58549u, u_input.a, arg_0.x, 1u), vec4<u32>(0u, 0u, arg_1.a, var_0.a), vec4<u32>(0u, arg_0.x, 1u, arg_0.x)), ~vec4<u32>(arg_1.b.x, 1u, 0u, arg_0.x)), ~(~arg_0.x)), firstLeadingBit(max(_wgslsmith_dot_vec3_u32(arg_0.zyw, arg_0.wyz), var_0.b.x)), u_input.a);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 5564i;
    var var_1 = func_4(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(11928u, u_input.a, u_input.a, 23670u) & vec4<u32>(26131u, 13541u, 41040u, 10799u), vec4<u32>(1u, 1u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) % vec4<u32>(32u))), ~firstTrailingBit(vec4<u32>(u_input.a, 54871u, u_input.a, 15822u)), func_1()), Struct_1(u_input.a, ~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.a)), true), Struct_1(0u, firstLeadingBit(vec2<u32>(4294967295u, u_input.a)), false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1676f * _wgslsmith_f_op_f32(floor(-701f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(849f)) * -1638f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(firstTrailingBit(-13967i) << (~u_input.a % 32u), firstLeadingBit(1i), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(31982i, -10547i, -19306i, 31087i), vec4<i32>(-1i, -34839i, 1i, 13792i)), min(-12917i, 35230i)), reverseBits(i32(-1i) * -2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-46866i, 0i, 1i) >> (vec3<u32>(1u, var_1.a, 19052u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -20485i, 49068i), vec3<i32>(1i, -1i, 18096i)), var_1.c), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-6424i, -23535i, -65931i))), 1i, -firstLeadingBit(~24086i)));
}

