struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 29>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    global2 = array<Struct_1, 29>();
    let var_0 = min(_wgslsmith_add_vec2_u32((_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(32221u, arg_1.x)) & _wgslsmith_add_vec2_u32(vec2<u32>(52140u, arg_1.x), vec2<u32>(57466u, arg_1.x))) << (~(~vec2<u32>(arg_1.x, arg_1.x)) % vec2<u32>(32u)), vec2<u32>(arg_1.x, ~_wgslsmith_dot_vec3_u32(arg_1.yxz, arg_1.zyz))), arg_1.yx);
    global2 = array<Struct_1, 29>();
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-429f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f - arg_0)))));
    return 1u ^ ~abs(~(4294967295u & arg_1.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    global0 = !select(vec4<bool>(true, global0.x, true, true), vec4<bool>(!arg_0.x, all(!vec2<bool>(arg_0.x, true)), true, arg_0.x), arg_0);
    global0 = select(vec4<bool>(false, true, arg_0.x, all(global0.zzx)), !select(arg_0, !(!vec4<bool>(true, false, arg_0.x, false)), arg_0), arg_0);
    return reverseBits(_wgslsmith_mod_u32(1u, firstTrailingBit(_wgslsmith_clamp_u32(0u, 0u, 1u))) | 0u);
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = !(!vec4<bool>(true, select(global0.x, false, false) && global0.x, global0.x, true));
    global0 = vec4<bool>(!any(select(vec2<bool>(false, global0.x), !var_0.zx, false)), true, true, global0.x);
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~min(func_3(vec4<bool>(false, true, global0.x, global0.x), 125f, u_input.c), ~0u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 1u, 1u), ~_wgslsmith_add_u32(1u, 1u)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34241u, 8308u, 18063u), vec3<u32>(10202u, 5427u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(21641u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 49484u)))), vec4<u32>(min(4294967295u, abs(0u)) << (0u % 32u), 1u, ~1u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 32906u, 4026u, 4294967295u), vec4<u32>(5200u, 4294967295u, 111848u, 4294967295u)), 24338u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, _wgslsmith_div_u32(1u, 1u), 17225u, abs(1u))), _wgslsmith_add_vec4_u32(vec4<u32>(abs(94002u), _wgslsmith_clamp_u32(7788u, 4294967295u, 57652u), 1u, _wgslsmith_sub_u32(4294967295u, 0u)), vec4<u32>(abs(0u), ~1u, ~1u, firstTrailingBit(64227u)))));
    var var_2 = ~1u;
    let var_3 = var_1.x;
    return _wgslsmith_f_op_f32(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = firstLeadingBit(_wgslsmith_div_vec3_u32(abs(~vec3<u32>(61286u, 21222u, 0u)), vec3<u32>(func_1(-2344f, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), ~6664u, reverseBits(16096u))) ^ (reverseBits(select(vec3<u32>(15123u, 53558u, 1u), vec3<u32>(0u, 0u, 14378u), vec3<bool>(global0.x, true, global0.x))) | vec3<u32>(select(13172u, 4294967295u, global0.x), 25280u, ~0u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2248f - 1779f))))));
    var var_3 = 4294967295u;
    var_3 = 4294967295u;
    let var_4 = global2[_wgslsmith_index_u32(func_1(218f, vec4<u32>(2884u, var_1.x, firstLeadingBit(firstLeadingBit(var_1.x)), var_1.x)), 29u)];
    var_3 = _wgslsmith_add_u32(select(~_wgslsmith_dot_vec2_u32(var_1.zz, vec2<u32>(var_1.x, 1u)), 30274u, var_4.b), 0u) >> (abs(var_1.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec3<u32>(countOneBits(var_1.x), reverseBits(~(~var_1.x)), var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, _wgslsmith_div_f32(647f, 433f), _wgslsmith_f_op_f32(func_2(616f)), _wgslsmith_f_op_f32(max(1032f, 1000f)))) - vec4<f32>(-1724f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1290f * 861f))), -485f, 1038f)));
}

