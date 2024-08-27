struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(536f + -1078f)))))));
    let var_1 = Struct_1(arg_0.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1141f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * 1000f))));
    var var_3 = Struct_2(vec3<bool>(true, arg_1.x, arg_1.x), firstTrailingBit(~max(~58064u, u_input.a)), any(vec2<bool>(arg_1.x, select(arg_1.x, all(arg_1), true))), reverseBits(max(4294967295u, ~u_input.a)) < ~(u_input.a & u_input.a));
    var_0 = var_2;
    return _wgslsmith_div_vec2_i32(~vec2<i32>(-(~u_input.c.x), 2147483647i), max(u_input.c.wy, u_input.c.wx));
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = u_input.c.xx;
    var_0 = countOneBits(func_3(Struct_1(-1000f), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, true, false, false)))));
    return select(!(!vec4<bool>(true, true, false, select(false, false, true))), !(!vec4<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true)), vec4<bool>(select(true, any(vec2<bool>(true, false)), true), true, (_wgslsmith_mult_i32(var_0.x, 0i) < u_input.c.x) | true, !(_wgslsmith_add_u32(8295u, u_input.a) < _wgslsmith_add_u32(arg_0.x, u_input.b))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(arg_1);
    let var_1 = Struct_2(arg_0.xxz, min(6243u, _wgslsmith_mod_u32(u_input.b, u_input.b) ^ ~_wgslsmith_div_u32(80870u, u_input.b)), 23151i >= _wgslsmith_add_i32(u_input.c.x, -21671i), true);
    let var_2 = -firstLeadingBit(~min(vec3<i32>(2147483647i, -1i, u_input.c.x), u_input.c.wxw)) & abs(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(15824i, u_input.c.x, 0i)), select(vec3<i32>(u_input.c.x, -26057i, u_input.c.x), u_input.c.zxz, arg_0.xxy)), _wgslsmith_mult_vec3_i32(~u_input.c.xzx, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a)), 526f, -621f, _wgslsmith_f_op_f32(sign(-927f)));
    var var_4 = Struct_2(!vec3<bool>(!(!var_1.a.x), func_2(vec4<u32>(u_input.b, var_1.b, u_input.b, var_1.b) ^ vec4<u32>(1u, var_1.b, 1u, 1u)).x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(45714u, u_input.a), var_1.b, ~(~4294967295u)), vec3<u32>(u_input.a, 0u ^ _wgslsmith_sub_u32(var_1.b, 39413u), var_1.b)), false, true);
    return Struct_2(vec3<bool>(true, !(!arg_3) | !all(arg_0), (-1i >= (var_2.x | -38062i)) || arg_0.x), var_4.b, !(!(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(0u, var_4.b)) >= u_input.a)), all(select(!select(vec2<bool>(true, false), vec2<bool>(arg_0.x, true), true), select(var_1.a.yz, !var_4.a.xx, vec2<bool>(var_1.d, arg_3)), arg_0.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), all(vec3<bool>(false, true, false)) & true, func_1(Struct_2(vec3<bool>(false, true, true), u_input.a, false, false), Struct_2(vec3<bool>(true, true, true), 72471u, true, true), Struct_1(1000f)) && true, true), !func_2(vec4<u32>(u_input.b, 0u, 1u, u_input.b)), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1200f)), _wgslsmith_f_op_f32(809f * 994f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) * 3122f))))), Struct_1(394f), !any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))));
    var var_1 = Struct_1(-1989f);
    var var_2 = ~countOneBits(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, var_0.b) >> (vec2<u32>(4294967295u, var_0.b) % vec2<u32>(32u))), vec2<u32>(var_0.b, _wgslsmith_sub_u32(0u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(15814u, u_input.b), vec2<u32>(4294967295u, var_0.b) >> (vec2<u32>(9612u, 1u) % vec2<u32>(32u)))));
    var var_3 = Struct_2(func_2(vec4<u32>(min(14436u, u_input.b) ^ u_input.a, countOneBits(var_2.x), 29975u, 1u)).wzw, _wgslsmith_add_u32(var_2.x & ~42806u, _wgslsmith_add_u32(0u, ~abs(11814u))), var_0.a.x, all(vec2<bool>(!var_0.d, false)));
    var var_4 = vec2<u32>(16921u, ~var_3.b);
    var_2 = vec2<u32>(~(func_4(func_2(vec4<u32>(149u, u_input.a, 10893u, var_3.b)), var_1.a, Struct_1(var_1.a), false).b | _wgslsmith_clamp_u32(var_0.b | var_3.b, var_0.b, _wgslsmith_sub_u32(45926u, var_3.b))), reverseBits(~6819u));
    let var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1076f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a))), -607f)), -(~(vec4<i32>(-2147483647i, -3806i, -1i, 22250i) & vec4<i32>(2147483647i, u_input.c.x, 2147483647i, 14858i))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-574f, var_1.a, var_1.a), vec3<f32>(-355f, 897f, -1079f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(382f, -719f, 293f) - vec3<f32>(-1000f, -813f, 1176f)))) - vec3<f32>(-168f, _wgslsmith_f_op_f32(-var_1.a), var_1.a)))));
}

