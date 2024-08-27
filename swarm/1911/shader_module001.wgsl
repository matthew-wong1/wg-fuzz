struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: vec3<f32> = vec3<f32>(843f, 1318f, 1000f);

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(484f, -780f, 1362f), 628f), Struct_1(vec3<f32>(-2307f, -551f, 719f), -379f), Struct_1(vec3<f32>(1000f, 559f, 402f), -769f), Struct_1(vec3<f32>(-1543f, 298f, -1081f), -1510f), Struct_1(vec3<f32>(1739f, -886f, -1000f), -869f), Struct_1(vec3<f32>(-594f, 127f, -631f), 686f), Struct_1(vec3<f32>(-437f, -466f, -630f), 902f), Struct_1(vec3<f32>(698f, 570f, 1373f), 468f), Struct_1(vec3<f32>(-609f, -213f, 211f), -1235f), Struct_1(vec3<f32>(1430f, 1278f, -877f), -1023f), Struct_1(vec3<f32>(-1282f, 387f, 2422f), 664f), Struct_1(vec3<f32>(879f, 3053f, -2005f), 733f), Struct_1(vec3<f32>(568f, 364f, -670f), 927f), Struct_1(vec3<f32>(-846f, -868f, 685f), -284f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 14u)];
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(false, 1i < u_input.c.x), vec2<bool>(any(vec2<bool>(false, false)), true)));
    let var_2 = global2[_wgslsmith_index_u32(abs(u_input.b), 14u)];
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) + arg_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-672f)) * _wgslsmith_f_op_f32(global0.x * -309f))))), var_0.b);
    var_3 = arg_1;
    return _wgslsmith_f_op_vec3_f32(trunc(arg_1.a));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(global0.x, global0.x, global0.x), 116f), Struct_1(vec3<f32>(global0.x, -173f, 967f), global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))));
    global0 = var_0.a;
    global2 = array<Struct_1, 14>();
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(875f, var_0.b, -1092f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_0.a, var_0.a), _wgslsmith_f_op_vec3_f32(-var_0.a))), u_input.e.x <= _wgslsmith_mod_u32(1u, u_input.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1521f, global0.x))), _wgslsmith_f_op_f32(abs(var_0.a.x)))), 1512f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(-663f, arg_1.b, arg_2.b)))), _wgslsmith_div_vec3_f32(arg_1.a, _wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(global0.x, 1000f, 275f))), select(!vec3<bool>(arg_0, arg_0, false), !vec3<bool>(true, arg_0, arg_0), true))))), 1000f);
    let var_1 = ~4294967295u;
    var var_2 = func_2();
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -912f));
    let var_4 = u_input.a;
    return u_input.d;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yx) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f), global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) + _wgslsmith_f_op_f32(abs(global0.x)))), global0.x));
    var var_1 = ~vec4<i32>(~func_4(true, func_2(), func_2()), min(_wgslsmith_div_i32(2147483647i, -2147483647i), u_input.c.x ^ -13859i), 22972i, ~(u_input.c.x << (26433u % 32u)));
    var_1 = vec4<i32>(~(-2147483647i), i32(-1i) * -28957i, _wgslsmith_div_i32(_wgslsmith_mod_i32(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c.x) << (vec2<u32>(u_input.e.x, 0u) % vec2<u32>(32u)), vec2<i32>(1i, var_1.x))), ~(abs(u_input.d) & -15404i)), -_wgslsmith_dot_vec4_i32(min(select(vec4<i32>(1i, u_input.a, -65083i, u_input.a), vec4<i32>(11659i, -2147483647i, var_1.x, var_1.x), false), ~vec4<i32>(-37248i, 36140i, var_1.x, var_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-12137i, -43914i, u_input.a, var_1.x), abs(vec4<i32>(24506i, var_1.x, u_input.c.x, 1i)), abs(vec4<i32>(0i, -3216i, u_input.d, var_1.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, var_0.x, -792f) * vec4<f32>(-1223f, 2042f, global0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1240f, var_0.x, global0.x, global0.x)))) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(856f, var_0.x)), var_0.x, _wgslsmith_f_op_vec3_f32(func_3(global2[_wgslsmith_index_u32(u_input.b, 14u)], Struct_1(vec3<f32>(var_0.x, var_0.x, 875f), global0.x))).x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.x, 1971f, var_0.x) * vec4<f32>(global0.x, 1747f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -430f, 1298f, global0.x)))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1676f, -1605f, global0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1091f, -1394f, 450f) * vec4<f32>(global0.x, -378f, global0.x, var_0.x)))))));
    var var_3 = -16899i;
    return select(vec2<bool>(all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), 4294967295u < abs(u_input.e.x)), !vec2<bool>(true || all(vec2<bool>(false, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), select(vec2<bool>(true, true), vec2<bool>(~40626u > (u_input.b & 1u), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<u32>(_wgslsmith_sub_u32(0u, select(17991u, 4294967295u, true)) << (u_input.e.x % 32u), ~(~(~u_input.e.x))), u_input.e.xy, select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false)), !(!func_1()), vec2<bool>(true, !all(vec3<bool>(false, true, true)))));
    var var_1 = func_2();
    var_1 = global2[_wgslsmith_index_u32(reverseBits(4294967295u), 14u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(floor(-489f)), global0.x)), var_1.a.x);
    var var_3 = true;
    let var_4 = _wgslsmith_div_vec3_i32(~select(abs(vec3<i32>(43614i, -15188i, u_input.d)), -vec3<i32>(-36774i, u_input.d, -36716i), vec3<bool>(false, true, false)) ^ ~(-(vec3<i32>(u_input.d, u_input.d, u_input.d) & vec3<i32>(3300i, 29273i, 1i))), _wgslsmith_mod_vec3_i32(~(~(vec3<i32>(u_input.a, u_input.d, -1i) & vec3<i32>(u_input.a, -48271i, -36517i))), (vec3<i32>(-1i) * -vec3<i32>(u_input.d, u_input.d, -2147483647i)) | (-vec3<i32>(u_input.c.x, u_input.d, 0i) | _wgslsmith_add_vec3_i32(vec3<i32>(-1359i, u_input.c.x, u_input.a), vec3<i32>(-1i, u_input.c.x, -1i)))));
    var var_5 = vec4<bool>(false, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c.x, u_input.d, -20480i, 2147483647i)), vec4<i32>(var_4.x, var_4.x ^ u_input.a, u_input.c.x, var_4.x)) <= -5360i, true, true);
    var var_6 = func_2();
    let var_7 = !(!(!(!(!vec4<bool>(false, false, var_5.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b));
}

