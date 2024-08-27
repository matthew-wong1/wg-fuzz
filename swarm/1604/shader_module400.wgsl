struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(5271u, 0u, vec2<u32>(14025u, 47118u), 0u);

var<private> global1: vec3<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = global0.b;
    global0 = Struct_2(1u, ~0u, vec2<u32>(global0.a, max(~73645u, ~global0.d)) ^ vec2<u32>(~0u, min(global1.x, global1.x | 1053u)), 1u);
    let var_1 = Struct_3(Struct_2(4294967295u, 10390u, select(vec2<u32>(~32535u, ~global0.a), u_input.d.yy, true), firstLeadingBit(u_input.d.x)), Struct_2(reverseBits(abs(0u & global1.x)), abs(~(global1.x & global0.d)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b, global1.x), ~u_input.d.zx), global0.c), _wgslsmith_clamp_u32(u_input.d.x, 1u, 19434u >> (1u % 32u))), select(vec3<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), false), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true))), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, u_input.d.x, global0.c.x) | (vec4<u32>(u_input.d.x, 0u, 4294967295u, 1u) | vec4<u32>(u_input.d.x, 1u, global0.b, 0u)), (vec4<u32>(10981u, 0u, global1.x, global0.a) >> (vec4<u32>(global0.c.x, 0u, 0u, 25555u) % vec4<u32>(32u))) ^ max(vec4<u32>(global0.a, 12569u, 4294967295u, 87528u), vec4<u32>(32530u, 28953u, global1.x, global1.x))), reverseBits(~(~u_input.d.x)), _wgslsmith_mod_vec2_u32(global1.zy, select(u_input.d.yz, select(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.d.x, global0.a), true), vec2<bool>(true, true))), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, 1u), ~u_input.d))));
    global0 = var_1.d;
    global1 = ~u_input.d;
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(16170u, global0.c.x, var_1.b.c.x, 1u), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, _wgslsmith_dot_vec2_u32(global1.zx, vec2<u32>(u_input.d.x ^ 1u, _wgslsmith_mod_u32(var_1.a.c.x, 0u)))));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(Struct_2(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1264f + -823f)))), ~69256u, global1.zz, max(u_input.d.x, min(~global1.x, 85868u))), Struct_2(~u_input.d.x, u_input.d.x, ~vec2<u32>(u_input.d.x, _wgslsmith_sub_u32(17537u, global1.x)), 1u & (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global0.c.x, 41105u)) & 1u)), select(vec3<bool>(any(vec3<bool>(true, true, true)), global1.x == u_input.d.x, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))), select(vec3<bool>(u_input.a.x != 41747i, false, true), vec3<bool>(false, true, all(vec3<bool>(false, false, true))), all(vec4<bool>(false, true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), Struct_2(1u, u_input.d.x, global1.zx, abs(0u)));
    global0 = Struct_2(_wgslsmith_mod_u32(45959u, ~1u & var_0.a.d), abs(~_wgslsmith_add_u32(~global0.b, ~2524u)), vec2<u32>(~60350u, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(16878u, 4294967295u, var_0.a.a, global0.b), vec4<u32>(754u, global1.x, global0.b, global0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), ~vec4<u32>(57483u, global1.x, 1u, 21798u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, var_0.a.a, u_input.d.x), vec4<u32>(10111u, 1u, 80855u, 70857u)))), reverseBits(0u));
    var var_1 = !select(var_0.c.yz, vec2<bool>(!select(false, var_0.c.x, true), true | var_0.c.x), select(var_0.c.zy, select(vec2<bool>(false, true), var_0.c.zx, vec2<bool>(var_0.c.x, false)), select(vec2<bool>(false, true), vec2<bool>(var_0.c.x, var_0.c.x), !var_0.c.yz)));
    global0 = Struct_2(firstTrailingBit(global1.x), var_0.a.b, abs(vec2<u32>(reverseBits(18518u), _wgslsmith_mod_u32(var_0.b.d, 0u))) ^ ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 48049u), u_input.d.zx), vec2<u32>(1u, 1u)), ~(~func_3(-364f)));
    let var_2 = abs(vec2<u32>(54304u, ~(~(85582u ^ var_0.a.d))));
    return countOneBits(u_input.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(arg_1, _wgslsmith_mult_i32(~func_2(), 0i));
    let var_1 = ~u_input.c ^ -30400i;
    let var_2 = Struct_1(u_input.b, 1u | global1.x);
    global0 = Struct_2(63188u, 0u, select(u_input.d.yz, firstLeadingBit(_wgslsmith_div_vec2_u32(global1.zx, vec2<u32>(16592u, 24413u))), true) ^ vec2<u32>(~_wgslsmith_mod_u32(u_input.d.x, 64979u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(global0.b, global0.b, arg_0.x)), 4294967295u)), 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2914f, 762f));
    return Struct_1(-1i, global1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global1 = vec3<u32>(59288u, u_input.d.x, firstTrailingBit(global0.d));
    let var_0 = _wgslsmith_sub_vec4_u32(select(max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.b, 1u, 4294967295u) | vec4<u32>(1u, 1u, 4294967295u, global0.a), ~vec4<u32>(global1.x, 0u, global1.x, 31865u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(global1.x, global1.x, 4294967295u, 0u)), vec4<u32>(arg_0.b, 8557u, 38442u, u_input.d.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(2339u, 4294967295u, 0u, 32789u), vec4<u32>(0u, 73105u, 61621u, global1.x), vec4<u32>(0u, 4294967295u, arg_0.b, 47927u)), true), ~vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), _wgslsmith_mod_u32(48919u, _wgslsmith_mult_u32(global0.a, 4294967295u)), ~(~u_input.d.x), 1u));
    global1 = ~u_input.d;
    return func_1(_wgslsmith_div_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(~global1.zz, vec2<u32>(arg_0.b, var_0.x))), ~(u_input.d.yy ^ vec2<u32>(24992u, global0.b))), 28098i, vec3<i32>(1i, _wgslsmith_sub_i32(1i, 2147483647i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a), -u_input.a), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(22290u, global0.a, global0.b);
    var var_1 = ~_wgslsmith_div_i32(~((-13719i << (var_0.x % 32u)) ^ _wgslsmith_add_i32(u_input.b, -1i)), ~(-11518i));
    var var_2 = func_4(func_1(var_0.yx | vec2<u32>(4294967295u, global0.b), -_wgslsmith_div_i32(~u_input.b, -u_input.a.x), -countOneBits(vec3<i32>(u_input.b, 0i, -1i) >> (vec3<u32>(0u, 4294967295u, var_0.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, 1352f)), vec2<f32>(-254f, 380f), true)))));
    var var_3 = ~(~vec4<u32>(global0.d, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.b, global0.c.x) & vec4<u32>(var_2.b, 4294967295u, var_0.x, var_2.b), vec4<u32>(var_0.x, var_0.x, var_2.b, global1.x) ^ vec4<u32>(u_input.d.x, u_input.d.x, global1.x, global0.c.x)), ~(~50549u)));
    var var_4 = max(abs(~(~(vec4<u32>(u_input.d.x, var_2.b, 4294967295u, 4294967295u) << (vec4<u32>(global1.x, 4294967295u, u_input.d.x, global1.x) % vec4<u32>(32u))))), reverseBits(~(~max(vec4<u32>(1u, var_3.x, var_3.x, global0.c.x), vec4<u32>(0u, var_2.b, global1.x, global1.x)))));
    var var_5 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_2.b, _wgslsmith_sub_u32(var_0.x, abs(1u))) << (global1.x % 32u));
}

