struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    return vec3<bool>(false, arg_0, arg_0);
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_1(41813i, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(25794i, u_input.c, -2147483647i)), countOneBits(vec3<i32>(-11557i, 37451i, -28240i))), -81737i), u_input.c, _wgslsmith_div_i32(_wgslsmith_mod_i32(firstTrailingBit(u_input.c), u_input.c | u_input.c), ~(i32(-1i) * -30916i))));
    let var_1 = false;
    var var_2 = _wgslsmith_sub_u32(u_input.a, ~u_input.e);
    var_2 = ~16662u;
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(2147483647i, -(min(-vec3<i32>(arg_1.a, 7661i, -2147483647i), select(vec3<i32>(arg_1.a, -6122i, -29833i), arg_0.b, vec3<bool>(false, false, true))) | _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.c, 54453i, u_input.c), firstTrailingBit(vec3<i32>(57229i, 16915i, 1i)))));
    let var_2 = 0u;
    var_0 = 4294967295u;
    var_0 = countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, 1u), 25550u, ~_wgslsmith_mult_u32(u_input.b.x, 1u)));
    return true || all(vec2<bool>(all(vec2<bool>(true, false)), !all(vec2<bool>(false, true))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec4<bool>(any(vec2<bool>(select(true, true, true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))))), select(true, true, true) && (~(~u_input.c) > ~(-u_input.c)), true, !any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    let var_1 = select(func_2(u_input.c >= 1i, Struct_1(_wgslsmith_clamp_i32(u_input.c, -11073i, u_input.c), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -7566i, u_input.c), vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.c, 1i, u_input.c)))), var_0.xxz, func_4(Struct_1(u_input.c, func_3(801f, vec2<f32>(-1902f, 262f)) << ((vec3<u32>(u_input.e, 43597u, 0u) & vec3<u32>(22415u, u_input.a, 52291u)) % vec3<u32>(32u))), Struct_1(_wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_add_i32(4592i, u_input.c)), ~vec3<i32>(-2147483647i, u_input.c, u_input.c) ^ select(vec3<i32>(1i, -21444i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), var_0.x))));
    var var_2 = u_input.c;
    let var_3 = any(!select(!var_1.xx, !vec2<bool>(false, var_1.x), var_1.zx));
    let var_4 = select(!(4294967295u >= ~arg_0), !any(vec2<bool>(true, true)), select(!var_0.x, all(vec3<bool>(true, true, true)), false));
    return Struct_1(2147483647i, ~(vec3<i32>(-1i) * -(~vec3<i32>(-6643i, -1i, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.d ^ u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(896f)), _wgslsmith_f_op_f32(f32(-1f) * -1990f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f))))), -(~(_wgslsmith_add_i32(var_0.a, -2147483647i) ^ _wgslsmith_dot_vec3_i32(var_0.b, vec3<i32>(var_0.a, var_0.b.x, -2147483647i)))), _wgslsmith_div_u32(u_input.e, 45077u) << ((u_input.a & ~_wgslsmith_sub_u32(0u, u_input.b.x)) % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1640f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1128f)) + 2163f)))));
}

