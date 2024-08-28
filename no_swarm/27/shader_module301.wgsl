struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, true, true, false, true, false, false);

var<private> global1: array<u32, 8>;

var<private> global2: Struct_1 = Struct_1(4294967295u);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1u), Struct_1(39846u), Struct_1(37137u), Struct_1(4294967295u), Struct_1(42961u), Struct_1(1u), Struct_1(29839u), Struct_1(46453u), Struct_1(15325u), Struct_1(4294967295u), Struct_1(0u), Struct_1(78296u), Struct_1(111498u), Struct_1(1u), Struct_1(1u), Struct_1(21695u), Struct_1(0u), Struct_1(59575u), Struct_1(22398u), Struct_1(32397u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(11878u));

var<private> global4: vec4<u32> = vec4<u32>(63527u, 84954u, 2279u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> vec2<bool> {
    return select(!vec2<bool>(global0[_wgslsmith_index_u32(~global4.x, 7u)], any(vec4<bool>(true, global0[_wgslsmith_index_u32(16516u, 7u)], global0[_wgslsmith_index_u32(global4.x, 7u)], true))), !vec2<bool>(_wgslsmith_add_u32(100323u, global4.x) >= 47603u, false), ~_wgslsmith_mod_i32(u_input.a, -2147483647i) <= -35277i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-968f, -1000f), vec2<f32>(985f, -354f), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a, 7u)], false))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1561f, 301f), vec2<f32>(-1411f, 1132f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, -741f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1116f, -1000f) + vec2<f32>(209f, -1569f))))));
    let var_1 = u_input.a;
    var var_2 = global3[_wgslsmith_index_u32(40941u, 25u)];
    var var_3 = var_1;
    global2 = Struct_1(~global4.x);
    return !select(!select(vec2<bool>(true, false), select(vec2<bool>(global0[_wgslsmith_index_u32(85640u, 7u)], true), vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a, 7u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(global2.a, 7u)])), select(vec2<bool>(true, global0[_wgslsmith_index_u32(2717u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(global2.a, 7u)], false), vec2<bool>(global0[_wgslsmith_index_u32(35402u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]))), select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(765u, 8u)], 7u)])), select(func_2(), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false), vec2<bool>(global0[_wgslsmith_index_u32(global4.x, 7u)], false)), true), !all(vec2<bool>(true, true)));
}

fn func_1() -> u32 {
    var var_0 = select(!select(vec2<bool>(true, true), func_2(), !select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(global4.x, 7u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(global4.x, 7u)]))), vec2<bool>(false, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4.wxz, vec3<u32>(0u, 31499u, global4.x)) & (global4.x & 4294967295u), 7u)]), any(vec3<bool>(true, true, any(vec2<bool>(true, true)))));
    let var_1 = 2147483647i;
    global0 = array<bool, 7>();
    var_0 = select(vec2<bool>(all(!func_2()), var_0.x), !(!vec2<bool>(all(vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(global4.x, 7u)], true)), var_0.x)), select(func_3(Struct_1(1u), Struct_1(select(1u, 1u, false)), Struct_1(_wgslsmith_div_u32(4294967295u, 4294967295u))), !vec2<bool>(true, var_0.x), func_2()));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(round(863f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1044f))) * -975f), 1000f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-379f, -200f, 952f, 617f) - vec4<f32>(359f, 1000f, 662f, -407f)))))), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, false, global0[_wgslsmith_index_u32(global2.a, 7u)]), vec4<bool>(any(vec3<bool>(false, false, var_0.x)), any(vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 7u)], true, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)])), true, true), !vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 8u)], 8u)], 7u)], true)), vec4<bool>(any(!vec2<bool>(var_0.x, true)), func_3(Struct_1(global4.x), global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 25u)]).x & var_0.x, global0[_wgslsmith_index_u32(~(~global4.x), 7u)], var_0.x), select(!select(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 7u)], var_0.x, global0[_wgslsmith_index_u32(global4.x, 7u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(global2.a, 7u)], var_0.x, false), false), !vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 7u)], false, false, true), true))));
    return min(global1[_wgslsmith_index_u32(64475u, 8u)], 1u << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3[_wgslsmith_index_u32(1u, 25u)];
    global1 = array<u32, 8>();
    global2 = Struct_1(0u);
    var var_0 = select(select(vec3<bool>(global0[_wgslsmith_index_u32(~1u, 7u)], any(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(91550u, 7u)]), global0[_wgslsmith_index_u32(global2.a, 7u)])), global0[_wgslsmith_index_u32(firstTrailingBit(63333u), 7u)]), vec3<bool>(!global0[_wgslsmith_index_u32(func_1(), 7u)], _wgslsmith_f_op_f32(round(598f)) != -360f, !(false && global0[_wgslsmith_index_u32(global2.a, 7u)])), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false)), vec3<bool>((reverseBits(global1[_wgslsmith_index_u32(global4.x, 8u)]) & ~global2.a) > ~(~42187u), true, func_1() <= global2.a), func_2().x);
    global3 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~54085u, global2.a), 1000f, reverseBits(~(~global2.a) << (0u % 32u)));
}

