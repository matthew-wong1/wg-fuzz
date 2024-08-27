struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: bool;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 52662u, 1u);

var<private> global3: array<u32, 27> = array<u32, 27>(100513u, 0u, 1u, 44133u, 1u, 1u, 0u, 38482u, 85255u, 4294967295u, 29714u, 52815u, 13608u, 4294967295u, 1u, 4294967295u, 44074u, 28309u, 1u, 19595u, 44899u, 1u, 1u, 1u, 313u, 22562u, 67187u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(134i, -52073i, u_input.c, u_input.c), vec4<i32>(0i, u_input.c, u_input.c, u_input.c)), 1i) & 0i));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1204f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -582f))))), arg_0, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))))) <= -160f;
    return arg_0;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(1000f * global0.x);
    var var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(var_0))))))));
    let var_2 = select(select(_wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 17727i, u_input.c, u_input.c), vec4<i32>(-40716i, u_input.c, u_input.c, -2147483647i))), select(select(vec4<i32>(1i, -2147483647i, -44141i, u_input.c), vec4<i32>(-2147483647i, u_input.c, u_input.c, 1i), true), ~vec4<i32>(u_input.c, -2147483647i, 1i, 59319i), vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec4_i32(min(~vec4<i32>(-2147483647i, 35172i, -38374i, u_input.c), ~vec4<i32>(u_input.c, 43571i, -4605i, u_input.c)), countOneBits(vec4<i32>(33375i, -1i, u_input.c, u_input.c)) >> (vec4<u32>(u_input.b, 22807u, u_input.b, 4294967295u) % vec4<u32>(32u))), vec4<bool>(true, true, true, true)), reverseBits(max(firstLeadingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, -1i, u_input.c), vec4<i32>(-1i, u_input.c, u_input.c, u_input.c), vec4<i32>(1i, u_input.c, 36325i, u_input.c)), ~(vec4<i32>(1117i, 1i, 1i, -50173i) | vec4<i32>(-9237i, u_input.c, u_input.c, 2147483647i)))), all(vec3<bool>(true, abs(u_input.c) <= (-17507i << (0u % 32u)), _wgslsmith_mod_u32(0u, 4294967295u) != ~global2.x)));
    global1 = all(!select(vec2<bool>(all(vec3<bool>(false, false, false)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), all(vec2<bool>(true, false))), u_input.e != abs(global2.x)));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(1246f, var_0)), var_0, 460f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-583f, var_0, var_0, -1000f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 566f, 677f, 2567f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global0.x, var_0, global0.x) - vec4<f32>(global0.x, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-982f, -775f, global0.x, global0.x)))))));
    return Struct_3(Struct_2(_wgslsmith_mult_u32(u_input.a.x, ~(~26401u)), Struct_1(vec3<u32>(firstLeadingBit(0u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.ww, global2.yx), 27u)], abs(global2.x)), vec2<bool>(var_2.x > u_input.c, global3[_wgslsmith_index_u32(4294967295u, 27u)] != 27923u), _wgslsmith_f_op_f32(abs(1927f)))), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(global2.x, 1u), 1u);
    var var_2 = -2147483647i;
    global1 = false;
    return func_2();
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-339f, global0.x))), _wgslsmith_f_op_f32(global0.x - -1000f)), arg_1.c, -380f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.c, 672f)))));
    global3 = array<u32, 27>();
    let var_0 = -(~((-vec3<i32>(41759i, -30857i, 1i) & max(vec3<i32>(-34771i, arg_1.b, u_input.c), vec3<i32>(-10279i, -1i, arg_1.b))) << (_wgslsmith_mod_vec3_u32(~arg_1.a.b.a, vec3<u32>(u_input.e, 0u, 4294967295u)) % vec3<u32>(32u))));
    let var_1 = !select(select(!(!vec3<bool>(arg_1.a.b.b.x, arg_1.a.b.b.x, arg_1.a.b.b.x)), vec3<bool>(true, arg_1.a.b.b.x, !arg_2.b.b.x), vec3<bool>(arg_1.a.b.b.x, false, arg_2.d.b.b.x)), select(vec3<bool>(arg_2.a.b.x | false, !arg_2.c.b.b.x, arg_1.a.b.b.x & true), vec3<bool>(arg_2.b.b.x || arg_1.a.b.b.x, any(vec2<bool>(arg_1.a.b.b.x, false)), func_2().a.b.b.x), false), arg_2.a.b.x);
    global3 = array<u32, 27>();
    return arg_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: bool) -> Struct_2 {
    let var_0 = arg_1.c.b.a | func_4(arg_2.xz, func_1(), arg_1).a.a;
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(597f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f)), global0.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_1.d.b.c, -490f, -1330f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, arg_1.b.c, 1000f, 1241f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.b.c, 1314f, -509f, -1000f) - vec4<f32>(global0.x, global0.x, 832f, -568f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, global0.x, 2167f)), vec4<f32>(global0.x, arg_1.a.c, arg_1.a.c, -805f)))));
    global2 = u_input.a.xzy;
    var var_1 = Struct_3(arg_1.d, _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, firstLeadingBit(u_input.c)), 35654i) & 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) + global0.x));
    global3 = array<u32, 27>();
    return Struct_2(4294967295u, func_2().a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 27>();
    let var_0 = func_5(vec3<bool>(false, any(vec2<bool>(true, true)), !(global2.x < 14370u) & all(vec4<bool>(true, true, true, true))), func_4(-firstTrailingBit(select(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, -1i), vec2<bool>(true, false))), func_1(), Struct_4(Struct_1(~vec3<u32>(54040u, 6876u, 1u), func_2().a.b.b, _wgslsmith_f_op_f32(max(global0.x, global0.x))), Struct_1(vec3<u32>(18532u, 1u, 74191u) << (vec3<u32>(u_input.a.x, global3[_wgslsmith_index_u32(0u, 27u)], 1760u) % vec3<u32>(32u)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-global0.x)), Struct_2(global2.x, Struct_1(vec3<u32>(4294967295u, u_input.d, u_input.b), vec2<bool>(true, true), -709f)), Struct_2(u_input.b, func_1().a.b))), countOneBits(abs(-(vec3<i32>(u_input.c, -30989i, u_input.c) & vec3<i32>(2147483647i, u_input.c, -3163i)))), !all(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(114f, 1564f, -1215f, global0.x)))))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.c, var_0.b.c, -922f, global0.x)))))));
    let var_1 = !vec4<bool>(!(!var_0.b.b.x), !(var_0.b.b.x & var_0.b.b.x), true, false);
    var var_2 = func_2();
    let var_3 = reverseBits(vec2<u32>(global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 27u)], 27u)]));
    let var_4 = Struct_4(var_0.b, func_4(vec2<i32>(0i, var_2.b) ^ max(~vec2<i32>(var_2.b, 28733i), vec2<i32>(-42874i, 1i) | vec2<i32>(var_2.b, var_2.b)), func_1(), Struct_4(var_2.a.b, Struct_1(var_2.a.b.a, !var_2.a.b.b, var_2.c), var_2.a, var_2.a)).b, Struct_2(var_2.a.a, var_0.b), func_4(~reverseBits(vec2<i32>(var_2.b, u_input.c)), Struct_3(Struct_2(~u_input.b, var_0.b), u_input.c, _wgslsmith_f_op_f32(-func_4(vec2<i32>(var_2.b, u_input.c), Struct_3(Struct_2(4294967295u, Struct_1(vec3<u32>(var_3.x, 0u, global3[_wgslsmith_index_u32(44580u, 27u)]), var_0.b.b, var_2.a.b.c)), 1i, global0.x), Struct_4(var_2.a.b, Struct_1(var_0.b.a, vec2<bool>(var_1.x, false), global0.x), Struct_2(u_input.b, var_2.a.b), Struct_2(var_0.a, var_2.a.b))).b.c)), Struct_4(func_2().a.b, var_0.b, func_1().a, Struct_2(1u, func_4(vec2<i32>(-4646i, -26283i), Struct_3(var_0, -2147483647i, var_2.c), Struct_4(var_0.b, Struct_1(vec3<u32>(var_0.b.a.x, global3[_wgslsmith_index_u32(global2.x, 27u)], 0u), var_1.xx, var_2.c), var_0, Struct_2(0u, var_2.a.b))).a))).d);
    global1 = 1983f != _wgslsmith_f_op_f32(floor(global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(2147483647i, 11391i));
}

