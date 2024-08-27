struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<u32, 14> = array<u32, 14>(44167u, 4294967295u, 4294967295u, 0u, 1u, 82759u, 4294967295u, 4294967295u, 55505u, 4294967295u, 15367u, 4294967295u, 50726u, 4294967295u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    global0 = array<bool, 5>();
    let var_0 = u_input.a.x;
    global1 = array<u32, 14>();
    let var_1 = Struct_2(vec3<i32>(~_wgslsmith_mod_i32(abs(1i), ~u_input.b.x), arg_0.c.x, arg_0.c.x));
    var var_2 = var_1;
    return -2147483647i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_3) -> bool {
    global1 = array<u32, 14>();
    let var_0 = arg_3;
    var var_1 = func_3(arg_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2137f, -321f, arg_0.x, 208f) - vec4<f32>(arg_0.x, arg_0.x, -950f, 189f)) - vec4<f32>(arg_0.x, 1760f, arg_0.x, arg_0.x)) * vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(-1298f)), arg_0.x, arg_0.x)), arg_3) | 1i;
    let var_2 = select(!(!arg_3.a), select(select(vec3<bool>(all(vec2<bool>(false, true)), var_0.d.a && arg_3.a.x, true), arg_3.a, !vec3<bool>(var_0.a.x, arg_3.d.a, true)), select(select(!arg_3.a, select(vec3<bool>(false, arg_3.a.x, true), arg_3.a, arg_3.a.x), !vec3<bool>(var_0.d.a, global0[_wgslsmith_index_u32(0u, 5u)], true)), !(!arg_3.a), select(var_0.a, !arg_3.a, true)), arg_3.d.a || true), arg_3.a);
    var var_3 = vec2<i32>(func_3(var_0, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 994f, -1537f, -396f))))), var_0), abs(-37730i));
    return !var_2.x;
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b.x;
    var var_1 = !select(select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 5u)], true, global0[_wgslsmith_index_u32(16672u, 5u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12346u, 14u)], 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 5u)], false), false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43910u, 14u)], 14u)], 14u)], 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(14227u, 5u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(8786u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(11524u, 5u)]))), vec4<bool>(func_2(vec3<f32>(1101f, 1625f, -475f), u_input.b.yy, -1i, Struct_3(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec2<u32>(u_input.a.x, 1u), vec3<i32>(u_input.b.x, var_0, var_0), Struct_1(false))), all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 5u)], false, true)), all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(105273u, 14u)], 5u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), true), true), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2168u, 14u)], 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, true, false), false), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(84543u, 5u)], true), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(39716u, 5u)], true), vec4<bool>(true, true, false, true), global0[_wgslsmith_index_u32(1u, 5u)])), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 5u)], true)), true), false), any(select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60825u, 14u)], 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 5u)], global0[_wgslsmith_index_u32(24889u, 5u)], false), all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(49137u, 5u)])))));
    var var_2 = Struct_3(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], var_1.x, var_1.x | !global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), var_1.zxx, var_1.zzy), ~vec2<u32>((21665u << (u_input.a.x % 32u)) ^ (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22940u, 14u)], 14u)], 14u)], 14u)] << (global1[_wgslsmith_index_u32(0u, 14u)] % 32u)), 0u), u_input.b.wxy, Struct_1(firstTrailingBit(var_0) == -68116i));
    global0 = array<bool, 5>();
    let var_3 = vec2<i32>(-76508i, var_0);
    return Struct_2(reverseBits(-countOneBits(var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~(min(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 1u), _wgslsmith_sub_u32(u_input.a.x, 85357u)) << (firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 26811u)) % 32u)) == _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, u_input.c), ~vec3<u32>(21332u, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 57323u)), ~(u_input.c | vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)], 63615u, u_input.a.x))), select(~_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50944u, 14u)], 14u)], 1u, u_input.a.x), vec3<u32>(global1[_wgslsmith_index_u32(1u, 14u)], 52789u, 75988u)), vec3<u32>(u_input.a.x, 1u, 25131u), select(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(34469u, 5u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 5u)]), select(vec3<bool>(false, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(35963u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 5u)])))));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)], global1[_wgslsmith_index_u32(~countOneBits(1u >> (global1[_wgslsmith_index_u32(u_input.c.x, 14u)] % 32u)), 14u)], u_input.c.x >> (global1[_wgslsmith_index_u32(u_input.a.x, 14u)] % 32u)), vec3<u32>(22148u, global1[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u));
    global0 = array<bool, 5>();
    let var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(-u_input.b.x) | abs(var_0.a.x), -70664i, all(vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(6739u, 5u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), var_1))));
}

