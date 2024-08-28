struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 0u, 32388u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 73642u, 11313u), vec3<u32>(4294967295u, 8851u, 9400u), vec3<u32>(1u, 5776u, 0u), vec3<u32>(1u, 18872u, 47282u), vec3<u32>(104137u, 45697u, 15424u), vec3<u32>(1u, 71165u, 0u), vec3<u32>(1u, 13270u, 17836u), vec3<u32>(1u, 0u, 66261u), vec3<u32>(5019u, 5861u, 7027u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 54604u, 0u), vec3<u32>(1u, 68100u, 35698u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 29315u, 1u), vec3<u32>(56407u, 8426u, 77255u), vec3<u32>(12677u, 1u, 4979u), vec3<u32>(8455u, 4294967295u, 33217u), vec3<u32>(64201u, 50490u, 0u), vec3<u32>(26012u, 335u, 27311u), vec3<u32>(48662u, 47471u, 14049u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 25593u, 1u));

var<private> global1: array<Struct_1, 26>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: u32) -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(abs(1u), 26u)];
    global0 = array<vec3<u32>, 26>();
    global0 = array<vec3<u32>, 26>();
    let var_1 = 0u;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(732f - var_0.d.x))), 1266f, false)) - var_0.d.x), -840f);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)))) * var_0.d);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    global1 = array<Struct_1, 26>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1), ~vec4<i32>(1i, ~(~(-1i)), (46012i >> (u_input.a.x % 32u)) | _wgslsmith_add_i32(39714i, -91309i), -1i), min(countOneBits(~4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(29905u, 0u, arg_0.x), u_input.a.zzw)), u_input.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 1000f) + vec3<f32>(831f, 402f, -1346f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(39695u, 43320u, arg_0.x, 24225u), vec2<u32>(arg_0.x, u_input.a.x), 4294967295u)))), false)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(426f))), _wgslsmith_f_op_f32(-var_0.a));
    global1 = array<Struct_1, 26>();
    var var_2 = ~4294967295u;
    return global1[_wgslsmith_index_u32(1u, 26u)];
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let var_1 = ~_wgslsmith_div_i32(arg_0, i32(-1i) * -11121i);
    global1 = array<Struct_1, 26>();
    var var_2 = arg_3.d.x;
    var var_3 = global1[_wgslsmith_index_u32(0u & max(~(~(~1u)), reverseBits(~func_2(vec4<u32>(arg_3.c, var_0.c, u_input.a.x, 4294967295u), 754f).c)), 26u)];
    return vec3<bool>(arg_2.x && !any(!vec3<bool>(arg_1, arg_2.x, false)), true, any(select(arg_2, !vec4<bool>(false, true, false, arg_1), !arg_1 != arg_1)));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = vec4<bool>(!(arg_0.x == (false & all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)))), arg_0.x, false, any(!func_4(-34280i, true, vec4<bool>(false, arg_0.x, arg_0.x, true), func_2(u_input.a, 1870f))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-394f, -487f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f))), -1210f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-316f, -454f))), _wgslsmith_div_f32(-941f, -1344f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -689f;
    let var_1 = select(!vec2<bool>(!select(false, true, true), true), select(vec2<bool>(true, true), !vec2<bool>(select(false, false, false), true), vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true & all(vec3<bool>(true, true, true)))), false);
    global1 = array<Struct_1, 26>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
    global0 = array<vec3<u32>, 26>();
    let var_3 = Struct_1(1589f, var_2.b, max(firstTrailingBit(_wgslsmith_mod_u32(1u, u_input.a.x)), ~var_2.c) ^ 5093u, vec3<f32>(var_2.a, _wgslsmith_f_op_f32(558f + _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(func_1(vec2<bool>(false, var_1.x))))), 634f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(0u >> (var_2.c % 32u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x) >> (u_input.a.ywz % vec3<u32>(32u)), vec3<u32>(func_2(u_input.a & vec4<u32>(4294967295u, 48847u, 4294967295u, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).c, var_2.c, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_div_u32(4294967295u, u_input.a.x)))), -(-(var_2.b & vec4<i32>(var_3.b.x, -43208i, -11495i, var_3.b.x)) & ~abs(vec4<i32>(var_2.b.x, var_3.b.x, var_3.b.x, -13422i))), u_input.a, 4294967295u);
}

