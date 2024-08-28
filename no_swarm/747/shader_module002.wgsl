struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 14>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 32> = array<bool, 32>(false, true, true, false, true, true, false, true, false, false, true, true, true, true, true, true, false, true, true, true, false, false, false, true, false, false, false, true, false, false, false, false);

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(-1i), vec4<f32>(886f, 2533f, -1477f, -1000f)), Struct_2(Struct_1(-9410i), vec4<f32>(513f, 816f, 1461f, 1035f)), Struct_2(Struct_1(1i), vec4<f32>(320f, 1651f, 810f, 1215f)), Struct_2(Struct_1(2557i), vec4<f32>(-871f, 1177f, 1849f, -830f)), Struct_2(Struct_1(0i), vec4<f32>(-1000f, -2264f, -655f, -1000f)), Struct_2(Struct_1(14297i), vec4<f32>(1000f, -576f, -1000f, -814f)), Struct_2(Struct_1(80890i), vec4<f32>(234f, 702f, -869f, -752f)), Struct_2(Struct_1(2147483647i), vec4<f32>(1000f, 251f, -1125f, 358f)), Struct_2(Struct_1(11676i), vec4<f32>(199f, 405f, -620f, -101f)), Struct_2(Struct_1(35716i), vec4<f32>(-268f, 1797f, -720f, -344f)), Struct_2(Struct_1(1i), vec4<f32>(-823f, 139f, 379f, 1000f)), Struct_2(Struct_1(-1i), vec4<f32>(-202f, 592f, -678f, 1037f)), Struct_2(Struct_1(4933i), vec4<f32>(659f, -417f, 1000f, 270f)), Struct_2(Struct_1(0i), vec4<f32>(-1082f, -1247f, 1449f, 557f)), Struct_2(Struct_1(-58288i), vec4<f32>(1000f, 378f, -1081f, 1029f)), Struct_2(Struct_1(2147483647i), vec4<f32>(1112f, 171f, -301f, 322f)), Struct_2(Struct_1(44337i), vec4<f32>(-394f, 887f, 2095f, 365f)), Struct_2(Struct_1(0i), vec4<f32>(-717f, 1000f, 1010f, 453f)), Struct_2(Struct_1(i32(-2147483648)), vec4<f32>(-819f, -889f, 1026f, 1098f)), Struct_2(Struct_1(8604i), vec4<f32>(-2149f, 943f, 890f, -1409f)), Struct_2(Struct_1(30615i), vec4<f32>(-965f, -651f, -1902f, -1860f)), Struct_2(Struct_1(20424i), vec4<f32>(-852f, -959f, -1699f, 1000f)), Struct_2(Struct_1(-84796i), vec4<f32>(-747f, 353f, -100f, -264f)), Struct_2(Struct_1(34979i), vec4<f32>(-1000f, 1188f, -1573f, 1048f)), Struct_2(Struct_1(-1i), vec4<f32>(-816f, 2044f, 195f, -807f)), Struct_2(Struct_1(42951i), vec4<f32>(487f, -688f, 975f, -1188f)), Struct_2(Struct_1(0i), vec4<f32>(-2050f, 673f, 540f, -1117f)), Struct_2(Struct_1(-1i), vec4<f32>(873f, 1611f, 1000f, -229f)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> bool {
    return false && global3[_wgslsmith_index_u32(max(1531u, reverseBits(_wgslsmith_clamp_u32(reverseBits(u_input.b), u_input.e.x, 1u))), 32u)];
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_1 {
    global1 = array<u32, 14>();
    let var_0 = !vec4<bool>(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(45904u, 14u)], 14u)], 14u)] < 1u, true, true && all(vec2<bool>(true, arg_0))), true, any(select(vec4<bool>(arg_1, global3[_wgslsmith_index_u32(u_input.a, 32u)], true, arg_0), !vec4<bool>(arg_1, false, arg_0, false), !vec4<bool>(true, arg_1, global3[_wgslsmith_index_u32(59782u, 32u)], arg_0))), global3[_wgslsmith_index_u32(4294967295u, 32u)]);
    var var_1 = min(select(max(1u, 24166u), 2953u, true), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~abs(u_input.b), 14u)], _wgslsmith_dot_vec2_u32(u_input.e.wx, u_input.e.wx | u_input.e.wx), 4294967295u & _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(65473u, 14u)], 0u)), global1[_wgslsmith_index_u32(u_input.a, 14u)]));
    global1 = array<u32, 14>();
    var var_2 = global4[_wgslsmith_index_u32(max(~0u, ~(~u_input.b)), 28u)];
    return Struct_1(-11024i);
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec2<i32>(-global2.a.a, -33912i);
    let var_1 = global4[_wgslsmith_index_u32(~(~(~select(u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(51824u, u_input.b, global1[_wgslsmith_index_u32(u_input.e.x, 14u)]), vec3<u32>(u_input.b, 4294967295u, u_input.e.x)), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4575u, 14u)] | 12821u, 32u)]))), 28u)];
    global2 = Struct_2(func_3(select(false, true, true), func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1050f, global2.b.x, global2.b.x)), _wgslsmith_f_op_vec3_f32(-global2.b.xyz))), u_input.e.xy, ~(~47966u), var_1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(598f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(512f)), _wgslsmith_f_op_f32(287f * var_1.b.x), _wgslsmith_f_op_f32(ceil(var_1.b.x)), _wgslsmith_f_op_f32(-969f + -1139f)))));
    let var_2 = _wgslsmith_add_u32(~u_input.b, ~((abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)]) >> (global1[_wgslsmith_index_u32(~0u, 14u)] % 32u)) << (~4838u % 32u)));
    global4 = array<Struct_2, 28>();
    return Struct_1(9943i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 28>();
    var var_0 = u_input.d;
    global3 = array<bool, 32>();
    global2 = Struct_2(func_1(), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), -607f, _wgslsmith_f_op_f32(f32(-1f) * -105f), global2.b.x) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x) + vec4<f32>(-487f, -1199f, 266f, 1526f))))))));
    var var_1 = func_3(all(select(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 32u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39117u, 14u)], 32u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 32u)]), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19984u, 14u)], 32u)], global3[_wgslsmith_index_u32(9591u, 32u)], true, true), false), vec4<bool>(true, true, true, true), false)), all(select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 32u)], false, global3[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 32u)], false, global3[_wgslsmith_index_u32(65698u, 32u)]), global3[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(global3[_wgslsmith_index_u32(36508u, 32u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 32u)], false), false), vec3<bool>(true, true, global3[_wgslsmith_index_u32(~4294967295u, 32u)]), true)), global2.b.x);
    let var_2 = all(!(!(!(!vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 32u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(global1[_wgslsmith_index_u32(abs(45133u), 14u)], 4294967295u & u_input.a, 1u)), _wgslsmith_f_op_f32(select(global2.b.x, global2.b.x, -557f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, -1529f)))), vec2<f32>(global2.b.x, -511f), (_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -7279i, var_0.x), vec4<i32>(-1i, global2.a.a, var_1.a, 1i)), 2147483647i ^ global2.a.a) << (~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 14u)], 14u)]) % 32u)) >> ((global1[_wgslsmith_index_u32(39712u, 14u)] ^ ~29323u) % 32u), global2.b);
}

