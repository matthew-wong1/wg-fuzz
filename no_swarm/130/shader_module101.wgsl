struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, true, true, false, false, true, true, false, false, false, true, false, true, false, false, true, true, false, false, false, true, false, false, true, false, true, true, true, false);

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-1i, 13746i, 0i, -16488i), vec4<i32>(-1i, -14554i, -29247i, -32541i), vec4<i32>(i32(-2147483648), 2147483647i, 17822i, 0i), vec4<i32>(0i, 0i, 6768i, -16420i), vec4<i32>(-1i, 3845i, 0i, 32900i), vec4<i32>(2147483647i, -38787i, 74753i, -9834i), vec4<i32>(1i, i32(-2147483648), -22540i, -15471i));

var<private> global4: array<u32, 7> = array<u32, 7>(0u, 1u, 0u, 1u, 87856u, 32943u, 33990u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    global1 = array<vec4<f32>, 8>();
    var var_0 = vec2<bool>(1219f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(993f * global2.b) * _wgslsmith_f_op_f32(floor(global2.a.a)))), !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~global4[_wgslsmith_index_u32(u_input.b, 7u)], u_input.c), _wgslsmith_mult_u32(~global4[_wgslsmith_index_u32(67932u, 7u)], 18242u)), 30u)]);
    global2 = Struct_2(global2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1748f, _wgslsmith_f_op_f32(-1427f * arg_0.a))))));
    var var_1 = vec3<bool>(!(global2.b < arg_0.a), global2.a.b && global2.a.b, global2.a.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), global2.a.a, -563f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, global2.b), vec3<f32>(global2.a.a, global2.a.a, arg_0.a))))))));
    return -arg_1.x;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    var var_0 = Struct_2(global2.a, global2.b);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b + global2.a.a))) - -985f), var_0.a.a, all(!select(vec2<bool>(false, var_0.a.b), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], global2.a.b), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 30u)]))))), all(select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], arg_2, var_0.a.b), !vec4<bool>(global2.a.b, global2.a.b, var_0.a.b, arg_2), 61096u <= u_input.b), select(vec4<bool>(global2.a.b, arg_2, true, var_0.a.b), select(vec4<bool>(arg_2, false, true, false), vec4<bool>(true, true, false, global2.a.b), vec4<bool>(var_0.a.b, true, true, arg_2)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 30u)], arg_2, var_0.a.b))), 1u <= global4[_wgslsmith_index_u32(~u_input.b, 7u)])), -2483i);
    global2 = Struct_2(var_1, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.a, -304f, false))), _wgslsmith_f_op_f32(f32(-1f) * -967f)))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_0.b) + _wgslsmith_f_op_f32(-global2.b))), arg_2, var_0.a.c), Struct_2(Struct_1(886f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_1.x, 57348u, 93804u), arg_1), _wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(11528u, arg_1.x, 0u))), 30u)], reverseBits(arg_0)), _wgslsmith_f_op_f32(ceil(-577f))), var_0.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1551f, global2.a.a, var_0.a.a) * vec3<f32>(var_2.b.b, global2.b, var_2.b.a.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-108f, var_1.a, -172f) - vec3<f32>(global2.a.a, 1000f, -1345f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-211f, var_2.b.b, var_2.c.a)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(floor(var_2.c.a)), 1000f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, 176f, 814f))))) * vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(floor(var_1.a))));
    return var_1.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(global4[_wgslsmith_index_u32(reverseBits(~4294967295u) << (1u % 32u), 7u)] & abs(_wgslsmith_mod_u32(u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(59067u, 7u)], 7u)], 7u)]) >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)] | 0u, 7u)] % 32u)), arg_1.a, arg_1, vec2<f32>(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(f32(-1f) * -1584f)), _wgslsmith_f_op_f32(-937f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a + 644f)))));
    var var_1 = !(arg_1.a.b || all(vec3<bool>(arg_1.a.b, !var_0.c.a.b, true)));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(sign(-895f)), (~arg_0.x & _wgslsmith_add_u32(u_input.c, 70844u)) > 16162u, func_4(func_3(global2.a, -u_input.a.yxx), vec3<u32>(25162u, firstTrailingBit(global4[_wgslsmith_index_u32(arg_0.x, 7u)]), ~arg_0.x), !any(vec3<bool>(true, false, true)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-108f, global2.b))), all(select(vec4<bool>(true, true, arg_1.a.b, arg_1.a.b), vec4<bool>(true, global2.a.b, global2.a.b, true), vec4<bool>(false, true, arg_1.a.b, true))), _wgslsmith_add_i32(func_4(-2147483647i, vec3<u32>(1u, arg_0.x, var_0.a), true), firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a))))), arg_1.a);
    var var_3 = Struct_3(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(max(26430u, 0u), 7u)], 7u)], 47671u), var_0.c.a, var_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a, 741f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.a.a)))))));
    var var_4 = abs(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(global4[_wgslsmith_index_u32(var_0.a, 7u)], 1u, 70586u), arg_0 | arg_0), _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.c, u_input.c, global4[_wgslsmith_index_u32(0u, 7u)]), arg_0), firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.c)))) ^ max(4690u, 1u), 7u)]);
    return 23580u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<f32> {
    let var_0 = vec2<u32>(func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(1u, 7u)], 28213u), ~global4[_wgslsmith_index_u32(u_input.b, 7u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(10962u, 7u)], u_input.b, arg_2.x, global4[_wgslsmith_index_u32(arg_2.x, 7u)]), vec4<u32>(global4[_wgslsmith_index_u32(u_input.b, 7u)], arg_2.x, 1u, arg_2.x))), reverseBits(vec3<u32>(2724u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33936u, 7u)], 7u)], u_input.b))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a.a), true, _wgslsmith_dot_vec3_i32(u_input.a.yzw, u_input.a.wzz)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a - -1426f))))), ~(~1u));
    global2 = Struct_2(arg_0, _wgslsmith_f_op_f32(ceil(-1237f)));
    let var_1 = Struct_3(~(~arg_2.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b))) * _wgslsmith_f_op_f32(-arg_1.a)), !all(vec2<bool>(true, true)), arg_1.c), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(global2.a.a)), global0[_wgslsmith_index_u32(~1u, 30u)], _wgslsmith_mult_i32(global2.a.c, arg_0.c)), -2273f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.a, 1000f)) + arg_1.a)), vec2<f32>(1083f, 1000f), !global0[_wgslsmith_index_u32(~0u, 30u)])));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, var_1.b.a, -2136f, arg_1.a) - global1[_wgslsmith_index_u32(var_0.x, 8u)]) - vec4<f32>(2170f, 1436f, arg_0.a, var_1.b.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_1.a, 8u)])) - global1[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(~0u, 7u)], 8u)])));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1577f))))), true, _wgslsmith_sub_i32(~var_1.b.c, _wgslsmith_add_i32(-arg_0.c, 2147483647i))), var_1.c, arg_1);
    return var_2.xxy;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<i32>) -> StorageBuffer {
    global4 = array<u32, 7>();
    var var_0 = !(!vec2<bool>(all(select(vec3<bool>(true, true, global2.a.b), vec3<bool>(global2.a.b, true, false), vec3<bool>(global0[_wgslsmith_index_u32(34469u, 30u)], true, global0[_wgslsmith_index_u32(46586u, 30u)]))), global0[_wgslsmith_index_u32(u_input.c ^ 24782u, 30u)]));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-311f - _wgslsmith_f_op_f32(-1170f - 829f)), _wgslsmith_f_op_vec3_f32(func_1(global2.a, global2.a, vec2<u32>(u_input.b, u_input.c) | vec2<u32>(86670u, u_input.b))).x)), global0[_wgslsmith_index_u32(~0u, 30u)], 1i), _wgslsmith_f_op_f32(f32(-1f) * -1672f));
    var_1 = Struct_2(global2.a, -228f);
    return StorageBuffer(22731i, 100f, -887f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 18257i <= select(0i, abs(abs(u_input.a.x)), global2.a.b);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global2.a.a - 3083f), _wgslsmith_f_op_f32(-global2.a.a), _wgslsmith_f_op_f32(f32(-1f) * -629f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(global2.a.a)), 245f, global2.a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1162f, global2.a.a, global2.b) + vec3<f32>(-1000f, global2.b, -985f)) + _wgslsmith_f_op_vec3_f32(func_1(global2.a, global2.a, vec2<u32>(1u, u_input.c)))), select(!vec3<bool>(var_0, var_0, var_0), !vec3<bool>(true, var_0, global2.a.b), select(vec3<bool>(true, global2.a.b, false), vec3<bool>(false, global2.a.b, var_0), vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], var_0))))))), vec3<i32>(-1i) * -countOneBits(u_input.a.zxw));
}

