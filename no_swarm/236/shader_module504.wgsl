struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
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

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<vec2<bool>, 13>;

var<private> global2: f32 = 620f;

var<private> global3: Struct_4;

var<private> global4: array<Struct_4, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = false;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(259f - 811f)))))), Struct_1(firstTrailingBit(~arg_2 | ~arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -631f, -1298f, -305f) + vec4<f32>(519f, 1002f, -1019f, 1370f)))), arg_2));
    return _wgslsmith_div_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_2, var_1.b.a) & 40083u, 38077u), max(1u, global3.c.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(~arg_0.x >> (4294967295u % 32u), ~(~(~global3.b)), 18992u);
    var var_1 = ~(~var_0);
    global3 = global4[_wgslsmith_index_u32(func_3(global3.d, var_0, global3.b), 1u)];
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(55974u, min(abs(14503u), 32327u)), 1u)];
    global3 = Struct_4(var_2.a << (~(var_0 << (reverseBits(var_0) % 32u)) % 32u), ~(_wgslsmith_dot_vec4_u32(~arg_2.a, vec4<u32>(15746u, arg_0.x, 1u, arg_0.x)) ^ func_3(!arg_1.xzy, abs(2439u), 14940u)), ~arg_2.a.xzx, select(select(var_2.d, global3.d, true), select(global3.d, select(arg_1.wxz, select(vec3<bool>(false, false, false), var_2.d, vec3<bool>(arg_1.x, global3.d.x, var_2.d.x)), vec3<bool>(true, false, false)), any(vec3<bool>(true, true, global3.d.x))), var_2.d.x));
    return ~_wgslsmith_mult_u32(var_0, ~78393u);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.x, 1u, 23273u, 4294967295u), select(vec4<u32>(51442u, global3.b, 94894u, global3.c.x), vec4<u32>(global3.b, global3.c.x, global3.b, global3.b), true)) >> (global3.c.x % 32u), _wgslsmith_mod_u32(global3.c.x, 16310u), global3.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-667f, -1000f, -1000f, 979f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(574f, 593f, -227f, -840f) + vec4<f32>(-459f, -100f, -722f, -1423f)))))), _wgslsmith_div_u32(func_2(abs(~vec2<u32>(1u, global3.c.x)), !select(vec4<bool>(false, true, false, global3.d.x), vec4<bool>(global3.d.x, global3.d.x, false, global3.d.x), vec4<bool>(global3.d.x, global3.d.x, global3.d.x, global3.d.x)), Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.b, 35138u, global3.c.x, global3.b), vec4<u32>(global3.c.x, global3.b, global3.b, global3.b), vec4<u32>(0u, global3.c.x, 625u, global3.c.x)))), ~(~global3.c.x)));
    var var_1 = Struct_3(max(_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, global3.b, var_0.a, global3.b)), ~vec4<u32>(14356u, global3.b, 85302u, global3.b)), abs(vec4<u32>(var_0.a, global3.b, 4294967295u, 44096u))) ^ vec4<u32>(firstTrailingBit(var_0.a), ~select(76916u, var_0.a, global3.d.x), firstTrailingBit(1u), 64546u));
    var var_2 = reverseBits(~vec3<u32>(countOneBits(73729u) | ~global3.b, ~(0u | var_0.a), 4294967295u));
    var_2 = _wgslsmith_add_vec3_u32(global3.c, var_1.a.wzy);
    var var_3 = global0[_wgslsmith_index_u32(1u, 20u)];
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(global3.b, 20u)];
    let var_1 = func_1();
    global0 = array<Struct_3, 20>();
    global2 = -204f;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-138f, _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) * vec2<f32>(-739f, var_1.b.x)))))));
    global1 = array<vec2<bool>, 13>();
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_1.c, ~_wgslsmith_mod_u32(global3.c.x, var_0.a.x), func_3(select(global3.d, global3.d, global3.d.x), 4294967295u, _wgslsmith_mult_u32(1u, 75798u))) >> (var_1.a % 32u), 13u)];
    global0 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

