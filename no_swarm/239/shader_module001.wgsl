struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 4294967295u, 12113u, 31934u), vec4<u32>(4294967295u, 1u, 2950u, 0u), vec4<u32>(30707u, 1u, 1u, 1u), vec4<u32>(47u, 61041u, 4294967295u, 51995u), vec4<u32>(1u, 4294967295u, 4294967295u, 58175u), vec4<u32>(4294967295u, 12436u, 109886u, 25347u), vec4<u32>(4294967295u, 23079u, 1452u, 19848u), vec4<u32>(4294967295u, 13027u, 0u, 83549u), vec4<u32>(0u, 58108u, 4294967295u, 4294967295u), vec4<u32>(20464u, 4294967295u, 16271u, 1u), vec4<u32>(0u, 6340u, 53424u, 1u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(53953u, 36929u, 11532u, 7767u), vec4<u32>(4294967295u, 1u, 4294967295u, 93247u), vec4<u32>(34374u, 1u, 1u, 4004u), vec4<u32>(1u, 30412u, 25837u, 20794u), vec4<u32>(24876u, 6064u, 16040u, 5244u), vec4<u32>(43989u, 1u, 116682u, 1u), vec4<u32>(4294967295u, 1u, 61626u, 0u), vec4<u32>(70492u, 22738u, 83648u, 13278u), vec4<u32>(52057u, 27406u, 1u, 0u), vec4<u32>(0u, 1u, 4294967295u, 88628u), vec4<u32>(4294967295u, 21346u, 0u, 0u), vec4<u32>(4294967295u, 50422u, 25111u, 719u));

var<private> global1: array<Struct_3, 21>;

var<private> global2: array<bool, 30> = array<bool, 30>(false, false, false, true, false, false, false, true, true, false, true, true, false, true, false, false, true, true, false, true, true, true, true, true, true, false, false, true, false, false);

var<private> global3: Struct_3;

var<private> global4: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(~(~(_wgslsmith_mod_i32(u_input.a, u_input.b) | -16365i)), ~4294967295u, firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(global3.b, global3.b), global3.b)) | vec2<u32>(select(global3.b, 1u, all(vec4<bool>(false, global2[_wgslsmith_index_u32(global3.b, 30u)], global2[_wgslsmith_index_u32(global3.b, 30u)], false))), min(~1u, global3.b >> (22764u % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1990f, -473f, _wgslsmith_f_op_f32(f32(-1f) * -967f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-149f, 826f, -1000f)))) + vec3<f32>(-116f, -533f, 521f))), !select(vec3<bool>(!global2[_wgslsmith_index_u32(0u, 30u)], any(vec2<bool>(true, false)), all(vec3<bool>(global3.a, false, false))), select(!vec3<bool>(false, false, global3.a), vec3<bool>(global3.a, true, true), select(vec3<bool>(global3.a, true, global2[_wgslsmith_index_u32(global3.b, 30u)]), vec3<bool>(global2[_wgslsmith_index_u32(12278u, 30u)], true, global2[_wgslsmith_index_u32(4294967295u, 30u)]), false)), all(vec2<bool>(true, true))));
    global4 = ~abs(global3.b);
    global0 = array<vec4<u32>, 24>();
    return !vec3<bool>(global3.a, true, false);
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<i32>(reverseBits(47649i), _wgslsmith_dot_vec2_i32(-vec2<i32>(38505i, global3.c), _wgslsmith_mod_vec2_i32(u_input.c.yy << (vec2<u32>(global3.b, global3.b) % vec2<u32>(32u)), select(u_input.c.xy, u_input.c.yz, vec2<bool>(global3.a, false))))) & -u_input.c.xz;
    global1 = array<Struct_3, 21>();
    let var_1 = Struct_2(Struct_1(-1i, 0u, firstTrailingBit(~vec2<u32>(global3.b, 4294967295u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-851f, 200f, -707f)) * vec3<f32>(-3356f, -174f, 1382f)))), func_3()));
    let var_2 = global3.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(181f)), _wgslsmith_f_op_f32(var_1.a.d.x * _wgslsmith_div_f32(var_1.a.d.x, -324f)), var_1.a.d.x, _wgslsmith_f_op_f32(var_1.a.d.x - _wgslsmith_div_f32(1174f, var_1.a.d.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.d.x, 364f, var_1.a.d.x, 1243f) - vec4<f32>(702f, 1071f, var_1.a.d.x, var_1.a.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d.x, var_1.a.d.x, var_1.a.d.x, 478f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1025f, -1504f, 147f, var_1.a.d.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(815f, var_1.a.d.x, var_1.a.d.x, var_1.a.d.x))), var_1.a.e.x || false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1257f, _wgslsmith_f_op_f32(1301f * -2194f), _wgslsmith_f_op_f32(trunc(var_1.a.d.x)), -1358f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(846f, var_1.a.d.x, 220f, -781f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1674f, 391f, 2607f, 104f))))))));
    return var_1.a;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> vec3<f32> {
    let var_0 = global3.c;
    var var_1 = arg_0;
    global4 = abs(4294967295u);
    let var_2 = func_2();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, -276f, var_2.d.x) - var_2.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, var_2.d.x, var_2.d.x) - var_2.d)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(func_2());
    let var_1 = Struct_3(all(vec2<bool>(false, arg_3.a.a > arg_2.a)) | true, abs(~var_0.a.c.x), _wgslsmith_div_i32(-23896i, ~global3.c));
    global2 = array<bool, 30>();
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    return Struct_3(false, 4294967295u, _wgslsmith_div_i32(var_1.c, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-42742i, u_input.a, 31754i, -55485i), ~vec4<i32>(arg_2.a, -16983i, -1i, arg_0.a.a)), _wgslsmith_clamp_i32(arg_3.a.a, 2147483647i, _wgslsmith_add_i32(var_0.a.a, arg_0.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(15067i, 2147483647i);
    global3 = global1[_wgslsmith_index_u32(4294967295u, 21u)];
    global1 = array<Struct_3, 21>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1765f)))));
    var var_2 = func_4(Struct_2(Struct_1(~54173i, ~(global3.b ^ global3.b), _wgslsmith_div_vec2_u32(vec2<u32>(global3.b, global3.b) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), vec2<u32>(4294967295u, global3.b) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(func_1(~53832u, vec4<bool>(global2[_wgslsmith_index_u32(global3.b, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global3.a, true), vec3<bool>(true, global3.a, global3.a))), !func_3())), 317f, func_2(), Struct_2(func_2()));
    var var_3 = _wgslsmith_f_op_f32(min(-387f, 1558f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(~(~global0[_wgslsmith_index_u32(31539u, 24u)]))), global3.b, countOneBits(vec4<i32>(i32(-1i) * -1i, i32(-1i) * -var_2.c, 1i, global3.c)), global0[_wgslsmith_index_u32(77915u, 24u)], vec4<i32>(max(1623i, var_0.x), _wgslsmith_div_i32(56321i ^ _wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(-27796i, var_0.x)), var_2.c), var_2.c, abs(_wgslsmith_div_i32(-1i, 2147483647i)) & -_wgslsmith_div_i32(-37072i, var_2.c)));
}

