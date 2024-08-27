struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global4: vec3<f32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> vec4<bool> {
    var var_0 = firstTrailingBit(~select(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), ~32152u), u_input.a, false));
    global2 = Struct_1(u_input.d << ((4294967295u ^ abs(4294967295u >> (u_input.c.x % 32u))) % 32u), vec3<f32>(global2.c.x, 923f, arg_0), global2.b.zz);
    let var_1 = u_input.c.x;
    let var_2 = Struct_2(Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(select(global2.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-777f, arg_0, 1842f))), _wgslsmith_f_op_vec3_f32(select(global2.b, global2.b, true))), true)), _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global4.zz)) + _wgslsmith_f_op_vec2_f32(floor(global2.c))))), _wgslsmith_f_op_f32(451f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), reverseBits(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(41402u, var_1, u_input.b) ^ vec3<u32>(var_1, 55148u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 26790u)))));
    let var_3 = Struct_3(Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.a.b))) - var_2.a.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 219f) + _wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(arg_2.x, 1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.b.x, 1000f)))), select(!vec3<bool>(any(vec3<bool>(global3.x, true, global3.x)), true, false), !vec3<bool>(false, true, all(vec4<bool>(false, false, true, false))), true | global3.x));
    return vec4<bool>(true, var_3.b.x, true, true);
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_3(Struct_1(-global2.a, global2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -733f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(106421u, 24u)], 378f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global0[_wgslsmith_index_u32(0u, 24u)]) + vec2<f32>(-1763f, global0[_wgslsmith_index_u32(43393u, 24u)]))))), !global3.xzz);
    let var_1 = u_input.a;
    let var_2 = ~(_wgslsmith_mult_u32(~(1u | u_input.c.x), min(arg_0.x, countOneBits(u_input.a))) >> (select(~(~arg_0.x), _wgslsmith_mod_u32(39138u, _wgslsmith_mod_u32(var_1, 3400u)), var_0.b.x) % 32u));
    global0 = array<f32, 24>();
    global3 = !(!select(!vec4<bool>(var_0.b.x, var_0.b.x, global3.x, var_0.b.x), select(!vec4<bool>(global3.x, false, var_0.b.x, true), select(vec4<bool>(false, false, global3.x, var_0.b.x), vec4<bool>(false, false, false, global3.x), false), func_3(139f, -971f, vec2<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 1314f), 0i)), !(!var_0.b.x)));
    return global0[_wgslsmith_index_u32(abs(arg_0.x), 24u)];
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(ceil(-453f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.a), 24u)])))), firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 0u, u_input.b), vec4<u32>(13741u, 8218u, u_input.c.x, u_input.b)), vec4<u32>(3762u, 4294967295u, 1u, 1u)) >> (~vec4<u32>(8313u, u_input.c.x, 1u, u_input.a) % vec4<u32>(32u))), !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c.x, 24u)])))) > -880f), Struct_1(-max(1i, global2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global2.c.x))), arg_0.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c) - vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -1108f)))));
    var var_1 = ~vec4<u32>(var_0.b.x & ~(~66505u), u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(28436u, 0u) << (u_input.c.x % 32u), u_input.c.x), ~62026u);
    let var_2 = -4138i;
    global0 = array<f32, 24>();
    let var_3 = ~_wgslsmith_mult_u32(~30285u, ~max(_wgslsmith_mod_u32(4294967295u, var_0.b.x), u_input.c.x << (1u % 32u)));
    return (global2.c.x < _wgslsmith_f_op_f32(f32(-1f) * -3205f)) != true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(544f - -1395f), global4.x, _wgslsmith_f_op_f32(-global4.x), 881f));
    var var_1 = ~1u;
    var_1 = u_input.c.x;
    var var_2 = u_input.a;
    let var_3 = select(!select(select(select(vec4<bool>(false, true, true, global3.x), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(true, global3.x, false, global3.x)), select(vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(false, true, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, false)), func_1(vec3<f32>(-409f, 2527f, global2.c.x))), vec4<bool>(false, global4.x <= -783f, false, true), vec4<bool>(global3.x, any(vec4<bool>(global3.x, global3.x, false, global3.x)), false, true)), vec4<bool>(global3.x, global3.x, !(global3.x & global3.x) || (-548f < _wgslsmith_f_op_f32(trunc(global4.x))), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1152f, 374f, global4.x)))), vec4<bool>(select(global3.x, true, any(global3.xz)), global3.x | true, any(!(!global3.zy)), false));
    var_2 = u_input.a;
    let var_4 = Struct_2(Struct_1(-1i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(-588f, global2.c.x)), -491f, _wgslsmith_f_op_f32(819f - 949f)))), global4.xx), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(u_input.b, 9033u) ^ firstTrailingBit(u_input.b)), 24u)]), ~(((vec3<u32>(u_input.b, 4294967295u, u_input.c.x) ^ vec3<u32>(u_input.a, 32945u, u_input.b)) ^ vec3<u32>(u_input.c.x, 106187u, u_input.c.x)) & ~(vec3<u32>(u_input.b, 0u, 21085u) ^ vec3<u32>(0u, 4294967295u, 0u))));
    let var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-1002f, ~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.d, u_input.d)), vec2<i32>(u_input.d, u_input.d)), ~(-vec2<i32>(global2.a, 1i))), firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.a), vec2<i32>(-2147483647i, var_4.a.a)), -1i), ~29169i << (countOneBits(0u) % 32u))), _wgslsmith_dot_vec3_i32(firstLeadingBit(abs(-vec3<i32>(u_input.d, global2.a, 32423i))), select(min(select(vec3<i32>(-2147483647i, 58278i, global2.a), vec3<i32>(-44148i, 0i, var_4.a.a), global3.yzy), firstLeadingBit(vec3<i32>(-2147483647i, -550i, u_input.d))), countOneBits(-vec3<i32>(1i, 1i, -4977i)), global3.wyy)));
}

