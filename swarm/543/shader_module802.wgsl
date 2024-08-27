struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
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

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32) -> Struct_1 {
    return Struct_1(-14866i, _wgslsmith_sub_i32(firstLeadingBit(-1i), arg_0), vec3<u32>(_wgslsmith_mod_u32(4294967295u, countOneBits(_wgslsmith_sub_u32(u_input.d.x, u_input.b.x))), firstTrailingBit((u_input.d.x | u_input.d.x) >> (u_input.d.x % 32u)), u_input.b.x), u_input.b);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    let var_0 = any(vec2<bool>(true, true));
    let var_1 = vec2<bool>(var_0, !select(var_0, !var_0 || var_0, _wgslsmith_f_op_f32(arg_1 + -410f) >= arg_1));
    global0 = arg_0.x;
    var var_2 = var_1;
    var_2 = vec2<bool>(u_input.c.x > _wgslsmith_clamp_i32(-29607i, min(abs(arg_0.x), 6722i), arg_0.x << (54191u % 32u)), arg_1 <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1210f, _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(395f, arg_1)) * arg_1)));
    return 1u ^ _wgslsmith_sub_u32(func_1(u_input.a.x << (44839u % 32u)).d.x, firstTrailingBit(u_input.d.x));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<u32> {
    global0 = -6314i;
    var var_0 = max(arg_2.c.x, 4294967295u);
    var_0 = func_1(arg_0.c.d.a << (func_1(abs(firstTrailingBit(arg_2.b))).c.x % 32u)).d.x;
    let var_1 = Struct_3(_wgslsmith_mod_u32(~(func_3(u_input.c, arg_1.x) & ~20509u), u_input.d.x), max(vec3<u32>(51941u, ~select(arg_2.d.x, 17289u, true), 4294967295u), vec3<u32>(4294967295u, 1u, abs(~arg_0.b.x))), Struct_2(arg_0.c.a, (-16525i & func_1(56346i).b) > -58540i, Struct_1(u_input.a.x, reverseBits(arg_0.c.d.a), arg_0.b ^ reverseBits(u_input.d), min(select(vec4<u32>(u_input.d.x, 4294967295u, u_input.b.x, arg_0.c.c.c.x), vec4<u32>(61685u, u_input.d.x, u_input.b.x, u_input.b.x), vec4<bool>(arg_0.c.b, true, arg_0.c.b, false)), min(arg_0.c.a.d, vec4<u32>(42678u, arg_0.b.x, arg_2.d.x, arg_2.d.x)))), arg_2, vec2<f32>(255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) - _wgslsmith_f_op_f32(round(-1603f))))), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.e.x, _wgslsmith_f_op_f32(1438f - _wgslsmith_f_op_f32(max(-805f, 867f)))) * arg_0.c.e.x));
    let var_2 = !select(select(!select(vec3<bool>(false, arg_0.c.b, false), vec3<bool>(true, arg_0.c.b, var_1.c.b), vec3<bool>(true, true, false)), vec3<bool>(true, var_1.c.b, var_1.c.b & true), arg_0.c.b), select(select(!vec3<bool>(arg_0.c.b, var_1.c.b, arg_0.c.b), !vec3<bool>(arg_0.c.b, var_1.c.b, var_1.c.b), select(false, var_1.c.b, true)), select(vec3<bool>(false, var_1.c.b, var_1.c.b), vec3<bool>(var_1.c.b, arg_0.c.b, var_1.c.b), any(vec4<bool>(true, false, arg_0.c.b, false))), !(!vec3<bool>(false, arg_0.c.b, false))), select(vec3<bool>(!arg_0.c.b, true, !var_1.c.b), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, var_1.c.b), vec3<bool>(arg_0.c.b, false, arg_0.c.b), vec3<bool>(false, var_1.c.b, false))));
    return ~_wgslsmith_mult_vec4_u32(min(vec4<u32>(~u_input.d.x, 1u, u_input.b.x ^ u_input.d.x, var_1.a), vec4<u32>(39004u, abs(78163u), 4294967295u, ~var_1.a)), u_input.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = Struct_4(func_1(min(-arg_3.c.c.a, arg_2.d.b ^ arg_2.a.b) & -23028i), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(arg_2.c.a, 22280i), select(u_input.a.wx, u_input.a.zw, vec2<bool>(arg_3.c.b, arg_1.x))) & vec2<i32>(max(-1i, u_input.a.x), _wgslsmith_mult_i32(-1i, 0i))));
    global0 = ~((i32(-1i) * -2147483647i) << (countOneBits(~arg_3.b.x) % 32u)) & arg_3.c.d.a;
    let var_1 = func_1(-26684i);
    global0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-(~u_input.c.x), -1i) | abs(~(arg_2.c.b >> (arg_3.a % 32u))), firstTrailingBit(u_input.c.x), 30752i);
    var var_2 = var_1.a;
    return StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(1i);
    global0 = -2147483647i;
    global0 = ~firstTrailingBit(u_input.a.x);
    global0 = u_input.c.x;
    global0 = u_input.c.x | (-(~_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x)) ^ ((u_input.a.x ^ reverseBits(u_input.c.x)) | _wgslsmith_div_i32(1i, 1i)));
    let x = u_input.a;
    s_output = func_4(u_input.d, vec3<bool>(true, true, true), Struct_2(func_1(max(2147483647i, u_input.a.x >> (u_input.d.x % 32u))), !(6291i > u_input.a.x) & true, Struct_1(reverseBits(1i), u_input.a.x, u_input.b.yxw, func_2(Struct_3(u_input.d.x, vec3<u32>(2749u, 3775u, u_input.d.x), Struct_2(Struct_1(u_input.a.x, 1i, vec3<u32>(0u, 1u, u_input.b.x), u_input.b), false, Struct_1(u_input.c.x, u_input.c.x, u_input.d, u_input.b), Struct_1(2147483647i, u_input.a.x, u_input.b.xzx, u_input.b), vec2<f32>(418f, 1789f)), 0i, -1000f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(197f, 148f, -913f, -1745f))), Struct_1(1i, u_input.a.x, vec3<u32>(u_input.b.x, 19081u, 4294967295u), u_input.b))), Struct_1(max(-u_input.c.x, u_input.c.x << (u_input.d.x % 32u)), ~u_input.c.x | abs(u_input.a.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(72553u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 8529u, 72483u) ^ vec3<u32>(u_input.b.x, 1u, 31050u)), _wgslsmith_add_vec4_u32(u_input.b, select(vec4<u32>(u_input.d.x, 95980u, u_input.b.x, 27183u), u_input.b, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(328f, -234f), _wgslsmith_f_op_f32(f32(-1f) * -367f)))), Struct_3(~u_input.d.x, max(func_2(Struct_3(0u, vec3<u32>(0u, u_input.b.x, u_input.b.x), Struct_2(Struct_1(u_input.a.x, u_input.a.x, u_input.d, u_input.b), true, Struct_1(2147483647i, u_input.a.x, vec3<u32>(u_input.d.x, u_input.d.x, 33546u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b.x)), Struct_1(0i, u_input.c.x, vec3<u32>(35180u, 1u, u_input.b.x), u_input.b), vec2<f32>(-359f, 678f)), 0i, 1188f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -530f, 1602f, 319f)), Struct_1(u_input.c.x, 0i, u_input.d, u_input.b)).www, func_2(Struct_3(12182u, u_input.d, Struct_2(Struct_1(0i, 28156i, u_input.b.xxy, u_input.b), true, Struct_1(u_input.c.x, -24965i, u_input.d, vec4<u32>(0u, u_input.b.x, u_input.d.x, 4294967295u)), Struct_1(u_input.a.x, u_input.a.x, u_input.d, u_input.b), vec2<f32>(895f, 1278f)), u_input.a.x, -1441f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1120f, -763f, 156f, 1000f) * vec4<f32>(1000f, 365f, 798f, -155f)), func_1(u_input.a.x)).www), Struct_2(Struct_1(_wgslsmith_div_i32(41429i, -47270i), u_input.a.x >> (u_input.d.x % 32u), firstTrailingBit(u_input.b.xxy), vec4<u32>(u_input.b.x, u_input.d.x, 0u, u_input.d.x)), u_input.d.x < ~u_input.b.x, func_1(u_input.c.x), func_1(-33342i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1162f, -1439f))) - vec2<f32>(1f, 1f))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2323f - -131f))));
}

