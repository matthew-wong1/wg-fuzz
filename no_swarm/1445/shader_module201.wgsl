struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(36641u, 4294967295u, 1501u, 4294967295u, 4294967295u, 9054u, 19211u, 0u);

var<private> global1: array<i32, 28> = array<i32, 28>(i32(-2147483648), 2147483647i, 0i, -16277i, 15890i, 0i, 2147483647i, 0i, -63009i, 0i, 18884i, 1i, 1i, i32(-2147483648), 0i, -44435i, 55799i, -15338i, i32(-2147483648), 2147483647i, 2147483647i, 29531i, 0i, 1i, -80730i, 5473i, 12230i, 42753i);

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-13614i, -1i), vec2<i32>(17172i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(39463i, 0i), vec2<i32>(27880i, -31596i), vec2<i32>(1i, 0i), vec2<i32>(0i, -27003i), vec2<i32>(-14536i, 10120i), vec2<i32>(1i, -24037i), vec2<i32>(i32(-2147483648), 39583i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 25238i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -20221i), vec2<i32>(2147483647i, 24699i), vec2<i32>(-67696i, 13466i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, 15567i), vec2<i32>(-66890i, 8448i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(0i, firstLeadingBit(u_input.b) > ~0u, select(!vec3<bool>(arg_0.b, arg_3.b, arg_3.b), vec3<bool>(false || arg_0.b, true, any(arg_0.c)), arg_2.x), countOneBits(global1[_wgslsmith_index_u32(~4294967295u, 28u)])));
    global1 = array<i32, 28>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(842f, -1106f, -877f) * vec3<f32>(-762f, -841f, -700f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(326f)), 192f, _wgslsmith_f_op_f32(-852f + -245f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-462f, -300f, 131f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, -124f, 459f) + vec3<f32>(1179f, -1119f, -970f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1672f, _wgslsmith_f_op_f32(abs(1252f)), -724f))), _wgslsmith_div_vec3_f32(vec3<f32>(1115f, -399f, _wgslsmith_f_op_f32(round(640f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(220f, 1715f, -1000f))))));
    var var_2 = arg_3;
    var var_3 = u_input.d | (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 17413u), ~(~u_input.e.yz)) | select(~(~u_input.e.x), ~min(arg_1, 70646u), all(vec3<bool>(arg_3.c.x, arg_0.b, true))));
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    var var_0 = arg_0.a;
    var_0 = arg_0.a;
    global0 = array<u32, 8>();
    let var_1 = arg_0.a;
    let var_2 = false;
    return 1389f;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 28u)] >> (40797u % 32u), true, func_3(Struct_1(2147483647i, arg_1, vec3<bool>(arg_1, false, true), u_input.c.x), 59697u, vec3<bool>(false, false, arg_1), Struct_1(u_input.c.x, false, vec3<bool>(false, true, arg_1), u_input.c.x)), ~u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1288f, -1474f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-694f, 352f))) + vec2<f32>(-475f, -516f))), !(!(!vec4<bool>(true, arg_1, false, true))), 13058u)));
    var var_1 = vec4<f32>(819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1542f + -677f) * _wgslsmith_f_op_f32(f32(-1f) * -1191f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1268f * _wgslsmith_div_f32(-1111f, 957f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)), -1000f)), _wgslsmith_f_op_f32(1635f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1606f, 953f, arg_1)), _wgslsmith_f_op_f32(abs(-379f))))));
    let var_2 = Struct_2(Struct_1(abs(23741i), func_3(Struct_1(u_input.c.x | u_input.a, true, select(vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, false, true), arg_1), -1i), global0[_wgslsmith_index_u32(max(55103u, _wgslsmith_dot_vec3_u32(arg_0, u_input.e)), 8u)], func_3(Struct_1(-37904i, false, vec3<bool>(arg_1, arg_1, arg_1), -55351i), _wgslsmith_add_u32(13521u, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(true, false, true), Struct_1(u_input.a, arg_1, vec3<bool>(false, arg_1, false), global1[_wgslsmith_index_u32(115704u, 28u)])), Struct_1(_wgslsmith_sub_i32(-2147483647i, 1i), true, select(vec3<bool>(true, false, arg_1), vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, false, arg_1)), ~0i)).x, !select(select(vec3<bool>(false, false, false), vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_1, false)), vec3<bool>(arg_1, false, true), arg_1), 1i));
    global1 = array<i32, 28>();
    let var_3 = any(func_3(Struct_1(var_2.a.a, any(vec4<bool>(arg_1, false, arg_1, var_2.a.c.x)), !var_2.a.c, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(58352u, 28u)], -2147483647i, var_2.a.d)), arg_0.x, !(!var_2.a.c), Struct_1(_wgslsmith_mult_i32(var_2.a.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35538u, 8u)], 28u)]), !arg_1, vec3<bool>(false, var_2.a.b, true), 2147483647i))) == true;
    return _wgslsmith_div_f32(329f, _wgslsmith_f_op_f32(step(768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1822f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_1() -> i32 {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.e, !all(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1314f * -1780f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(256f))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))))))));
    return u_input.c.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = vec4<u32>(u_input.b, _wgslsmith_mult_u32(firstLeadingBit(12519u), 104909u ^ global0[_wgslsmith_index_u32(38324u, 8u)]), 0u, 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1383f)))));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1116f * 1575f)), 147f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -190f), 107f, arg_1.b))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1216f, -726f) + vec3<f32>(-663f, -167f, -470f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1413f, 363f, -656f)))), vec3<f32>(-760f, -1688f, _wgslsmith_f_op_f32(941f * -862f))))));
    let var_4 = 12575i;
    return var_3.xx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    var var_0 = _wgslsmith_clamp_i32(-6507i, -14149i, u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(-2147483647i, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.e.x, u_input.d), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 8u)], 8u)] & global0[_wgslsmith_index_u32(1u, 8u)]) <= global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68661u, 8u)], 8u)], 8u)], 8u)]), 8u)], select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), all(vec4<bool>(true, true, true, true))), func_1()), Struct_1(u_input.a, true, !func_3(Struct_1(u_input.c.x, false, vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 8u)], 28u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.d, u_input.d, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], 1420u, global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.e.x)), func_3(Struct_1(-2147483647i, false, vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], 8u)], 28u)]), 29954u, vec3<bool>(true, true, false), Struct_1(0i, false, vec3<bool>(false, true, true), -30363i)), Struct_1(global1[_wgslsmith_index_u32(0u, 28u)], false, vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(0u, 28u)])), u_input.a)));
    let var_2 = Struct_1(u_input.a, reverseBits(_wgslsmith_sub_i32(51749i, _wgslsmith_add_i32(0i, 1i))) < u_input.a, !func_3(Struct_1(-22720i, true, vec3<bool>(true, true, false), reverseBits(-2147483647i)), max(u_input.b, global0[_wgslsmith_index_u32(51798u, 8u)]), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, false, false), var_1.x >= 1754f), Struct_1(u_input.a | global1[_wgslsmith_index_u32(16352u, 28u)], all(vec3<bool>(true, true, false)), vec3<bool>(true, true, true), -global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 28u)])), reverseBits(-1i));
    global0 = array<u32, 8>();
    global1 = array<i32, 28>();
    global2 = array<vec2<i32>, 20>();
    var var_3 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_2.a, u_input.a, var_2.a & 0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 28u)]))), true, select(var_2.c, select(var_2.c, vec3<bool>(any(var_2.c), true, func_3(Struct_1(u_input.a, false, vec3<bool>(false, true, false), -2147483647i), 0u, vec3<bool>(true, true, true), Struct_1(var_2.d, var_2.c.x, var_2.c, u_input.a)).x), var_2.c.x), vec3<bool>(!any(vec2<bool>(false, true)), true, func_3(Struct_1(1i, true, vec3<bool>(false, false, var_2.c.x), var_2.d), ~u_input.b, vec3<bool>(false, true, var_2.c.x), var_2).x)), i32(-1i) * -u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, var_1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(func_2(~max(vec3<u32>(u_input.e.x, 66810u, 32339u), u_input.e), 64858i <= var_2.d)), -1066f, _wgslsmith_f_op_f32(func_2(select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.b, 8u)], u_input.d), u_input.e), u_input.e, var_2.c), true))));
}

