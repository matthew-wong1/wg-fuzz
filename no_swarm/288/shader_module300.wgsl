struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(i32(-2147483648), -22038i), vec2<i32>(i32(-2147483648), -24545i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(17495i, 43188i), vec2<i32>(32230i, 53699i), vec2<i32>(-19440i, -35329i));

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: array<Struct_1, 7>;

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = global4.d;
    var var_1 = Struct_2(Struct_1(global4.e.a), vec4<i32>(_wgslsmith_dot_vec3_i32(select(countOneBits(vec3<i32>(-2147483647i, global4.b.x, arg_0.x)), vec3<i32>(2147483647i, u_input.c.x, global4.c), vec3<bool>(false, true, global4.d)), -u_input.c.wyw), global3.b.x, -(_wgslsmith_add_i32(global4.b.x, global3.b.x) & -69026i), -21385i), abs(2147483647i), global1[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.d.yxx, vec3<u32>(u_input.d.x, u_input.a, 4294967295u)))), u_input.a), 7u)]);
    var var_2 = true;
    global0 = array<vec2<i32>, 7>();
    global3 = Struct_2(global3.e, ~vec4<i32>(abs(firstLeadingBit(global3.b.x)), -20352i, _wgslsmith_mod_i32(-42637i, var_1.c | -1i), max(1i, _wgslsmith_mod_i32(global4.c, -17459i))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i & arg_0.x, -49618i, -43927i), _wgslsmith_div_i32(max(1i, -2147483647i), global3.b.x >> (42830u % 32u)), _wgslsmith_add_i32(-11371i, _wgslsmith_mod_i32(global3.c, global3.b.x))) & 61367i, (var_1.b.x >= -13388i) & !(-45459i == (var_1.c & 0i)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(314f)))))));
    return all(!(!vec4<bool>(all(vec2<bool>(true, global4.d)), global1[_wgslsmith_index_u32(u_input.e, 1u)], true, var_1.d)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(-1880f);
    var var_1 = select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.b.x, _wgslsmith_mod_i32(-2147483647i, 13362i)), max(abs(u_input.c.wy), u_input.c.zx)), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.b.x, u_input.c.x), vec2<i32>(2147483647i, u_input.c.x)), -firstLeadingBit(-689i)), firstTrailingBit(~firstLeadingBit(firstTrailingBit(global4.b.www))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_1.x, 5297u, arg_0), u_input.b)), 1u), 1u)]);
    global1 = array<bool, 1>();
    var var_2 = global4.b.zxw;
    global4 = Struct_2(global3.a, firstTrailingBit(vec4<i32>(global3.c, -41462i >> (u_input.e % 32u), var_2.x, select(_wgslsmith_mod_i32(10359i, var_2.x), -global3.c, true))), 2147483647i, false, var_0);
    return vec4<bool>(any(select(select(select(vec2<bool>(global3.d, true), vec2<bool>(global3.d, global4.d), vec2<bool>(global4.d, false)), select(vec2<bool>(global3.d, true), vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 1u)])), true), vec2<bool>(false, global3.d), global4.d)), true, global3.d, !global3.d | func_3(select(global0[_wgslsmith_index_u32(1u, 7u)] | vec2<i32>(-23302i, 0i), ~global0[_wgslsmith_index_u32(0u, 7u)], !global3.d)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: bool) -> f32 {
    var var_0 = arg_1.c;
    global1 = array<bool, 1>();
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.e.a)), _wgslsmith_f_op_f32(global3.e.a - global3.a.a), global3.e.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global4.a.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global3.e.a)), 212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1214f * arg_1.e.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.e.a, global4.a.a, -310f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.a.a, 248f, arg_1.a.a), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(866f, global3.a.a, -273f))))))));
    var var_2 = (true & !(true || func_3(global3.b.wx))) | true;
    var_0 = firstTrailingBit(max(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.b.x, arg_1.c), vec2<i32>(arg_1.b.x, u_input.c.x)), vec2<i32>(global4.c, global3.c)), global4.b.x) >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_2.x, ~21928u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9699u, 70156u, 382u), vec3<u32>(u_input.e, u_input.b.x, u_input.a)), _wgslsmith_add_u32(arg_2.x, 1u))) % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.e.a) - _wgslsmith_div_f32(-261f, -277f));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_2(0u, u_input.d.zxx), Struct_2(Struct_1(1028f), -(vec4<i32>(-2147483647i, global3.c, 2147483647i, u_input.c.x) << (u_input.b % vec4<u32>(32u))), _wgslsmith_mult_i32(select(global3.b.x, u_input.c.x, global3.d), 29133i), false, global3.a), _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 58918u, u_input.a, 0u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)), _wgslsmith_div_vec4_u32(u_input.d, firstLeadingBit(u_input.b)), u_input.b), global4.d))));
    let var_1 = all(!vec3<bool>(!global3.d || (-2147483647i <= u_input.c.x), _wgslsmith_sub_i32(0i, global3.c) > global3.c, !all(vec4<bool>(global4.d, false, global4.d, false))));
    let var_2 = var_0;
    global2 = array<Struct_1, 7>();
    let var_3 = Struct_2(global3.e, ~_wgslsmith_div_vec4_i32(vec4<i32>(max(global3.c, global4.c), global3.c, -10279i, _wgslsmith_add_i32(-1i, -75829i)), global3.b), -(~(-20631i)), !global3.d, global3.a);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(vec3<bool>(global3.d, true, global4.d), !vec3<bool>(false, global4.d, global3.d), vec3<bool>(global3.d, global4.d, global3.d)), select(vec3<bool>(global4.d, global3.d, global1[_wgslsmith_index_u32(15294u, 1u)]), vec3<bool>(true, global3.d, global3.d), !vec3<bool>(global1[_wgslsmith_index_u32(64780u, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global3.d)), !(!vec3<bool>(false, global4.d, false))), vec3<bool>(false, any(select(select(vec4<bool>(global4.d, global4.d, global4.d, global1[_wgslsmith_index_u32(u_input.e, 1u)]), vec4<bool>(global4.d, false, global1[_wgslsmith_index_u32(46545u, 1u)], true), vec4<bool>(global4.d, false, global3.d, true)), !vec4<bool>(global4.d, true, true, global1[_wgslsmith_index_u32(0u, 1u)]), global4.d)), !global3.d), select(vec3<bool>(true, false, false), select(vec3<bool>(false, global4.d, false), vec3<bool>(global4.c != u_input.c.x, true & global4.d, all(vec3<bool>(false, true, global4.d))), vec3<bool>(true, global3.d && false, u_input.d.x < u_input.a)), any(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global3.d), vec2<bool>(global1[_wgslsmith_index_u32(0u, 1u)], global4.d), true)) & any(!vec2<bool>(global4.d, false))));
    let var_1 = func_1();
    global3 = var_1;
    var var_2 = u_input.c;
    let var_3 = Struct_1(global3.e.a);
    var var_4 = ~global4.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.a + global4.a.a) * _wgslsmith_div_f32(global4.a.a, var_1.e.a))), var_3.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.a, 681f, -463f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.e.a, 248f, global4.e.a))))), vec3<f32>(-831f, var_1.e.a, -582f), !select(true, global4.d, func_1().d))));
}

