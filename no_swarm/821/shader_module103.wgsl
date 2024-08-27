struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 9>;

var<private> global2: Struct_3;

var<private> global3: array<u32, 11> = array<u32, 11>(0u, 51982u, 4294967295u, 1u, 4294967295u, 0u, 4294967295u, 64433u, 0u, 1u, 8355u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_mod_u32(countOneBits(arg_1.b.x), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(arg_0.c.a, global3[_wgslsmith_index_u32(1u, 11u)])), abs(global2.b.xx)));
    var var_1 = -global2.a;
    let var_2 = global2.b.wwz;
    global3 = array<u32, 11>();
    var var_3 = ~global0.d.b;
    return u_input.c;
}

fn func_2() -> vec4<u32> {
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(global2.b.x, 11u)]) >> (_wgslsmith_dot_vec4_u32(global2.b, vec4<u32>(u_input.c, 19750u, 77130u, 73568u)) % 32u), global3[_wgslsmith_index_u32(func_3(Struct_2(global0.b.xz, 1u, Struct_1(u_input.c, global0.b, vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), global0.d.a.x)), global0.d, vec2<f32>(209f, 801f)), 11u)]) > abs(u_input.c);
    var var_1 = Struct_4(firstLeadingBit(_wgslsmith_mult_vec2_u32(~min(vec2<u32>(47112u, global3[_wgslsmith_index_u32(35052u, 11u)]), vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, 18361u) | vec2<u32>(79736u, global0.d.b.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_f32(select(-1730f, -602f, true))), vec3<f32>(1457f, global0.b.x, _wgslsmith_div_f32(-1724f, global0.b.x)))))), 1i, global1[_wgslsmith_index_u32(~(~abs(_wgslsmith_sub_u32(global0.a.x, 0u))), 9u)]);
    var_1 = Struct_4(~max(~(var_1.a & var_1.a), ~vec2<u32>(1u, global0.d.b.x) & (vec2<u32>(66630u, 13696u) | var_1.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.x, global0.b.x, 590f), global0.b))), var_1.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-966f, -902f, _wgslsmith_f_op_f32(ceil(-1186f))))))), -global2.a.x, global1[_wgslsmith_index_u32(~u_input.c, 9u)]);
    var var_2 = abs(abs(global0.d.b));
    global1 = array<Struct_3, 9>();
    return reverseBits(global2.b);
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = 21813i;
    var var_1 = ~(~(func_2() | _wgslsmith_clamp_vec4_u32(firstTrailingBit(global0.d.b), select(global2.b, vec4<u32>(10272u, 4294967295u, 0u, global2.b.x), false), global0.d.b)));
    var_1 = global0.d.b;
    let var_2 = Struct_3(vec4<i32>(-(~(-2147483647i)), _wgslsmith_add_i32(-31430i, _wgslsmith_dot_vec4_i32(global0.d.a, vec4<i32>(0i, var_0, -2147483647i, u_input.a.x))), 2147483647i | global0.c, 52790i) | vec4<i32>(u_input.b, i32(-1i) * -13598i, 0i, 35065i), global2.b);
    global0 = Struct_4(~countOneBits(~min(vec2<u32>(global0.d.b.x, 4294967295u), var_2.b.ww)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(select(global0.b, global0.b, arg_0))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.x, global0.b.x, 1000f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-983f, global0.b.x, global0.b.x), vec3<f32>(185f, global0.b.x, -387f))))), ~global2.a.x, Struct_3(reverseBits(global2.a), global0.d.b));
    return !select(vec4<bool>(-345f < global0.b.x, !arg_0, false, any(vec2<bool>(arg_0, false))), select(vec4<bool>(false, false, true, false), select(!vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(false, true, true, true)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(false, all(vec3<bool>(true, true, arg_0)), true, all(vec3<bool>(arg_0, false, arg_0)))), u_input.c != global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(46318u, var_1.x), global0.d.b.yx), 11u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 11>();
    let var_0 = 42292i;
    let var_1 = select(vec3<bool>(true, any(!func_1(false)), true), vec3<bool>(select(false, all(vec4<bool>(true, true, true, true)), func_1(all(vec2<bool>(false, true))).x), true, true & (~(-1i) > abs(u_input.a.x))), global0.b.x > _wgslsmith_f_op_f32(trunc(global0.b.x)));
    global0 = Struct_4(vec2<u32>(u_input.c, 4294967295u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.b.x, 236f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.b, vec3<f32>(global0.b.x, global0.b.x, -298f), var_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-182f, global0.b.x, global0.b.x) - vec3<f32>(-423f, -256f, global0.b.x))))))), 16003i, Struct_3(global0.d.a, firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(103535u, u_input.c, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.c, 11u)], 19424u, global3[_wgslsmith_index_u32(global0.d.b.x, 11u)]), global0.d.b)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(global0.b.zx)), global0.d.b.x, Struct_1(global0.d.b.x, _wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, 1000f, 946f, 1172f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(708f, 1000f, -115f, global0.b.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-133f, global0.b.x, global0.b.x, 1007f), vec4<f32>(-1739f, global0.b.x, 814f, -101f))), var_1.x)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(~global0.c, _wgslsmith_dot_vec3_i32(global0.d.a.zwx, vec3<i32>(-25458i, 2147483647i, global2.a.x))))));
    global1 = array<Struct_3, 9>();
    let var_3 = vec4<bool>(any(vec4<bool>(false, true, var_1.x, !var_1.x)), false, var_1.x || (var_1.x && all(var_1)), any(select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))) && !var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.b.x * _wgslsmith_f_op_f32(-377f + _wgslsmith_f_op_f32(-var_2.a.x)))), global0.d.b, ~global2.b, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-701f, var_2.c.b.x)), -1000f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f * 569f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f * _wgslsmith_f_op_f32(global0.b.x + global0.b.x)))));
}

