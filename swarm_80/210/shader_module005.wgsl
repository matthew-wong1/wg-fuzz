struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<i32, 26> = array<i32, 26>(-48189i, -33454i, -1i, -5953i, i32(-2147483648), 7940i, -23823i, 2147483647i, 37961i, -1i, -6514i, 2147483647i, 71356i, -44686i, 32921i, -17954i, 2147483647i, 16334i, 1i, 41120i, i32(-2147483648), 2147483647i, i32(-2147483648), 7210i, 17034i, 38511i);

var<private> global2: array<Struct_2, 11>;

var<private> global3: vec2<bool>;

var<private> global4: array<f32, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> vec2<bool> {
    global0 = array<bool, 28>();
    return arg_2.c.b.yx;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    global0 = array<bool, 28>();
    global2 = array<Struct_2, 11>();
    global2 = array<Struct_2, 11>();
    global2 = array<Struct_2, 11>();
    global0 = array<bool, 28>();
    return reverseBits(~21472u >> (1u % 32u));
}

fn func_1(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(~12783u, firstLeadingBit(4294967295u)));
    global3 = !(!arg_0.ww);
    global3 = select(select(arg_0.yz, select(!arg_0.yx, !select(arg_0.wx, arg_0.yz, false), true), func_2(1u, 46033u, Struct_4(Struct_1(global3.x, global4[_wgslsmith_index_u32(74614u, 22u)]), _wgslsmith_div_vec2_i32(vec2<i32>(-13049i, 0i), u_input.a.xx), Struct_2(404f, arg_0.zyy, 50954u, true)))), arg_0.xw, !arg_0.yz);
    var var_1 = vec3<bool>(any(arg_0.yx), !(global0[_wgslsmith_index_u32(0u, 28u)] | all(vec2<bool>(global3.x, arg_0.x))), false);
    var var_2 = func_3(global4[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1101f, -1046f, global4[_wgslsmith_index_u32(4294967295u, 22u)], global4[_wgslsmith_index_u32(4294967295u, 22u)])) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4[_wgslsmith_index_u32(2692u, 22u)], 1000f, 110f, 505f), vec4<f32>(2592f, 161f, global4[_wgslsmith_index_u32(111057u, 22u)], 1342f)))) - vec4<f32>(1529f, 1000f, -1314f, -332f))) & _wgslsmith_div_u32(countOneBits(~countOneBits(4294967295u)), max(6079u, func_3(512f, vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 22u)], global4[_wgslsmith_index_u32(0u, 22u)], -430f, -133f))) | min(func_3(-406f, vec4<f32>(-1542f, global4[_wgslsmith_index_u32(1u, 22u)], global4[_wgslsmith_index_u32(57807u, 22u)], global4[_wgslsmith_index_u32(81352u, 22u)])), ~0u));
    return select(!select(!arg_0.yy, arg_0.yw, vec2<bool>(true, all(arg_0.yzw))), arg_0.wx, !all(arg_0.wxw));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 22>();
    global3 = select(vec2<bool>(all(select(select(vec4<bool>(false, true, false, global3.x), vec4<bool>(global0[_wgslsmith_index_u32(39951u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], false, false), false), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(99157u, 28u)], global0[_wgslsmith_index_u32(95414u, 28u)], true), global3.x && global0[_wgslsmith_index_u32(51153u, 28u)])), false), func_1(select(select(select(vec4<bool>(global3.x, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(5694u, 28u)], false, global0[_wgslsmith_index_u32(1u, 28u)], global3.x)), select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global0[_wgslsmith_index_u32(35150u, 28u)], global3.x, global3.x, true)), select(vec4<bool>(false, true, false, global3.x), vec4<bool>(global0[_wgslsmith_index_u32(4716u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], false, true), vec4<bool>(false, global3.x, global0[_wgslsmith_index_u32(22343u, 28u)], global3.x))), vec4<bool>(all(vec4<bool>(false, global3.x, global0[_wgslsmith_index_u32(19577u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)])), global0[_wgslsmith_index_u32(abs(7826u), 28u)], all(vec4<bool>(false, true, false, false)), true), true || any(vec3<bool>(true, global3.x, false)))), !global0[_wgslsmith_index_u32(4294967295u, 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-800f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 22u)])) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(1u, 22u)], global4[_wgslsmith_index_u32(41780u, 22u)]))), 521f), vec2<u32>(min(abs(1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)), ~firstTrailingBit(60459u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(4294967295u, 1619u, 0u)))));
}

