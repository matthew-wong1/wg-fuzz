struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    var var_0 = select(!vec3<bool>(true, !arg_1, true), !select(!(!vec3<bool>(arg_0.b, false, arg_0.b)), !(!vec3<bool>(arg_2.b, arg_2.b, arg_0.b)), select(vec3<bool>(false, arg_2.b, false), select(vec3<bool>(arg_0.b, global0.b, arg_2.b), vec3<bool>(false, arg_2.b, false), true), select(global0.b, arg_0.b, arg_0.b))), !vec3<bool>(!(!global0.b), true, false));
    var_0 = select(vec3<bool>(arg_2.b && var_0.x, global0.b, false), !(!select(vec3<bool>(true, true, true), !vec3<bool>(global0.b, arg_2.b, arg_1), arg_0.b)), (arg_0.d <= arg_2.a) || !(!(arg_2.a >= global0.d)));
    let var_1 = abs(_wgslsmith_dot_vec4_u32(u_input.d, select(~u_input.d, vec4<u32>(global0.d, global0.d, 4294967295u, arg_0.d) ^ vec4<u32>(0u, arg_0.a, 913u, arg_2.d), !vec4<bool>(global0.b, false, false, false)))) >> (~select(arg_0.d, arg_2.d, arg_0.b) % 32u);
    var_0 = vec3<bool>(false, arg_0.b, !arg_0.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f + 348f) + _wgslsmith_f_op_f32(abs(-625f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(323f * -222f))), _wgslsmith_f_op_f32(max(-1140f, -1234f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1095f)), 132f, true)));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d, firstTrailingBit(10388u), ~arg_0.a), u_input.d.yxz);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> bool {
    global0 = Struct_1(arg_1.a << (abs(u_input.d.x) % 32u), (_wgslsmith_f_op_f32(-arg_2) > _wgslsmith_f_op_f32(trunc(arg_2))) | !global0.b, -countOneBits(vec2<i32>(1i, arg_1.c.x)), _wgslsmith_add_u32(abs(u_input.a), ~3821u), _wgslsmith_mult_vec4_i32(global0.e, -vec4<i32>(global0.e.x, u_input.b & 2147483647i, global0.e.x, _wgslsmith_mod_i32(874i, 2147483647i))));
    global1 = array<vec3<i32>, 30>();
    let var_0 = Struct_1(9754u, true != arg_0, min(~(~(-vec2<i32>(u_input.b, global0.c.x))), -_wgslsmith_add_vec2_i32(vec2<i32>(-6831i, arg_1.e.x), ~global0.e.yw)), 25432u, vec4<i32>(-1i) * -(vec4<i32>(2147483647i, arg_1.c.x, 23833i, global0.c.x) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global0.e.x, u_input.b, u_input.b), arg_1.e)));
    var var_1 = arg_1;
    global1 = array<vec3<i32>, 30>();
    return true;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = -(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, arg_0, global0.c.x, 25762i) >> (vec4<u32>(global0.d, 1u, 30383u, global0.d) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(global0.e.x, -26028i, u_input.b, -2147483647i)) ^ countOneBits(1i));
    var var_1 = select(!(!vec2<bool>(!global0.b, global0.b)), !vec2<bool>(true && (-983f >= arg_1.x), u_input.b <= ~global0.e.x), func_4(any(!select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.b), false)), Struct_1(func_3(Struct_1(0u, global0.b, global0.c, 21146u, global0.e), global0.b, Struct_1(1u, false, global0.e.wz, 0u, vec4<i32>(-2147483647i, 2147483647i, 2147483647i, arg_0)), global0.e | vec4<i32>(1214i, -2908i, u_input.b, u_input.b)), global0.b, global0.c, 12279u, global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) - 1f) - -1870f)));
    var_1 = !(!(!(!select(vec2<bool>(false, false), vec2<bool>(var_1.x, global0.b), global0.b))));
    var var_2 = Struct_1(arg_2, true, global0.c, _wgslsmith_div_u32(0u, 8978u), _wgslsmith_mult_vec4_i32(global0.e, global0.e));
    let var_3 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(global0.b, false), vec2<bool>(false, global0.b), vec2<bool>(true, global0.b))), vec2<bool>(any(select(vec4<bool>(var_1.x, true, var_2.b, var_2.b), vec4<bool>(false, var_2.b, false, var_2.b), var_2.b)), -388f <= arg_1.x), select(!vec2<bool>(var_2.b, global0.b), vec2<bool>(var_1.x, false), var_2.b)));
    return 8524u;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> bool {
    let var_0 = -1385f;
    var var_1 = ~arg_0;
    let var_2 = global1[_wgslsmith_index_u32(func_2(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -625f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1002f + var_0) - _wgslsmith_f_op_f32(min(var_0, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1823f))), ~global0.a, min(abs(_wgslsmith_div_u32(u_input.c.x, max(1u, arg_1.x))), min(reverseBits(4294967295u), ~(~global0.d)))), 30u)];
    var var_3 = ~(abs(arg_0) << (abs(~global0.a) % 32u));
    let var_4 = Struct_1(_wgslsmith_div_u32(global0.d, global0.a), global0.b, countOneBits(-var_2.zy), _wgslsmith_mod_u32(global0.a, ~countOneBits(arg_1.x >> (82849u % 32u))), global0.e);
    return !(!global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    global1 = array<vec3<i32>, 30>();
    global0 = Struct_1(~u_input.d.x, any(!vec4<bool>(!global0.b, true, true, func_1(global0.e.x, u_input.d.yyw))), vec2<i32>(_wgslsmith_div_i32(global0.c.x, abs(countOneBits(u_input.b))), firstTrailingBit(~(~(-25070i)))), ~u_input.d.x, _wgslsmith_sub_vec4_i32(global0.e, global0.e));
    global1 = array<vec3<i32>, 30>();
    let var_1 = -1713f;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(15031u, 30u)], vec4<i32>(min(1i, global0.c.x), 68783i, global0.e.x, -77977i), ~_wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, 33277u), ~0u, 46647u), 30u)], -vec3<i32>(global0.c.x, 0i, 20908i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-215f, var_1, var_1), vec3<f32>(-565f, var_1, -1121f), vec3<bool>(true, global0.b, global0.b)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, 352f, var_1)))));
}

