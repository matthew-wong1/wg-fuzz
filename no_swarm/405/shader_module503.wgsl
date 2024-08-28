struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(1u, 0u), -1212f, false);

var<private> global1: vec4<i32>;

var<private> global2: Struct_2 = Struct_2(-1175f, Struct_1(0i), false, vec2<f32>(-231f, -235f), Struct_1(6025i));

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    return 4294967295u;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-global2.d), func_3(), true, !vec3<bool>(any(vec2<bool>(global2.c, true)), !(arg_0 >= 1221f), global0.c == any(vec3<bool>(false, true, global2.c))), Struct_3(select(global0.a ^ select(global0.a, vec2<u32>(global0.a.x, 1u), false), global0.a, select(!vec2<bool>(false, global2.c), select(vec2<bool>(true, false), vec2<bool>(global0.c, false), global2.c), vec2<bool>(global0.c, global2.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(274f)), _wgslsmith_f_op_f32(floor(global0.b)))), (global2.a == 641f) | global0.c));
    var var_1 = vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(44293i, global2.b.a, -3405i), ~vec3<i32>(global2.e.a, u_input.c, -31679i)) | global2.e.a, global1.x);
    var var_2 = select(0i, u_input.c, global0.c);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x * -762f))), _wgslsmith_f_op_f32(var_0.e.b - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2174f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.a * global2.a))), true)))));
    global0 = Struct_3(_wgslsmith_mod_vec2_u32(~(vec2<u32>(12705u, 20388u) >> (vec2<u32>(var_0.e.a.x, 4294967295u) % vec2<u32>(32u))), abs(~(~vec2<u32>(1u, 0u)))), global0.b, !(124924u >= global0.a.x));
    return var_3.xyz;
}

fn func_1() -> vec2<bool> {
    let var_0 = global3[_wgslsmith_index_u32(global0.a.x, 28u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(func_2(1065f));
    let var_2 = vec2<f32>(-410f, 1299f);
    var var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.d.x)) + _wgslsmith_f_op_f32(1583f + global0.b)), _wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(max(120f, global0.b))))), ~_wgslsmith_add_u32(49362u & _wgslsmith_mod_u32(u_input.a, u_input.a), 1u), -545f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), select(vec3<bool>(any(select(vec3<bool>(global2.c, global2.c, false), vec3<bool>(global2.c, global2.c, global2.c), true)), !(global1.x >= global1.x), _wgslsmith_f_op_f32(964f - var_1.x) <= global2.d.x), select(vec3<bool>(u_input.c >= global2.e.a, all(vec4<bool>(false, true, global2.c, global0.c)), !global2.c), vec3<bool>(u_input.a != 4294967295u, global0.c, true), vec3<bool>(false & global2.c, var_1.x >= 362f, true)), true), Struct_3(~(~(global0.a | global0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -254f), 686f)))), all(!vec3<bool>(global2.c, true, global2.c))));
    global2 = Struct_2(var_3.e.b, Struct_1(-11989i), select(false, var_3.c, !global0.c), vec2<f32>(_wgslsmith_div_f32(global2.a, 1f), 211f), Struct_1(global1.x));
    return !(!vec2<bool>(all(select(vec4<bool>(var_3.e.c, true, true, true), vec4<bool>(true, global0.c, true, global0.c), true)), global2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, true), select(func_1(), select(select(vec2<bool>(global0.c, global2.c), vec2<bool>(global0.c, false), vec2<bool>(global0.c, true)), vec2<bool>(global2.c, false), !vec2<bool>(false, global0.c)), true | global0.c), all(vec4<bool>(any(vec4<bool>(true, false, global2.c, global2.c)), any(vec4<bool>(global2.c, false, global0.c, true)), true, select(global0.c, global0.c, false)))), func_1(), !select(select(!vec2<bool>(global0.c, true), vec2<bool>(true, true), global2.c), !vec2<bool>(global2.c, global2.c), vec2<bool>(true, select(false, global0.c, true))));
    var var_1 = ~select(select(vec3<u32>(global0.a.x, 0u, 90497u), vec3<u32>(global0.a.x, global0.a.x, u_input.a), var_0.x) | (vec3<u32>(global0.a.x, 0u, 1u) & vec3<u32>(global0.a.x, 32908u, 0u)), select(vec3<u32>(25409u, 105430u, 1u) ^ vec3<u32>(global0.a.x, 51430u, 4294967295u), max(vec3<u32>(753u, u_input.a, u_input.a), vec3<u32>(4294967295u, 35513u, u_input.a)), true), false) >> (~vec3<u32>(u_input.a >> (~4294967295u % 32u), 4294967295u, (global0.a.x & 52987u) << (countOneBits(u_input.a) % 32u)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, 1191f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-2131f, 418f, -694f, global2.d.x), vec4<f32>(global0.b, 605f, global2.a, global2.d.x))))))));
    global0 = Struct_3(vec2<u32>(~(global0.a.x | 1u) & _wgslsmith_sub_u32(~51301u, _wgslsmith_dot_vec4_u32(vec4<u32>(4245u, 1u, 3321u, var_1.x), vec4<u32>(4294967295u, var_1.x, 1u, 4294967295u))), firstTrailingBit(_wgslsmith_div_u32(firstLeadingBit(u_input.a), ~0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(-1622f)).x), all(select(vec4<bool>(select(var_0.x, global0.c, global0.c), false, global0.c & false, false), vec4<bool>(false, false, global0.b < -1088f, var_0.x), global2.d.x >= -224f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c | ~(-2147483647i), ~(-(1i >> (1u % 32u))), _wgslsmith_mult_i32(-38944i, select(1i, u_input.b, global2.c) >> (func_3() % 32u))));
}

