struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: f32) -> vec3<i32> {
    var var_0 = u_input.a;
    var var_1 = select(select(!select(!vec2<bool>(arg_1.x, arg_1.x), arg_1.zy, vec2<bool>(true, arg_1.x)), select(!vec2<bool>(arg_1.x, arg_1.x), arg_1.yz, (arg_0.x & 40087i) >= _wgslsmith_mod_i32(2147483647i, u_input.c.x)), any(arg_1)), arg_1.zx, vec2<bool>(!(!arg_1.x), arg_1.x));
    var var_2 = -29256i;
    var_0 = 70671u;
    var_0 = countOneBits(~u_input.a);
    return _wgslsmith_mod_vec3_i32(abs(arg_0.yzx), -_wgslsmith_add_vec3_i32(~arg_0.xzy, u_input.b.xxz) >> (abs(vec3<u32>(reverseBits(u_input.a), 0u >> (u_input.a % 32u), ~u_input.a)) % vec3<u32>(32u)));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(select(~vec3<i32>(0i, -13810i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.c.x), vec3<i32>(-1i, u_input.b.x, u_input.c.x)), true) << (~(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(4294967295u, 100818u, 0u)) % vec3<u32>(32u)), (u_input.b.xxz | func_3(u_input.c, vec3<bool>(false, false, false), -316f)) & min(u_input.b.wwy, -u_input.b.yzw)), u_input.c.xyz, min(vec3<i32>(~28491i, -u_input.b.x, -_wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), -countOneBits(_wgslsmith_mult_vec3_i32(u_input.c.xwy, vec3<i32>(-59380i, u_input.b.x, 0i)))));
    var var_1 = Struct_2(~vec4<u32>(u_input.a, u_input.a ^ 1u, 1u, firstLeadingBit(7036u) ^ reverseBits(u_input.a)), Struct_1(false, var_0.x, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mod_i32(0i, 26635i))), u_input.a);
    let var_2 = true;
    var var_3 = select(!var_2, false, any(!(!vec4<bool>(var_1.b.a, var_1.b.a, false, var_2))));
    let var_4 = vec2<i32>(countOneBits(var_0.x), u_input.c.x);
    return Struct_3(~_wgslsmith_mult_u32(select(var_1.c, ~18702u, var_1.b.a), min(var_1.c, _wgslsmith_div_u32(0u, 29399u))), all(!(!select(vec2<bool>(false, false), vec2<bool>(var_1.b.a, false), vec2<bool>(var_2, var_2)))), _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(0u & u_input.a, reverseBits(var_1.c)))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_clamp_vec2_i32(-u_input.c.ww, -u_input.b.yy, _wgslsmith_mod_vec2_i32(select(u_input.b.xx, func_3(-u_input.b, select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(true, true, var_0.b), false), _wgslsmith_f_op_f32(arg_1.x - -1000f)).xy, any(vec2<bool>(true, true))), _wgslsmith_div_vec2_i32(abs(vec2<i32>(41824i, -12752i)), abs(vec2<i32>(952i, u_input.b.x)) << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 114323u), vec2<u32>(0u, 11824u)) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(var_0.c), 17395u) | (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 43194u)) | 1u), 0u);
    let var_3 = Struct_2(vec4<u32>(arg_0, _wgslsmith_mult_u32(abs(arg_0), 24919u) & _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0, var_0.c), arg_0), ~abs(_wgslsmith_add_u32(u_input.a, arg_0)), var_0.c | 0u), Struct_1(true || var_0.b, _wgslsmith_mod_i32(6541i, _wgslsmith_sub_i32(4203i, -50340i)), 29392i), 48076u);
    let var_4 = -(~abs(vec2<i32>(u_input.b.x, 40382i)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~(~_wgslsmith_sub_i32(func_1(u_input.a, vec3<f32>(1000f, -486f, 258f)), max(-2147483647i, u_input.b.x))), 1i);
    var var_1 = max(var_0.c, _wgslsmith_mod_i32(-34275i, abs(var_0.c)));
    var var_2 = ~max(~u_input.a, u_input.a);
    var_1 = _wgslsmith_mult_i32(u_input.b.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, u_input.a, u_input.a, 41686u), vec4<u32>(1u, 4294967295u, 65930u, 4294967295u)), ~vec4<u32>(4995u, 24861u, u_input.a, u_input.a)), vec4<u32>(abs(u_input.a), 46271u, u_input.a, abs(u_input.a))) % 32u), 2147483647i);
    let var_3 = Struct_2(abs(~(_wgslsmith_mod_vec4_u32(vec4<u32>(6800u, 51750u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 31671u, u_input.a, u_input.a)) ^ firstLeadingBit(vec4<u32>(86849u, u_input.a, 53008u, 1u)))), Struct_1(all(!(!vec4<bool>(var_0.a, false, true, true))), 0i, -2147483647i), countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, ~4294967295u), u_input.a)));
    let var_4 = -(i32(-1i) * -select(var_0.c, _wgslsmith_clamp_i32(0i, 370i, -6392i), true));
    let var_5 = _wgslsmith_f_op_f32(1819f + 606f);
    let x = u_input.a;
    s_output = StorageBuffer(0u, 37028u, -_wgslsmith_div_vec3_i32(~u_input.c.zwz, u_input.b.zwy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_5), var_5, _wgslsmith_div_f32(2005f, var_5)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1444f, var_5, 525f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_5, var_5, var_5), vec3<f32>(-2497f, var_5, 261f))))), var_5);
}

