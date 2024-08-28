struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_5(Struct_3(min(reverseBits(1u), u_input.d), countOneBits(20528i), arg_0), Struct_1(select(vec4<bool>(true, arg_0, true, true), !vec4<bool>(true, false, arg_0, false), vec4<bool>(true, true, true, true))), Struct_1(vec4<bool>(arg_0, arg_0, true && arg_0, arg_0)));
    let var_1 = Struct_2(Struct_1(var_0.b.a));
    let var_2 = 0i;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1005f, 609f), vec2<f32>(-118f, -213f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-162f, 418f))))))));
    var var_4 = Struct_5(var_0.a, var_1.a, var_0.b);
    return false;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    var var_0 = min(vec2<i32>(arg_0.x, -43263i), -arg_0);
    let var_1 = Struct_3(abs(~u_input.a.x), -1i, ~reverseBits(_wgslsmith_sub_i32(u_input.c.x, 1i)) > 0i);
    let var_2 = Struct_3(~var_1.a, max(-1i, countOneBits(u_input.b)), all(vec3<bool>(true, func_3(arg_1), !var_1.c)) || func_3(true));
    var var_3 = true;
    var var_4 = Struct_4(~abs(~firstTrailingBit(2147483647i)), Struct_1(select(vec4<bool>(any(vec2<bool>(arg_1, true)), var_2.b >= var_0.x, all(vec3<bool>(var_2.c, false, arg_1)), arg_1), vec4<bool>(func_3(true), arg_1, true, !var_2.c), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-932f, 679f), vec2<f32>(654f, 1268f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-896f, -334f) * vec2<f32>(-2006f, -131f)), vec2<bool>(arg_1, arg_1))), vec2<f32>(_wgslsmith_div_f32(866f, -653f), _wgslsmith_div_f32(-183f, 888f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    return 1393f;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    let var_0 = u_input.c;
    let var_1 = Struct_3(min(_wgslsmith_clamp_u32(0u << ((u_input.d | u_input.a.x) % 32u), arg_3.x, 1u), u_input.d), ~_wgslsmith_mult_i32(arg_0, (arg_2 | var_0.x) << (reverseBits(u_input.d) % 32u)), arg_1 >= _wgslsmith_f_op_f32(f32(-1f) * -922f));
    let var_2 = _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), var_1.c | false)))), _wgslsmith_f_op_f32(-arg_1))), all(select(!select(vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, false), var_1.c), !vec4<bool>(true, false, false, var_1.c), vec4<bool>(false, var_1.c, any(vec2<bool>(var_1.c, var_1.c)), var_1.c)))));
    var var_3 = Struct_4(1i, Struct_1(!(!vec4<bool>(var_1.c, false, var_1.c, var_1.c))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, var_2)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2, -1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -953f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -505f)))))));
    var var_4 = ~(-(~var_1.b));
    return _wgslsmith_f_op_f32(-var_3.c.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1048f + _wgslsmith_f_op_f32(-412f * _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), _wgslsmith_f_op_f32(func_2(u_input.c.xy, arg_1.x)), _wgslsmith_div_i32(2147483647i, u_input.b), arg_0.zy)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-vec2<i32>(34901i, 95428i), true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1546f)), _wgslsmith_f_op_f32(f32(-1f) * -467f))))));
    let var_1 = countOneBits(_wgslsmith_sub_vec2_u32(u_input.a.xz, u_input.a.yw));
    var var_2 = Struct_3(_wgslsmith_dot_vec4_u32(arg_0, ~vec4<u32>(83u, countOneBits(12631u), 1u, ~arg_0.x)), u_input.c.x, all(vec4<bool>(false, arg_1.x, arg_1.x, any(vec2<bool>(arg_1.x, arg_1.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(1666f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1310f * 317f))))));
    return select(!(!(!arg_1)), !(!select(vec4<bool>(var_2.c, var_2.c, false, false), arg_1, !arg_1.x)), !select((false && var_2.c) | arg_1.x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.d, 4294967295u, var_0.x, var_0.x) ^ firstTrailingBit(u_input.a), vec4<u32>(8932u, ~4294967295u, var_0.x << (0u % 32u), u_input.a.x), vec4<bool>(true, false, true, true)), ~(~vec4<u32>(56847u, 1u, ~33117u, u_input.d ^ var_0.x)));
    let var_1 = ~_wgslsmith_add_vec4_u32(u_input.a, u_input.a);
    var_0 = _wgslsmith_sub_vec4_u32(u_input.a, select(select(var_1 >> (vec4<u32>(16003u, var_1.x, var_1.x, var_1.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, var_0.x, u_input.d, 4294967295u), true), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, var_1.x, var_0.x), u_input.a) ^ _wgslsmith_add_vec4_u32(u_input.a, u_input.a), func_1(abs(vec4<u32>(0u, 45227u, var_1.x, 4294967295u)), vec4<bool>(true, true, true, true), var_1.wz, _wgslsmith_add_u32(var_0.x, 22324u)))) >> (u_input.a % vec4<u32>(32u));
    var var_2 = ~(~(vec2<i32>(-1i, _wgslsmith_mod_i32(u_input.c.x, 29550i)) ^ _wgslsmith_div_vec2_i32(abs(u_input.c.zw), _wgslsmith_sub_vec2_i32(u_input.c.zw, u_input.c.zz))));
    var var_3 = Struct_4(i32(-1i) * -1i, Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(var_3.c)));
}

