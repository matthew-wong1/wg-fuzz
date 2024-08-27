struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 4294967295u, 0u);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(467f, 394f, 174f, -1846f), i32(-2147483648), vec2<u32>(0u, 4294967295u), false, true);

var<private> global2: Struct_2;

var<private> global3: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-1i, 23129i, -1i), vec3<i32>(i32(-2147483648), -23751i, 0i), vec3<i32>(-45587i, -10219i, -1i), vec3<i32>(-20681i, 1i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 62548i), vec3<i32>(-38287i, -31734i, -41039i), vec3<i32>(i32(-2147483648), -15108i, -1i), vec3<i32>(2147483647i, -22824i, 1928i), vec3<i32>(6193i, 0i, -6995i), vec3<i32>(-29406i, 0i, -1248i), vec3<i32>(2147483647i, 22807i, 2147483647i), vec3<i32>(-1i, 5974i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -13482i), vec3<i32>(1i, 0i, -40540i));

var<private> global4: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.a.x, 535f, -1092f, global1.a.x) + _wgslsmith_f_op_vec4_f32(select(global2.c.a, vec4<f32>(-1504f, global2.c.a.x, global1.a.x, global1.a.x), vec4<bool>(false, global1.d, global1.e, global1.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1.a, global2.c.a))), vec4<bool>(false | global2.d.x, !global1.e, global1.d, -760f != global2.c.a.x))))), global4.x, vec2<u32>(0u, firstTrailingBit(_wgslsmith_div_u32(0u, global1.c.x))), true, !any(global2.d));
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.x));
    var var_3 = select(!(!(!select(vec3<bool>(true, false, global1.e), vec3<bool>(var_0.e, true, true), vec3<bool>(false, true, true)))), !vec3<bool>(!(-1155f <= var_0.a.x), all(!vec3<bool>(global2.b, false, false)), var_0.b > _wgslsmith_add_i32(u_input.b, global2.c.b)), select(all(select(select(vec4<bool>(global1.e, global2.d.x, var_0.e, global1.e), vec4<bool>(false, false, false, false), global2.b), vec4<bool>(var_0.d, global2.b, false, false), select(vec4<bool>(false, global2.d.x, false, true), vec4<bool>(true, true, false, var_0.d), var_0.d))), all(select(vec3<bool>(true, global2.c.d, var_0.e), vec3<bool>(var_0.e, global2.c.e, false), true)), global2.c.e));
    var_3 = vec3<bool>(global2.c.e, var_0.d, reverseBits(~0u) == global2.c.c.x);
    return (global1.e | var_3.x) && any(!select(!vec3<bool>(true, false, var_3.x), select(vec3<bool>(global2.d.x, var_3.x, false), vec3<bool>(var_0.d, false, global1.d), true), vec3<bool>(var_3.x, false, false)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = select(func_3(), global2.d.x, ~(~global4.x) != -global1.b);
    global3 = array<vec3<i32>, 14>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global2.c.a.zwy)));
    global3 = array<vec3<i32>, 14>();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)));
    return Struct_2(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~countOneBits(global1.c.x)), 3u)], all(!vec3<bool>(global2.b, global1.e, global1.e)) == global2.b, global2.c, vec2<bool>(!(global1.d || (14622i >= u_input.b)), ~6766u < global2.c.c.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: f32) -> vec4<f32> {
    let var_0 = -_wgslsmith_dot_vec3_i32(-arg_0.yyy, _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-15365i, 0i, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.c.b, 52006i, 2147483647i), ~arg_0.yyx)));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.a)), vec4<f32>(520f, 234f, -1395f, global1.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(round(-741f)), -1386f, -1097f))));
    global0 = array<u32, 3>();
    var_1 = Struct_2(~(~max(4294967295u & var_1.a, var_1.c.c.x)), any(vec4<bool>(true, all(arg_1.wzw), !all(vec2<bool>(true, false)), (-3333i & u_input.a.x) != (global4.x >> (32618u % 32u)))), global2.c, vec2<bool>(global2.d.x, true != var_1.d.x));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.a))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.a.x, _wgslsmith_f_op_f32(floor(-626f)), arg_2, _wgslsmith_f_op_f32(exp2(var_1.c.a.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(406f, arg_2, -647f, var_2.c.a.x), vec4<f32>(-101f, -785f, global1.a.x, global2.c.a.x), vec4<bool>(false, var_1.b, global2.c.e, true))) * _wgslsmith_f_op_vec4_f32(var_1.c.a - vec4<f32>(var_1.c.a.x, global1.a.x, arg_2, 957f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~u_input.c.x), !(global2.c.a.x > -279f), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(reverseBits(vec4<i32>(global4.x, global2.c.b, 2147483647i, -63581i)), vec4<bool>(global1.e, global2.d.x, global1.d, true), -1000f)), global2.c.a), global4.x, global1.c, 2147483647i < global1.b, !any(select(vec3<bool>(global2.d.x, global1.d, false), vec3<bool>(false, global1.d, global1.d), vec3<bool>(true, false, global1.d)))), global2.d);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -1000f, -356f, global1.a.x) - vec4<f32>(var_0.c.a.x, 1188f, -765f, var_0.c.a.x)) * vec4<f32>(var_0.c.a.x, global2.c.a.x, -413f, var_0.c.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-global2.c.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f), global1.a.x), -1059f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f + -633f) + -391f)), func_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(323f)), _wgslsmith_f_op_f32(sign(-1010f)), -173f, global2.c.a.x)).d.x))).c;
    var var_2 = global1.a;
    var var_3 = !global1.e;
    let var_4 = global2.c.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(countOneBits(global2.c.c), _wgslsmith_mod_vec2_u32(var_1.c, u_input.c)), reverseBits(23957i));
}

