struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> i32 {
    let var_0 = true && any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_1 = any(!select(vec4<bool>(!var_0, false, arg_0.x != 119876u, any(vec2<bool>(var_0, var_0))), vec4<bool>(false, var_0, var_0, all(vec4<bool>(true, var_0, var_0, var_0))), !select(vec4<bool>(var_0, false, false, false), vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0))));
    var_1 = !any(!select(select(vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, true, true)), vec4<bool>(var_0, true, var_0, var_0), var_0 && true));
    var var_2 = select(select(select(!select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, false, var_0), false), vec3<bool>(var_0, any(vec3<bool>(false, var_0, var_0)), true), var_0), !(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, var_0))), !all(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, false, var_0, var_0), var_0))), select(!vec3<bool>(var_0, true, any(vec4<bool>(var_0, var_0, false, false))), vec3<bool>(false, true, var_0), select(select(vec3<bool>(var_0, true, false), vec3<bool>(true, false, var_0), !var_0), !(!vec3<bool>(true, false, var_0)), !select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, var_0)))), 18617i == u_input.d);
    var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.d, 2147483647i), u_input.b.x, 1i, -1i), -_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, u_input.b.x, 59444i, u_input.b.x), vec4<i32>(39478i, arg_1, -2147483647i, u_input.d))) == ~min(0i, -u_input.b.x);
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(1280f, arg_0.b, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(1107i, u_input.b.x), arg_0.b), ~reverseBits(-1i), ~vec2<i32>(func_3(max(vec3<u32>(u_input.c.x, 4294967295u, arg_1), u_input.c.xxw), arg_3.a.x), 2147483647i));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1009f * 1553f), _wgslsmith_f_op_f32(exp2(arg_3.d.x)), 487f) * vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_1.a), arg_3.d.x))));
    var var_3 = ~vec3<u32>(_wgslsmith_sub_u32(31268u, ~arg_3.c), abs(58877u) ^ min(3448u, arg_1), 19051u) | (vec3<u32>(~4294967295u, ~abs(arg_3.c), max(0u, ~u_input.c.x)) << (abs(~vec3<u32>(arg_3.c, arg_1, 1u)) % vec3<u32>(32u)));
    var var_4 = arg_0;
    return firstTrailingBit(_wgslsmith_mult_u32(40160u, ~firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.yw, var_3.zz))));
}

fn func_4(arg_0: u32) -> vec2<i32> {
    return vec2<i32>(_wgslsmith_add_i32(0i, ~_wgslsmith_div_i32(24091i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 27270i, u_input.b.x, -2147483647i), vec4<i32>(-1i, u_input.d, u_input.b.x, u_input.b.x)))), -abs(-8652i));
}

fn func_1() -> Struct_2 {
    var var_0 = ~(~u_input.c.yy);
    var_0 = u_input.c.yw;
    var var_1 = Struct_2(-549f, u_input.b.yx, 0i, u_input.b.x, func_4(~(~func_2(Struct_2(705f, vec2<i32>(u_input.b.x, -46291i), -1i, u_input.d, vec2<i32>(-1i, u_input.d)), u_input.a, 24506i, Struct_1(u_input.b, u_input.d, var_0.x, vec2<f32>(1495f, -489f))))));
    let var_2 = _wgslsmith_mod_vec2_i32(-vec2<i32>(0i, 1i), -var_1.b);
    let var_3 = select(var_0.x, ~reverseBits(select(4294967295u, var_0.x, true)), !(1244f < _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(ceil(-300f)))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a))), u_input.b.xy >> (abs(_wgslsmith_add_vec2_u32(u_input.c.wz, vec2<u32>(42028u, var_3))) % vec2<u32>(32u)), _wgslsmith_mult_i32(~(-1i), -1i), var_2.x << (_wgslsmith_clamp_u32(48972u, var_0.x ^ func_2(Struct_2(1386f, vec2<i32>(var_2.x, -2147483647i), -2856i, var_2.x, vec2<i32>(u_input.b.x, -2147483647i)), 0u, var_2.x, Struct_1(u_input.b, 2147483647i, 1u, vec2<f32>(-226f, var_1.a))), _wgslsmith_mult_u32(var_3, var_3)) % 32u), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = (func_1().b.x < u_input.d) & any(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    let var_2 = !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false))), 1i != ~func_3(vec3<u32>(1u, 1u, u_input.c.x), var_0.e.x));
    var var_3 = vec2<bool>(true, var_2.x);
    let var_4 = 0u;
    var_1 = !(any(var_2) && var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a), -(reverseBits(u_input.b) ^ select(vec3<i32>(u_input.d, 0i, u_input.d), abs(u_input.b), true)), _wgslsmith_clamp_vec4_u32(((u_input.c & vec4<u32>(60753u, var_4, u_input.a, 13003u)) & abs(vec4<u32>(77205u, 39577u, u_input.a, 21554u))) | u_input.c, abs(u_input.c), ~vec4<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(12733u, 1u, 4294967295u), vec3<u32>(var_4, 4294967295u, var_4)), ~1u, _wgslsmith_mult_u32(38876u, 4034u))), vec4<u32>(_wgslsmith_div_u32(~1u, 406u ^ (u_input.a & var_4)), 1u, firstTrailingBit(~23559u), abs(82338u) & (1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_4), vec2<u32>(u_input.a, u_input.c.x)) % 32u))));
}

