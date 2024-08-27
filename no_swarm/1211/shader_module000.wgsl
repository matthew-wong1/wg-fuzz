struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(4294967295u, 1u), vec2<u32>(53282u, 13343u), vec2<u32>(8512u, 12214u), vec2<u32>(31416u, 1u), vec2<u32>(7734u, 34267u), vec2<u32>(4294967295u, 13654u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 14418u), vec2<u32>(1u, 26737u), vec2<u32>(35578u, 1u), vec2<u32>(49483u, 36309u), vec2<u32>(4294967295u, 30111u), vec2<u32>(33742u, 51682u), vec2<u32>(7323u, 87262u), vec2<u32>(1u, 1u), vec2<u32>(1u, 12095u), vec2<u32>(26616u, 35121u), vec2<u32>(11962u, 1u), vec2<u32>(2473u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 69294u));

var<private> global2: array<bool, 4> = array<bool, 4>(true, false, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(select(~global1[_wgslsmith_index_u32(~4294967295u, 22u)], global1[_wgslsmith_index_u32(6114u, 22u)], select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(43734u, 4u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], true)))), firstTrailingBit(~(~vec2<u32>(32296u, 1u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-179f - 326f) + _wgslsmith_f_op_f32(min(763f, -622f))) + _wgslsmith_f_op_f32(min(-464f, _wgslsmith_f_op_f32(abs(-1266f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1689f + 349f)))), ~(firstLeadingBit(-2881i) << (~_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u)));
    var var_1 = global0[_wgslsmith_index_u32(46751u, 27u)];
    let var_2 = 29791u;
    var var_3 = ((((vec3<u32>(1339u, var_0.a.x, 4294967295u) >> (vec3<u32>(4294967295u, 0u, 15110u) % vec3<u32>(32u))) ^ ~vec3<u32>(var_2, var_1.a.a.x, u_input.a)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_2, var_0.a.x, var_1.a.a.x) << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u)), min(vec3<u32>(var_2, u_input.a, var_2), vec3<u32>(0u, var_2, 78236u))) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u, 4294967295u, var_1.a.a.x)), ~(~vec3<u32>(1u, u_input.a, var_2))) % vec3<u32>(32u))) << (abs(~vec3<u32>(_wgslsmith_sub_u32(8195u, var_0.a.x), 1u, var_1.c.a.x)) % vec3<u32>(32u));
    var var_4 = all(select(!select(!vec2<bool>(global2[_wgslsmith_index_u32(var_3.x, 4u)], true), select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, false), true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)])), vec2<bool>(!(true && global2[_wgslsmith_index_u32(var_0.a.x, 4u)]), true), true));
    return abs(vec2<u32>(~(~1u), var_3.x));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global2 = array<bool, 4>();
    global0 = array<Struct_2, 27>();
    var var_0 = Struct_1(~func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -476f), 479f))))), ~abs(2147483647i) ^ (abs(-41121i) >> ((u_input.a & max(u_input.a, u_input.a)) % 32u)));
    global0 = array<Struct_2, 27>();
    global2 = array<bool, 4>();
    return Struct_1(vec2<u32>(func_3().x, select(_wgslsmith_mod_u32(~4294967295u, u_input.a), 27785u, global2[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 4u)] && all(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(73355u, 4u)], false)))), _wgslsmith_f_op_f32(171f - _wgslsmith_f_op_f32(abs(1197f))), -7846i);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<f32>(412f, _wgslsmith_f_op_f32(-arg_1));
    let var_1 = var_0.x;
    return func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_0.x - arg_1)), -1008f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2220f - var_0.x))), _wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 4>();
    var var_0 = Struct_2(func_1(!vec2<bool>(true, !global2[_wgslsmith_index_u32(1u, 4u)]), 1000f), true, func_1(!(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 4u)], true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 4u)]), -1000f).b))));
    var var_1 = select(select(select(vec4<bool>(!global2[_wgslsmith_index_u32(1u, 4u)], !global2[_wgslsmith_index_u32(var_0.c.a.x, 4u)], global2[_wgslsmith_index_u32(~0u, 4u)], true), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(21053u, 4u)], global2[_wgslsmith_index_u32(var_0.a.a.x, 4u)], var_0.b), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.a.x, 4u)], true, var_0.b, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], true), vec4<bool>(var_0.b, var_0.b, global2[_wgslsmith_index_u32(27996u, 4u)], global2[_wgslsmith_index_u32(var_0.c.a.x, 4u)])), all(vec3<bool>(true, var_0.b, global2[_wgslsmith_index_u32(var_0.c.a.x, 4u)]))), true), vec4<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.a.a.x), var_0.c.a), 4u)], all(vec4<bool>(false, var_0.b, var_0.b, global2[_wgslsmith_index_u32(u_input.a, 4u)])), any(select(vec4<bool>(false, false, true, var_0.b), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 4u)], true, global2[_wgslsmith_index_u32(var_0.a.a.x, 4u)]), var_0.b)), !all(vec2<bool>(true, var_0.b))), vec4<bool>(select(u_input.a == u_input.a, var_0.b, var_0.b), all(!vec3<bool>(var_0.b, var_0.b, global2[_wgslsmith_index_u32(var_0.a.a.x, 4u)])), global2[_wgslsmith_index_u32(u_input.a, 4u)], true)), !(!vec4<bool>(!var_0.b, all(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.a.a.x, 4u)])), false != var_0.b, global2[_wgslsmith_index_u32(~var_0.c.a.x, 4u)])), true);
    let var_2 = _wgslsmith_mod_vec3_u32(~(~min(~vec3<u32>(35461u, 4294967295u, var_0.c.a.x), ~vec3<u32>(u_input.a, 4294967295u, 27609u))), _wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(var_0.c.a.x, u_input.a, 59203u) << (vec3<u32>(12649u, 37567u, 0u) % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, var_0.c.a.x, u_input.a), vec3<u32>(4294967295u, var_0.c.a.x, var_0.a.a.x), var_1.zwz), vec3<u32>(0u, var_0.c.a.x, var_0.a.a.x) ^ vec3<u32>(var_0.a.a.x, var_0.c.a.x, var_0.c.a.x))));
    let var_3 = 32895u;
    var var_4 = var_0.a.c;
    var_0 = global0[_wgslsmith_index_u32(var_2.x, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-909f - 1202f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.b, var_0.a.b) + _wgslsmith_f_op_f32(-1424f * var_0.c.b)))), ~(~firstLeadingBit(vec4<u32>(var_0.c.a.x, 53837u, 94575u, u_input.a) << (vec4<u32>(var_3, var_3, 4294967295u, var_0.c.a.x) % vec4<u32>(32u)))));
}

