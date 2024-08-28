struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<vec4<i32>, 32>;

var<private> global3: Struct_1 = Struct_1(18120u, -606f, vec3<f32>(1049f, -612f, 189f), true, vec3<u32>(176u, 4294967295u, 1u));

var<private> global4: array<u32, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = reverseBits(vec3<i32>(1i, abs(max(0i, 0i)) >> (~firstTrailingBit(8403u) % 32u), 1i));
    var var_2 = min(0u, _wgslsmith_add_u32(4294967295u, ~(~(arg_3.x & 1u))));
    global1 = array<Struct_1, 24>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1145f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f - global3.b) - -1789f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), any(select(vec3<bool>(true, false, var_0.a), vec3<bool>(true, var_0.a, false), vec3<bool>(arg_0.a, false, var_0.a)))))) * var_0.b);
    return global4[_wgslsmith_index_u32(20791u, 28u)];
}

fn func_2() -> i32 {
    var var_0 = vec3<u32>(~(~(~u_input.a.x)), func_3(Struct_2(!global3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.c.x)) * 1218f)), global3.c, true, vec4<u32>(7338u, _wgslsmith_mod_u32(1u, ~u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.b.xwx, _wgslsmith_mod_vec3_u32(vec3<u32>(2285u, global3.e.x, 4294967295u), u_input.b.wzy)), _wgslsmith_mod_u32(u_input.b.x << (u_input.b.x % 32u), 0u))), global4[_wgslsmith_index_u32(8251u, 28u)]);
    let var_1 = Struct_3(_wgslsmith_sub_u32(4294967295u, global3.e.x), select(!select(!vec4<bool>(global3.d, global3.d, global3.d, global3.d), !vec4<bool>(true, global3.d, global3.d, global3.d), global3.d), vec4<bool>(global3.d, true, !global3.d, global3.d), !global3.d), global1[_wgslsmith_index_u32(u_input.c.x, 24u)], u_input.a.x | u_input.a.x);
    let var_2 = -1429f;
    let var_3 = Struct_2(all(vec3<bool>(var_1.c.d, true, !(global3.d && true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1552f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1669f - global3.b), -211f)))));
    global2 = array<vec4<i32>, 32>();
    return -15469i;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global4 = array<u32, 28>();
    global1 = array<Struct_1, 24>();
    global3 = Struct_1(17016u << ((_wgslsmith_add_u32(u_input.c.x, global3.e.x ^ global3.e.x) & 0u) % 32u), _wgslsmith_f_op_f32(-global3.c.x), global3.c, any(!(!vec3<bool>(arg_0, global3.d, global3.d))), vec3<u32>(1u, 4294967295u, u_input.b.x >> (1u % 32u)));
    var var_0 = Struct_3(~57141u, !vec4<bool>(!arg_0, func_2() >= 1i, _wgslsmith_f_op_f32(-global3.b) == global3.c.x, select(!arg_0, false, all(vec2<bool>(arg_0, true)))), global1[_wgslsmith_index_u32(32420u, 24u)], global3.e.x);
    var var_1 = vec2<i32>(-24606i, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(~(-29067i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, -24625i))), ~(~min(vec2<i32>(-1i, -2147483647i), vec2<i32>(2147483647i, 2147483647i)))));
    return vec2<bool>(all(vec2<bool>(true, true)) && true, all(var_0.b.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u == ~_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 0u), vec3<u32>(71916u, 1u, global3.a)), ~0u));
    let var_1 = true;
    var_0 = any(vec4<bool>(_wgslsmith_f_op_f32(-global3.c.x) == _wgslsmith_f_op_f32(select(global3.b, -2412f, true)), !all(vec3<bool>(var_1, false, var_1)), any(func_1(false)), true || all(vec2<bool>(false, global3.d)))) || (((17742u ^ select(72171u, 1u, true)) | 1u) != 62230u);
    var_0 = true;
    global1 = array<Struct_1, 24>();
    let var_2 = select(vec3<bool>(false, var_1, true), !select(vec3<bool>(func_1(global3.d).x, global3.d | false, !global3.d), select(!vec3<bool>(true, global3.d, global3.d), vec3<bool>(var_1, false, true), select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, false, var_1), var_1)), vec3<bool>(global3.d, any(vec4<bool>(false, var_1, var_1, var_1)), global3.d)), select(!select(vec3<bool>(global3.d, var_1, global3.d), !vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, global3.d, true)), select(vec3<bool>(global3.d && var_1, true, var_1 == global3.d), select(select(vec3<bool>(true, false, global3.d), vec3<bool>(false, global3.d, false), vec3<bool>(var_1, false, var_1)), vec3<bool>(var_1, false, false), vec3<bool>(true, true, var_1)), !(var_1 | true)), false));
    global1 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.c, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(269f)) * global3.c.x), _wgslsmith_f_op_f32(ceil(global3.b))))), ~u_input.c.zzw, vec2<i32>(_wgslsmith_div_i32(countOneBits(-47055i) << ((4294967295u ^ u_input.a.x) % 32u), 7560i), -2147483647i), 21834u);
}

