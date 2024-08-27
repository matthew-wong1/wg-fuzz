struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 9494u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> bool {
    global0 = _wgslsmith_add_u32(arg_2.b.x >> ((u_input.a.x >> (~(~92029u) % 32u)) % 32u), 40752u);
    global0 = ~55881u;
    global0 = _wgslsmith_mod_u32(~arg_2.b.x, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a.x, 1u, arg_2.b.x, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_1, arg_2.b.x), vec4<u32>(arg_2.b.x, 1u, arg_1, arg_1), vec4<u32>(arg_1, 0u, arg_1, 4294967295u)) << (vec4<u32>(arg_2.b.x, 48589u, arg_2.b.x, arg_1) % vec4<u32>(32u))));
    var var_0 = arg_2.a.x;
    var var_1 = 41052i;
    return true;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f - _wgslsmith_f_op_f32(-1000f - -513f))), u_input.b.zyw, any(vec4<bool>(false, _wgslsmith_sub_u32(1u, u_input.a.x) >= u_input.a.x, true & func_3(u_input.b.x, u_input.a.x, Struct_2(vec2<bool>(false, false), u_input.a, true, u_input.b.x)), true)), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -258f));
    let var_1 = Struct_3(!vec3<bool>(var_0.c, u_input.c <= 1977i, false), Struct_1(_wgslsmith_f_op_f32(floor(var_0.a)), reverseBits(-reverseBits(vec3<i32>(u_input.c, 2147483647i, var_0.b.x))), false, var_0.d, _wgslsmith_f_op_f32(-var_0.a)), Struct_2(select(!vec2<bool>(var_0.c, var_0.c), select(select(vec2<bool>(false, false), vec2<bool>(var_0.c, var_0.c), true), select(vec2<bool>(true, false), vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, var_0.c)), vec2<bool>(var_0.c, var_0.c)), (0u > u_input.a.x) & var_0.c), reverseBits(vec3<u32>(var_0.d.x, ~var_0.d.x, ~u_input.a.x)), var_0.c, _wgslsmith_sub_i32(var_0.b.x, select(var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 1i), vec3<i32>(var_0.b.x, u_input.b.x, u_input.c)), var_0.c & var_0.c))), var_0, var_0);
    global0 = 42286u;
    global0 = var_1.b.d.x;
    let var_2 = var_1.c;
    return var_1;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: u32) -> bool {
    let var_0 = func_2();
    let var_1 = func_2();
    global0 = _wgslsmith_add_u32(~arg_3, ~(~(arg_0 ^ arg_2.x)) >> ((var_0.e.d.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 25222u, arg_2.x), var_0.e.d)) % 32u));
    global0 = 53322u;
    global0 = _wgslsmith_dot_vec2_u32(~arg_2, u_input.a.xy);
    return any(select(select(select(vec4<bool>(var_1.d.c, var_1.c.a.x, false, var_0.c.c), !vec4<bool>(true, var_0.e.c, var_0.c.a.x, true), u_input.a.x > arg_3), select(!vec4<bool>(false, var_1.e.c, var_0.c.a.x, var_1.b.c), select(vec4<bool>(true, var_0.d.c, true, true), vec4<bool>(var_1.b.c, var_1.c.c, false, false), var_1.c.c), false), !vec4<bool>(var_1.b.c, var_0.d.c, false, true)), !select(!vec4<bool>(true, var_0.c.c, true, var_1.a.x), !vec4<bool>(var_0.d.c, var_0.c.c, var_0.d.c, true), all(vec4<bool>(false, var_1.b.c, true, false))), all(!select(var_0.a.yy, var_0.a.zy, vec2<bool>(var_1.a.x, var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.x;
    let var_1 = u_input.a.zz;
    let var_2 = select(!(!vec4<bool>(true, false, func_1(var_1.x, u_input.b.zww, var_1, 1u), any(vec3<bool>(true, false, false)))), select(vec4<bool>(true, true | func_2().c.c, true, false), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), func_1(24389u, vec3<i32>(u_input.b.x, u_input.c, 5159i << (var_1.x % 32u)), u_input.a.yz, _wgslsmith_mod_u32(27796u, abs(u_input.a.x)))), false);
    let var_3 = func_2().e;
    let var_4 = firstTrailingBit(var_3.d);
    var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-(37211i ^ firstTrailingBit(u_input.b.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(~15016i, u_input.b.x), -23457i)), _wgslsmith_clamp_i32(4999i, u_input.c, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().d.e, _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.x, 4294967295u >> (var_4.x % 32u)), _wgslsmith_div_u32(var_3.d.x, var_3.d.x)) | 67092u, vec2<f32>(var_3.e, var_3.e));
}

