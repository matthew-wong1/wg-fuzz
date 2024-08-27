struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(7662i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, -40849i, 2147483647i, 1i), vec4<i32>(-21494i, 23621i, 0i, 45711i), vec4<i32>(i32(-2147483648), 0i, -1i, i32(-2147483648)), vec4<i32>(17036i, 1i, -1i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), -43062i, -20360i), vec4<i32>(1i, i32(-2147483648), 1i, 0i), vec4<i32>(0i, -19408i, -10579i, i32(-2147483648)), vec4<i32>(0i, 23228i, 1i, -37205i));

var<private> global3: array<vec3<bool>, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_5(Struct_1(!all(!vec3<bool>(arg_0, arg_0, arg_0)), u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1444f, global1.b.d.x, global1.b.c.x) + global1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.c.x, -1028f) + vec2<f32>(global1.b.d.x, _wgslsmith_f_op_f32(global1.a.x * global1.a.x))), select(select(!global1.b.e, !vec4<bool>(global1.b.a, true, global1.b.e.x, false), select(global1.b.e, global1.b.e, global1.b.e)), vec4<bool>(global1.e.a > -1i, all(global1.b.e.xzw), global1.c, false), vec4<bool>(select(false, arg_0, arg_0), select(global1.b.a, true, false), global1.c, select(false, global1.c, true)))), _wgslsmith_f_op_f32(ceil(global1.b.c.x)));
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(var_0.a.b.x), 3u)];
    var var_2 = 1482f;
    let var_3 = _wgslsmith_add_vec2_u32(~var_1.d.b, vec2<u32>(13540u, min(u_input.c.x, global1.d.b.x)));
    let var_4 = firstLeadingBit(~u_input.d);
    return var_0.a.d.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(global1.a.xy)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-172f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.c.x), -1100f))) - 1392f));
    let var_2 = vec4<bool>(arg_1.c, global1.c, global1.b.a, !(!any(arg_1.b.e.yxy)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.c.x, -463f, -267f)))))), global1.b, true, global1.d, arg_2);
    var var_4 = _wgslsmith_mult_i32(u_input.b, max(arg_1.e.a, arg_1.e.a));
    return any(vec2<bool>(any(select(vec3<bool>(var_2.x, arg_1.b.e.x, global1.c), vec3<bool>(arg_1.b.a, false, true), var_2.x & arg_0.a.e.x)), arg_0.a.e.x));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global0 = array<Struct_3, 3>();
    let var_0 = vec3<bool>(all(select(!(!global1.b.e), vec4<bool>(!global1.c, u_input.a.x > u_input.c.x, global1.c, global1.b.a), global1.c)), global1.c, func_4(Struct_5(global1.b, _wgslsmith_f_op_f32(abs(644f))), Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, arg_0.x, arg_0.x) * vec3<f32>(-820f, arg_0.x, -1007f)))), global1.b, func_3(global1.b.e.x), global1.d, global1.d), global1.e));
    var var_1 = Struct_4(true);
    let var_2 = global1.b.e.zzy;
    let var_3 = Struct_2(max(4277i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.d, global1.e.a, global1.d.a) | _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.a, 0i), vec2<i32>(-2147483647i, -13300i)), reverseBits(-27737i))), vec2<u32>(countOneBits(_wgslsmith_sub_u32(~51529u, 0u)), select(global1.b.b.x, 22541u, -1507f != _wgslsmith_f_op_f32(-arg_0.x))));
    return false;
}

fn func_1() -> vec4<i32> {
    var var_0 = global1.a.x;
    let var_1 = vec3<u32>(global1.b.b.x, global1.d.b.x, reverseBits(_wgslsmith_div_u32(select(_wgslsmith_add_u32(4294967295u, u_input.a.x), global1.e.b.x, func_2(global1.b.c.zy)), ~(~global1.e.b.x))));
    global2 = array<vec4<i32>, 9>();
    let var_2 = u_input.d;
    var var_3 = global1.a.x;
    return vec4<i32>(global1.d.a & reverseBits(u_input.d), -u_input.b, min(u_input.b & ~global1.d.a, ~_wgslsmith_clamp_i32(var_2, 0i, 26532i)) | (2147483647i & u_input.b), _wgslsmith_add_i32(~(~_wgslsmith_add_i32(u_input.d, 0i)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1() | global2[_wgslsmith_index_u32(1u, 9u)];
    let var_1 = Struct_1(global1.c | all(!(!global1.b.e.wzx)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a.x << (9335u % 32u), firstTrailingBit(u_input.a.x), ~global1.d.b.x, 1u), ~vec4<u32>(u_input.c.x, global1.e.b.x, 31119u, 0u), !func_2(global1.b.d)), global1.b.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b.c, global1.b.c, false)))) * _wgslsmith_f_op_vec3_f32(-global1.a)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b.d.x, _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(-2725f * 619f))))), global1.b.e);
    global3 = array<vec3<bool>, 24>();
    let var_2 = _wgslsmith_dot_vec4_u32(~select(~(~var_1.b), reverseBits(abs(var_1.b)), vec4<bool>(var_1.e.x, var_1.a, true | var_1.e.x, !var_1.a)), u_input.c);
    global0 = array<Struct_3, 3>();
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_1.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.b.c.x, var_1.c.x)), _wgslsmith_f_op_f32(abs(global1.b.d.x))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.e.b, ~u_input.c.zy) | global1.e.b, ~vec2<u32>(var_2, 42873u)));
}

