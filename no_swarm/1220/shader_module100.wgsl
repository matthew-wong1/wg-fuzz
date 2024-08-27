struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_4,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-727f, 1000f, -1027f, 835f, 422f, -1467f, 855f, -152f, -511f, -776f);

var<private> global1: u32 = 78173u;

var<private> global2: Struct_2 = Struct_2(Struct_1(-16463i), false, Struct_1(i32(-2147483648)), 1u);

var<private> global3: vec2<i32> = vec2<i32>(-21125i, 14446i);

var<private> global4: array<vec2<f32>, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = Struct_4(_wgslsmith_mod_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(-793i, -55962i)) ^ vec2<i32>(_wgslsmith_add_i32(-1i, global3.x), _wgslsmith_div_i32(-2658i, -2147483647i)), vec2<i32>(_wgslsmith_sub_i32(-23273i, 1i), global3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.d, 10u)] - global0[_wgslsmith_index_u32(124153u, 10u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(59821u, 10u)]), global0[_wgslsmith_index_u32(4294967295u, 10u)]) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-405f, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], -133f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(15474u, 10u)], -163f, -647f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)] + global0[_wgslsmith_index_u32(global2.d, 10u)]), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(38601u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_f_op_f32(-246f * -1178f))))), 51993u, 525f);
    let var_1 = global0[_wgslsmith_index_u32(40731u, 10u)];
    global0 = array<f32, 10>();
    global3 = var_0.a;
    var var_2 = any(select(vec4<bool>(global2.b, true, global2.b, _wgslsmith_clamp_u32(56710u, u_input.a.x, u_input.a.x) < _wgslsmith_add_u32(18660u, 1u)), !vec4<bool>(global2.b, !global2.b, select(false, global2.b, global2.b), true), select(select(vec4<bool>(true, global2.b, false, global2.b), select(vec4<bool>(global2.b, global2.b, global2.b, global2.b), vec4<bool>(false, false, global2.b, false), vec4<bool>(false, false, global2.b, false)), select(vec4<bool>(global2.b, false, global2.b, global2.b), vec4<bool>(global2.b, false, false, global2.b), vec4<bool>(false, true, global2.b, true))), vec4<bool>(global2.b, global2.b, true && global2.b, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, global2.b, false, true), global2.b))));
    return ~_wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), var_0.a), ~_wgslsmith_sub_i32(var_0.a.x, 1i)) | (i32(-1i) * -1i);
}

fn func_2() -> f32 {
    var var_0 = vec3<i32>(2147483647i, func_3(), -2147483647i);
    var var_1 = abs(_wgslsmith_sub_i32(-1i, -2785i));
    let var_2 = Struct_5(Struct_3(~_wgslsmith_div_u32(max(u_input.a.x, global2.d), 4590u >> (global2.d % 32u)), 473f), vec2<bool>(global2.b, true), Struct_4(var_0.zz, vec3<f32>(502f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1393f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1584f * global0[_wgslsmith_index_u32(global2.d, 10u)]) - global0[_wgslsmith_index_u32(0u, 10u)])), vec3<f32>(-271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1996f)), global0[_wgslsmith_index_u32(47793u, 10u)]), 8571u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-864f, global0[_wgslsmith_index_u32(1u, 10u)], false)) * _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))))), var_0.x, !(!(!vec2<bool>(false, global2.b))));
    let var_3 = Struct_1(_wgslsmith_mult_i32(var_0.x, _wgslsmith_mod_i32(~1i, global2.a.a)));
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(global2.c.a, 2147483647i, global2.c.a >> (global2.d % 32u)), -(countOneBits(firstLeadingBit(vec3<i32>(global3.x, global3.x, -1376i))) << (select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, var_2.a.a, u_input.a.x), vec3<u32>(95403u, 59720u, global2.d)), vec3<u32>(0u, u_input.a.x, 26670u), select(vec3<bool>(true, true, global2.b), vec3<bool>(var_2.b.x, global2.b, var_2.b.x), true)) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.d | (var_2.a.a << (var_2.a.a % 32u)), 10u)]))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = array<f32, 10>();
    var var_0 = Struct_1(countOneBits(global3.x));
    let var_1 = Struct_3(_wgslsmith_mod_u32(~4294967295u, 4294967295u), _wgslsmith_f_op_f32(func_2()));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global4[_wgslsmith_index_u32(global2.d, 24u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    var var_3 = var_1;
    return Struct_2(Struct_1(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(var_0.a, 1i)), -16529i)), arg_0, Struct_1(reverseBits(-7168i)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(any(!select(vec4<bool>(true, global2.b, global2.b, true), select(vec4<bool>(false, true, global2.b, false), vec4<bool>(global2.b, false, false, false), false), global2.b && false)));
    global4 = array<vec2<f32>, 24>();
    var var_1 = Struct_1(0i);
    var var_2 = Struct_5(Struct_3(abs(var_0.d >> (min(var_0.d, 4294967295u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global2.d, 10u)]))) * global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, var_0.d, var_0.d << (1u % 32u)), 10u)])), vec2<bool>(any(vec4<bool>(all(vec3<bool>(true, false, true)), select(true, global2.b, global2.b), all(vec3<bool>(var_0.b, global2.b, global2.b)), true & global2.b)), false), Struct_4(vec2<i32>(var_1.a, global3.x | _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_1.a, -30005i, -1i), vec4<i32>(global3.x, -36412i, var_0.a.a, var_0.a.a))), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_0.d, 10u)] - _wgslsmith_div_f32(-152f, global0[_wgslsmith_index_u32(9190u, 10u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 10u)]), global0[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-752f)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global2.d, 10u)], 1356f)), -1282f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1289f, 1000f, 1230f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(var_0.d, 10u)]))), 4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(27844u, global2.d, 0u, global2.d), vec4<u32>(global2.d, 51493u, 39262u, 0u)), ~var_0.d, min(global2.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.d, 30267u), vec3<u32>(var_0.d, 47809u, global2.d)))), 10u)]), ~0i, select(!select(select(vec2<bool>(false, false), vec2<bool>(true, var_0.b), vec2<bool>(false, global2.b)), vec2<bool>(true, true), var_0.b | true), vec2<bool>(false, var_0.b), select(!(!vec2<bool>(var_0.b, global2.b)), !(!vec2<bool>(global2.b, var_0.b)), global2.b)));
    let var_3 = func_1(!global2.b);
    let var_4 = 1826u;
    let x = u_input.a;
    s_output = StorageBuffer(965f, _wgslsmith_clamp_vec2_i32(~var_2.c.a, ~firstLeadingBit(~var_2.c.a), -reverseBits(var_2.c.a)), ~select(reverseBits(min(vec3<u32>(25252u, 19763u, 84834u), vec3<u32>(var_0.d, 4294967295u, var_2.a.a))), (vec3<u32>(4294967295u, 0u, 7768u) ^ vec3<u32>(u_input.a.x, global2.d, var_3.d)) | ~vec3<u32>(global2.d, var_2.a.a, 1u), true));
}

