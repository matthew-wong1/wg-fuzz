struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(31930i, -17633i), vec2<i32>(-7031i, 3822i), vec2<i32>(30812i, 1i), vec2<i32>(2147483647i, -22234i), vec2<i32>(-21300i, -34875i), vec2<i32>(-1934i, 1i), vec2<i32>(8985i, -19552i), vec2<i32>(2147483647i, -4774i), vec2<i32>(7130i, -1i), vec2<i32>(0i, 1i), vec2<i32>(-44575i, 1i), vec2<i32>(1i, -6818i), vec2<i32>(-20124i, -1i));

var<private> global1: array<vec4<u32>, 21>;

var<private> global2: array<i32, 27>;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32((vec4<i32>(global2[_wgslsmith_index_u32(28771u, 27u)], u_input.a, global2[_wgslsmith_index_u32(arg_2.a, 27u)], 6240i) ^ vec4<i32>(u_input.a, 2147483647i, -45218i, u_input.a)) & vec4<i32>(3250i, global2[_wgslsmith_index_u32(11032u, 27u)], -41706i, u_input.a), abs(vec4<i32>(0i, u_input.a, global2[_wgslsmith_index_u32(36792u, 27u)], -4726i))) ^ (abs(~vec4<i32>(u_input.a, 1i, 2147483647i, -9778i)) | ~firstLeadingBit(vec4<i32>(u_input.a, 1i, global2[_wgslsmith_index_u32(8942u, 27u)], u_input.a))), firstLeadingBit(~vec4<i32>(59113i, -3249i, abs(-31183i), u_input.a)));
    global2 = array<i32, 27>();
    var var_2 = arg_3.a;
    var var_3 = select(vec4<bool>(true, all(select(vec2<bool>(arg_2.b.x, var_0), arg_0.c.zx, arg_1.c.yw)), !any(vec3<bool>(false, false, arg_1.b.x)), !(!all(arg_1.b))), vec4<bool>(any(arg_0.c), arg_0.c.x, !(!(u_input.a <= 5727i)), any(arg_0.b.xzz)), all(!vec3<bool>(!arg_3.b.x, var_0 | var_0, 136340u >= arg_3.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-476f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(494f + -330f), _wgslsmith_f_op_f32(-902f - 953f), false)), _wgslsmith_f_op_f32(-1f), !all(arg_1.b.yxw)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(558f, 766f)), _wgslsmith_f_op_f32(step(-1194f, 728f))) * -738f)));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global3 = array<Struct_1, 11>();
    var var_0 = -2147483647i ^ -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-9991i, 0i, 9718i, u_input.a), vec4<i32>(-23930i, -531i, global2[_wgslsmith_index_u32(10951u, 27u)], 29897i), vec4<bool>(true, false, false, false)), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a, 11712i, global2[_wgslsmith_index_u32(4294967295u, 27u)])), 2147483647i);
    let var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b, ~(~arg_0.x)), 30739u), select(!vec4<bool>(false, true, u_input.b >= u_input.b, arg_0.x == u_input.b), vec4<bool>(true, true, true, true), ~_wgslsmith_mod_u32(0u, arg_0.x) >= ~_wgslsmith_add_u32(u_input.b, 9565u)), vec4<bool>(true, true, true, true));
    let var_2 = vec4<i32>(-_wgslsmith_mult_i32(11809i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 0i, -2147483647i), vec3<i32>(20257i, u_input.a, u_input.a)), ~vec3<i32>(u_input.a, -72130i, global2[_wgslsmith_index_u32(52174u, 27u)]))), -6718i, firstTrailingBit(_wgslsmith_mod_i32(countOneBits(global2[_wgslsmith_index_u32(0u, 27u)]) | 38734i, global2[_wgslsmith_index_u32(4294967295u << (~var_1.a % 32u), 27u)])), 2147483647i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f * 1f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1, Struct_1(var_1.a, vec4<bool>(var_1.c.x, false, true, var_1.c.x), var_1.b), global3[_wgslsmith_index_u32(13205u, 11u)], global3[_wgslsmith_index_u32(~(~arg_0.x), 11u)])) * _wgslsmith_f_op_f32(floor(303f))));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(30584u, 863u, 6613u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), 0u, 0u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(10864u, vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), Struct_1(15342u, vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), global3[_wgslsmith_index_u32(u_input.b << (u_input.b % 32u), 11u)], Struct_1(u_input.b, vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1342f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-579f, 608f)), _wgslsmith_f_op_f32(1136f * -1199f))) - _wgslsmith_f_op_f32(func_2(reverseBits(~vec4<u32>(u_input.b, u_input.b, 2894u, 65880u))))));
    global0 = array<vec2<i32>, 13>();
    global1 = array<vec4<u32>, 21>();
    var var_1 = vec4<bool>(false, true, !((select(u_input.b, 1u, true) ^ 1u) == _wgslsmith_mult_u32(0u, u_input.b)), select(false, all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false))), false));
    let var_2 = u_input.b;
    return vec4<bool>(true, u_input.b <= ~40112u, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 27>();
    let var_0 = select(vec2<bool>(!(any(vec3<bool>(true, false, false)) == false), true || all(func_1())), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false))), any(vec4<bool>(false, func_1().x, true, false))), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    global1 = array<vec4<u32>, 21>();
    global1 = array<vec4<u32>, 21>();
    var var_1 = countOneBits(global0[_wgslsmith_index_u32(~u_input.b, 13u)]);
    let var_2 = 2147483647i;
    global0 = array<vec2<i32>, 13>();
    let var_3 = func_1();
    let var_4 = vec3<bool>(!var_3.x | all(!var_3.wxy), var_3.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(347f, 422f) * vec2<f32>(-136f, -685f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-820f, 365f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1369f, 1103f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1720f, 460f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(997f, -315f) - vec2<f32>(308f, -841f)) * vec2<f32>(_wgslsmith_f_op_f32(floor(-452f)), 576f))), ~vec3<i32>(-_wgslsmith_mult_i32(7371i, var_2), var_2, var_2), -1761f);
}

