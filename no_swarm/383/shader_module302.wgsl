struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> bool {
    global1 = arg_2.e;
    global0 = array<vec4<i32>, 23>();
    global1 = arg_2.e;
    var var_0 = arg_2;
    var var_1 = -26201i;
    return (2147483647i > (_wgslsmith_div_i32(var_0.c.x >> (arg_2.b % 32u), abs(-11427i)) >> (max(41919u, 4294967295u) % 32u))) || !(any(!vec4<bool>(arg_2.a, arg_2.a, true, false)) | var_0.d.x);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(global1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_div_f32(1287f, -761f), !arg_1.d.x))), ~u_input.a, arg_1.c, vec3<bool>(any(!(!vec3<bool>(arg_1.d.x, true, false))), select(all(select(arg_1.d.zy, global2[_wgslsmith_index_u32(1u, 31u)], vec2<bool>(arg_1.d.x, false))), true, arg_1.d.x), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(349f * -649f), _wgslsmith_f_op_f32(f32(-1f) * -1205f), func_1(26960u, arg_1.e.x, arg_1)))))));
    var var_1 = false;
    let var_2 = arg_1.b;
    let var_3 = arg_1;
    global0 = array<vec4<i32>, 23>();
    return !vec3<bool>(var_3.a, any(select(vec2<bool>(var_3.d.x, var_0.d.x), vec2<bool>(var_0.a, arg_1.d.x), true)) || !(var_2 != 14429u), var_3.a);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = -(~vec2<i32>(~arg_0.c.x, 1i)) >> (abs(~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(u_input.b, arg_0.b)), vec2<u32>(u_input.b, 48307u) ^ vec2<u32>(arg_0.b, var_0.b))) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-167f, _wgslsmith_f_op_f32(f32(-1f) * -388f)), var_0.e)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, -817f) - vec2<f32>(-584f, 331f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.e, var_0.e, false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, var_0.e.x)))) * arg_0.e));
    let var_2 = 1u;
    var var_3 = 48497u;
    return -750f;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(518f * -1000f)))))), _wgslsmith_f_op_f32(arg_0 * global1.x), _wgslsmith_f_op_f32(func_4(Struct_1(false, ~firstTrailingBit(u_input.a), select(_wgslsmith_sub_vec2_i32(vec2<i32>(-18671i, 29221i), vec2<i32>(19530i, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(10329i, 1i), vec2<i32>(-48772i, 0i)), true), func_3(-24244i, Struct_1(true, u_input.b, vec2<i32>(1i, 0i), vec3<bool>(false, true, false), vec2<f32>(-204f, -868f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, global1.x))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-740f, arg_0))))))));
    global3 = array<vec3<bool>, 25>();
    global3 = array<vec3<bool>, 25>();
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_div_f32(-1000f, -789f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(arg_0))))));
    let var_1 = _wgslsmith_f_op_f32(min(-260f, -995f));
    return _wgslsmith_f_op_f32(-var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 31>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(select(-362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), func_1(firstLeadingBit(4294967295u), 538f, Struct_1(false, 41221u, vec2<i32>(-1i, -1i), global3[_wgslsmith_index_u32(52393u, 25u)], vec2<f32>(-986f, -1104f))))))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~_wgslsmith_mod_u32(u_input.b, _wgslsmith_mult_u32(0u, ~u_input.a))), 31u)];
    var var_2 = Struct_1(-2450i > (~_wgslsmith_dot_vec2_i32(vec2<i32>(14903i, 2029i), vec2<i32>(-2844i, 0i)) & reverseBits(~84993i)), u_input.a, vec2<i32>(~_wgslsmith_mod_i32(34813i, -103i), -29274i) << (~(~(~vec2<u32>(8522u, u_input.b))) % vec2<u32>(32u)), select(!global3[_wgslsmith_index_u32(4294967295u, 25u)], vec3<bool>(any(vec4<bool>(true, true, var_1.x, var_1.x)), _wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(global1.x * global1.x), true | any(vec4<bool>(var_1.x, false, false, false))), global3[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(460f, var_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1038f, -465f) + vec2<f32>(232f, 526f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, 114f), vec2<f32>(var_0, var_0)), global2[_wgslsmith_index_u32(~u_input.b, 31u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 273f) + vec2<f32>(var_0, global1.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(539f, 872f), vec2<f32>(659f, var_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1958f, var_0), vec2<f32>(-508f, -2438f), vec2<bool>(false, true)))))));
    let var_3 = ~(~(u_input.b >> (firstLeadingBit(firstTrailingBit(21598u)) % 32u)));
    var var_4 = Struct_1(-618f > var_0, var_2.b, var_2.c, select(!vec3<bool>(func_1(17576u, var_0, Struct_1(true, var_3, vec2<i32>(var_2.c.x, var_2.c.x), vec3<bool>(var_1.x, true, false), var_2.e)), true, true), !select(vec3<bool>(var_1.x, false, var_1.x), !var_2.d, false), true), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, 654f, var_0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1091f, 328f, var_2.e.x) * vec3<f32>(-1170f, var_2.e.x, 1111f)), vec3<f32>(206f, -724f, -153f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(758f, -1285f, var_0), vec3<f32>(global1.x, global1.x, -653f))), vec3<f32>(-1000f, -670f, var_4.e.x)))), var_4.b, _wgslsmith_mod_vec3_u32(select(~(vec3<u32>(2725u, 11717u, var_4.b) << (vec3<u32>(u_input.a, var_2.b, 0u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 24728u, var_3) & vec3<u32>(0u, 42060u, 60307u), vec3<u32>(35000u, var_2.b, var_3), ~vec3<u32>(1925u, var_3, 4294967295u)), vec3<bool>(true, var_2.e.x >= var_4.e.x, true)), ~(vec3<u32>(var_3, var_3, 123757u) << (vec3<u32>(var_4.b, u_input.b, 4294967295u) % vec3<u32>(32u)))), select(vec4<i32>(firstLeadingBit(var_4.c.x), ~_wgslsmith_div_i32(var_2.c.x, -19573i), ~(-var_4.c.x), var_4.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.c.x, var_4.c.x, var_2.c.x, -2147483647i), max(global0[_wgslsmith_index_u32(37840u, 23u)], vec4<i32>(2147483647i, -26013i, 4761i, var_4.c.x))) ^ (vec4<i32>(var_2.c.x, var_2.c.x, var_4.c.x, -24438i) >> (vec4<u32>(var_3, u_input.b, 1u, 0u) % vec4<u32>(32u))), vec4<bool>(true, true, any(select(vec2<bool>(var_4.a, var_4.d.x), vec2<bool>(true, var_2.a), var_2.a)), false)));
}

