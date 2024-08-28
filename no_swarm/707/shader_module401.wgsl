struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32) -> u32 {
    var var_0 = select(vec3<bool>(true, false, false), !vec3<bool>(false, true, any(vec4<bool>(true, true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    global0 = u_input.e.zzw;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1142f, -657f, -105f), vec3<f32>(-486f, -321f, 1011f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) + vec3<f32>(arg_2, arg_2, arg_2))), select(var_0.x, var_0.x, !var_0.x)))));
    let var_2 = vec3<bool>(false, true, false);
    let var_3 = var_2;
    return countOneBits(~(~1u));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_1 {
    return Struct_1(vec2<bool>(arg_2, false), _wgslsmith_f_op_f32(-arg_0), !vec3<bool>(!(false || arg_2), !arg_2, all(vec4<bool>(false, false, arg_2, false)) | !arg_2), _wgslsmith_f_op_f32(round(-907f)));
}

fn func_1() -> Struct_1 {
    global0 = vec3<i32>(~(-2382i), _wgslsmith_add_i32(firstTrailingBit(~select(global0.x, global0.x, true)), -2147483647i), u_input.c.x);
    var var_0 = func_3(-262f, abs(func_2(~global0.x, 23712i, _wgslsmith_f_op_f32(-1000f + 354f)) & 1u), false | all(vec4<bool>(global0.x > global0.x, true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, false, true)))));
    var_0 = func_3(var_0.b, 52376u, var_0.c.x);
    var var_1 = select(!(!vec4<bool>(u_input.d.x >= 4734i, true, var_0.c.x, true)), vec4<bool>(true, (false || !var_0.a.x) | (global0.x > _wgslsmith_dot_vec2_i32(vec2<i32>(-13151i, -6192i), vec2<i32>(-31988i, u_input.a))), !var_0.a.x, true), true);
    var_0 = Struct_1(!select(!(!vec2<bool>(var_1.x, true)), !var_0.a, var_1.x), -719f, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f * var_0.d) * _wgslsmith_f_op_f32(-var_0.d))), ~(~_wgslsmith_mod_u32(21062u, 68336u)), !var_0.c.x).c, _wgslsmith_div_f32(-1198f, 252f));
    return func_3(var_0.d, _wgslsmith_mod_u32(reverseBits(4294967295u), ~20067u), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = select(abs(select(~vec3<i32>(-2147483647i, global0.x, 2147483647i), min(u_input.d.xxy, vec3<i32>(global0.x, 2147483647i, u_input.d.x)), true) ^ vec3<i32>(2147483647i, ~30564i, u_input.b << (127030u % 32u))), vec3<i32>(~1i, _wgslsmith_mod_i32(~(~global0.x), 0i | global0.x), -(~0i)), !select(!(!var_0.c), vec3<bool>(all(vec4<bool>(var_0.a.x, var_0.c.x, var_0.c.x, false)), var_0.c.x == var_0.c.x, var_0.a.x != true), !vec3<bool>(true, false, var_0.c.x)));
    let var_1 = var_0;
    global0 = _wgslsmith_div_vec3_i32(u_input.d.zww, select(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, abs(u_input.b), -2147483647i), ~(-u_input.b), global0.x), -(~(~vec3<i32>(-46026i, global0.x, global0.x))), var_0.a.x));
    var var_2 = func_3(_wgslsmith_f_op_f32(-1072f + var_1.b), reverseBits(4294967295u), all(select(!(!vec4<bool>(true, false, true, var_1.c.x)), !(!vec4<bool>(var_0.a.x, true, true, false)), var_1.a.x)));
    var_2 = func_1();
    global0 = countOneBits(u_input.c.wyx);
    let var_3 = true;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(u_input.c, min(vec4<i32>(u_input.b, -37600i, 797i, 2601i), u_input.c)) ^ firstTrailingBit(-14298i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-732f, -881f, var_4.b), vec3<f32>(-261f, var_0.d, var_1.b), false))))), vec4<u32>(~_wgslsmith_clamp_u32(min(32424u, 9226u), _wgslsmith_div_u32(4294967295u, 74283u), 70361u), 44990u, ~1u, firstTrailingBit(reverseBits(29481u))));
}

