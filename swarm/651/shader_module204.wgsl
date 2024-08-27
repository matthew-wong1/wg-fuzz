struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_3,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 1000f);
    global3 = arg_0.d;
    let var_1 = u_input.a;
    var var_2 = ~(~0u | (firstLeadingBit(~4008u) | max(min(26978u, arg_0.b.a.x), ~9608u)));
    global0 = array<Struct_1, 14>();
    return _wgslsmith_mod_vec3_u32(max(_wgslsmith_add_vec3_u32(u_input.b.yxw, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.a.x, 21393u, 28020u), u_input.b.wxx | u_input.b.yyz)), select(abs(countOneBits(u_input.b.zyw)), u_input.b.xyw, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(global3.a.x), global3.a.x ^ global3.a.x, abs(22273u)), 9u)])), u_input.b.zzw | ~(~vec3<u32>(u_input.b.x, global3.a.x, 29864u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5) -> vec4<u32> {
    global2 = array<vec3<bool>, 9>();
    global3 = Struct_2(~vec2<u32>(~global3.a.x | firstTrailingBit(global3.a.x), ~_wgslsmith_add_u32(arg_1.a.x, arg_0.x)));
    global1 = array<vec2<f32>, 17>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1913f + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(282f, 1170f)))) + 1353f));
    global1 = array<vec2<f32>, 17>();
    return vec4<u32>(arg_0.x, 35263u, abs(~firstTrailingBit(arg_1.a.x | u_input.b.x)), 1u);
}

fn func_2() -> f32 {
    let var_0 = func_4(select(u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(21054u, 4294967295u, u_input.b.x, global3.a.x), ~u_input.b) ^ max(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false))), Struct_5(func_3(Struct_3(all(vec4<bool>(false, false, false, true)), Struct_2(u_input.b.yy), -507f, Struct_2(u_input.b.wz)))));
    global3 = Struct_2(vec2<u32>(var_0.x, global3.a.x) & var_0.wz);
    global3 = Struct_2(_wgslsmith_sub_vec2_u32(~var_0.zx, ~_wgslsmith_add_vec2_u32(firstTrailingBit(global3.a), max(u_input.b.wx, u_input.b.yw))));
    var var_1 = var_0.x;
    global2 = array<vec3<bool>, 9>();
    return 1418f;
}

fn func_1() -> Struct_5 {
    var var_0 = !vec4<bool>(!(!(global3.a.x >= 5356u)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(func_2()) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f) + _wgslsmith_f_op_f32(min(171f, -435f))), true);
    global3 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.a.x, ~_wgslsmith_mod_u32(u_input.b.x, 1u)), ~((vec2<u32>(u_input.b.x, 12579u) | global3.a) << ((u_input.b.yy ^ vec2<u32>(global3.a.x, 28293u)) % vec2<u32>(32u)))));
    global1 = array<vec2<f32>, 17>();
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, 407f, -715f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1966f, -1000f, 447f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(872f, 1553f, 1414f))), select(vec3<bool>(true, var_0.x, false), var_0.yyx, vec3<bool>(var_0.x, var_0.x, true))))))));
    global0 = array<Struct_1, 14>();
    return Struct_5(abs(min(_wgslsmith_mod_vec3_u32(u_input.b.wzz << (u_input.b.xww % vec3<u32>(32u)), u_input.b.wxy), min(vec3<u32>(24394u, global3.a.x, 15827u), u_input.b.yxz) >> (vec3<u32>(69118u, global3.a.x, 4294967295u) % vec3<u32>(32u)))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: Struct_5) -> u32 {
    global0 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_mult_u32(4294967295u, 1u) ^ global3.a.x;
    global1 = array<vec2<f32>, 17>();
    var var_1 = Struct_3(all(vec4<bool>(true, select(all(vec4<bool>(true, false, true, false)), false, true), !all(vec4<bool>(false, false, false, false)), true)), Struct_2(vec2<u32>(0u, firstTrailingBit(countOneBits(31823u)))), _wgslsmith_f_op_f32(ceil(-1398f)), Struct_2(~arg_2.a.yy));
    var var_2 = Struct_3(true, var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(348f)))) * 1219f), var_1.b);
    return ~_wgslsmith_sub_u32(~select(arg_3.a.x, var_1.d.a.x >> (1u % 32u), all(vec2<bool>(true, var_2.a))), _wgslsmith_add_u32(0u, arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 9>();
    var var_0 = global2[_wgslsmith_index_u32(abs(~62861u), 9u)];
    let var_1 = u_input.a;
    let var_2 = ~countOneBits(firstTrailingBit(func_5(-583f, _wgslsmith_f_op_vec4_f32(vec4<f32>(312f, -895f, -624f, -504f) + vec4<f32>(1000f, 2092f, 1306f, 1866f)), func_1(), Struct_5(vec3<u32>(20519u, u_input.b.x, global3.a.x)))));
    var var_3 = Struct_2(global3.a);
    let var_4 = var_2;
    var_0 = !vec3<bool>(var_0.x, any(select(vec2<bool>(var_0.x, true), select(var_0.yy, vec2<bool>(var_0.x, false), var_0.x), any(vec4<bool>(true, false, var_0.x, var_0.x)))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec3<i32>(1i, -1i, -2147483647i))));
}

