struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(17395u, 4294967295u, 0u);

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(true, true), 1u), Struct_1(vec2<bool>(true, false), 4294967295u), Struct_1(vec2<bool>(true, false), 4294967295u), Struct_1(vec2<bool>(true, true), 0u), Struct_1(vec2<bool>(false, false), 80951u), Struct_1(vec2<bool>(true, true), 0u), Struct_1(vec2<bool>(false, false), 25022u), Struct_1(vec2<bool>(false, true), 4294967295u), Struct_1(vec2<bool>(true, false), 1u), Struct_1(vec2<bool>(false, true), 46718u), Struct_1(vec2<bool>(false, false), 3499u), Struct_1(vec2<bool>(true, true), 33232u), Struct_1(vec2<bool>(true, true), 0u), Struct_1(vec2<bool>(true, false), 0u), Struct_1(vec2<bool>(false, false), 23728u), Struct_1(vec2<bool>(true, true), 0u), Struct_1(vec2<bool>(false, true), 1u), Struct_1(vec2<bool>(false, false), 4294967295u), Struct_1(vec2<bool>(true, false), 30921u), Struct_1(vec2<bool>(true, false), 4294967295u), Struct_1(vec2<bool>(true, false), 53331u), Struct_1(vec2<bool>(false, false), 28752u), Struct_1(vec2<bool>(false, true), 15157u), Struct_1(vec2<bool>(false, true), 112998u));

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1157f, -495f))), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 1477f)) * 522f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-117f + 455f), _wgslsmith_f_op_f32(294f - -185f)))), !all(select(arg_2.a, arg_2.a, arg_2.a.x)))), -1742f);
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(0u, 1u, 4294967295u)), arg_2.b)), ~max(~_wgslsmith_mult_vec3_u32(u_input.a.zzy, arg_1), ~vec3<u32>(66240u, arg_2.b, 1u)));
    var var_1 = arg_2.a.x;
    global2 = select(vec4<bool>(true, !(_wgslsmith_f_op_f32(ceil(var_0.x)) >= 1f), true, true), select(!select(!vec4<bool>(true, global2.x, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(global2.x, global2.x, true, arg_2.a.x)), select(vec4<bool>(true, arg_0 | global2.x, u_input.b.x == u_input.b.x, !arg_0), vec4<bool>(global2.x, global2.x && true, all(vec4<bool>(arg_0, true, arg_0, true)), true), arg_0), !global2.x), !any(global2.yyz));
    let var_2 = true;
    return select(vec4<bool>(arg_0 && true, true, all(select(select(vec2<bool>(var_2, false), vec2<bool>(var_2, global2.x), var_2), select(vec2<bool>(var_2, arg_2.a.x), arg_2.a, arg_2.a.x), !vec2<bool>(true, arg_2.a.x))), !all(select(vec2<bool>(true, global2.x), arg_2.a, vec2<bool>(arg_2.a.x, true)))), vec4<bool>(global2.x, any(vec2<bool>(all(vec2<bool>(arg_2.a.x, false)), false)), all(vec2<bool>(true, var_2)), select(!(arg_1.x < arg_2.b), all(!vec2<bool>(var_2, true)), arg_0)), !vec4<bool>(!(false & arg_0), true, arg_2.a.x, false));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<u32> {
    global2 = vec4<bool>(-30430i <= u_input.b.x, ~u_input.b.x > ~u_input.b.x, global2.x, true);
    var var_0 = Struct_1(arg_1.a, 4294967295u);
    let var_1 = var_0.a;
    global2 = func_3(var_0.a.x, vec3<u32>(1u, arg_0.x, max(~global0.x, arg_0.x ^ firstTrailingBit(arg_0.x))), arg_2);
    var var_2 = any(vec2<bool>(arg_1.a.x, global2.x));
    return firstTrailingBit(abs((max(u_input.a, vec4<u32>(33287u, 22349u, global0.x, global0.x)) & select(arg_3, vec4<u32>(var_0.b, 0u, arg_3.x, 75138u), arg_1.a.x)) << (vec4<u32>(1u, 1u, 0u, firstTrailingBit(global0.x)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 4294967295u >> (arg_1 % 32u), arg_1, ~1u), ~func_2(vec3<u32>(0u, global0.x, arg_2.b), Struct_1(arg_2.a, global0.x), global1[_wgslsmith_index_u32(arg_1, 24u)], u_input.a)), u_input.a, ~(~(~vec4<u32>(35928u, 0u, 81790u, 51759u)))), vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(global0.x, _wgslsmith_clamp_u32(13004u, u_input.a.x, global0.x))), 70286u, 0u, min(~(~arg_1), 2034u)));
    var var_1 = firstLeadingBit(firstLeadingBit(u_input.a.yyy)) & reverseBits(~u_input.a.zwx);
    let var_2 = u_input.b.xx;
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    let var_0 = (select(!any(global2.yw), !(!global2.x), global2.x) | ((~u_input.c >= (global0.x ^ u_input.a.x)) && func_1(Struct_1(vec2<bool>(false, true), u_input.a.x), reverseBits(4294967295u), global1[_wgslsmith_index_u32(100724u >> (global0.x % 32u), 24u)], 956f))) && global2.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1829f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1914f))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(select(-316f, -247f, var_0))))))));
    global1 = array<Struct_1, 24>();
    let var_2 = _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 102864u), global0.x) ^ 4294967295u;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, _wgslsmith_sub_u32((_wgslsmith_add_u32(var_2, 9686u) >> (var_2 % 32u)) & _wgslsmith_dot_vec2_u32(u_input.a.wy, ~u_input.a.xw), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.x, global0.x) << (~global0.x % 32u), select(~13720u, _wgslsmith_div_u32(u_input.a.x, 0u), var_0)))), 24u)];
    let var_4 = ~max(4294967295u, ~var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~firstLeadingBit(u_input.a), vec4<u32>(24103u, ~39213u, abs(var_3.b), 4294967295u)), vec3<f32>(_wgslsmith_div_f32(-1607f, var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x), 1456f));
}

