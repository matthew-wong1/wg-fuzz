struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(false, true, true));

var<private> global1: array<bool, 3>;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, false, true)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_clamp_u32(firstTrailingBit(~(~0u)), ~3158u, 9337u) <= ~_wgslsmith_sub_u32(firstTrailingBit(6005u) ^ 1u, firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 28394u, 1u)));
    global0 = Struct_3(!global0.a);
    var var_1 = any(vec3<bool>(!(true != global1[_wgslsmith_index_u32(~44419u, 3u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(33339u, 1u), vec2<u32>(0u, 0u), vec2<u32>(23701u, 0u)), abs(vec2<u32>(24883u, 3052u))), vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), 1u)), 3u)], false));
    var_1 = false;
    return -211f;
}

fn func_1() -> i32 {
    var var_0 = 0i;
    var var_1 = (_wgslsmith_div_f32(924f, -1903f) == _wgslsmith_f_op_f32(select(1177f, _wgslsmith_f_op_f32(func_2(vec3<i32>(1i, -249i, u_input.a))), !(!global1[_wgslsmith_index_u32(53439u, 3u)])))) & any(select(global0.a.xz, vec2<bool>(global1[_wgslsmith_index_u32(49906u, 3u)], true), vec2<bool>(!global1[_wgslsmith_index_u32(1u, 3u)], true)));
    var var_2 = 1u;
    var var_3 = min(1u, firstTrailingBit(min(_wgslsmith_add_u32(1u, 23273u), 1u)));
    return u_input.a;
}

fn func_3() -> u32 {
    return _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~abs(vec4<u32>(66777u, 0u, 14060u, 11704u))) ^ _wgslsmith_mod_u32(~(~58678u >> (1u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~24204u, _wgslsmith_mod_u32(35165u, 113890u), 105950u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 31>();
    let var_0 = countOneBits(u_input.a);
    let var_1 = vec2<i32>(1i, func_1());
    global1 = array<bool, 3>();
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-485f))), 2380f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -118f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(min(~vec3<u32>(0u, 4294967295u, 43478u), ~vec3<u32>(4294967295u, 16589u, 24385u))), 9098i, _wgslsmith_add_u32(_wgslsmith_clamp_u32(func_3(), _wgslsmith_div_u32(4294967295u, 45033u), ~_wgslsmith_div_u32(74282u, 1u)), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_2.x, 604f)))))) * -258f), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(2176u, 1463u, 40511u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 46686u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), all(vec4<bool>(true, true, global0.a.x, true))));
}

