struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true));

var<private> global2: array<i32, 8>;

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec2<f32>(-1000f, -1000f)), Struct_1(vec2<f32>(-562f, -2673f)), Struct_1(vec2<f32>(-1267f, 237f)), vec4<bool>(true, true, true, false), 5889u), Struct_2(Struct_1(vec2<f32>(798f, 1062f)), Struct_1(vec2<f32>(-774f, 1828f)), Struct_1(vec2<f32>(598f, -304f)), vec4<bool>(false, true, false, false), 1u), Struct_2(Struct_1(vec2<f32>(-184f, 396f)), Struct_1(vec2<f32>(594f, 854f)), Struct_1(vec2<f32>(492f, -618f)), vec4<bool>(true, true, true, false), 72581u), Struct_2(Struct_1(vec2<f32>(1954f, 930f)), Struct_1(vec2<f32>(1000f, 1384f)), Struct_1(vec2<f32>(-1000f, 1000f)), vec4<bool>(false, false, true, true), 840u), Struct_2(Struct_1(vec2<f32>(-609f, 639f)), Struct_1(vec2<f32>(-354f, -194f)), Struct_1(vec2<f32>(382f, 1242f)), vec4<bool>(false, false, false, true), 4294967295u), Struct_2(Struct_1(vec2<f32>(-184f, -828f)), Struct_1(vec2<f32>(349f, -846f)), Struct_1(vec2<f32>(203f, 803f)), vec4<bool>(true, true, true, true), 68848u), Struct_2(Struct_1(vec2<f32>(487f, -917f)), Struct_1(vec2<f32>(-252f, 732f)), Struct_1(vec2<f32>(-675f, -1361f)), vec4<bool>(true, true, true, false), 61808u), Struct_2(Struct_1(vec2<f32>(-826f, -180f)), Struct_1(vec2<f32>(-2854f, -369f)), Struct_1(vec2<f32>(-358f, -668f)), vec4<bool>(false, true, false, true), 0u), Struct_2(Struct_1(vec2<f32>(920f, 487f)), Struct_1(vec2<f32>(-1064f, 1084f)), Struct_1(vec2<f32>(194f, 1141f)), vec4<bool>(true, true, true, false), 23911u), Struct_2(Struct_1(vec2<f32>(-741f, -517f)), Struct_1(vec2<f32>(752f, 428f)), Struct_1(vec2<f32>(-817f, -1348f)), vec4<bool>(false, false, false, false), 51580u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(~(~u_input.a.x), 4294967295u & abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 18785u, u_input.b), u_input.a.wyx))), 4294967295u & u_input.a.x);
    let var_0 = _wgslsmith_f_op_f32(-1503f * _wgslsmith_f_op_f32(min(1649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(445f)) + -480f)))));
    var var_1 = 1i;
    let var_2 = 0i;
    global3 = array<Struct_2, 10>();
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(arg_1.b, arg_1.c, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.a.x, _wgslsmith_div_f32(arg_0.x, arg_1.a.a.x)), _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.a)), arg_1.d.x))), select(global1[_wgslsmith_index_u32(12719u, 2u)], select(arg_1.d, !arg_1.d, select(select(vec4<bool>(arg_1.d.x, true, false, arg_1.d.x), global1[_wgslsmith_index_u32(arg_1.e, 2u)], vec4<bool>(false, arg_1.d.x, false, arg_1.d.x)), vec4<bool>(arg_1.d.x, arg_1.d.x, false, true), arg_1.d)), vec4<bool>(arg_1.d.x, all(arg_1.d.zx), !(arg_1.d.x & true), select(false, arg_1.d.x, all(vec4<bool>(arg_1.d.x, false, arg_1.d.x, arg_1.d.x))))), ~arg_1.e << (arg_1.e % 32u));
    let var_1 = var_0.d.x;
    var var_2 = 19784u;
    let var_3 = (i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<i32>(16239i, global2[_wgslsmith_index_u32(arg_1.e, 8u)])), -vec2<i32>(global2[_wgslsmith_index_u32(5757u, 8u)], global2[_wgslsmith_index_u32(arg_1.e, 8u)]))) >= func_2();
    var_2 = 0u;
    return !(!(!select(select(vec2<bool>(true, true), var_0.d.xy, false), vec2<bool>(var_3, var_0.d.x), true)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-773f - -165f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(852f)), -205f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.a.x + -504f), arg_1.b.a.x)))));
    let var_1 = arg_1.c.a.x;
    var var_2 = _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(20261u, 8u)], 2147483647i, global2[_wgslsmith_index_u32(u_input.b, 8u)])), ~(vec3<i32>(-52864i, global2[_wgslsmith_index_u32(15446u, 8u)], -65664i) >> (vec3<u32>(48411u, 0u, arg_1.e) % vec3<u32>(32u)))), reverseBits(-2147483647i) ^ global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, (vec4<u32>(arg_1.e, arg_1.e, 1u, 57992u) & vec4<u32>(0u, u_input.a.x, 615u, 4294967295u)) ^ _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), 8u)]);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.a.a, arg_1.c.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(3157f, -150f))))));
    var_2 = func_2();
    return _wgslsmith_f_op_f32(sign(641f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = firstLeadingBit(~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], -20188i, global2[_wgslsmith_index_u32(u_input.b, 8u)], 2147483647i), vec4<i32>(arg_3.x, arg_3.x, 1i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), vec4<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], -29094i, -12932i), -vec4<i32>(-10622i, -6894i, global2[_wgslsmith_index_u32(0u, 8u)], -41632i)) ^ -vec4<i32>(arg_3.x, global2[_wgslsmith_index_u32(42402u, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], ~global2[_wgslsmith_index_u32(u_input.a.x, 8u)]));
    let var_1 = global3[_wgslsmith_index_u32(~u_input.b >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 14379u, u_input.b)), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(1u, 9657u, countOneBits(19368u), min(u_input.a.x, 124427u))), ~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.xyw, vec3<u32>(67156u, u_input.b, u_input.b)), _wgslsmith_clamp_u32(u_input.b, u_input.a.x, 0u))) % 32u), 10u)];
    let var_2 = u_input.a.xy;
    let var_3 = global3[_wgslsmith_index_u32(~(~99192u), 10u)];
    global0 = ~0u;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1250f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-578f * -994f), _wgslsmith_f_op_f32(abs(503f)), true)) - _wgslsmith_f_op_f32(-355f + 418f)))));
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_f32(func_3(select(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), u_input.a.zz), _wgslsmith_div_vec2_u32(u_input.a.zz, u_input.a.zz), func_1(vec4<f32>(-1000f, 646f, 1000f, -280f), Struct_2(Struct_1(vec2<f32>(-1651f, -434f)), Struct_1(vec2<f32>(-105f, 1304f)), Struct_1(vec2<f32>(-1000f, -114f)), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.b))), Struct_2(Struct_1(vec2<f32>(245f, -823f)), Struct_1(vec2<f32>(2890f, 588f)), Struct_1(vec2<f32>(-1000f, 333f)), select(global1[_wgslsmith_index_u32(10494u, 2u)], global1[_wgslsmith_index_u32(246u, 2u)], vec4<bool>(true, true, true, false)), 6452u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, 918f, true)), _wgslsmith_div_f32(-522f, -1516f))), vec2<bool>(true, !all(vec2<bool>(true, true))), firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 8u)] ^ 74237i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(global2[_wgslsmith_index_u32(1u, 8u)], -2147483647i))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1213f, 1066f) + vec2<f32>(-2196f, 537f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-2192f, -928f), -1000f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-616f, 247f), vec2<f32>(1474f, -192f)))))), !select(vec4<bool>(all(vec3<bool>(false, true, true)), true, true, any(vec4<bool>(true, false, true, false))), !select(global1[_wgslsmith_index_u32(19574u, 2u)], vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), reverseBits(_wgslsmith_sub_u32(abs(u_input.b), ~u_input.b)));
    var var_2 = var_1.a.a;
    let var_3 = func_4(var_2.x, var_1.a, vec2<bool>(true, select(!(!var_1.d.x), true, any(var_1.d.xz) && false)), max(vec3<i32>(-1i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(39698u, 8u)], global2[_wgslsmith_index_u32(12052u, 8u)])) & max(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 8u)], 0i, global2[_wgslsmith_index_u32(u_input.b, 8u)]), vec3<i32>(2147483647i, 45234i, -1i)), vec3<i32>(-firstLeadingBit(global2[_wgslsmith_index_u32(59651u, 8u)]), global2[_wgslsmith_index_u32(abs(0u), 8u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.b, 8u)], -2147483647i))));
    var_2 = _wgslsmith_f_op_vec2_f32(-var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.b, var_1.e, u_input.b, 4294967295u)), ~u_input.a, ~vec4<u32>(var_1.e, 4294967295u, 1u >> (0u % 32u), 33677u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * 475f) + 2866f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.a.x, var_1.b.a.x), 1191f)))));
}

