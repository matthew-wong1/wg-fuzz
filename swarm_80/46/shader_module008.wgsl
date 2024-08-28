struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
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

var<private> global0: bool = false;

var<private> global1: vec2<bool>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = Struct_2(firstTrailingBit(76904i), Struct_1(_wgslsmith_div_u32(4294967295u, abs(15513u)), u_input.d.x), abs(~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-1i, 37608i, -14380i)), 35837i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -33866i, -36891i, arg_0), vec4<i32>(arg_0, 24243i, arg_0, u_input.e.x)), arg_0)));
    global2 = Struct_3(any(select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(!global2.a, !global1.x, global1.x, global2.a), !vec4<bool>(global1.x, global1.x, false, true))));
    let var_1 = vec4<bool>(!all(!(!vec4<bool>(global2.a, true, false, global2.a))), global1.x, global1.x, global1.x);
    var var_2 = Struct_2(reverseBits(~firstTrailingBit(0i)), Struct_1(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 4294967295u, 4294967295u)), vec3<u32>(u_input.d.x, 44589u, 0u) >> (vec3<u32>(u_input.a, 1u, 9431u) % vec3<u32>(32u))), 37764u), ~(~firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(5733i, arg_1, 26076i, arg_1), var_0.c))));
    var var_3 = Struct_3(var_1.x);
    return all(var_1.zyx) || !(!var_3.a);
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = vec4<bool>(global2.a, true, false, !global2.a);
    global1 = select(vec2<bool>(var_0.x, true), vec2<bool>(false, func_3(1i, i32(-1i) * -arg_0.a)), var_0.wy);
    let var_1 = -(~select(vec3<i32>(-74655i, -2147483647i, u_input.e.x), vec3<i32>(arg_0.a, arg_0.c.x, 37282i), global1.x)) << (vec3<u32>(~10556u, _wgslsmith_div_u32(~(~23375u), ~13216u & u_input.d.x), 158050u) % vec3<u32>(32u));
    let var_2 = _wgslsmith_dot_vec3_i32(var_1, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, ~var_1.x, ~14016i), ~vec3<i32>(abs(u_input.e.x), var_1.x, -28241i << (1u % 32u))));
    let var_3 = _wgslsmith_f_op_f32(-807f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_f32(sign(var_3));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-max(vec4<i32>(2147483647i, 24762i, -2147483647i, 1i), -vec4<i32>(2147483647i, u_input.e.x, -2147483647i, -42809i)), -select(vec4<i32>(u_input.e.x, 30958i, u_input.e.x, 5117i), vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, u_input.e.x), vec4<bool>(false, true, false, global2.a)) & -_wgslsmith_mult_vec4_i32(vec4<i32>(1150i, u_input.e.x, 41220i, 0i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 2777i))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.e.zz, _wgslsmith_div_vec2_i32(u_input.e.zy, u_input.e.yz)), ~vec2<i32>(u_input.e.x, countOneBits(1101i))));
    let var_1 = -(u_input.e & u_input.e);
    global1 = arg_2.zy;
    var var_2 = 4294967295u;
    var var_3 = Struct_2(22046i, Struct_1(u_input.b, abs(u_input.b >> (_wgslsmith_div_u32(u_input.b, 1u) % 32u))), vec4<i32>(2147483647i, var_0.x, -2147483647i, var_0.x));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    global2 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_2(21461i, Struct_1(79094u, 0u), vec4<i32>(u_input.e.x, -4031i, u_input.e.x, u_input.e.x)))), _wgslsmith_f_op_f32(max(-928f, -303f)), false)), 1f, _wgslsmith_f_op_f32(1f + 1f), _wgslsmith_f_op_f32(trunc(-2336f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2064f), _wgslsmith_f_op_f32(round(-515f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1389f, -566f)) + 414f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(300f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * -1145f))), Struct_3(true), vec3<bool>(global1.x, !all(vec2<bool>(true, global1.x)), (!global1.x | global1.x) & false));
    var var_0 = Struct_1(31009u, arg_0);
    var_0 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1 & 4294967295u, 58863u), select(u_input.b, u_input.b, !global1.x)), ~(~arg_1) ^ arg_1);
    global2 = Struct_3(true);
    global0 = all(select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, global1.x), global2.a), select(vec2<bool>(global2.a, true), vec2<bool>(false, global2.a), true), !global2.a), !vec2<bool>(true, global2.a), vec2<bool>(global1.x || true, u_input.e.x == u_input.e.x)), select(vec2<bool>(global1.x, true), select(select(vec2<bool>(false, global1.x), vec2<bool>(false, true), vec2<bool>(true, global1.x)), !vec2<bool>(global1.x, false), select(vec2<bool>(global2.a, global1.x), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(global2.a, false)), global2.a)), -43245i == u_input.e.x));
    return -339f;
}

