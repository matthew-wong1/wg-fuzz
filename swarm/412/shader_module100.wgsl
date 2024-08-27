struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(i32(-2147483648), 0i, 2147483647i, 19864i), true, vec3<bool>(false, true, true), vec2<u32>(13085u, 1u), true), Struct_1(vec4<i32>(0i, 1i, 53578i, 1i), false, vec3<bool>(true, false, false), vec2<u32>(32234u, 0u), false), Struct_1(vec4<i32>(36159i, 6996i, 0i, 14926i), true, vec3<bool>(true, true, true), vec2<u32>(43159u, 4294967295u), false), Struct_1(vec4<i32>(-61309i, 2147483647i, i32(-2147483648), 36048i), false, vec3<bool>(false, true, false), vec2<u32>(89671u, 31650u), false), Struct_1(vec4<i32>(1i, -1i, 12365i, 2147483647i), false, vec3<bool>(true, false, false), vec2<u32>(4294967295u, 4294967295u), false), Struct_1(vec4<i32>(-4742i, i32(-2147483648), 24330i, 15925i), true, vec3<bool>(true, true, false), vec2<u32>(4294967295u, 44920u), true), Struct_1(vec4<i32>(18428i, i32(-2147483648), 576i, 44481i), false, vec3<bool>(false, false, true), vec2<u32>(111601u, 1u), true), Struct_1(vec4<i32>(-37234i, 6206i, 2147483647i, 0i), false, vec3<bool>(true, false, true), vec2<u32>(4294967295u, 23315u), false), Struct_1(vec4<i32>(2147483647i, -9422i, 1i, -1i), false, vec3<bool>(false, false, false), vec2<u32>(7471u, 1u), true), Struct_1(vec4<i32>(8188i, 0i, 1i, 0i), false, vec3<bool>(true, false, true), vec2<u32>(8878u, 6081u), false), Struct_1(vec4<i32>(1i, -1i, -1i, i32(-2147483648)), false, vec3<bool>(false, false, false), vec2<u32>(36105u, 25497u), true), Struct_1(vec4<i32>(-57594i, i32(-2147483648), 3287i, 1i), false, vec3<bool>(true, false, false), vec2<u32>(4294967295u, 47808u), false), Struct_1(vec4<i32>(-2358i, 2147483647i, -1i, 16466i), false, vec3<bool>(true, true, false), vec2<u32>(25843u, 4455u), false), Struct_1(vec4<i32>(-1i, -4224i, 2127i, -50321i), true, vec3<bool>(false, true, true), vec2<u32>(4708u, 15683u), false), Struct_1(vec4<i32>(-1i, -22124i, 477i, -84240i), true, vec3<bool>(false, true, false), vec2<u32>(34889u, 1u), true), Struct_1(vec4<i32>(2286i, -33481i, 0i, 0i), true, vec3<bool>(true, true, false), vec2<u32>(8295u, 4294967295u), true), Struct_1(vec4<i32>(2147483647i, 34987i, 28126i, 12957i), true, vec3<bool>(true, true, false), vec2<u32>(1u, 0u), false), Struct_1(vec4<i32>(-17229i, 1i, 5735i, i32(-2147483648)), false, vec3<bool>(false, false, true), vec2<u32>(85160u, 62120u), false), Struct_1(vec4<i32>(48830i, 2147483647i, 2147483647i, i32(-2147483648)), true, vec3<bool>(true, true, true), vec2<u32>(1u, 0u), true), Struct_1(vec4<i32>(0i, 39522i, 1i, i32(-2147483648)), true, vec3<bool>(true, true, false), vec2<u32>(40764u, 4294967295u), false), Struct_1(vec4<i32>(-54498i, 5241i, 36477i, 2147483647i), true, vec3<bool>(true, false, true), vec2<u32>(58884u, 1u), true), Struct_1(vec4<i32>(1i, 16400i, 25077i, 83294i), true, vec3<bool>(true, false, false), vec2<u32>(39002u, 2121u), false), Struct_1(vec4<i32>(i32(-2147483648), 17408i, 20593i, 2147483647i), false, vec3<bool>(true, false, true), vec2<u32>(66668u, 9611u), true), Struct_1(vec4<i32>(-20564i, 13681i, i32(-2147483648), 26822i), true, vec3<bool>(true, false, true), vec2<u32>(71844u, 1u), true), Struct_1(vec4<i32>(47506i, 1i, 0i, 0i), false, vec3<bool>(false, true, true), vec2<u32>(25062u, 4294967295u), false), Struct_1(vec4<i32>(23148i, -1i, 1i, -5547i), false, vec3<bool>(false, true, false), vec2<u32>(1u, 3174u), true), Struct_1(vec4<i32>(25480i, -32266i, 69421i, 0i), true, vec3<bool>(false, false, false), vec2<u32>(12048u, 4294967295u), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    global1 = array<Struct_1, 27>();
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-185f, _wgslsmith_f_op_f32(-arg_0.c), -2021f, _wgslsmith_f_op_f32(arg_0.b * -2382f)), global0.a, vec4<bool>(true, select(false, false, false), all(vec2<bool>(false, true)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))) + _wgslsmith_f_op_f32(floor(global0.b))), _wgslsmith_f_op_f32(1714f + global0.c));
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_0.b), 1286f))), -469f, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - 1156f)));
    return true;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_3(global0.a, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -2119f));
    let var_1 = select(select(select(vec4<bool>(true, all(vec2<bool>(true, false)), all(vec2<bool>(true, false)), func_3(Struct_3(global0.a, var_0.b, var_0.c), 85366u)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), !select(false, true, false)), !vec4<bool>(false, true, true, all(vec2<bool>(false, true))), select(true, true, 1u >= select(1u, 0u, true))), select(!vec4<bool>(any(vec3<bool>(false, true, true)), true, true, false), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), vec4<bool>(select(true, false, true), false, true, true)), vec4<bool>(!any(vec2<bool>(true, true)), true, false, func_3(Struct_3(vec4<f32>(1901f, global0.c, var_0.b, var_0.c), var_0.b, var_0.b), ~95211u))), false);
    let var_2 = vec4<u32>(~firstLeadingBit(abs(19898u) << (1u % 32u)), 1u, ~1u, 4294967295u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x));
    var var_4 = ~1u;
    return 1u;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(-76236i << (max(30101u, arg_0) % 32u), u_input.a, -2147483647i), vec3<i32>(-12773i, 1i, _wgslsmith_mult_i32(firstTrailingBit(abs(u_input.a)), u_input.b)));
    let var_1 = !(!(!(_wgslsmith_mod_u32(58221u, 43512u) < (117805u | arg_0))));
    let var_2 = -2147483647i;
    global1 = array<Struct_1, 27>();
    var var_3 = select(vec4<u32>(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(arg_0), ~arg_0, arg_0), vec3<u32>(7563u ^ arg_0, arg_0, _wgslsmith_div_u32(5531u, arg_0))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~1u, func_2(1i)), _wgslsmith_clamp_u32(15413u, 1u, arg_0) ^ select(arg_0, 44092u, false)), reverseBits(func_2(~var_0.x))), reverseBits(vec4<u32>(1u, min(arg_0, arg_0), 0u, 32847u & min(41193u, arg_0))), all(select(select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(var_1, true, false, var_1), true), !vec4<bool>(var_1, true, var_1, var_1), all(vec4<bool>(var_1, var_1, var_1, true)))) & var_1);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_1(max(0u, 1u))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true);
    var var_1 = vec4<bool>(false, any(vec2<bool>(!var_0.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, 216f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f))) != _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) - _wgslsmith_f_op_f32(global0.c * global0.b))), true);
    var_1 = var_0;
    let var_2 = vec3<i32>((-4806i >> (_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 329u, 35825u), vec3<u32>(4078u, 57470u, 4294967295u))) % 32u)) | _wgslsmith_div_i32(-24372i, -86886i), -(~countOneBits(u_input.b) >> (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 27926u, 6565u, 4294967295u), vec4<u32>(1u, 32541u, 1u, 39836u))) % 32u)), _wgslsmith_div_i32(~u_input.a, u_input.b));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(165f + global0.c), _wgslsmith_f_op_f32(-585f * global0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.c, global0.b)), 2193f))), global0.b));
    global0 = Struct_3(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2393f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(floor(-1555f)))))), _wgslsmith_f_op_f32(floor(-1000f)));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3, global0.b, var_3, -384f), vec4<f32>(var_3, global0.b, 1000f, global0.c)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-718f, global0.b, global0.a.x, -1590f), vec4<f32>(global0.a.x, 783f, var_3, -607f)))))))), -1108f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2701f + -2252f) - -684f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1181f, 2046f)) - _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(412f, 1392f))))), all(vec2<bool>(true, true)))));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~65167u, -var_2.xy, var_3, _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(90873u, 1u, 72019u), abs(vec3<u32>(0u, 48673u, 15080u))), firstLeadingBit(vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 65310u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 29123u, 24723u)))), vec2<u32>(59152u, 57272u));
}

