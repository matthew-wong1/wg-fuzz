struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_1 = Struct_1(4294967295u, vec4<u32>(4294967295u, 4294967295u, 9477u, 37532u), 1270f);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(44223u, vec4<u32>(4294967295u, 103429u, 75140u, 4294967295u), 1818f), Struct_1(4294967295u, vec4<u32>(8630u, 47675u, 0u, 67504u), -393f), Struct_1(37564u, vec4<u32>(29074u, 1u, 19523u, 63888u), -1620f), Struct_1(23265u, vec4<u32>(30116u, 4294967295u, 24033u, 1u), 711f), Struct_1(4294967295u, vec4<u32>(4294967295u, 4294967295u, 94354u, 25729u), 961f), Struct_1(4294967295u, vec4<u32>(10278u, 4294967295u, 3862u, 41850u), 988f));

var<private> global3: bool;

var<private> global4: array<f32, 6> = array<f32, 6>(1228f, 211f, 522f, 685f, -280f, 1410f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec2<f32> {
    let var_0 = global0.b.x >= _wgslsmith_clamp_u32(~(~1u) & _wgslsmith_clamp_u32(~25539u, global0.b.x | 1u, 4294967295u), abs(abs(global0.a)), global0.a);
    global4 = array<f32, 6>();
    var var_1 = var_0;
    global3 = false;
    var var_2 = vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(39381u, 1u & global0.b.x), 20894u), firstLeadingBit(_wgslsmith_dot_vec3_u32(global0.b.zzx, firstTrailingBit(global0.b.yxx)) << (~global0.a % 32u)), global0.b.x, global0.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-145f, -372f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-682f, _wgslsmith_f_op_f32(1000f * global4[_wgslsmith_index_u32(22729u, 6u)]))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = ~arg_0.a == _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 9648u), max(min(~49973u, 36983u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b.x, 0u), vec2<u32>(27902u, global0.a), vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(4294967295u, global0.b.x))));
    global2 = array<Struct_1, 6>();
    let var_1 = -6393i;
    let var_2 = Struct_1(0u, vec4<u32>(reverseBits(19087u), _wgslsmith_div_u32(60249u, 4294967295u), _wgslsmith_mod_u32(29656u ^ arg_0.b.x, select(71895u, 76069u, var_0) & 1u), arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(695f, _wgslsmith_div_f32(arg_0.c, -813f)), global0.c)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -403f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(33641u, 6u)]))), var_2.c)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = Struct_1(14058u, ~(~(~vec4<u32>(arg_2.a, var_0.b.x, global0.a, 0u))), 1322f);
    var var_2 = false;
    var var_3 = !select(vec3<bool>(true, true, true), !vec3<bool>(true, any(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), any(vec2<bool>(true, true))));
    let var_4 = ~(~arg_2.a);
    return Struct_1(countOneBits(0u), ~vec4<u32>(~0u, 110843u, reverseBits(arg_3.a) | ~arg_2.b.x, reverseBits(arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4[_wgslsmith_index_u32(global0.b.x, 6u)], 956f), vec2<f32>(global0.c, global4[_wgslsmith_index_u32(global0.a, 6u)]), vec2<bool>(false, true)))))), _wgslsmith_div_vec2_i32(u_input.a.wz, abs(u_input.a.yx)), Struct_1(global0.b.x ^ global0.b.x, abs(_wgslsmith_add_vec4_u32(vec4<u32>(14455u, 1u, 1120u, 37081u), global0.b)) & ~global0.b, global4[_wgslsmith_index_u32(~global0.a, 6u)]), Struct_1(~1u, vec4<u32>(firstLeadingBit(global0.a), _wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(global0.b.x, global0.b.x, 0u, global0.a)), 1u, 15999u ^ abs(global0.b.x)), -1303f));
    var var_1 = Struct_1(41328u, _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(1u), 1u, ~0u, var_0.a), ~min(var_0.b, vec4<u32>(var_0.b.x, var_0.b.x, var_0.a, var_0.b.x)), var_0.b) ^ ~_wgslsmith_add_vec4_u32(global0.b, global0.b & var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, vec4<u32>(11868u, var_0.a, 2876u, 1u), -1175f)))));
    var var_2 = u_input.d;
    global4 = array<f32, 6>();
    var var_3 = countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.yw, select(-_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.b), u_input.a.zw), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b, -20290i, -62391i, 5096i)), ~u_input.a.x), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    global2 = array<Struct_1, 6>();
    var var_4 = ~abs(vec3<u32>(_wgslsmith_div_u32(~var_0.b.x, 28413u), ~(var_0.b.x << (var_1.a % 32u)), _wgslsmith_mod_u32(9839u, 1u) & max(global0.b.x, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

