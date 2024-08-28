struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<bool, 11>;

var<private> global2: array<u32, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> vec2<u32> {
    let var_0 = Struct_2(arg_1, any(!(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 11u)])))), Struct_1(~arg_0.x, 279f));
    global2 = array<u32, 21>();
    let var_1 = all(select(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(20007i, 2147483647i, 31412i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 6u)], -1i, global0[_wgslsmith_index_u32(0u, 6u)])) == u_input.b, true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(global2[_wgslsmith_index_u32(4294967295u, 21u)]), firstLeadingBit(var_0.c.a)), 11u)], select(global1[_wgslsmith_index_u32(0u, 11u)], select(global1[_wgslsmith_index_u32(1u, 11u)], var_0.b, global1[_wgslsmith_index_u32(14835u, 11u)]), true)), !select(vec4<bool>(var_0.b, true, var_0.b, false), select(vec4<bool>(true, var_0.b, false, global1[_wgslsmith_index_u32(76203u, 11u)]), vec4<bool>(true, var_0.b, global1[_wgslsmith_index_u32(arg_0.x, 11u)], true), global1[_wgslsmith_index_u32(u_input.c, 11u)]), !global1[_wgslsmith_index_u32(u_input.c, 11u)]), any(vec2<bool>(all(vec3<bool>(false, var_0.b, var_0.b)), false))));
    global2 = array<u32, 21>();
    var var_2 = Struct_5(vec3<bool>(false, true, true), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, var_0.c.b))));
    return arg_0;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_4 {
    global2 = array<u32, 21>();
    let var_0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 21u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], 56729u)), vec2<u32>(u_input.c, 1u) | vec2<u32>(u_input.c, 4294967295u)), ~(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], 10088u) << (vec2<u32>(33808u, u_input.c) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, 1215u), func_3(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27323u, 21u)], 21u)], 63102u), arg_0.x)), vec2<u32>(max(4294967295u, 4294967295u), 40908u), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(74732u, 0u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.xy * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, -581f), _wgslsmith_f_op_vec2_f32(arg_0.zz - vec2<f32>(arg_0.x, 1458f))) * _wgslsmith_f_op_vec2_f32(arg_0.xx - vec2<f32>(arg_0.x, 798f))))));
    global2 = array<u32, 21>();
    let var_2 = !global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 11u)];
    return Struct_4(!vec4<bool>(_wgslsmith_mod_u32(10850u, 80451u) > _wgslsmith_mult_u32(var_0.x, var_0.x), true, false, !arg_1.x), ~abs(firstTrailingBit(var_0.x)), Struct_3(Struct_1(var_0.x, arg_0.x), vec3<i32>(-6772i, global0[_wgslsmith_index_u32(1u, 6u)], 2147483647i | u_input.a) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 21u)], 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(36396u, var_0.x, 1u)) % vec3<u32>(32u)), Struct_2(1394f, true, Struct_1(~42682u, _wgslsmith_f_op_f32(var_1.x - var_1.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> bool {
    global2 = array<u32, 21>();
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~1u, ~arg_1.b, arg_1.b), firstTrailingBit(0u) | global2[_wgslsmith_index_u32(14332u, 21u)]), countOneBits(u_input.c)), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b, arg_1.c.a.a) | vec2<u32>(global2[_wgslsmith_index_u32(8696u, 21u)], arg_1.b), firstTrailingBit(vec2<u32>(4294967295u, 4294967295u))) >> (abs(firstLeadingBit(vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u))));
    global2 = array<u32, 21>();
    let var_1 = global1[_wgslsmith_index_u32(abs(4294967295u), 11u)] | all(select(arg_1.a.wzx, arg_1.a.yxy, !(!global1[_wgslsmith_index_u32(var_0.x, 11u)])));
    var var_2 = vec4<i32>(-30329i, global0[_wgslsmith_index_u32(~4294967295u, 6u)], -47273i, _wgslsmith_add_i32(countOneBits(-41168i), ~global0[_wgslsmith_index_u32(1u, 6u)]));
    return any(func_2(vec3<f32>(_wgslsmith_div_f32(-1000f, arg_1.c.c.a), -1105f, _wgslsmith_f_op_f32(-arg_1.c.c.a)), arg_1.a).a) || !all(!(!arg_1.a.xwz));
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(39335u, 6u)];
    let var_1 = arg_0;
    global0 = array<i32, 6>();
    let var_2 = true;
    global0 = array<i32, 6>();
    return Struct_3(func_2(vec3<f32>(-804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c, arg_0.b.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b.b - arg_0.c)))), select(!select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_2), vec4<bool>(false, var_2, false, true), false), select(vec4<bool>(var_1.a.x, true, false, false), !vec4<bool>(arg_0.a.x, arg_0.a.x, global1[_wgslsmith_index_u32(arg_0.b.a, 11u)], false), !vec4<bool>(arg_0.a.x, false, true, true)), firstLeadingBit(u_input.d.x) > countOneBits(0i))).c.a, -countOneBits(abs(~vec3<i32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(23451u, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)]))), Struct_2(var_1.c, (arg_0.a.x | var_2) && all(vec2<bool>(true, true)), Struct_1((0u & u_input.c) >> (~var_1.b.a % 32u), _wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(-var_1.b.b), var_1.b.b > arg_0.b.b)))));
}

