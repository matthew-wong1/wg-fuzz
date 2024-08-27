struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, firstLeadingBit(-1i), -2147483647i, firstLeadingBit(_wgslsmith_mod_i32(~1i, ~global1.x))), firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.c, global1.x, -34376i, global1.x)));
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-33513i, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(global1.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-33157i, u_input.a.x, arg_2), vec3<i32>(global1.x, -38994i, 2147483647i))) << ((~4294967295u & u_input.b) % 32u), _wgslsmith_sub_i32(global1.x, u_input.a.x), _wgslsmith_mult_i32(-reverseBits(u_input.a.x), -1i)), abs(reverseBits(~vec4<i32>(arg_2, global1.x, arg_2, global1.x))), _wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(0i, -33870i, global1.x, u_input.c) << (vec4<u32>(92182u, arg_1.d, arg_0.b.x, arg_1.d) % vec4<u32>(32u))), vec4<i32>(-2156i, ~(~(-30281i)), -25638i, global1.x)));
    var var_0 = Struct_2(reverseBits(vec4<u32>(_wgslsmith_mod_u32(arg_0.b.x, u_input.b), 71246u, ~0u, ~arg_1.b.x) & vec4<u32>(~75742u, arg_0.b.x, 0u, u_input.b)), _wgslsmith_dot_vec2_i32(u_input.a | _wgslsmith_add_vec2_i32(u_input.a | u_input.a, -u_input.a), _wgslsmith_add_vec2_i32(-u_input.a << (_wgslsmith_div_vec2_u32(arg_0.b, arg_0.b) % vec2<u32>(32u)), -firstLeadingBit(u_input.a))), _wgslsmith_dot_vec2_i32(vec2<i32>((arg_2 >> (arg_0.b.x % 32u)) << (1u % 32u), abs(_wgslsmith_add_i32(7795i, -391i))), max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 1i, 0i), vec3<i32>(u_input.a.x, u_input.c, 1i)), -2147483647i), _wgslsmith_add_vec2_i32(global1.xw, vec2<i32>(global1.x, global1.x)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, ~(u_input.a.x >> (arg_0.b.x % 32u)), -1i), abs(_wgslsmith_mod_vec3_i32(-vec3<i32>(global1.x, arg_2, u_input.c), -vec3<i32>(-25367i, -16420i, arg_2))), select(~countOneBits(global1.yyz), vec3<i32>(92181i, arg_2, ~global1.x), vec3<bool>(true, select(arg_0.a, global0.x, false), arg_2 != 2147483647i))));
    var var_1 = Struct_1(all(select(vec3<bool>(false, false, arg_0.c), !vec3<bool>(arg_0.c, true, false), true)) & all(vec4<bool>(true, true, arg_0.a, arg_0.a)), _wgslsmith_clamp_vec2_u32(arg_0.b, arg_1.b, vec2<u32>(~4294967295u, arg_0.d) >> (~vec2<u32>(55925u, 26194u) % vec2<u32>(32u))), all(!(!(!vec3<bool>(false, arg_1.c, arg_0.c)))), arg_0.b.x);
    var var_2 = Struct_2(~var_0.a, _wgslsmith_clamp_i32(~0i, 18891i, arg_2), max(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(global1.x ^ -28954i, -16646i | var_0.c), min(i32(-1i) * -7841i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i)))), countOneBits(var_0.d) << (firstLeadingBit(var_0.a.yww) % vec3<u32>(32u)));
    return select(vec2<u32>(1u, countOneBits(~20925u)) << (_wgslsmith_mod_vec2_u32(~(var_0.a.wy & vec2<u32>(69017u, 1u)), abs(firstTrailingBit(var_0.a.yy))) % vec2<u32>(32u)), max(var_0.a.wy, _wgslsmith_mod_vec2_u32(vec2<u32>(~var_1.b.x, var_0.a.x), arg_0.b)), all(vec3<bool>(!arg_1.a, false, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true, abs(~func_3(Struct_1(global0.x, vec2<u32>(u_input.b, 38413u), global0.x, u_input.b), Struct_1(false, vec2<u32>(0u, 23599u), false, 25953u), _wgslsmith_mod_i32(0i, 1i))), any(select(!select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, true, true, global0.x)), select(!vec4<bool>(true, true, global0.x, false), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, false, false, global0.x)), true), vec4<bool>(true, true, select(global0.x, true, false), true))), 54388u);
    var var_1 = _wgslsmith_f_op_f32(-1527f - -1144f);
    var_0 = Struct_1(true, reverseBits(_wgslsmith_mod_vec2_u32(var_0.b, var_0.b) | ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.d), vec2<u32>(u_input.b, u_input.b))), global0.x & global0.x, countOneBits(1u));
    let var_2 = vec2<i32>(abs(_wgslsmith_dot_vec3_i32(global1.wzz, vec3<i32>(~u_input.a.x, global1.x, u_input.c))), firstTrailingBit(reverseBits(~global1.x)) << ((86955u >> (min(_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b) % 32u)) % 32u));
    let var_3 = var_0.b;
    return Struct_1(var_0.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(~countOneBits(0u), var_0.b.x), ~vec2<u32>(19212u, var_3.x), var_0.b), true, var_0.d);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    var var_0 = arg_2;
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(var_0.d, func_2().b.x), 0u, ~(func_2().d >> (countOneBits(arg_1) % 32u)), ~13338u), max(~(-1i), ~_wgslsmith_mod_i32(u_input.a.x, max(43250i, -40269i))), u_input.c, countOneBits(global1.zzw));
    let var_2 = 1u;
    global1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(-3191i, var_1.d.x, 15045i, global1.x) << (var_1.a % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(~arg_0.x, -2147483647i, arg_3 ^ var_1.b, -2147483647i), vec4<i32>(-1i) * -vec4<i32>(var_1.b, u_input.c, 1i, u_input.c))), vec4<i32>(-u_input.c >> (arg_1 % 32u), _wgslsmith_sub_i32(2147483647i, u_input.c), var_1.b, abs(arg_3)) | reverseBits(vec4<i32>(select(0i, 1i, true), 12824i, 3304i, -arg_0.x)));
    var_0 = func_2();
    return vec3<bool>(true, true, true);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<u32> {
    global0 = select(!select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(!global0.x, any(vec3<bool>(global0.x, global0.x, arg_1.x)), true), select(!vec3<bool>(arg_1.x, global0.x, global0.x), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, false, arg_1.x), true), vec3<bool>(false, arg_1.x, arg_1.x))), func_4(u_input.a, ~min(6302u, ~u_input.b), func_2(), -arg_0.b >> ((u_input.b >> (4294967295u % 32u)) % 32u)), vec3<bool>(true, !(global0.x && arg_1.x), all(vec2<bool>(func_4(u_input.a, 47730u, Struct_1(arg_1.x, arg_0.a.yy, arg_1.x, 1u), u_input.c).x, false))));
    global1 = ~vec4<i32>(abs(-20040i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i ^ arg_0.d.x, _wgslsmith_mod_i32(0i, -3564i), arg_0.c, -1i), -firstTrailingBit(vec4<i32>(0i, 1i, u_input.a.x, u_input.c))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, abs(global1.x), firstLeadingBit(global1.x), u_input.c >> (u_input.b % 32u)), vec4<i32>(33318i, countOneBits(-2147483647i), u_input.a.x, global1.x)), global1.x);
    global1 = -firstLeadingBit(-vec4<i32>(global1.x, arg_0.c, u_input.a.x, arg_0.d.x) >> (vec4<u32>(_wgslsmith_mult_u32(82900u, u_input.b), u_input.b, u_input.b, 1u) % vec4<u32>(32u)));
    var var_0 = global1.x >> ((4294967295u << (u_input.b % 32u)) % 32u);
    var var_1 = func_2();
    return ~arg_0.a.ywy;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> StorageBuffer {
    global0 = !select(!vec3<bool>(true, all(vec3<bool>(false, global0.x, true)), global0.x), vec3<bool>(true, any(select(vec4<bool>(false, global0.x, true, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x)), global0.x), true);
    var var_0 = 47250u >> (~(~arg_3) % 32u);
    let var_1 = vec3<bool>(true, true, global0.x);
    let var_2 = _wgslsmith_div_i32(~(-76747i), countOneBits(i32(-1i) * -1i)) << (1u % 32u);
    let var_3 = func_2();
    return StorageBuffer(_wgslsmith_f_op_f32(-2315f - 1082f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_sub_vec3_u32(func_1(Struct_2(vec4<u32>(u_input.b, 8073u, 4294967295u, 96900u), global1.x, ~u_input.a.x, -vec3<i32>(0i, -1i, 2147483647i)), !global0.zx), countOneBits(~(vec3<u32>(45151u, 4294967295u, 0u) >> (vec3<u32>(u_input.b, 47708u, u_input.b) % vec3<u32>(32u))))), Struct_2(vec4<u32>(~u_input.b, ~u_input.b, u_input.b, _wgslsmith_div_u32(u_input.b, 37007u)) << (vec4<u32>(46776u, 43211u, _wgslsmith_mult_u32(59985u, 35485u), u_input.b) % vec4<u32>(32u)), -u_input.c, global1.x, global1.zzx), ~44360u, u_input.b);
}

