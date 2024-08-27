struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-952f, 541f, -2539f, 774f);

var<private> global1: i32;

var<private> global2: array<vec4<u32>, 13>;

var<private> global3: array<vec2<bool>, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = vec2<bool>(select(true, true, all(vec3<bool>(true, all(vec4<bool>(false, false, false, true)), any(vec3<bool>(true, true, true))))), all(select(select(select(global3[_wgslsmith_index_u32(u_input.d, 4u)], vec2<bool>(false, true), vec2<bool>(true, false)), global3[_wgslsmith_index_u32(select(u_input.d, 41487u, true), 4u)], true), !global3[_wgslsmith_index_u32(~u_input.d, 4u)], !all(vec2<bool>(true, true)))));
    global3 = array<vec2<bool>, 4>();
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))), -791f, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(floor(-464f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -211f), 865f) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, 684f)) - -184f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 1f), global0.x))));
    global2 = array<vec4<u32>, 13>();
    let var_1 = Struct_1(vec3<i32>(-1i) * -(~vec3<i32>(u_input.a, -21651i, u_input.c)), countOneBits(u_input.a), !(!select(!vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, false), u_input.d >= u_input.d)), 10792i);
    return 30948i;
}

fn func_2(arg_0: vec4<i32>) -> bool {
    global1 = ~func_3();
    let var_0 = Struct_3(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(any(vec2<bool>(false, false)), true)), Struct_1(max(vec3<i32>(func_3(), _wgslsmith_clamp_i32(arg_0.x, u_input.c, u_input.c), 8258i), abs(arg_0.yyy)), ~((u_input.c ^ 20663i) | 1i), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true), u_input.a), vec4<i32>(u_input.a, ~select(arg_0.x, -14001i, false), -_wgslsmith_div_i32(arg_0.x, _wgslsmith_div_i32(u_input.a, u_input.b)), i32(-1i) * -39492i), vec4<bool>(false && any(vec2<bool>(true, true)), all(select(global3[_wgslsmith_index_u32(u_input.d, 4u)], global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.d, u_input.d), 4u)], select(vec2<bool>(true, true), global3[_wgslsmith_index_u32(4294967295u, 4u)], true))), all(select(global3[_wgslsmith_index_u32(~0u, 4u)], vec2<bool>(false, true), true)), (min(4294967295u, 1u) >> (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(33652u, 13u)], global2[_wgslsmith_index_u32(6723u, 13u)]) % 32u)) != 1u), Struct_2(global0.x, select(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), 1i > arg_0.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, -666f > global0.x, true))));
    var var_1 = -firstTrailingBit(1i);
    var var_2 = Struct_3(vec2<bool>(var_0.e.b.x & !select(var_0.a.x, false, true), var_0.b.c.x), var_0.b, -vec4<i32>(abs(var_0.c.x >> (0u % 32u)), 1i, 1i, _wgslsmith_mod_i32(34532i, countOneBits(u_input.c))), var_0.d, var_0.e);
    global2 = array<vec4<u32>, 13>();
    return all(select(var_2.e.b, vec4<bool>(true, !var_2.d.x && var_0.d.x, true, var_2.b.c.x | var_2.a.x), select(vec4<bool>(all(vec2<bool>(var_0.a.x, true)), false, true, any(vec3<bool>(var_2.b.c.x, var_0.a.x, true))), !var_0.e.b, !(47991i <= u_input.a))));
}

fn func_1() -> vec3<bool> {
    let var_0 = vec2<bool>(func_2(-vec4<i32>(-1i, -2147483647i, u_input.c | -2147483647i, 57977i << (0u % 32u))), false);
    var var_1 = countOneBits(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.d, 13u)], (global2[_wgslsmith_index_u32(u_input.d, 13u)] | global2[_wgslsmith_index_u32(66428u, 13u)]) & (global2[_wgslsmith_index_u32(0u, 13u)] & global2[_wgslsmith_index_u32(u_input.d, 13u)])) ^ (11749u | u_input.d));
    global2 = array<vec4<u32>, 13>();
    var var_2 = Struct_1(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(-16070i, u_input.a ^ u_input.b), ~1i, ~_wgslsmith_mod_i32(u_input.b, -1493i))), -1i, vec4<bool>(true, true, u_input.a == -(u_input.c | u_input.a), var_0.x), u_input.a);
    var var_3 = 0i;
    return !var_2.c.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 4>();
    var var_0 = ~(-54158i);
    var var_1 = any(select(select(vec3<bool>(true, true, all(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_1(), true)), !vec3<bool>(u_input.b > u_input.b, true, any(vec4<bool>(false, true, false, true))), !func_1()));
    var var_2 = Struct_1(vec3<i32>(0i, u_input.c, _wgslsmith_clamp_i32(u_input.a, ~0i, 1i)), u_input.c, vec4<bool>(true, _wgslsmith_div_u32(1u, ~u_input.d) >= abs(~u_input.d), all(vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, true)), global0.x >= -463f), _wgslsmith_mod_i32(select(u_input.b, 1i, true), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.c), vec4<i32>(-1i, 8534i, u_input.b, u_input.b)) ^ -2147483647i)));
    global3 = array<vec2<bool>, 4>();
    var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, var_2.b), ~var_2.a.xy), var_2.d, -max(_wgslsmith_dot_vec2_i32(var_2.a.yx, var_2.a.xy), u_input.b)), firstLeadingBit(_wgslsmith_mult_i32(-(var_2.b << (33740u % 32u)), -1i)), vec4<bool>(var_2.c.x, false, all(var_2.c.zyz), var_2.c.x), u_input.c);
    let var_3 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) * _wgslsmith_f_op_f32(global0.x * global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f * 1504f) - _wgslsmith_f_op_f32(step(-1000f, -1069f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(-1402f, global0.x))), _wgslsmith_f_op_f32(sign(323f))))));
    var var_4 = global0.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d | firstTrailingBit(~77088u), vec2<u32>(7098u, u_input.d), _wgslsmith_f_op_vec3_f32(min(global0.xxw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, 443f, var_4.x), global0.wxx)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3))))));
}