fn func_5(arg_0: f32) -> Struct_2 {
    global2 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), -1008f)))), Struct_3(!(!any(vec4<bool>(true, global2.a, global1.x, global2.a)))), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, global1.x, global2.a), vec3<bool>(true, true, false), vec3<bool>(false, false, global1.x)), select(vec3<bool>(true, true, global2.a), vec3<bool>(global1.x, false, false), global2.a), global1.x), all(!vec2<bool>(true, global1.x))));
    global1 = select(vec2<bool>(true || !(!global2.a), any(select(select(vec4<bool>(false, global2.a, global2.a, global1.x), vec4<bool>(global1.x, global1.x, true, true), global2.a), select(vec4<bool>(global2.a, true, false, global1.x), vec4<bool>(true, global1.x, false, global2.a), vec4<bool>(global1.x, true, false, global2.a)), true))), !select(vec2<bool>(global2.a, 4294967295u > u_input.c), !(!vec2<bool>(global2.a, false)), vec2<bool>(true, u_input.a <= 1u)), vec2<bool>(global2.a, func_3(abs(-1i), _wgslsmith_sub_i32(~u_input.e.x, _wgslsmith_dot_vec2_i32(u_input.e.yy, vec2<i32>(0i, 1i))))));
    var var_0 = _wgslsmith_f_op_f32(floor(1000f));
    global0 = global1.x;
    let var_1 = max(-_wgslsmith_div_i32(-6998i << (1u % 32u), u_input.e.x), -35296i);
    return Struct_2(u_input.e.x, Struct_1(u_input.d.x, u_input.b), _wgslsmith_sub_vec4_i32(min(firstTrailingBit(vec4<i32>(2147483647i, var_1, 0i, -1i) >> (vec4<u32>(u_input.c, 74218u, u_input.c, 15094u) % vec4<u32>(32u))), vec4<i32>(-80113i, var_1, ~var_1, var_1)), max(-max(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -2147483647i), vec4<i32>(17671i, 0i, var_1, var_1)), ~min(vec4<i32>(u_input.e.x, var_1, 1i, u_input.e.x), vec4<i32>(u_input.e.x, -19790i, -16172i, 13699i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f * _wgslsmith_f_op_f32(func_1(1u, 1u))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_u32(u_input.d.x, 49655u), u_input.a))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-324f - 294f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-322f, 1130f) + _wgslsmith_f_op_f32(f32(-1f) * -1025f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -510f)), vec2<f32>(772f, 360f))), any(select(vec4<bool>(global1.x, false, global1.x, global2.a), vec4<bool>(global1.x, true, true, global2.a), global2.a)))))));
    var var_2 = global1.x;
    global1 = select(vec2<bool>(any(select(vec3<bool>(false, false, global1.x), !vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(false, global2.a, global1.x), vec3<bool>(true, false, false), global2.a))), all(select(!vec3<bool>(false, global2.a, false), vec3<bool>(true, global1.x, true), true))), select(!select(vec2<bool>(true, global2.a), select(vec2<bool>(global1.x, global2.a), vec2<bool>(global2.a, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(global2.a, true), vec2<bool>(global1.x, global2.a))), !vec2<bool>(!global2.a, var_1.x < var_1.x), vec2<bool>(true, false)), all(!(!(!vec4<bool>(true, global1.x, global2.a, true)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(-u_input.e.x, var_0.b, -var_0.c)))), _wgslsmith_f_op_f32(var_1.x - var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

