struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(0i, 2844i, i32(-2147483648));

var<private> global2: vec3<f32>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(global0.a.x, 1i), 24934i, max(-34958i, global3.a.x)));
    let var_1 = _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(~global3.a.xz, max(global1.yz, global1.zy)), max(_wgslsmith_add_vec2_i32(vec2<i32>(-13731i, 2147483647i), global3.a.zx) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u)), ~u_input.c.yw | global1.zy)) | -firstLeadingBit(reverseBits(vec2<i32>(23835i, global1.x)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, 1000f, global2.x))), vec3<f32>(global2.x, global2.x, -380f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(160f, 445f, global2.x) + vec3<f32>(global2.x, -342f, -128f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1320f, global2.x, global2.x)))))) - vec3<f32>(-932f, 1062f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 823f)))));
    let var_2 = vec2<bool>(true, true);
    global1 = u_input.c.xww;
    return global2.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global3 = Struct_1(firstLeadingBit(vec3<i32>(abs(global0.a.x) << (5064u % 32u), global1.x, abs(i32(-1i) * -19777i))));
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, 1222f, -473f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1000f, 1569f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))))))));
    global3 = Struct_1(_wgslsmith_mult_vec3_i32(-global3.a, countOneBits(vec3<i32>(reverseBits(28838i), -36222i, global1.x | 1i))));
    let var_0 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(35523u))))))), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(793f, -879f)))), arg_1.x)));
    global3 = arg_0;
    return Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(~global3.a.x, global0.a.x, u_input.c.x), firstLeadingBit(-vec3<i32>(-2147483647i, global3.a.x, -1i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: i32) -> vec4<f32> {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global2.x)))), global2.x, _wgslsmith_f_op_f32(-global2.x));
    global3 = func_2(arg_0, select(vec2<bool>(!all(vec3<bool>(true, true, false)), true), vec2<bool>(true, true), true));
    let var_0 = arg_2;
    global3 = arg_0;
    let var_1 = func_2(func_2(Struct_1(_wgslsmith_mult_vec3_i32(global3.a << (vec3<u32>(u_input.b, 27593u, u_input.b) % vec3<u32>(32u)), global0.a)), !vec2<bool>(all(vec4<bool>(false, false, false, true)), false)), vec2<bool>(!(true && (u_input.b == 4294967295u)), ~(~u_input.b) < _wgslsmith_sub_u32(~u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 291f, global2.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 830f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, 741f, global2.x, -186f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(210f, _wgslsmith_f_op_f32(-1131f + global2.x), -1098f, _wgslsmith_f_op_f32(round(477f)))))) * vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f + global2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x + -1000f))))), _wgslsmith_f_op_f32(-global2.x)));
}

fn func_1() -> f32 {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-200f, global2.x, 369f))))))));
    var var_0 = global2.xz;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, var_0.x, global2.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, var_0.x, 1505f, -761f) - vec4<f32>(var_0.x, 1030f, -298f, global2.x))) + _wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_1(vec3<i32>(35653i, -41224i, 0i)), vec2<bool>(false, true)), u_input.c.xwz, u_input.a, -global1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -1355f, all(vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(140f)), _wgslsmith_div_f32(-929f, -704f)), _wgslsmith_f_op_f32(abs(var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global2.x, 643f, 538f) + vec4<f32>(global2.x, var_0.x, global2.x, 1833f)) * vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), 926f, global2.x, -539f))));
    let var_2 = ~u_input.b;
    let var_3 = func_2(Struct_1(_wgslsmith_mod_vec3_i32(func_2(Struct_1(vec3<i32>(global3.a.x, -5835i, -1i)), vec2<bool>(false, true)).a, u_input.c.ywz)), vec2<bool>(true, true));
    return 541f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(621f, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(func_1())), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_1(vec3<i32>(2147483647i, u_input.c.x, 2147483647i)), vec2<bool>(false, true)), select(global0.a, vec3<i32>(2147483647i, global3.a.x, global1.x), vec3<bool>(true, false, true)), u_input.c.x, u_input.c.x)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(global0.a), vec3<i32>(global3.a.x, global1.x, u_input.a), global0.a.x, global1.x)).x - _wgslsmith_div_f32(global2.x, 1032f))), global2.xz)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, 1320f))) * _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, var_0.x, -1560f), vec3<f32>(583f, 423f, 877f))))), vec3<f32>(var_0.x, global2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(global3.a), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), 1i, global3.a.x)).x + _wgslsmith_f_op_f32(global2.x + 1253f)))))));
    let var_2 = Struct_1(~(-(~_wgslsmith_add_vec3_i32(global0.a, global3.a))));
    var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_1.x, 320f))))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, var_1.x, 1000f) - vec3<f32>(var_1.x, var_1.x, global2.x))))))))));
    let var_3 = func_2(Struct_1(global3.a), select(vec2<bool>(true, true), !vec2<bool>(var_2.a.x <= 6035i, any(vec4<bool>(true, false, true, true))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_4 = -40566i;
    global3 = Struct_1(firstTrailingBit(vec3<i32>(i32(-1i) * -46531i, firstLeadingBit(70852i), 15974i)) ^ global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec4<u32>(firstTrailingBit(0u), ~u_input.b, u_input.b, ~u_input.b)), vec4<u32>(u_input.b << ((1u | u_input.b) % 32u), min(~4294967295u, 1392u), firstLeadingBit(~0u), ~_wgslsmith_mult_u32(4294967295u, u_input.b)), false), u_input.b, 2147483647i);
}

