struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(20618i, 1i, -3858i, 1i, 10142i, 2147483647i, i32(-2147483648), 1i, 48055i, 1i, i32(-2147483648), 48543i, i32(-2147483648), 7351i);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(1u), Struct_1(53600u), Struct_1(74051u), Struct_1(0u), Struct_1(29832u), Struct_1(1u), Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(7076u), Struct_1(4294967295u), Struct_1(30516u), Struct_1(4294967295u), Struct_1(36492u), Struct_1(0u), Struct_1(45666u), Struct_1(0u), Struct_1(1u), Struct_1(35598u), Struct_1(5319u), Struct_1(1240u), Struct_1(41455u), Struct_1(23292u), Struct_1(2474u), Struct_1(91659u), Struct_1(73591u), Struct_1(59453u), Struct_1(16871u));

var<private> global2: array<Struct_1, 27>;

var<private> global3: bool = true;

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(12273u), Struct_1(18681u), Struct_1(89603u), Struct_1(46519u), Struct_1(4294967295u), Struct_1(4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-1f))));
    global2 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let var_2 = 1u;
    let var_3 = global2[_wgslsmith_index_u32(u_input.c.x, 27u)];
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(var_0)))) * _wgslsmith_f_op_f32(max(977f, _wgslsmith_f_op_f32(-var_1)))))));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global2 = array<Struct_1, 27>();
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    let var_0 = Struct_1(~1u);
    var var_1 = _wgslsmith_sub_vec2_u32(~(~vec2<u32>(_wgslsmith_mod_u32(8207u, u_input.a.x), _wgslsmith_mod_u32(var_0.a, 37850u))), vec2<u32>(u_input.a.x, ~reverseBits(158954u)));
    let var_2 = _wgslsmith_f_op_f32(func_1());
    let var_3 = !select(vec3<bool>(true, true, true), vec3<bool>(any(func_2(global0[_wgslsmith_index_u32(u_input.c.x, 14u)])), false && all(vec4<bool>(false, true, false, false)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), !vec3<bool>(any(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, true, true)), true));
    var var_4 = var_3.xz;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1072i, -41769i, 23564i, global0[_wgslsmith_index_u32(4294967295u, 14u)]) | ~vec4<i32>(0i, 38293i, -2147483647i, -37106i), vec4<i32>(-u_input.b, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(47401u, 14u)], -57732i), _wgslsmith_dot_vec2_i32(vec2<i32>(9260i, u_input.b), vec2<i32>(u_input.b, u_input.b)), -1i), ~firstLeadingBit(vec4<i32>(-45075i, -2147483647i, 17500i, u_input.b)))));
}

