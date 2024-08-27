struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_3 * -114f);
    let var_1 = vec3<u32>(abs(1u), _wgslsmith_dot_vec2_u32(max(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.xx, vec2<u32>(38090u, 25081u)), ~vec2<u32>(67667u, 22785u)), u_input.d.yz), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e.xy, vec2<u32>(u_input.b, u_input.d.x)), abs(u_input.c.yz)), min(vec2<u32>(u_input.d.x, u_input.c.x), u_input.c.xy), u_input.c.yz)), ~(~_wgslsmith_add_u32(abs(u_input.c.x), 0u)));
    let var_2 = Struct_1(99189u, _wgslsmith_div_vec2_u32(var_1.yy, u_input.e.zx), max(u_input.e.x, ~u_input.e.x), 4294967295u, reverseBits(~_wgslsmith_add_u32(55607u, 17170u) ^ _wgslsmith_dot_vec4_u32(~u_input.e, ~vec4<u32>(u_input.d.x, u_input.e.x, u_input.b, 4294967295u))));
    let var_3 = Struct_2(arg_1, arg_3, firstLeadingBit(~countOneBits(countOneBits(var_2.a))), select(u_input.e | min(~u_input.d, u_input.d), abs(u_input.e), vec4<bool>(!select(arg_1.x, arg_1.x, arg_1.x), true, arg_1.x, arg_1.x)));
    var var_4 = ~1i;
    return firstTrailingBit(1u) < var_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = Struct_4(select(_wgslsmith_div_vec4_i32(vec4<i32>(abs(-2147483647i), u_input.a, 14047i ^ u_input.a, -23580i), ~vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), vec4<i32>(2147483647i, -4205i, select(_wgslsmith_div_i32(-46492i, 1i), u_input.a, true), 4222i), any(!(!vec4<bool>(false, arg_1.x, arg_0.a.x, arg_0.a.x)))), Struct_1(countOneBits(arg_3), vec2<u32>(~40156u, _wgslsmith_mult_u32(69403u, _wgslsmith_dot_vec2_u32(arg_0.d.xy, vec2<u32>(4294967295u, u_input.d.x)))), _wgslsmith_sub_u32(arg_3 | reverseBits(4294967295u), _wgslsmith_mod_u32(0u, 4294967295u)), reverseBits(_wgslsmith_mult_u32(4294967295u, 1u)) | _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_3, 0u), arg_0.d.x), u_input.e.x));
    var var_1 = ~_wgslsmith_div_u32(reverseBits(~(~arg_0.c)), _wgslsmith_add_u32(arg_2, 37159u));
    var var_2 = 0i;
    var var_3 = Struct_1(~31583u, ~vec2<u32>(u_input.d.x, ~(0u >> (arg_3 % 32u))), select(4294967295u, _wgslsmith_sub_u32(~(~38712u), u_input.b ^ _wgslsmith_div_u32(arg_2, var_0.b.c)), func_3(Struct_3(vec2<i32>(u_input.a, 0i) >> (arg_0.d.zz % vec2<u32>(32u))), arg_0.a, Struct_3(-vec2<i32>(-2147483647i, 0i)), _wgslsmith_f_op_f32(round(-1005f)))), ~34274u, _wgslsmith_add_u32(arg_0.d.x, 4294967295u) >> (arg_3 % 32u));
    var_1 = 58154u;
    return arg_2;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = arg_1.a.x;
    var var_1 = Struct_1(~_wgslsmith_mod_u32(u_input.c.x, 0u), ~arg_1.d.xz, reverseBits(_wgslsmith_add_u32(~0u, arg_1.d.x)), 34871u, func_4(arg_1, select(vec2<bool>(true, true), vec2<bool>(func_3(Struct_3(vec2<i32>(0i, -4739i)), vec3<bool>(false, false, false), Struct_3(vec2<i32>(u_input.a, u_input.a)), arg_1.b), any(arg_1.a)), arg_1.a.xy), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.e.x), vec2<u32>(u_input.b, 0u)) & arg_1.d.zy, ~vec2<u32>(u_input.e.x, 22333u)), _wgslsmith_clamp_u32(~(60971u ^ arg_1.d.x), u_input.b, ~arg_1.c & arg_1.c)));
    let var_2 = Struct_3(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), min(u_input.a, _wgslsmith_mod_i32(u_input.a, 1i))), u_input.a ^ -29842i));
    var var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(max(~arg_1.d.zyz, vec3<u32>(arg_1.c, arg_1.d.x, var_1.e) ^ vec3<u32>(u_input.b, u_input.b, u_input.d.x)), arg_1.d.zxy), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b), arg_1.d.x & 4294967295u), u_input.e.x, arg_1.c)) >> (~_wgslsmith_sub_vec3_u32((vec3<u32>(6820u, arg_1.c, u_input.e.x) & u_input.e.wyy) & vec3<u32>(34649u, 4294967295u, 15091u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d.x, 65477u), vec3<u32>(0u, var_1.c, var_1.a))) % vec3<u32>(32u));
    let var_4 = Struct_4(vec4<i32>(var_2.a.x, _wgslsmith_add_i32(~(-1i), 24678i), ~(16809i ^ max(21012i, u_input.a)), _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_2.a.x, 18712i, -13144i), vec4<i32>(u_input.a, -26806i, u_input.a, u_input.a), vec4<i32>(2147483647i, var_2.a.x, var_2.a.x, 2147483647i)), -vec4<i32>(2147483647i, -13917i, 45599i, 0i), select(vec4<bool>(false, false, var_0, arg_1.a.x), vec4<bool>(var_0, false, arg_1.a.x, false), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true))), select(~vec4<i32>(2147483647i, -2147483647i, 29806i, 0i), vec4<i32>(2147483647i, u_input.a, var_2.a.x, u_input.a), true))), Struct_1(0u, arg_1.d.ww, 1u, arg_1.d.x, 4294967295u));
    return select(select(!select(arg_1.a, select(vec3<bool>(arg_1.a.x, arg_1.a.x, false), arg_1.a, arg_1.a), func_3(var_2, vec3<bool>(var_0, var_0, false), var_2, 827f)), vec3<bool>(all(select(vec3<bool>(arg_1.a.x, arg_1.a.x, var_0), arg_1.a, arg_1.a.x)), all(arg_1.a), arg_1.a.x), all(vec4<bool>(arg_1.b >= arg_0.x, var_0, !arg_1.a.x, true))), !(!arg_1.a), vec3<bool>(false, false, true));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = Struct_3(countOneBits(arg_2.a));
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, -1061f, arg_0.b, arg_0.b), vec4<f32>(-451f, -342f, 1002f, 256f), vec4<bool>(false, false, true, true)))), vec4<f32>(-263f, 949f, 1745f, _wgslsmith_div_f32(arg_0.b, -224f))), _wgslsmith_sub_i32(arg_2.a.x, max(var_0.a.x, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-727f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - -1173f))), ~firstLeadingBit(vec3<i32>(firstTrailingBit(-13365i), 54035i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1), var_0.a))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = Struct_3(vec2<i32>(max(-12488i, firstTrailingBit(i32(-1i) * -48222i)), firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0, 1i, 0i), min(1i, 2147483647i)))));
    let var_1 = ~(~_wgslsmith_mod_u32(u_input.b, u_input.b));
    var_0 = Struct_3(min(var_0.a, vec2<i32>(arg_0, u_input.a | -var_0.a.x)));
    var var_2 = Struct_3(reverseBits(_wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(arg_0, u_input.a)), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-6902i, var_0.a.x)), abs(var_0.a)))));
    let var_3 = vec3<u32>(4294967295u, u_input.c.x, _wgslsmith_mod_u32(select(_wgslsmith_div_u32(_wgslsmith_clamp_u32(67385u, 53074u, 98420u), ~var_1), var_1, true), ~abs(1u)));
    return func_5(Struct_2(select(vec3<bool>(true, true, true), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(877f, -888f, 1519f, 1123f)), Struct_2(vec3<bool>(false, true, true), -1837f, 0u, vec4<u32>(114173u, 4294967295u, var_1, var_3.x))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)), var_3.x, vec4<u32>(func_4(Struct_2(vec3<bool>(true, true, true), -195f, 86527u, u_input.d), vec2<bool>(true, true), _wgslsmith_add_u32(39386u, var_1), func_4(Struct_2(vec3<bool>(true, false, false), -1000f, u_input.c.x, vec4<u32>(26767u, 4294967295u, 64253u, 15080u)), vec2<bool>(false, true), 4294967295u, 0u)), abs(var_3.x) | 4294967295u, ~countOneBits(0u), _wgslsmith_sub_u32(1u, ~4294967295u))), 1i, Struct_3(-firstTrailingBit(var_0.a) | -var_0.a), Struct_1(abs(~(u_input.e.x << (80832u % 32u))), vec2<u32>(max(u_input.e.x, ~u_input.e.x), firstLeadingBit(1u)), _wgslsmith_mult_u32(~0u, var_3.x | ~1u), min(abs(1u), var_3.x), ~(~var_1) | _wgslsmith_mult_u32(var_3.x, min(u_input.b, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mult_i32(-1i, ~u_input.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4482u, 4294967295u, 4294967295u) >> (u_input.c % vec3<u32>(32u)), u_input.c) % 32u));
}

