struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(39067i, 1i, 5398i, 17166i), Struct_3(Struct_1(vec2<f32>(-431f, 606f), 1i, vec4<bool>(true, false, true, true), 2147483647i, 2147483647i)), true, 89367u);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<f32>(-2567f, -1423f), -30809i), Struct_2(vec2<f32>(477f, 1000f), -1i), Struct_2(vec2<f32>(156f, 807f), 1i), Struct_2(vec2<f32>(-926f, 1742f), 2147483647i), Struct_2(vec2<f32>(-255f, 487f), -1i), Struct_2(vec2<f32>(360f, -106f), -1i), Struct_2(vec2<f32>(-172f, -117f), 29328i), Struct_2(vec2<f32>(-1000f, 1886f), -86022i), Struct_2(vec2<f32>(-346f, 3000f), -13291i), Struct_2(vec2<f32>(121f, 702f), 75745i), Struct_2(vec2<f32>(-380f, 1633f), 8622i), Struct_2(vec2<f32>(-1789f, -281f), 0i), Struct_2(vec2<f32>(-739f, 1526f), 15335i), Struct_2(vec2<f32>(-229f, -811f), 0i), Struct_2(vec2<f32>(-818f, 330f), 8378i), Struct_2(vec2<f32>(1000f, 1258f), 0i), Struct_2(vec2<f32>(-367f, -524f), 1i), Struct_2(vec2<f32>(-359f, 1718f), 12895i), Struct_2(vec2<f32>(-340f, 923f), 1i), Struct_2(vec2<f32>(1000f, 128f), -1i), Struct_2(vec2<f32>(1249f, 354f), -1i), Struct_2(vec2<f32>(207f, 2231f), 8162i), Struct_2(vec2<f32>(-106f, -612f), 1i), Struct_2(vec2<f32>(-188f, 1676f), 1i), Struct_2(vec2<f32>(625f, -250f), i32(-2147483648)), Struct_2(vec2<f32>(1000f, -1161f), 53490i), Struct_2(vec2<f32>(-390f, -179f), 1i), Struct_2(vec2<f32>(1108f, 619f), -18636i), Struct_2(vec2<f32>(-1845f, -811f), 0i), Struct_2(vec2<f32>(1415f, -705f), -16296i), Struct_2(vec2<f32>(434f, -140f), 8570i));

var<private> global2: bool;

var<private> global3: array<f32, 4> = array<f32, 4>(-1022f, 525f, -354f, -1546f);

var<private> global4: vec3<u32> = vec3<u32>(11788u, 4294967295u, 0u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global4 = ~(~min(_wgslsmith_mod_vec3_u32(~arg_0.zwx, u_input.c.wxz), u_input.c.zxx & _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, global0.d, 1u), u_input.c.zzz)));
    var var_0 = global0.c;
    global4 = arg_0.www;
    return arg_0.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_0.a, _wgslsmith_f_op_vec2_f32(select(global0.b.a.a, vec2<f32>(arg_2.a.a.x, -908f), vec2<bool>(arg_2.a.c.x, arg_2.a.c.x))), vec2<bool>(arg_2.a.c.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.b.a.a, vec2<f32>(global0.b.a.a.x, arg_2.a.a.x), arg_2.a.c.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-747f)), -372f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, global0.b.a.a.x))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a - arg_0.a)))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = select(min(~(~firstLeadingBit(17772u)), ~func_2(u_input.c & u_input.c)), global0.d, any(select(global0.b.a.c.zw, !(!global0.b.a.c.xx), false)));
    global3 = array<f32, 4>();
    global3 = array<f32, 4>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-737f + global0.b.a.a.x))) * global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 63u, u_input.c.x), 4u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, global0.b.a.a.x))) + _wgslsmith_f_op_vec2_f32(step(global0.b.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<f32>(-1211f, global0.b.a.a.x), arg_0.a.b), global0.a.xzy, global0.b)))))), 2147483647i, select(!vec4<bool>(true & arg_0.a.c.x, 1i >= arg_1.x, arg_2.x <= 10193i, false), select(vec4<bool>(true | global0.b.a.c.x, global0.b.a.a.x >= var_1, !arg_0.a.c.x, !arg_0.a.c.x), select(!global0.b.a.c, select(vec4<bool>(global0.b.a.c.x, true, global0.b.a.c.x, true), arg_0.a.c, vec4<bool>(arg_0.a.c.x, false, arg_0.a.c.x, false)), select(arg_0.a.c, arg_0.a.c, arg_0.a.c)), select(vec4<bool>(false, false, arg_0.a.c.x, arg_0.a.c.x), !vec4<bool>(global0.c, false, arg_0.a.c.x, arg_0.a.c.x), arg_0.a.c)), !select(!vec4<bool>(arg_0.a.c.x, global0.c, false, true), vec4<bool>(false, global0.b.a.c.x, true, true), select(vec4<bool>(global0.c, false, global0.b.a.c.x, true), arg_0.a.c, global0.b.a.c))), _wgslsmith_mult_i32(u_input.a.x, arg_1.x), _wgslsmith_mult_i32(arg_2.x, -global0.b.a.d));
    return _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f * var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(global0.b.a), select(u_input.b, vec3<i32>(-41135i, global0.a.x, 17757i), vec3<bool>(global0.b.a.c.x, global0.c, global0.c)), vec2<i32>(-1i, global0.b.a.d))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.d, 4u)]), _wgslsmith_f_op_f32(-global0.b.a.a.x)))), global0.b.a.a.x), -abs(firstTrailingBit(global0.b.a.d)) ^ -u_input.b.x);
    var var_1 = vec3<f32>(global3[_wgslsmith_index_u32(abs(abs(u_input.c.x)), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-308f)), -1240f)), -2352f);
    let var_2 = u_input.c.x;
    global4 = vec3<u32>(global0.d, global0.d, _wgslsmith_add_u32(u_input.c.x, 0u));
    var_0 = global1[_wgslsmith_index_u32(7916u, 31u)];
    global1 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(21373i, ~(-(~global0.a.xyy)), ~_wgslsmith_mult_u32(~(~11358u), 1u), vec4<u32>(func_2(~(~u_input.c)), 4841u, firstLeadingBit(_wgslsmith_add_u32(1u | global0.d, _wgslsmith_clamp_u32(26332u, 43469u, global0.d))), countOneBits(1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 1u, var_2, var_2), _wgslsmith_sub_vec4_u32(vec4<u32>(68481u, 74067u, var_2, 0u), vec4<u32>(var_2, 1u, global4.x, 25679u)))));
}

