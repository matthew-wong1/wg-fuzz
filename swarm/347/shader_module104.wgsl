struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = select(reverseBits(firstTrailingBit(vec2<i32>(firstLeadingBit(16272i), 41303i))), vec2<i32>(max(~_wgslsmith_add_i32(2147483647i, -2147483647i), _wgslsmith_clamp_i32(firstLeadingBit(2147483647i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-41852i, 1i), vec2<i32>(-1i, -13848i)))), -2147483647i), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true)));
    var var_1 = 1f;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(186f, -419f, -978f, 1011f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1513f, 912f, -356f, -1000f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, 480f, 222f, -1084f) - vec4<f32>(598f, 991f, 1111f, -782f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-105f, 809f, 436f, 361f)))), vec4<f32>(581f, -148f, _wgslsmith_div_f32(-2166f, -1000f), _wgslsmith_f_op_f32(191f + 430f)), true)))), u_input.a.x, -countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-67494i, var_0.x), vec2<i32>(0i, var_0.x))));
    var_1 = _wgslsmith_f_op_f32(-475f + var_2.a.x);
    let var_3 = var_2;
    return (var_2.c ^ -72609i) & _wgslsmith_clamp_i32(~var_0.x, -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c, 44325i), vec2<i32>(var_0.x, -1i)), 0i), ~(-1i));
}

fn func_2() -> bool {
    let var_0 = !vec2<bool>(~reverseBits(15113i) == _wgslsmith_div_i32(func_3(), _wgslsmith_clamp_i32(2147483647i, -2147483647i, 43453i)), all(vec3<bool>(all(vec3<bool>(false, true, true)), true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1140f + -291f)), -827f, 1912f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(215f, 370f, 1020f) - vec3<f32>(1312f, 1561f, -214f)))))), vec3<bool>(!all(select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x))), (u_input.a.x | max(5469u, u_input.a.x)) >= _wgslsmith_div_u32(~u_input.a.x, u_input.a.x), var_0.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(495f)), -718f, var_1.x, var_1.x);
    var var_3 = ~vec3<u32>(1u, ~(~u_input.a.x), 40403u) | vec3<u32>(0u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(52809u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 1u), countOneBits(4294967295u));
    var var_4 = _wgslsmith_mod_i32(min(_wgslsmith_clamp_i32(0i, select(32625i, 0i, var_0.x), -1535i), _wgslsmith_mult_i32(1i, -53565i)) << (u_input.a.x % 32u), _wgslsmith_add_i32(~(~1i), firstTrailingBit(firstTrailingBit(40609i))));
    return !all(!(!select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, var_0.x, true), var_0.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = !arg_0.a.x;
    var var_1 = Struct_3(select(arg_0.a, vec2<bool>(all(!vec3<bool>(true, arg_0.a.x, arg_0.a.x)), false), vec2<bool>(all(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), false && arg_0.a.x)), vec3<u32>(_wgslsmith_add_u32(arg_0.b.x, u_input.a.x), arg_1.a.b, ~select(~arg_1.a.b, min(50196u, 1u), arg_0.a.x)), 1834f, arg_1);
    var_1 = Struct_3(vec2<bool>(arg_0.a.x, any(vec3<bool>(arg_0.a.x, false, any(vec4<bool>(false, arg_0.a.x, arg_0.a.x, var_1.a.x))))), ~var_1.b, -120f, Struct_2(Struct_1(arg_0.d.a.a, u_input.a.x >> (1u % 32u), var_1.d.a.c)));
    var_1 = Struct_3(!(!(!(!arg_0.a))), ~var_1.b | firstLeadingBit(~arg_0.b), arg_0.d.a.a.x, arg_1);
    var var_2 = _wgslsmith_div_i32(1821i, func_3() >> (~(~(~49972u)) % 32u));
    return arg_1.a;
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, -518f, arg_0.a.a.x, 882f) - arg_0.a.a)))), arg_0.a.b, -1i));
    let var_1 = _wgslsmith_f_op_f32(round(var_0.a.a.x));
    let var_2 = func_4(Struct_3(!vec2<bool>(true, func_2()), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, var_0.a.b, var_0.a.b), vec4<u32>(1u, 34616u, u_input.a.x, 40033u)), 0u), 40890u, 4294967295u), -1107f, arg_0), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_0.a.a)), ~(~1u), arg_0.a.c ^ var_0.a.c)));
    let var_3 = func_3();
    var_0 = arg_0;
    return vec2<bool>(func_2(), all(vec3<bool>(true, true & all(vec3<bool>(true, false, false)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !func_1(Struct_2(Struct_1(vec4<f32>(-619f, 756f, 1319f, 1243f), 70089u, 1i))), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false))), vec2<bool>(true, true), true), ~(~(~(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) | vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1786f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f * -217f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1652f * -816f)) - -530f)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(443f, -1114f, 114f, -1000f), vec4<f32>(-697f, 622f, 180f, 477f))))), ~1u, firstTrailingBit(1i))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_0.d.a.a.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.d.a.a.xx, var_0.d.a.a.zw)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.a.a.xw * vec2<f32>(var_0.d.a.a.x, var_0.d.a.a.x)) * vec2<f32>(var_0.d.a.a.x, -329f)))), 93122u, vec4<i32>(35552i, ~(~(-3999i)), func_4(Struct_3(vec2<bool>(false, false), vec3<u32>(u_input.a.x, var_0.d.a.b, 0u), var_0.c, var_0.d), Struct_2(func_4(Struct_3(var_0.a, var_0.b, var_0.c, var_0.d), var_0.d))).c, min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.a.c, -15635i) << (vec2<u32>(var_0.b.x, var_0.b.x) % vec2<u32>(32u)), vec2<i32>(-1i, var_0.d.a.c)), min(var_0.d.a.c, abs(49988i)))));
}

