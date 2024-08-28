struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_4(Struct_1(min(~(vec3<i32>(u_input.c.x, 0i, 2147483647i) & vec3<i32>(u_input.b.x, u_input.c.x, -2147483647i)), vec3<i32>(u_input.c.x & -2147483647i, ~1i, _wgslsmith_sub_i32(u_input.c.x, 1i))), abs(1u), vec3<u32>(_wgslsmith_mult_u32(abs(0u), 1u), 40541u ^ _wgslsmith_clamp_u32(49373u, 0u, 49030u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18615u, 0u), vec2<u32>(72988u, 54391u)), _wgslsmith_div_u32(31206u, 1u))), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, firstTrailingBit(4294967295u)), vec2<u32>(~1u, firstTrailingBit(44703u)))));
    var var_1 = ~(abs(vec4<u32>(35655u, 4294967295u, 23970u, 1u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(37856u, var_0.a.b, var_0.a.c.x, var_0.a.c.x), vec4<u32>(0u, 10979u, var_0.a.d.x, 4294967295u)) % vec4<u32>(32u))) ^ countOneBits(firstTrailingBit(vec4<u32>(var_0.a.b, var_0.a.d.x, 95195u, 0u)) << (abs(vec4<u32>(0u, 32178u, var_0.a.b, 10380u)) % vec4<u32>(32u))));
    var var_2 = any(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)));
    return firstLeadingBit(firstLeadingBit(select(min(var_1.yyy, vec3<u32>(37042u, 43037u, var_1.x)), vec3<u32>(var_1.x, var_0.a.d.x, 1u), vec3<bool>(true, true, true)))) >> (~_wgslsmith_div_vec3_u32(var_0.a.c, ~select(var_1.yxz, var_1.wwx, vec3<bool>(false, false, false))) % vec3<u32>(32u));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    let var_0 = Struct_4(Struct_1(u_input.c, _wgslsmith_clamp_u32(1u, 4294967295u, reverseBits(1u)), max(~vec3<u32>(0u, 0u, 4294967295u), abs(func_3())), abs(vec2<u32>(1u >> (1u % 32u), 1u))));
    global0 = ~min(0i, _wgslsmith_sub_i32(var_0.a.a.x, ~1i) | (i32(-1i) * -1i));
    var var_1 = Struct_1(var_0.a.a, _wgslsmith_clamp_u32(18081u, 38081u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, var_0.a.c.x) | _wgslsmith_clamp_u32(var_0.a.d.x, var_0.a.c.x, var_0.a.d.x), _wgslsmith_mod_u32(92984u, var_0.a.c.x))), vec3<u32>(1462u, 71301u, _wgslsmith_add_u32(reverseBits(4294967295u), var_0.a.d.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.d.x, var_0.a.b), select(vec2<u32>(5376u, 1u), var_0.a.d, vec2<bool>(arg_0, true)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.a.b, var_0.a.b), max(var_0.a.c.x, 1u)), ~select(vec2<u32>(var_0.a.d.x, 4294967295u), var_0.a.d, arg_0)), _wgslsmith_div_u32(var_0.a.d.x, 29638u) >> ((0u ^ ~var_0.a.c.x) % 32u)));
    var var_2 = !select(vec4<bool>(false, true, arg_0, arg_0), select(select(select(vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, true, true, false), vec4<bool>(false, arg_0, false, arg_0)), vec4<bool>(arg_0, true, arg_0, true), false), vec4<bool>(true, arg_0, true, any(vec2<bool>(arg_0, arg_0))), false), vec4<bool>(true, any(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), vec2<bool>(false, arg_0))), all(!vec2<bool>(arg_0, arg_0)), all(!vec2<bool>(arg_0, arg_0))));
    var var_3 = false;
    return var_0.a.a.yy;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    global0 = ~arg_0;
    let var_0 = func_2(true);
    let var_1 = Struct_4(Struct_1(vec3<i32>(firstTrailingBit(-12257i), var_0.x, -u_input.c.x), ~4294967295u, vec3<u32>(_wgslsmith_clamp_u32(~0u, ~1u, ~4294967295u), 1u, ~_wgslsmith_clamp_u32(55959u, 19739u, 6597u)), vec2<u32>(~1u, reverseBits(1u))));
    global0 = abs(var_1.a.a.x);
    let var_2 = vec3<bool>(true, true, any(vec3<bool>(true, true, any(vec2<bool>(true, true)))));
    return 10968u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = vec3<u32>(1u, _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_sub_u32(func_1(u_input.b.x, Struct_2(u_input.b.x, vec2<i32>(-9120i, 1625i), u_input.c.zz)), func_3().x)), 1u), ~1u);
    global0 = -((~var_0 ^ var_0) | ~u_input.b.x);
    var var_2 = Struct_5(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(var_1.x, var_1.x)), Struct_2(_wgslsmith_dot_vec3_i32(~u_input.b & vec3<i32>(u_input.d, var_0, 16360i), u_input.c), min(min(abs(vec2<i32>(var_0, var_0)), vec2<i32>(-1i, 0i)), u_input.b.zx), func_2(false)), _wgslsmith_div_u32(var_1.x & _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(var_1.x, 89756u)), ~(~var_1.x)), abs(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 4294967295u) >> (var_1.yx % vec2<u32>(32u)), abs(var_1.xz)))), Struct_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-25824i, -7437i), 28385i), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.b.xz), -vec2<i32>(-37398i, u_input.d)), vec2<i32>(-2147483647i, u_input.c.x) ^ u_input.b.yz), u_input.c.yz));
    var_2 = Struct_5(18805u, Struct_2(~countOneBits(2147483647i), u_input.c.yz, firstTrailingBit(vec2<i32>(-13008i, var_0 << (0u % 32u)))), var_2.c >> (~14221u % 32u), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_1.x), var_2.d >> (~vec2<u32>(var_1.x, 11106u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(func_3().yy, ~countOneBits(vec2<u32>(var_2.d.x, 46333u)))), Struct_2(-firstTrailingBit(u_input.b.x) << ((max(12892u, var_2.a) ^ var_1.x) % 32u), -(vec2<i32>(-1i) * -var_2.e.b), reverseBits(vec2<i32>(abs(1i), i32(-1i) * -46463i))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0, 5477i, 0i), -vec4<i32>(78938i, u_input.c.x, 28298i, u_input.b.x)), 0i), vec4<u32>(var_1.x, var_2.c, 0u, var_2.d.x), -244f, 0u);
}

