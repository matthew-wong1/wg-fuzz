struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = select(1u, 0u, any(vec4<bool>(false, true, any(vec3<bool>(true, true, false)) | true, firstTrailingBit(u_input.a) < countOneBits(4294967295u))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-577f, 1163f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-416f, -1000f) - vec2<f32>(1000f, -985f))))));
    let var_3 = ~firstLeadingBit(~(~vec4<u32>(u_input.b, 0u, u_input.a, 0u)));
    let var_4 = Struct_5(!(!(!vec3<bool>(true, var_1, var_1))), 1i);
    return !vec3<bool>(any(var_4.a), !all(!vec4<bool>(var_4.a.x, true, false, false)), any(select(select(vec2<bool>(var_4.a.x, var_4.a.x), var_4.a.zy, vec2<bool>(false, true)), var_4.a.zy, vec2<bool>(true, var_4.a.x))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5) -> bool {
    let var_0 = Struct_5(!func_3(), u_input.c);
    return all(select(var_0.a, vec3<bool>(true, all(vec4<bool>(false, arg_0.c, false, true)), any(select(vec4<bool>(false, false, true, arg_1.a.x), vec4<bool>(arg_1.a.x, true, arg_0.c, true), var_0.a.x))), !(firstLeadingBit(var_0.b) >= -20188i)));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec4<i32> {
    let var_0 = max(~(~(~4294967295u)), ~1u);
    let var_1 = select(vec2<bool>(!(!arg_1), select(any(vec4<bool>(arg_0.d, arg_1, false, arg_0.a)), select(false, false, true), any(vec2<bool>(false, false))) | !func_2(Struct_4(false, vec4<f32>(-129f, arg_0.c.x, arg_0.c.x, -1799f), false, vec2<u32>(var_0, 19517u)), Struct_5(vec3<bool>(arg_0.a, false, arg_1), u_input.c))), select(select(vec2<bool>(arg_1, all(vec4<bool>(arg_0.d, false, false, arg_0.d))), vec2<bool>(true | arg_0.a, arg_0.d), vec2<bool>(false, any(vec4<bool>(false, true, true, true)))), func_3().yy, select(vec2<bool>(arg_0.d, !arg_1), vec2<bool>(true, arg_1), all(select(vec3<bool>(arg_1, true, arg_0.d), vec3<bool>(true, false, arg_1), false)))), all(vec4<bool>(true, true, func_2(Struct_4(arg_0.d, vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.b, arg_0.b), true, vec2<u32>(4294967295u, var_0)), Struct_5(vec3<bool>(true, arg_1, false), -2147483647i)), any(vec3<bool>(true, true, false)) & !arg_0.d)));
    var var_2 = ~2147483647i >> ((var_0 & min(_wgslsmith_dot_vec2_u32(vec2<u32>(18511u, 16208u) & vec2<u32>(var_0, var_0), ~vec2<u32>(u_input.e, 30054u)), abs(15914u))) % 32u);
    var_2 = u_input.c;
    let var_3 = Struct_3(u_input.d & (1u << (var_0 % 32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, arg_0.b) * vec2<f32>(arg_0.c.x, -1054f)))) - vec2<f32>(-541f, -194f)))));
    return -vec4<i32>(u_input.c, -_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-107i, -12191i)), vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(51725i, 32501i), _wgslsmith_sub_i32(-67197i, 0i))), max(abs(u_input.c), -6848i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(-u_input.c < u_input.c, _wgslsmith_f_op_f32(310f * _wgslsmith_f_op_f32(f32(-1f) * -439f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(155f)), -855f, 2044f, _wgslsmith_f_op_f32(1133f - -1654f))), all(vec3<bool>(true, true, true))), true);
    var_0 = vec4<i32>(firstTrailingBit(-var_0.x), -2147483647i, i32(-1i) * -u_input.c, u_input.c & u_input.c);
    let var_1 = vec3<f32>(1468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(343f - _wgslsmith_f_op_f32(abs(-119f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1056f, _wgslsmith_f_op_f32(ceil(519f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), -106f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-854f, var_1.x, var_1.x, 1045f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(231f, var_1.x, var_1.x, -1386f) - vec4<f32>(-572f, -508f, 1429f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-447f, 481f), 510f, var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x)))), u_input.b, _wgslsmith_f_op_f32(step(var_1.x, 240f)), ~func_1(Struct_2(true, 1939f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 403f, var_1.x, var_1.x), vec4<f32>(1569f, var_1.x, var_1.x, var_1.x), false)), true), _wgslsmith_f_op_f32(ceil(var_1.x)) <= -1415f).zw);
}

