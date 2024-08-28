struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 0u)), vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 49433u, 111485u, 68340u), vec4<u32>(4294967295u, u_input.c, u_input.c, 0u)))), min(min(0u << (u_input.c % 32u), _wgslsmith_mod_u32(u_input.c, 4294967295u)), u_input.c)), ~_wgslsmith_mod_u32(firstLeadingBit(~8788u), u_input.c));
    var var_1 = select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, u_input.b.x < u_input.b.x, !any(vec4<bool>(true, true, true, true))), true);
    var var_2 = ~_wgslsmith_dot_vec2_i32(-u_input.b.zy, reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 10160i), u_input.b.yy)) & -vec2<i32>(26886i, u_input.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), -1244f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1490f, _wgslsmith_f_op_f32(f32(-1f) * -1323f)))) + vec2<f32>(-649f, _wgslsmith_f_op_f32(-206f * _wgslsmith_f_op_f32(f32(-1f) * -261f))))));
    var_0 = 1u >> (1u % 32u);
    return 274f;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(step(-469f, _wgslsmith_f_op_f32(-arg_2.x))) <= arg_2.x, arg_1.a.x, true);
    var var_1 = ~min(~countOneBits(vec3<u32>(5134u, 0u, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(10469u, 4294967295u, 35400u), vec3<u32>(28038u, arg_0, 0u))) & select(_wgslsmith_mod_vec3_u32(~(vec3<u32>(1374u, 0u, 2973u) >> (vec3<u32>(7191u, 42421u, arg_0) % vec3<u32>(32u))), ~(~vec3<u32>(0u, u_input.c, 1u))), abs(vec3<u32>(0u, arg_0, arg_0) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(8159u, arg_0, u_input.c), vec3<u32>(8711u, 74052u, 75090u)) % vec3<u32>(32u))), arg_1.c.yxz);
    let var_2 = -arg_1.b.x;
    let var_3 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1966f * _wgslsmith_f_op_f32(arg_2.x + -1023f)), -909f)) + 1456f), _wgslsmith_f_op_f32(arg_2.x - arg_2.x));
    let var_4 = Struct_2(select(vec2<bool>(!any(vec2<bool>(var_0.x, var_3.a)), var_3.a), select(!vec2<bool>(var_3.a, true), var_0.zx, false || all(arg_1.c.yww)), vec2<bool>(_wgslsmith_f_op_f32(arg_2.x * 118f) == _wgslsmith_f_op_f32(func_3()), var_0.x || false)), -arg_1.b, select(!select(arg_1.c, select(arg_1.c, arg_1.c, vec4<bool>(true, arg_1.a.x, false, false)), vec4<bool>(false, true, true, arg_1.c.x)), !vec4<bool>(arg_1.a.x & arg_1.a.x, arg_1.a.x, any(vec2<bool>(true, false)), true), !vec4<bool>(false, !var_3.a, true, 57198u <= arg_0)));
    return var_2;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = u_input.b.zx;
    var_0 = ~(~vec2<i32>(arg_0, _wgslsmith_sub_i32(func_2(0u, Struct_2(vec2<bool>(false, true), vec2<i32>(arg_0, -9520i), vec4<bool>(true, true, false, true)), vec4<f32>(-187f, -154f, -1487f, 1000f), -1i), _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(2147483647i, -1i)))));
    var_0 = vec2<i32>(firstLeadingBit(~(i32(-1i) * -16488i)), ~arg_0);
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(abs(-countOneBits(-16282i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b.x, -2147483647i), _wgslsmith_div_i32(0i, u_input.a) & 2147483647i)), u_input.b.x, -_wgslsmith_mult_i32(1157i, -_wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), 1i);
    let var_2 = var_1.x;
    return Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-412f, _wgslsmith_f_op_f32(trunc(-1726f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1576f, -582f)))))) - _wgslsmith_f_op_f32(712f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(321f, -675f))))), -1000f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = arg_0;
    var var_1 = true;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_div_f32(-2023f, 905f)), arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) * _wgslsmith_f_op_f32(-arg_0.b)) * _wgslsmith_f_op_f32(min(-796f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) < -1000f;
    var_1 = false | var_0.a;
    var_1 = false;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(true, _wgslsmith_div_f32(-683f, 1028f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-658f)) - _wgslsmith_f_op_f32(f32(-1f) * -647f))), u_input.b.xx, vec4<bool>(!func_4(func_1(2147483647i, vec4<u32>(1u, u_input.c, 1u, u_input.c)), Struct_2(vec2<bool>(false, false), vec2<i32>(-2147483647i, u_input.a), vec4<bool>(true, true, false, false))), false, true, !(u_input.c == abs(u_input.c))));
    let var_1 = Struct_2(vec2<bool>(false, false), u_input.b.yx, var_0.c);
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = var_1;
    let var_4 = _wgslsmith_div_i32(_wgslsmith_mult_i32(12172i << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.c, 0u, 39948u))) % 32u), 134i), 38738i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~select(vec2<u32>(u_input.c, 0u), firstTrailingBit(vec2<u32>(u_input.c, u_input.c)), select(var_2.a, vec2<bool>(true, false), var_1.c.x))));
}

