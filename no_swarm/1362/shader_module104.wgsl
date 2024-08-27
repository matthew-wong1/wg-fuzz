struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-255f + -1008f)), _wgslsmith_f_op_f32(round(-793f))) * -480f), 174f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(110f, 1990f)), -265f)), 1871f), -1201f);
    let var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_mult_i32(29660i, var_1.a));
    global1 = Struct_1(~(_wgslsmith_sub_i32(~18113i, arg_1.a & u_input.a) & var_1.a));
    return Struct_1(global0.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: bool) -> u32 {
    global0 = Struct_1(global0.a);
    let var_0 = vec2<bool>(false, -32479i == arg_0.a);
    let var_1 = -vec3<i32>(-1i | reverseBits(_wgslsmith_mod_i32(arg_1.x, global1.a)), countOneBits(u_input.a), arg_1.x | global1.a);
    var var_2 = func_2(-vec3<i32>(_wgslsmith_div_i32(~(-1i), _wgslsmith_div_i32(arg_0.a, global1.a)), -1i, global0.a), func_2(~min(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, 9688i, 0i), vec3<i32>(926i, 1i, -25740i)), vec3<i32>(-26749i, 0i, u_input.a) & vec3<i32>(arg_1.x, arg_1.x, arg_1.x)), arg_0));
    let var_3 = arg_0;
    return 1u;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = min(~(~vec4<u32>(4294967295u, arg_0, arg_0, arg_0)), vec4<u32>(func_3(func_2(vec3<i32>(global0.a, 49598i, 0i), Struct_1(-12854i)), vec3<i32>(13643i, u_input.a, global0.a), false, all(vec3<bool>(true, false, true))), arg_0, 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(arg_0, arg_0, 14047u)))) >> (vec4<u32>(arg_0, arg_0, arg_0, 2965u) % vec4<u32>(32u));
    global0 = func_2(-min(vec3<i32>(1i, select(global1.a, -1i, true), global1.a), ~(~vec3<i32>(global1.a, -14013i, 0i))), func_2(~vec3<i32>(u_input.a, 1i, global0.a) >> (~(~var_0.zwz) % vec3<u32>(32u)), Struct_1(-global1.a)));
    global0 = Struct_1(-12438i);
    return _wgslsmith_mod_u32(abs(arg_0), var_0.x) ^ (arg_0 | select(arg_0, arg_0, any(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<i32>) -> StorageBuffer {
    let var_0 = arg_0.zxy;
    let var_1 = _wgslsmith_sub_u32(61796u ^ ~arg_0.x, min(4294967295u, var_0.x));
    var var_2 = Struct_1(min(-(-arg_3.x | ~0i), -9452i));
    let var_3 = Struct_1(22738i);
    global0 = var_3;
    return StorageBuffer(arg_0.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(-474f, _wgslsmith_f_op_f32(f32(-1f) * -428f), any(vec3<bool>(false, true, false)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.xwy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.xzz + vec3<f32>(-955f, arg_1.x, arg_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), false), true)), any(!vec4<bool>(true, true, all(vec2<bool>(true, true)), true)));
    let var_1 = firstTrailingBit(4294967295u);
    let var_2 = Struct_1(global0.a & max(u_input.a, ~1i));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(42886u, 91618u), ~max(var_1, 1u)), 4294967295u), countOneBits(~var_1));
    let var_4 = -u_input.a;
    var var_5 = Struct_1(21859i);
    global0 = Struct_1(~(-2147483647i));
    var_5 = var_2;
    let var_6 = global1.a;
    let x = u_input.a;
    s_output = func_4(~(~vec4<u32>(var_1, var_1, func_1(var_1), 46132u)), _wgslsmith_div_vec4_f32(vec4<f32>(-420f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-207f + -508f), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(426f)) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-300f - -1424f) + _wgslsmith_f_op_f32(f32(-1f) * -1918f))), vec4<f32>(-1320f, _wgslsmith_f_op_f32(trunc(-409f)), _wgslsmith_f_op_f32(step(1870f, _wgslsmith_f_op_f32(-510f + 1125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f * 209f)))), 56033u & (4294967295u & ~func_3(var_2, vec3<i32>(-46863i, var_5.a, -2392i), false, var_0.x)), ~vec4<i32>(2147483647i >> (1u % 32u), ~(global0.a & var_5.a), _wgslsmith_div_i32(abs(1i), -var_4), 6146i));
}

