struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(44660i, 1i, i32(-2147483648)), vec3<i32>(14964i, 30611i, i32(-2147483648)), vec3<i32>(-56616i, -28574i, -3204i), vec3<i32>(0i, -35630i, 66455i), vec3<i32>(15140i, 71243i, 11470i), vec3<i32>(-5233i, -64039i, 11290i), vec3<i32>(31126i, 2147483647i, 1871i), vec3<i32>(5675i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, -63468i, -19330i), vec3<i32>(52151i, 0i, i32(-2147483648)), vec3<i32>(14270i, -14008i, -1i), vec3<i32>(-17143i, 37234i, -1i), vec3<i32>(39812i, 50525i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), -46989i), vec3<i32>(29909i, 1i, -7982i), vec3<i32>(0i, 0i, 1i), vec3<i32>(2147483647i, -69177i, 27706i), vec3<i32>(-17719i, -9119i, -4596i), vec3<i32>(2147483647i, 30013i, 1i), vec3<i32>(i32(-2147483648), -21770i, 74616i));

var<private> global3: array<f32, 15>;

var<private> global4: vec2<u32> = vec2<u32>(94238u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global0 = ~vec4<u32>(select(global1.a.x, global0.x, true), global4.x, abs(global4.x), 0u) >> (global1.a % vec4<u32>(32u));
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(abs(vec4<u32>(~global4.x, _wgslsmith_dot_vec3_u32(global1.a.wxx, vec3<u32>(4294967295u, global4.x, u_input.c.x)), 0u, ~global4.x)), u_input.c), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(30382u, abs(_wgslsmith_sub_u32(u_input.c.x, global0.x))), 15u)] - global3[_wgslsmith_index_u32(global1.a.x, 15u)]));
    var var_1 = Struct_1(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-527f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-232f)) + -333f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(min(2200f, -2115f))))));
    var var_2 = -26171i;
    var_2 = -(u_input.a.x << (4294967295u % 32u)) >> (1u % 32u);
    return 253f;
}

fn func_2() -> Struct_1 {
    global2 = array<vec3<i32>, 20>();
    var var_0 = vec2<u32>(~(global1.a.x | ~u_input.c.x) >> (~u_input.c.x % 32u), 57173u);
    var var_1 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    global4 = ~(vec2<u32>(global4.x, global0.x) >> (_wgslsmith_sub_vec2_u32(abs(vec2<u32>(4294967295u, var_1.a.x)) | select(vec2<u32>(global4.x, 4294967295u), var_1.a.yy, vec2<bool>(true, false)), u_input.c.ww) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(global1.a.x, var_0.x, global0.x, global4.x)), vec4<u32>(var_0.x, firstTrailingBit(45159u), _wgslsmith_sub_u32(var_1.a.x, 9336u), _wgslsmith_sub_u32(var_0.x, 0u))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1.a.x, global4.x, global1.a.x), global1.a))) >= firstLeadingBit(max(_wgslsmith_mult_u32(global0.x, 2121u), 5690u));
    return Struct_1(vec4<u32>(~117698u, 4294967295u, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(51021u, u_input.c.x), ~u_input.c.x), ~(~var_0.x ^ reverseBits(0u))), var_1.b);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> u32 {
    global1 = func_2();
    let var_0 = ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.c, _wgslsmith_add_vec4_u32(max(u_input.c, vec4<u32>(global0.x, 4294967295u, global0.x, 62946u)), ~global1.a)), firstTrailingBit(vec4<u32>(global4.x, global1.a.x, 0u, 20130u) | u_input.c));
    var var_1 = -(-vec2<i32>(_wgslsmith_mult_i32(arg_2, u_input.a.x), 29370i) ^ u_input.a);
    let var_2 = firstTrailingBit(_wgslsmith_mult_i32(~(~44645i), _wgslsmith_dot_vec2_i32(vec2<i32>(23122i, _wgslsmith_add_i32(u_input.a.x, var_1.x)), u_input.b.xy)));
    global4 = _wgslsmith_div_vec2_u32(var_0.zy, vec2<u32>(var_0.x, _wgslsmith_clamp_u32(8862u, global0.x, u_input.c.x) | _wgslsmith_sub_u32(global1.a.x, global0.x)) | global1.a.xw);
    return 27118u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(max(vec4<u32>(17872u ^ global1.a.x, 61187u, _wgslsmith_sub_u32(1u, u_input.c.x), 21168u), vec4<u32>(u_input.c.x | 14726u, func_1(false, false, 2147483647i), 47053u, global0.x))), _wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(trunc(-468f)), !(!(global1.a.x >= global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global1.a.x, 15u)], 1079f)), 273f), _wgslsmith_f_op_f32(global1.b + 1f))), vec4<f32>(834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 1360f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + -458f), _wgslsmith_f_op_f32(select(413f, _wgslsmith_f_op_f32(-global1.b), true))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(global1.a.x), global0.x) | func_1(!(u_input.a.x >= u_input.a.x), select(true, true, true), -38473i), 20u)], ~abs(global1.a.x), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(var_0.a.x, 54435u)), var_0.a.wy, var_0.a.ww), func_2().a.wx)));
}

