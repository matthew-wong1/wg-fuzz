struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(21792u, 77379u, 1u, 4294967295u, 1u, 69463u, 85460u, 0u, 4294967295u, 4294967295u, 1u, 1u, 35909u, 4294967295u, 25861u, 27393u, 4294967295u, 4294967295u, 4294967295u, 1u, 4294967295u, 4294967295u, 27065u, 1u, 74648u, 7613u, 1u, 4294967295u);

var<private> global1: u32 = 50105u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_1(false, -680f);
    var var_1 = _wgslsmith_f_op_f32(round(var_0.b));
    let var_2 = -43132i << (1u % 32u);
    var var_3 = Struct_1(!all(select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_0.a, false), vec2<bool>(true, false), vec2<bool>(true, true)), false)), 1000f);
    let var_4 = ~(60026u >> (_wgslsmith_dot_vec2_u32(u_input.b.xx, _wgslsmith_mult_vec2_u32(~u_input.b.xx, vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 28u)]))) % 32u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = arg_0;
    global1 = 74945u;
    global0 = array<u32, 28>();
    let var_1 = ~(-42586i);
    global1 = _wgslsmith_add_u32(min(1u, 25351u), 1u);
    return _wgslsmith_f_op_f32(-1128f + _wgslsmith_f_op_f32(func_3(~_wgslsmith_clamp_vec2_i32(-vec2<i32>(49358i, 1i), -vec2<i32>(-86039i, var_1), vec2<i32>(2147483647i, 0i)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> bool {
    let var_0 = Struct_1(!((~global0[_wgslsmith_index_u32(0u, 28u)] >= _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 75480u)) | true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(true, 552f), Struct_1(true, -1000f))) - _wgslsmith_f_op_f32(arg_0.x * arg_1)))));
    global1 = u_input.a.x;
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    let var_1 = var_0;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~_wgslsmith_mod_vec2_i32(vec2<i32>(-22865i << (u_input.c % 32u), 1858i), ~(vec2<i32>(1i, 1i) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)))));
    var var_1 = Struct_1(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-901f, 1458f, -1150f, -2221f) - vec4<f32>(323f, -831f, -1726f, 1265f)) * vec4<f32>(131f, -870f, 525f, 1000f)) * vec4<f32>(-1297f, _wgslsmith_f_op_f32(select(404f, -739f, false)), -521f, _wgslsmith_f_op_f32(max(-373f, 596f)))), 1171f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(760f - 677f)))));
    var var_2 = (-vec3<i32>(-18483i, -2147483647i, 8266i) >> (~reverseBits(~vec3<u32>(74485u, u_input.c, u_input.c)) % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u));
    var var_3 = Struct_1(true, -1477f);
    let var_4 = Struct_1(!any(vec2<bool>(true || var_1.a, var_3.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(500f + var_3.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(var_2.x, 12076i))) + var_3.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f))))));
    global0 = array<u32, 28>();
    var_1 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(countOneBits(56214u), ~u_input.c), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~1u, 28u)], ~54919u), global0[_wgslsmith_index_u32(~(~u_input.b.x), 28u)]), 60365u, _wgslsmith_mod_u32(55365u, u_input.a.x)), ~var_0.x);
}