fn func_1() -> Struct_3 {
    global1 = array<bool, 11>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -399f), 1600f);
    return func_5(Struct_5(vec3<bool>(func_4(false, func_2(vec3<f32>(var_0.x, var_0.x, var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(46505u, 11u)], true, true, global1[_wgslsmith_index_u32(1u, 11u)])), any(vec3<bool>(true, false, global1[_wgslsmith_index_u32(4539u, 11u)]))), true, _wgslsmith_f_op_f32(f32(-1f) * -119f) < func_2(vec3<f32>(var_0.x, var_0.x, 470f), vec4<bool>(global1[_wgslsmith_index_u32(644u, 11u)], true, global1[_wgslsmith_index_u32(28482u, 11u)], false)).c.a.b), Struct_1(~u_input.c, 352f), 1954f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = 566f;
    let var_2 = select(!select(vec4<bool>(true, false, any(vec3<bool>(var_0.c.b, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 11u)])), func_4(true, Struct_4(vec4<bool>(var_0.c.b, global1[_wgslsmith_index_u32(u_input.c, 11u)], true, var_0.c.b), u_input.c, Struct_3(var_0.a, vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 21u)], 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)], -1i), Struct_2(var_1, true, Struct_1(27685u, var_1)))), false)), !select(vec4<bool>(var_0.c.b, false, false, var_0.c.b), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c, 11u)], false), vec4<bool>(var_0.c.b, false, global1[_wgslsmith_index_u32(u_input.c, 11u)], global1[_wgslsmith_index_u32(16297u, 11u)])), true), select(vec4<bool>(global1[_wgslsmith_index_u32(~1u, 11u)], select(var_0.b.x == global0[_wgslsmith_index_u32(u_input.c, 6u)], func_2(vec3<f32>(var_0.a.b, var_0.a.b, var_1), vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], 11u)], var_0.c.b, global1[_wgslsmith_index_u32(50976u, 11u)], var_0.c.b)).c.c.b, var_1 >= 701f), 5915i > func_5(Struct_5(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 11u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.c.a, 21u)], 21u)], 11u)]), var_0.a, -2583f)).b.x, true), vec4<bool>(true, global1[_wgslsmith_index_u32(func_5(Struct_5(vec3<bool>(var_0.c.b, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 21u)], 11u)], false), Struct_1(54618u, var_0.c.c.b), var_1)).c.c.a, 11u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(34453u, 1u, 4294967295u, var_0.a.a), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 21u)], var_0.c.c.a, global2[_wgslsmith_index_u32(var_0.c.c.a, 21u)], u_input.c), vec4<u32>(4294967295u, 23104u, 30499u, 29801u))), 11u)], var_0.b.x >= 0i), any(!(!vec3<bool>(true, true, var_0.c.b)))), !vec4<bool>(all(vec3<bool>(true, true, true)), countOneBits(u_input.c) <= 6942u, var_0.c.b, -2147483647i <= firstLeadingBit(global0[_wgslsmith_index_u32(var_0.a.a, 6u)])));
    global2 = array<u32, 21>();
    global0 = array<i32, 6>();
    let var_3 = select(select(var_2, select(!var_2, !select(var_2, vec4<bool>(var_2.x, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.c.b), var_2), var_2), !var_2), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(519f, var_1, var_0.a.b) * vec3<f32>(-1000f, var_0.c.a, 1152f)) + vec3<f32>(var_1, var_0.a.b, -1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.b, var_1, 1000f)))), !func_2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.a, -103f, var_1), vec3<f32>(-1296f, var_0.c.c.b, var_1)), !var_2).a).a, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a), var_0.c.a) <= _wgslsmith_f_op_f32(f32(-1f) * -1103f)));
    let var_4 = func_5(Struct_5(vec3<bool>(var_3.x, all(!var_2.zw), true), Struct_1(firstTrailingBit(101261u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b))), 101f)).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.c.b);
}

