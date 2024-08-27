struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<Struct_3, 28>;

var<private> global2: vec4<u32> = vec4<u32>(5635u, 51303u, 10842u, 12490u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    global1 = array<Struct_3, 28>();
    let var_0 = Struct_5(u_input.b.x ^ u_input.a.x, global1[_wgslsmith_index_u32(reverseBits((~u_input.c.x | firstLeadingBit(u_input.c.x)) << (~14894u % 32u)), 28u)], Struct_3(6041u), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(select(true, false, true), all(vec3<bool>(false, false, false))), vec2<bool>(select(true, false, false), true), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    global2 = ~vec4<u32>(global2.x, 1u, ~global2.x, 13938u);
    return 7898u;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> u32 {
    global2 = ~(~vec4<u32>(~_wgslsmith_mult_u32(9668u, global2.x), ~(~4294967295u), firstTrailingBit(~872u), ~4294967295u));
    var var_0 = Struct_3(max(_wgslsmith_clamp_u32(func_3(global0[_wgslsmith_index_u32(~4294967295u, 17u)]), 54371u, 1u), global2.x));
    global0 = array<f32, 17>();
    return 0u;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> i32 {
    global2 = vec4<u32>(~(~func_2(countOneBits(42632u), !vec3<bool>(false, arg_1.b.b, arg_1.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(175f, -391f, 1109f, global0[_wgslsmith_index_u32(4294967295u, 17u)]))))), 1u, u_input.e.x, global2.x);
    global0 = array<f32, 17>();
    let var_0 = _wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -780f))));
    var var_1 = arg_1.d;
    global0 = array<f32, 17>();
    return 4136i;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: f32) -> Struct_4 {
    global1 = array<Struct_3, 28>();
    global1 = array<Struct_3, 28>();
    var var_0 = arg_0.b.a;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 421f;
    var var_1 = func_4(Struct_5(abs(func_1(Struct_4(false, Struct_2(-19547i, true), true, 999f, Struct_2(-1i, false)), Struct_4(true, Struct_2(u_input.a.x, false), true, var_0, Struct_2(39624i, false)))), Struct_3(48455u), global1[_wgslsmith_index_u32(u_input.e.x, 28u)], select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-342f, 1022f), vec2<f32>(576f, -291f), true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(430f, 1391f)))))), Struct_4(false, Struct_2(29697i >> (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u) % 32u), u_input.d > firstTrailingBit(u_input.b.x)), true, 1226f, Struct_2(1i ^ _wgslsmith_mod_i32(u_input.a.x, u_input.b.x), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-737f, global0[_wgslsmith_index_u32(abs(4294967295u) | _wgslsmith_sub_u32(u_input.c.x, u_input.e.x), 17u)]))));
    global2 = countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 23729u, ~94235u, ~u_input.c.x) >> (max(select(vec4<u32>(global2.x, 1184u, 24892u, 0u), vec4<u32>(12703u, 43387u, global2.x, 0u), vec4<bool>(true, false, var_1.a, true)), vec4<u32>(4294967295u, 12463u, u_input.c.x, global2.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(abs(71728u), abs(1u), u_input.e.x, _wgslsmith_mult_u32(19558u, global2.x)), vec4<u32>(firstTrailingBit(global2.x), func_2(global2.x, vec3<bool>(var_1.b.b, false, true), vec4<f32>(global0[_wgslsmith_index_u32(0u, 17u)], var_0, var_0, -207f)), ~u_input.e.x, u_input.e.x)), ~(~vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x) ^ countOneBits(vec4<u32>(u_input.c.x, global2.x, 1u, u_input.c.x)))));
    var var_2 = ~(-u_input.a);
    let var_3 = ~select(~vec2<u32>(~54628u, ~0u), ~vec2<u32>(~4294967295u, global2.x), vec2<bool>(select(var_1.b.b || false, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(~47293u, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1289f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, var_1.d, global0[_wgslsmith_index_u32(88230u, 17u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, 999f, var_0, -1783f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1626f, global0[_wgslsmith_index_u32(var_3.x, 17u)], var_1.d, -721f))))), var_3.x, 1u);
}

