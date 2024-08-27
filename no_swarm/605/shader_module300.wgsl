struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(604u, 22952u), 55042u, vec3<u32>(164u, 30263u, 4294967295u), vec4<bool>(false, true, false, true)), -566i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = global1.a;
    var var_1 = global1.a;
    let var_2 = var_1.d.x;
    var_1 = global1.a;
    let var_3 = reverseBits(u_input.c);
    return ~(~abs(vec3<u32>(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_dot_vec2_u32(var_0.a, global1.a.c.xx), var_3)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(vec2<u32>(u_input.c, ~_wgslsmith_clamp_u32(7719u, 1u, 0u)) << (_wgslsmith_clamp_vec2_u32(global1.a.a ^ ~vec2<u32>(76083u, u_input.c), _wgslsmith_div_vec2_u32(~vec2<u32>(global1.a.c.x, u_input.c), ~vec2<u32>(global1.a.c.x, 4294967295u)), global1.a.a) % vec2<u32>(32u)), _wgslsmith_sub_u32(0u, arg_1), func_3(-vec2<i32>(_wgslsmith_div_i32(u_input.b, arg_0.x), u_input.a)), select(vec4<bool>(true, true, true, true), global1.a.d, !vec4<bool>(false | global1.a.d.x, false & global1.a.d.x, true, true)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(1u, u_input.c)) ^ vec2<u32>(u_input.c, 1u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(104302u, var_0.b, var_0.b), global1.a.c)), vec3<u32>(_wgslsmith_div_u32(27384u, 99u), _wgslsmith_clamp_u32(u_input.c, u_input.c, 13640u), ~arg_1) >> (firstLeadingBit(var_0.c) % vec3<u32>(32u)), global1.a.d), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, ~(~1i)), u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.b, arg_0.x)), vec2<i32>(u_input.a, -2147483647i)), arg_0)));
    var var_2 = select(var_0.d.yzx, !select(vec3<bool>(global1.a.d.x, any(var_0.d.zxy), true), !global1.a.d.xzz, any(var_1.a.d)), select(vec3<bool>(true, any(select(global1.a.d, vec4<bool>(global1.a.d.x, true, global1.a.d.x, false), var_0.d)), true), vec3<bool>(var_0.d.x, all(global1.a.d.zy), all(vec3<bool>(var_0.d.x, global1.a.d.x, false))), !all(vec4<bool>(true, true, false, true))));
    return 0u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = Struct_2(Struct_1(vec2<u32>(128400u, arg_1), 26144u | _wgslsmith_add_u32(arg_2.a.x & 76627u, u_input.c), ~vec3<u32>(35901u, arg_2.a.x, _wgslsmith_sub_u32(arg_1, arg_0.x)), arg_2.d), -15407i);
    var var_0 = global1.a;
    let var_1 = ~1i;
    global1 = Struct_2(global1.a, var_1);
    let var_2 = !select(arg_2.d.zz, arg_2.d.ww, true && !any(vec4<bool>(arg_3, false, false, arg_2.d.x)));
    return Struct_1(~firstTrailingBit(~(~var_0.a)), 0u, select(vec3<u32>(~arg_2.a.x, arg_0.x, _wgslsmith_mult_u32(arg_2.b, var_0.b)), var_0.c, arg_2.d.wxw) & ~(~vec3<u32>(arg_1, arg_0.x, arg_1)), select(select(select(global1.a.d, !vec4<bool>(arg_3, var_0.d.x, arg_3, false), all(vec2<bool>(global1.a.d.x, var_0.d.x))), global1.a.d, global1.a.d.x), !var_0.d, false));
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(func_4(abs(global1.a.c) ^ ~firstLeadingBit(vec3<u32>(global1.a.b, u_input.c, global1.a.c.x)), 2991u, Struct_1(vec2<u32>(1u, 1u), 41744u, vec3<u32>(1u << (global1.a.a.x % 32u), func_2(vec2<i32>(-10826i, -27224i), u_input.c), u_input.c), vec4<bool>(!global1.a.d.x, true, true, true)), !(select(true, global1.a.d.x, false) & global1.a.d.x)), _wgslsmith_sub_i32(-2147483647i >> ((_wgslsmith_sub_u32(u_input.c, 6103u) | u_input.c) % 32u), ~select(countOneBits(-2147483647i), -1i, true)));
    let var_0 = abs(-select(vec2<i32>(u_input.b, 19489i), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, global1.b)), vec2<i32>(global1.b, u_input.a)), global1.a.d.x));
    var var_1 = Struct_2(global1.a, global1.b);
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 56424u, u_input.c, 23789u), vec4<u32>(~u_input.c, 64976u, _wgslsmith_sub_u32(firstLeadingBit(4294967295u), func_4(vec3<u32>(global1.a.c.x, 109951u, 22241u), var_1.a.a.x, Struct_1(vec2<u32>(global1.a.b, u_input.c), var_1.a.a.x, vec3<u32>(var_1.a.b, 64648u, 27389u), global1.a.d), var_1.a.d.x).a.x), global1.a.c.x << (0u % 32u))), vec4<u32>(func_3(~(~var_0)).x, 39452u, 0u, u_input.c));
    let var_3 = select(var_1.a.d.yxw, var_1.a.d.zyw, func_4(~(~vec3<u32>(90890u, global1.a.b, global1.a.a.x)), 55351u, global1.a, !var_1.a.d.x).d.x);
    return Struct_2(Struct_1(var_2.yz ^ abs(vec2<u32>(42793u, u_input.c)), global1.a.b & ~firstLeadingBit(25930u), func_3(-_wgslsmith_mult_vec2_i32(vec2<i32>(global1.b, 0i), var_0)), global1.a.d), -select(~_wgslsmith_div_i32(-2147483647i, var_1.b), 0i, func_4(vec3<u32>(var_2.x, var_1.a.a.x, global1.a.c.x), global1.a.a.x, global1.a, u_input.c < 25060u).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = false;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(518f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-830f)))), false))), -210f);
    global0 = var_1.x;
    var var_2 = global1.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(countOneBits(global1.a.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(49821u, 51908u), vec2<u32>(32956u, 96283u), vec2<u32>(global1.a.b, u_input.c))) ^ ~(~vec2<u32>(global1.a.a.x, 3831u)), vec3<u32>(4294967295u, 0u >> (u_input.c % 32u), 16062u >> (u_input.c % 32u)) >> (~func_4(_wgslsmith_mult_vec3_u32(global1.a.c, global1.a.c), _wgslsmith_div_u32(u_input.c, u_input.c), Struct_1(global1.a.a, global1.a.a.x, vec3<u32>(21176u, 1u, 1u), vec4<bool>(true, false, true, global1.a.d.x)), all(vec3<bool>(false, false, global1.a.d.x))).c % vec3<u32>(32u)), global1.a.a.x, max(_wgslsmith_add_vec4_i32(abs(vec4<i32>(2147483647i, global1.b, 0i, global1.b) >> (vec4<u32>(global1.a.c.x, u_input.c, global1.a.a.x, u_input.c) % vec4<u32>(32u))), firstLeadingBit(-vec4<i32>(0i, 1i, u_input.a, global1.b))), vec4<i32>(1i, ~(-1i), _wgslsmith_clamp_i32(u_input.b, -15116i, global1.b) & ~global1.b, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(global1.b, u_input.b)), min(vec2<i32>(u_input.b, global1.b), vec2<i32>(0i, 53340i))))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -18499i) << (global1.a.c.xy % vec2<u32>(32u)), vec2<i32>(global1.b, ~firstTrailingBit(2147483647i))));
}

