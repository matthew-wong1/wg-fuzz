struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: u32 = 84260u;

var<private> global2: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    global1 = ~(u_input.c | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c << (4294967295u % 32u), 91956u, u_input.c << (u_input.c % 32u), _wgslsmith_mod_u32(1u, 4294967295u)), vec4<u32>(u_input.c, 1u, ~u_input.c, firstTrailingBit(u_input.c))));
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f * -1603f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f))), false, !any(vec4<bool>(true, true, true, false))), -116f, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~675u, 3u)] * _wgslsmith_div_vec2_f32(vec2<f32>(1217f, -611f), global0[_wgslsmith_index_u32(26134u, 3u)])))), !all(vec3<bool>(false, false, true)), all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f * _wgslsmith_f_op_f32(f32(-1f) * -1038f))), _wgslsmith_f_op_f32(-983f + -1321f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(815f * 579f)))));
    var var_1 = abs(~u_input.a);
    var var_2 = true && all(vec3<bool>(any(vec4<bool>(var_0.a.c, var_0.c.c, var_0.a.c, true)) && true, (i32(-1i) * -18346i) >= var_1.x, true));
    let var_3 = select(select(!(!(!vec2<bool>(var_0.c.b, true))), !vec2<bool>(-39672i >= u_input.b, !var_0.a.b), !(!select(vec2<bool>(true, true), vec2<bool>(var_0.c.b, true), var_0.c.c))), select(select(!(!vec2<bool>(false, var_0.c.c)), vec2<bool>(true, true), var_0.a.c), select(select(!vec2<bool>(var_0.c.c, false), vec2<bool>(true, true), !var_0.a.b), !select(vec2<bool>(true, false), vec2<bool>(var_0.a.b, var_0.c.c), false), !any(vec2<bool>(true, false))), !(!(!vec2<bool>(var_0.c.b, false)))), !(!vec2<bool>(!var_0.a.b, false)));
    return any(select(select(select(!var_3, select(var_3, var_3, var_0.a.b), var_3), var_3, select(var_3, select(vec2<bool>(var_0.a.c, true), var_3, var_3), var_0.d.x != var_0.b)), !var_3, vec2<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.a.c, var_3.x, true, var_0.a.c), false)), var_0.a.c)));
}

fn func_2() -> vec3<bool> {
    let var_0 = 44859i;
    var var_1 = vec2<u32>(u_input.c, firstTrailingBit(96687u) & (_wgslsmith_dot_vec2_u32(vec2<u32>(49596u, u_input.c), ~vec2<u32>(140u, 122676u)) ^ u_input.c));
    var var_2 = ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mod_i32(-1i, 45795i), var_0, u_input.a.x), vec4<i32>(var_0, firstTrailingBit(u_input.d), i32(-1i) * -2147483647i, -8470i)), select(vec4<i32>(var_0, u_input.a.x, -1i, u_input.d), vec4<i32>(u_input.a.x, 45683i, 0i, u_input.b), 0i != var_0) | countOneBits(~vec4<i32>(u_input.a.x, u_input.d, var_0, u_input.d)));
    var var_3 = Struct_2(Struct_1(global0[_wgslsmith_index_u32((1u ^ _wgslsmith_add_u32(u_input.c, 4294967295u)) | 64635u, 3u)], all(vec2<bool>(func_3(), false)), true), 1000f, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1374f)), _wgslsmith_f_op_f32(f32(-1f) * -445f))), select(true, any(vec2<bool>(false, false)), any(vec2<bool>(false, false))) != true, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, _wgslsmith_div_f32(264f, -115f), _wgslsmith_f_op_f32(f32(-1f) * -581f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-629f, 137f, -804f), vec3<f32>(-1231f, -1225f, -900f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1044f, -318f, 231f) + vec3<f32>(-154f, 611f, 1000f)) * vec3<f32>(837f, -695f, -1000f)), false)))));
    var var_4 = _wgslsmith_dot_vec3_i32(var_2.zwx, vec3<i32>(u_input.a.x, -(-1i ^ _wgslsmith_add_i32(2147483647i, var_0)), u_input.a.x >> (var_1.x % 32u)));
    return vec3<bool>(var_3.c.c | (_wgslsmith_f_op_f32(var_3.c.a.x - _wgslsmith_div_f32(1000f, -497f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1761f))), var_3.a.c, true);
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = vec4<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), func_2()), vec3<bool>(true, true, false), true)), false, true, true);
    global1 = 45u;
    global0 = array<vec2<f32>, 3>();
    let var_1 = func_2();
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-select(u_input.d, i32(-1i) * -40154i, any(var_0.zzz)), abs(i32(-1i) * -33812i)), -arg_0.zy);
    return 674f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_1(~(~u_input.a))), 530f, -375f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1043f, -770f, true)))), -1025f, _wgslsmith_f_op_f32(2517f - _wgslsmith_f_op_f32(-1354f - -1000f))))));
    global0 = array<vec2<f32>, 3>();
    let var_1 = u_input.c;
    global0 = array<vec2<f32>, 3>();
    global1 = 0u;
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    global2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1323f, var_0.x, var_0.x), vec4<f32>(var_0.x, -886f, var_0.x, -250f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 1000f, 905f, var_0.x), vec4<f32>(var_0.x, var_0.x, 1264f, var_0.x)))))), vec4<u32>(var_1, ~firstTrailingBit(var_1) | _wgslsmith_dot_vec3_u32(vec3<u32>(55711u, 1u, 34824u), vec3<u32>(58614u, 3940u, u_input.c) & vec3<u32>(49432u, var_1, 0u)), ~50570u, var_1), var_0.x);
}

