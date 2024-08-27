struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global0 = array<u32, 32>();
    var var_0 = Struct_3(!vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false)), !all(vec3<bool>(false, false, true))), min(select(max(vec3<u32>(u_input.b.x, 1u, 1u), min(u_input.b.wxz, u_input.b.xyy)), vec3<u32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(27584u, 32u)], u_input.b.x) << (abs(vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])) % vec3<u32>(32u)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), ~vec3<u32>(23952u, 1u, _wgslsmith_add_u32(46603u, 1u))), ~(~(~_wgslsmith_dot_vec3_u32(u_input.b.yxy, vec3<u32>(11808u, 0u, u_input.d.x)))));
    global0 = array<u32, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f));
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = abs(firstTrailingBit(-(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(-2147483647i, u_input.a)) << (vec2<u32>(global0[_wgslsmith_index_u32(1u, 32u)], 0u) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_sub_i32(reverseBits(0i), 7790i);
    let var_2 = firstTrailingBit(_wgslsmith_div_vec4_u32(select(~countOneBits(u_input.b), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 32u)], 32u)], arg_0.b.b, arg_0.a.b, arg_0.b.b), arg_0.c), _wgslsmith_div_vec4_u32(abs(vec4<u32>(78926u, 1u, 24879u, 39949u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.e, 4294967295u, arg_0.a.b, 21903u)), vec4<u32>(0u, u_input.b.x, u_input.d.x, u_input.e) << (vec4<u32>(0u, 64731u, 0u, arg_0.a.b) % vec4<u32>(32u)), u_input.b))));
    let var_3 = arg_0.b;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-717f - _wgslsmith_f_op_f32(select(-264f, arg_0.b.a, false))), _wgslsmith_f_op_f32(arg_0.b.a * arg_0.b.a))), ((arg_0.b.b | 34988u) >> (~4294967295u % 32u)) & var_3.b), arg_0.b, arg_0.c);
    return !vec2<bool>(arg_0.c, var_4.c);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    let var_0 = Struct_3(func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a, u_input.c))), arg_0.b << (2580u % 32u)), arg_0, true)), ~((u_input.b.wwx ^ u_input.b.yzz) << (vec3<u32>(4294967295u, 9245u, 61398u) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_sub_u32(1u, 1u), countOneBits(u_input.b.x), 26148u), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~u_input.d.x, 32u)], ~(~2402u)));
    var var_1 = 431f;
    global0 = array<u32, 32>();
    return reverseBits(1u);
}

fn func_1() -> i32 {
    var var_0 = ~(global0[_wgslsmith_index_u32(1u, 32u)] & ~(func_2(Struct_1(-1175f, 0u), 597f) ^ min(global0[_wgslsmith_index_u32(u_input.e, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(-1053f)), 9726u);
    let var_2 = Struct_1(var_1.a, func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1667f))), ~(~41408u)), var_1.a));
    var var_3 = Struct_2(Struct_1(var_2.a, 21850u), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a))), ~21975u), true);
    var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_3.a.a * 1375f), var_3.a.b), Struct_1(var_3.b.a, 55685u), var_3.c);
    return -78973i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    let var_0 = ~(~(-vec2<i32>(select(-2147483647i, u_input.c, true), ~u_input.c)));
    let var_1 = ~_wgslsmith_add_u32(countOneBits(select(47705u, global0[_wgslsmith_index_u32(25148u, 32u)], false)), ~45976u | u_input.b.x) & ~(~(global0[_wgslsmith_index_u32(u_input.b.x, 32u)] ^ _wgslsmith_dot_vec2_u32(u_input.d, u_input.b.xw)));
    var var_2 = 197f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f + 193f) - -1538f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(round(1000f)))) + _wgslsmith_f_op_f32(f32(-1f) * -676f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2020f)), _wgslsmith_f_op_f32(f32(-1f) * -629f)))));
    var var_3 = ~(-67786i | _wgslsmith_mult_i32(max(~var_0.x, firstTrailingBit(var_0.x)), -97i));
    let var_4 = vec3<i32>(u_input.c, 14296i & func_1(), -(~(~var_0.x)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2643f)) * 180f)))));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, -627f, -442f, -663f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(201f, 659f, 1007f, -810f) - vec4<f32>(-699f, 1000f, 654f, 174f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, 179f, -177f, -783f)) - vec4<f32>(477f, 984f, -1318f, 439f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1610f, _wgslsmith_f_op_f32(-726f - -336f), 240f, -1301f))))));
    let x = u_input.a;
    s_output = StorageBuffer(961f, max(-54430i, 14918i), _wgslsmith_mult_u32(_wgslsmith_sub_u32(2665u, ~reverseBits(4294967295u)), firstTrailingBit(var_1)));
}

