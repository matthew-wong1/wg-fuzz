struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = false;
    var var_1 = vec3<i32>(-2147483647i, -2381i, u_input.a.x);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-328f)) * arg_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1101f, 1365f))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x))));
    let var_3 = _wgslsmith_clamp_i32(var_1.x, u_input.a.x, ~max((arg_2 & var_1.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, 54219i, 2147483647i), u_input.a), var_1.x));
    var_2 = vec3<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))) + _wgslsmith_f_op_f32(ceil(1f)))), -781f);
    return arg_1.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(1081f, -1000f), _wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-arg_1));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(arg_2.x, arg_2.x), u_input.c.yx, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), ~u_input.b.zy));
    let var_2 = abs(func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2714f), _wgslsmith_f_op_f32(arg_1 + var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(var_0.x * arg_1), _wgslsmith_f_op_f32(-arg_1)), all(vec4<bool>(false, true, false, true)) & true)), Struct_1(u_input.b.zz & _wgslsmith_add_vec2_u32(var_1.a, var_1.a)), _wgslsmith_mod_i32(abs(44632i), 1i), Struct_1(reverseBits(u_input.c.xy))));
    let var_3 = Struct_1(_wgslsmith_add_vec2_u32(abs(vec2<u32>(~arg_2.x, _wgslsmith_add_u32(var_2, u_input.c.x))), _wgslsmith_div_vec2_u32(vec2<u32>(abs(var_1.a.x), ~28852u), ~(~vec2<u32>(var_1.a.x, arg_2.x)))));
    let var_4 = vec4<bool>(false, true, true, true);
    return var_4.x;
}

fn func_1() -> Struct_2 {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec3<bool>(true, false, true)), func_2(u_input.a, -513f, vec3<u32>(u_input.b.x, u_input.c.x, u_input.b.x))), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), true), select(true, -2147483647i > u_input.a.x, true) & select(true, true, 1u != u_input.b.x)), select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), vec4<bool>(any(vec3<bool>(false, true, true)), true, all(vec3<bool>(true, true, false)), all(vec2<bool>(false, true))), func_3(vec2<f32>(1f, 1f), Struct_1(vec2<u32>(u_input.c.x, 26290u)), u_input.a.x & u_input.a.x, Struct_1(u_input.b.zz)) > _wgslsmith_div_u32(4294967295u, u_input.b.x)), select(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(3154i, u_input.a.x)), -2147483647i, !any(vec2<bool>(false, true))) > ~(-8513i));
    let var_1 = var_0.yw;
    var_0 = !vec4<bool>(true, var_1.x, all(!(!vec4<bool>(true, var_1.x, true, false))), true);
    var_0 = vec4<bool>(false, var_1.x, true, !var_1.x || select(select(all(vec3<bool>(var_0.x, true, false)), var_0.x, true), all(!var_0.yy), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) < 1i));
    var_0 = vec4<bool>(var_0.x, ~firstLeadingBit(1251u) < u_input.c.x, false, true);
    return Struct_2(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(17944i, -2147483647i, u_input.a.x) >> (vec3<u32>(1u, u_input.c.x, 0u) % vec3<u32>(32u))) << (~u_input.b % vec3<u32>(32u)), u_input.a), Struct_1(u_input.c.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select(-(u_input.a & select(vec3<i32>(37833i, u_input.a.x, 27126i), var_0.a, func_2(var_0.a, 309f, u_input.c))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, u_input.a.x), 99i, 1i), var_0.a)), func_2(~vec3<i32>(max(-25109i, var_0.a.x), 1i, _wgslsmith_div_i32(u_input.a.x, var_0.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(378f + _wgslsmith_div_f32(530f, 956f)))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.b.a.x, 30835u, 4294967295u), ~vec3<u32>(23759u, u_input.c.x, var_0.b.a.x)), ~u_input.c)));
    let var_2 = Struct_1(u_input.b.yy);
    let var_3 = ~firstLeadingBit(var_2.a.x);
    var_0 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i ^ _wgslsmith_dot_vec2_i32(var_1.xy, u_input.a.zy), countOneBits(37877i)), func_1().a), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(1003f + 1418f))))));
}

