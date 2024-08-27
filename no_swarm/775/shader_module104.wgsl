struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 12>;

var<private> global2: array<u32, 22>;

var<private> global3: array<bool, 1>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_3(!select(!select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(true, arg_0.x, global3[_wgslsmith_index_u32(1u, 1u)], true)), !(!vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], 1u)], false, true, true)), !(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(29164u, 1u)], false))), !vec4<bool>(arg_0.x, !arg_0.x, any(!vec4<bool>(false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 1u)], global3[_wgslsmith_index_u32(9204u, 1u)], arg_0.x)), all(arg_0.xz)));
    var var_1 = Struct_1(!select(any(vec4<bool>(false, true, arg_0.x, var_0.b.x)), false, true), ~128699u, ~_wgslsmith_mod_u32(1u, 90293u));
    let var_2 = Struct_1(true && !select(true, var_0.a.x, var_1.a || false), max(0u, firstLeadingBit(select(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u), false))), max(1u, ~global1[_wgslsmith_index_u32(45268u, 12u)]));
    var var_3 = 0u;
    let var_4 = 1000f;
    return 56251u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = u_input.a.x;
    global2 = array<u32, 22>();
    global2 = array<u32, 22>();
    global2 = array<u32, 22>();
    global2 = array<u32, 22>();
    return Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(func_3(vec3<bool>(false, true, true)) ^ u_input.c.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, u_input.b.x, 0u), ~4294967295u), ~u_input.b.x, max(global2[_wgslsmith_index_u32(select(u_input.c.x, global2[_wgslsmith_index_u32(30117u, 22u)], true), 22u)], 0u))), 1u)], 54571u, 0u);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = func_2(~(firstLeadingBit(vec4<u32>(8882u, arg_3.x, 65195u, 4294967295u)) & (~vec4<u32>(2087u, 120059u, arg_3.x, global1[_wgslsmith_index_u32(1u, 12u)]) | vec4<u32>(global2[_wgslsmith_index_u32(24u, 22u)], 18546u, arg_3.x, 17184u))));
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(max(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.b), u_input.c.xz), 1u), _wgslsmith_sub_u32(0u & var_0.c, abs(var_0.b))), arg_3.x, firstLeadingBit(_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~32505u, 12u)], 12u)]))), _wgslsmith_mult_vec3_u32(u_input.c, _wgslsmith_add_vec3_u32(u_input.c, u_input.c)) | max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(15295u, 0u, global2[_wgslsmith_index_u32(var_0.b, 22u)]), select(vec3<u32>(18655u, var_0.c, 1801u), vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<bool>(false, true, arg_0)), u_input.c), countOneBits(vec3<u32>(arg_3.x, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], arg_3.x))));
    let var_2 = !var_0.a;
    var_0 = arg_2;
    global0 = !arg_2.a && true;
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    global0 = all(vec4<bool>(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(18642u, 12u)], 12u)] >= min(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49680u, 12u)], 12u)], 22u)], 12u)], 55362u), 60987u), any(select(select(vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 1u)], false, global3[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(true, false, false), false), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 1u)], false), select(arg_3.b.xzx, arg_3.a.zxw, arg_3.a.xxy))), arg_3.b.x, ~u_input.b.x != global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(42053u, _wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)])), 12u)]));
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, _wgslsmith_f_op_f32(1622f + 1487f), func_2(vec4<u32>(global2[_wgslsmith_index_u32(18439u, 22u)], u_input.c.x, global2[_wgslsmith_index_u32(3484u, 22u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -401f), arg_3.a.x && func_2(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(40273u, 12u)], 0u, 0u, u_input.c.x), vec4<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], 12u)], 22u)], 65724u))).a))));
    var var_1 = func_2(firstLeadingBit(vec4<u32>(~select(30476u, u_input.c.x, arg_3.b.x), reverseBits(~0u), ~global1[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.b.x)));
    global2 = array<u32, 22>();
    let var_2 = arg_3.b.yx;
    return _wgslsmith_f_op_f32(func_4(!(abs(u_input.b.x) <= u_input.b.x), -175f, func_2(~(~vec4<u32>(0u, 56581u, var_1.c, 1u))), u_input.c.yy));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: bool) -> Struct_3 {
    global2 = array<u32, 22>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-863f, arg_2, arg_2, 554f), vec4<f32>(arg_2, -207f, -1108f, 805f))), vec4<f32>(arg_2, arg_2, arg_2, arg_2))), vec4<f32>(_wgslsmith_f_op_f32(floor(-764f)), -364f, _wgslsmith_f_op_f32(arg_2 - -125f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.a.x, u_input.a, u_input.a.x, Struct_3(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68870u, 12u)], 22u)], 1u)], global3[_wgslsmith_index_u32(arg_0, 1u)], false)))), arg_2, _wgslsmith_div_f32(1000f, arg_2), _wgslsmith_f_op_f32(-arg_2))), min(_wgslsmith_mod_u32(0u, 28437u), 4294967295u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)]) > 16570u)));
    var var_1 = arg_1.zz;
    let var_2 = var_0.a.wx;
    let var_3 = select(vec4<bool>(any(arg_1.yz), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 12u)], 1u)], !any(!vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], 1u)], arg_3, false)), true), vec4<bool>(select(var_1.x, arg_1.x, !all(vec3<bool>(arg_3, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 1u)], global3[_wgslsmith_index_u32(arg_0, 1u)]))), false, var_0.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-496f + -1026f) - _wgslsmith_f_op_f32(func_1(0i, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, Struct_3(vec4<bool>(arg_1.x, global3[_wgslsmith_index_u32(4866u, 1u)], false, global3[_wgslsmith_index_u32(14451u, 1u)]), vec4<bool>(false, arg_1.x, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 1u)]))))), !arg_3), !(4294967295u > _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 106486u), 74005u)));
    return Struct_3(select(!vec4<bool>(true, false, any(vec2<bool>(true, var_1.x)), select(false, false, var_3.x)), !var_3, select(var_3, var_3, !(!vec4<bool>(true, arg_3, arg_1.x, true)))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec4<bool>(true, !((true && global3[_wgslsmith_index_u32(4856u, 1u)]) & true), global3[_wgslsmith_index_u32(~25430u, 1u)], true));
    var var_0 = func_5(_wgslsmith_dot_vec3_u32(firstTrailingBit(abs(u_input.c)) >> (vec3<u32>(~u_input.c.x, ~12015u, ~0u) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(u_input.c, abs(u_input.c))), !(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<i32>(u_input.a.x, -12062i, -12512i, 3031i), u_input.a.x, Struct_3(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 1u)], true, global3[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<bool>(global3[_wgslsmith_index_u32(50615u, 1u)], global3[_wgslsmith_index_u32(1u, 1u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 1u)])))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1738f))))), func_2(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(23471u, global2[_wgslsmith_index_u32(54890u, 22u)]), ~u_input.c.yx), _wgslsmith_dot_vec4_u32(vec4<u32>(76041u, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 22u)], 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec4<u32>(u_input.b.x, 20452u, 88323u, u_input.b.x)) | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, u_input.c.x)), 22u)], 22u)], 0u, ~func_3(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 1u)], true)))).a);
    var var_1 = func_2(_wgslsmith_mod_vec4_u32(reverseBits(~max(vec4<u32>(global2[_wgslsmith_index_u32(1u, 22u)], u_input.c.x, 4983u, u_input.b.x), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.b.x, u_input.c.x))), ~vec4<u32>(~1u, u_input.b.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 12u)], 22u)], 12u)] | 56350u, 1u & u_input.b.x)));
    let var_2 = !func_5(firstLeadingBit(0u), select(var_0.a.zzy, var_0.b.yxw, var_0.b.xzy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-615f, _wgslsmith_f_op_f32(-141f + -1017f))), _wgslsmith_f_op_f32(sign(-784f))), func_5(1u, vec3<bool>(var_0.a.x, global3[_wgslsmith_index_u32(u_input.c.x, 1u)], !var_0.b.x), _wgslsmith_div_f32(2010f, _wgslsmith_f_op_f32(464f + 1716f)), false).a.x).b.yz;
    var var_3 = ~(~reverseBits(vec4<u32>(u_input.c.x, 1u, global1[_wgslsmith_index_u32(0u, 12u)], ~4294967295u)));
    var var_4 = func_5(~global2[_wgslsmith_index_u32(~1u, 22u)], !vec3<bool>(true, !var_1.a, false), _wgslsmith_div_f32(353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1782f - 1234f)))), true);
    var var_5 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(268f, 963f, -703f, -378f) * vec4<f32>(255f, 943f, -2200f, -387f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-391f, -142f, -343f, 1745f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2145f, 1054f, -155f, 355f))))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1088f, 1554f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1651f * 309f))), 903f, _wgslsmith_f_op_f32(ceil(-257f)))));
    var_0 = func_5(var_3.x, vec3<bool>(false, var_4.a.x, firstLeadingBit(-u_input.a.x) > _wgslsmith_dot_vec2_i32(countOneBits(u_input.a.yw), vec2<i32>(-50400i, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(350f, -979f)), _wgslsmith_div_f32(-529f, 458f)))), var_4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1473f, _wgslsmith_f_op_f32(abs(-398f))), u_input.a.xz);
}

