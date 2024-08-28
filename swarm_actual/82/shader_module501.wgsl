struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<u32, 2> = array<u32, 2>(30993u, 1u);

var<private> global2: Struct_3;

var<private> global3: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: u32) -> f32 {
    global3 = arg_2;
    let var_0 = Struct_1(u_input.d.zy, firstLeadingBit(global0[_wgslsmith_index_u32(1u, 9u)]), ~((u_input.d.x << (arg_3 % 32u)) ^ reverseBits(~1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, 443f, -2047f, _wgslsmith_f_op_f32(floor(946f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.b, -1000f, global2.b, global2.b)))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-890f * -197f), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(arg_2.b + global2.b), _wgslsmith_f_op_f32(sign(1442f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.b, arg_2.b, arg_2.b, -243f)))))))));
    let var_1 = 272f;
    global1 = array<u32, 2>();
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(max(1068f, 643f));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32) -> vec3<i32> {
    global2 = Struct_3(global3.a && (~u_input.d.x < (arg_1.x | arg_1.x)), _wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(false, all(vec2<bool>(false, global3.a)))), u_input.e.yzw, Struct_3(true, global3.b), firstLeadingBit(countOneBits(29127u)) & ~_wgslsmith_clamp_u32(0u, u_input.b.x, 4294967295u))));
    let var_0 = Struct_3(!(!global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f + _wgslsmith_f_op_f32(-global2.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-336f, global3.b)), global2.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b, global2.b))))));
    var var_1 = Struct_1(max(~(vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 2u)]) & arg_1.yx), u_input.b) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(102638u, global1[_wgslsmith_index_u32(4294967295u, 2u)]), ~u_input.b, u_input.b), 1i, ~global1[_wgslsmith_index_u32(7937u, 2u)], vec4<f32>(global3.b, _wgslsmith_f_op_f32(-var_0.b), -126f, 482f));
    let var_2 = u_input.b;
    global1 = array<u32, 2>();
    return u_input.e.xyy ^ _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47837u, 2u)], 9u)], -56770i, 0i), ~vec3<i32>(2147483647i, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(15715u, 9u)], arg_2), vec4<i32>(15602i, u_input.c, 0i, -7765i))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_3 {
    global0 = array<i32, 9>();
    var var_0 = select(vec4<bool>(~firstTrailingBit(u_input.d.x) == _wgslsmith_dot_vec3_u32(select(vec3<u32>(8958u, u_input.d.x, 29575u), u_input.d, global3.a), u_input.d), select(any(vec3<bool>(global3.a, global2.a, false)) | (-287f >= global2.b), select(true, false, true), global3.a && true), all(select(!vec3<bool>(true, arg_1.a.x, global3.a), vec3<bool>(global3.a, false, arg_1.a.x), true)), true), !vec4<bool>(true, any(vec3<bool>(global3.a, global2.a, false)), true, true), global2.a);
    var var_1 = u_input.d.x;
    var var_2 = arg_1;
    let var_3 = u_input.b.x;
    return Struct_3(~global1[_wgslsmith_index_u32(u_input.d.x, 2u)] == var_3, global2.b);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    global2 = Struct_3(true, -116f);
    var var_0 = -_wgslsmith_mod_i32(-7164i & u_input.e.x, -(reverseBits(2147483647i) | -arg_1));
    var var_1 = arg_2;
    var var_2 = 1u;
    global1 = array<u32, 2>();
    return select(vec2<bool>(true | (0u != (global1[_wgslsmith_index_u32(13403u, 2u)] >> (u_input.d.x % 32u))), arg_2.a.x), arg_2.a, vec2<bool>(var_1.a.x, arg_2.a.x));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(func_5(func_4(func_2(vec2<i32>(u_input.e.x, -2147483647i), u_input.d, -1i), Struct_2(select(vec2<bool>(false, global3.a), vec2<bool>(global2.a, false), global3.a))), u_input.e.x, Struct_2(select(!vec2<bool>(global2.a, false), select(vec2<bool>(global2.a, true), vec2<bool>(global3.a, global2.a), false), global2.a))));
    let var_1 = Struct_1(u_input.d.xz, u_input.e.x, ~u_input.d.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, _wgslsmith_f_op_f32(f32(-1f) * -1588f), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(global3.b - _wgslsmith_div_f32(-570f, global2.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(607f, -943f, -395f, global3.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global2.b, global2.b, 421f) - vec4<f32>(-907f, -244f, global3.b, global2.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-632f, global3.b, -2428f, -1000f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-821f, global2.b, 1386f, global3.b)))), !(!vec4<bool>(var_0.a.x, true, false, global2.a)))), global3.a)));
    var var_2 = _wgslsmith_dot_vec4_i32(u_input.e & _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(42833i, -38994i, 2147483647i, 13200i))), abs(vec4<i32>(global0[_wgslsmith_index_u32(var_1.a.x >> (4294967295u % 32u), 9u)], min(func_2(u_input.a.xz, vec3<u32>(37266u, u_input.d.x, 0u), -17545i).x, global0[_wgslsmith_index_u32(41217u, 9u)] | -49391i), firstTrailingBit(~1i), _wgslsmith_mult_i32(u_input.e.x, -4796i) & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(58234u, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), 9u)])));
    let var_3 = var_1.d.xz;
    return func_4(func_2(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, -36564i, -global0[_wgslsmith_index_u32(var_1.c, 9u)]), var_1.b), ~u_input.d, var_1.b), Struct_2(!select(var_0.a, func_5(Struct_3(var_0.a.x, var_3.x), 2147483647i, Struct_2(vec2<bool>(var_0.a.x, true))), true)));
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_3) -> f32 {
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    var var_0 = ~(~reverseBits(-12199i));
    global0 = array<i32, 9>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.b)) + arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 9>();
    let var_0 = Struct_3(true, _wgslsmith_f_op_f32(func_6(func_1(), 1u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1057f, -118f, 259f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1151f, 417f, 606f))), true)), Struct_3(any(select(vec2<bool>(true, global3.a), vec2<bool>(global3.a, false), global2.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-414f)), -1519f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, 449f, var_0.b), vec3<f32>(var_0.b, global3.b, var_0.b), vec3<bool>(false, global2.a, global2.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-776f, global2.b, _wgslsmith_f_op_f32(-global3.b))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(588f, _wgslsmith_f_op_f32(floor(1279f)), global3.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1302f, 891f, global2.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, global3.b, global2.b))))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(var_0.a, true)), vec3<i32>(-45330i, global0[_wgslsmith_index_u32(26279u, 9u)], 1i), var_0, 1u)), _wgslsmith_f_op_f32(func_6(var_0, 0u, vec3<f32>(-1255f, global3.b, -804f), Struct_3(global2.a, 1316f))), global2.a)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = func_4(-reverseBits(~_wgslsmith_div_vec3_i32(u_input.a.yxz, vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]))), Struct_2(!vec2<bool>(true, global3.a)));
    let var_3 = ~countOneBits(46342i);
    let var_4 = _wgslsmith_f_op_f32(-func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.b + -1161f), _wgslsmith_f_op_f32(-global2.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1044f, global2.b, 442f, -2098f), vec4<f32>(global3.b, -560f, global3.b, global2.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(-2057f, global2.b, global2.b, -209f), vec4<f32>(var_1.x, 744f, 1470f, 563f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_div_f32(496f, 431f), _wgslsmith_f_op_f32(-1761f - global3.b), var_0.b))), firstTrailingBit(_wgslsmith_div_vec2_u32(~u_input.d.yy, vec2<u32>(global1[_wgslsmith_index_u32(32556u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]) | u_input.d.yx) >> (u_input.d.yy % vec2<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, ~abs(u_input.b.x))), 2u)]);
}

