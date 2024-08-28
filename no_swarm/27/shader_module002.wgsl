struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(0u, vec3<bool>(false, false, false), vec2<u32>(10480u, 42737u)), Struct_1(1u, vec3<bool>(true, false, true), vec2<u32>(1u, 7311u)), Struct_1(1u, vec3<bool>(true, true, true), vec2<u32>(0u, 4294967295u)), Struct_1(4294967295u, vec3<bool>(false, false, false), vec2<u32>(0u, 4294967295u)), Struct_1(30584u, vec3<bool>(false, true, true), vec2<u32>(4294967295u, 0u)), Struct_1(0u, vec3<bool>(true, false, false), vec2<u32>(60047u, 4294967295u)), Struct_1(42084u, vec3<bool>(true, true, false), vec2<u32>(33435u, 20742u)), Struct_1(103641u, vec3<bool>(false, true, true), vec2<u32>(4294967295u, 1u)), Struct_1(27270u, vec3<bool>(false, false, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(1u, vec3<bool>(false, false, true), vec2<u32>(98452u, 35306u)), Struct_1(0u, vec3<bool>(true, false, false), vec2<u32>(30155u, 0u)), Struct_1(4294967295u, vec3<bool>(false, false, true), vec2<u32>(1u, 4294967295u)), Struct_1(46758u, vec3<bool>(true, false, false), vec2<u32>(0u, 0u)), Struct_1(1u, vec3<bool>(true, true, false), vec2<u32>(30254u, 11013u)), Struct_1(18872u, vec3<bool>(false, false, true), vec2<u32>(3968u, 20200u)), Struct_1(4294967295u, vec3<bool>(true, true, true), vec2<u32>(4855u, 30263u)), Struct_1(0u, vec3<bool>(true, false, false), vec2<u32>(20246u, 10795u)), Struct_1(23205u, vec3<bool>(true, false, true), vec2<u32>(30934u, 41462u)), Struct_1(22002u, vec3<bool>(true, true, true), vec2<u32>(34015u, 31667u)), Struct_1(7046u, vec3<bool>(false, false, true), vec2<u32>(0u, 0u)), Struct_1(49227u, vec3<bool>(true, false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(4294967295u, vec3<bool>(true, false, false), vec2<u32>(1u, 1u)), Struct_1(49278u, vec3<bool>(false, true, true), vec2<u32>(1u, 0u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<u32>) -> vec2<u32> {
    global0 = array<bool, 27>();
    let var_0 = -u_input.a.x;
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_f_op_vec2_f32(arg_1.xz - arg_1.yy));
    let var_2 = Struct_2(Struct_1(firstLeadingBit(arg_3.x), vec3<bool>(global0[_wgslsmith_index_u32(~57659u, 27u)], (var_1.a.b.x || true) | !global0[_wgslsmith_index_u32(arg_3.x, 27u)], false), select(min(~arg_3.xx, vec2<u32>(arg_3.x, global1.x)), vec2<u32>(1u | global1.x, 90115u), all(!var_1.a.b.yx))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), 1953f))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.b.x);
    return vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 4294967295u), firstLeadingBit(min(vec2<u32>(arg_3.x, var_2.a.c.x), var_2.a.c))), ~var_2.a.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = array<bool, 27>();
    var var_0 = -u_input.a.x >= u_input.a.x;
    global2 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    global0 = array<bool, 27>();
    return arg_0.a.a;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    let var_0 = arg_0.b.x;
    let var_1 = all(!arg_0.b.zx);
    global1 = arg_0.c;
    let var_2 = arg_0.b;
    var var_3 = arg_0;
    return vec2<u32>(_wgslsmith_sub_u32(1u, func_4(Struct_2(global2[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1426f, -520f), vec2<f32>(-675f, -1384f), vec2<bool>(false, true)))), ~(var_3.c >> (vec2<u32>(22805u, arg_0.a) % vec2<u32>(32u))), Struct_1(_wgslsmith_add_u32(arg_0.c.x, 15863u), !vec3<bool>(var_2.x, true, var_1), func_3(arg_0.b.x, vec3<f32>(1288f, -1000f, 694f), true, vec4<u32>(global1.x, global1.x, var_3.c.x, 4294967295u))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(-897f))))), _wgslsmith_sub_u32(~4294967295u, ~(~(~global1.x))));
}

fn func_1() -> StorageBuffer {
    global1 = func_2(Struct_1(global1.x, select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(52572u, 27u)], global0[_wgslsmith_index_u32(global1.x, 27u)])), vec3<bool>(!global0[_wgslsmith_index_u32(global1.x, 27u)], false, global0[_wgslsmith_index_u32(global1.x | 45429u, 27u)]), false), ~abs(~vec2<u32>(0u, global1.x))), 63826i);
    global1 = min(~(~(~(~vec2<u32>(global1.x, 42119u)))), vec2<u32>(global1.x, ~1u));
    global0 = array<bool, 27>();
    global1 = select(~(~(~vec2<u32>(global1.x, global1.x))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(global1.x, global1.x)), func_2(Struct_1(global1.x, vec3<bool>(true, true, global0[_wgslsmith_index_u32(global1.x, 27u)]), vec2<u32>(15048u, global1.x)), -1i)), select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 27u)]), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<bool>(true, true)), true), vec2<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 27u)], global0[_wgslsmith_index_u32(5623u, 27u)])), u_input.a.x == 24850i), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(44410u, 27u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(79872u, 27u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(15273u, 27u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 27u)], false), true), select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(14987u, 27u)]), global0[_wgslsmith_index_u32(54708u, 27u)])))) | (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(global1.x, global1.x))) | firstTrailingBit(vec2<u32>(global1.x, 4294967295u) << (abs(vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u))));
    global1 = abs(vec2<u32>(33803u, min(firstLeadingBit(~global1.x), 4294967295u)));
    return StorageBuffer(_wgslsmith_add_u32(4294967295u, ~4294967295u), _wgslsmith_mod_vec4_u32(~(reverseBits(vec4<u32>(global1.x, global1.x, global1.x, 38511u)) & vec4<u32>(global1.x, global1.x, global1.x, 4294967295u)), ~max(vec4<u32>(44798u, global1.x, 57375u, 112645u), ~vec4<u32>(31018u, global1.x, 4294967295u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

