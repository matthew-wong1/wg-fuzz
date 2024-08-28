struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true));

var<private> global2: array<u32, 5> = array<u32, 5>(0u, 32792u, 0u, 84394u, 0u);

var<private> global3: array<Struct_1, 23>;

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec3<u32>(1u, 1u, 28077u), true), Struct_3(vec3<u32>(0u, 4294967295u, 56043u), false), Struct_3(vec3<u32>(23428u, 4294967295u, 0u), true), Struct_3(vec3<u32>(0u, 0u, 4294967295u), true), Struct_3(vec3<u32>(4476u, 1u, 40026u), true), Struct_3(vec3<u32>(1u, 82781u, 0u), false), Struct_3(vec3<u32>(76660u, 0u, 0u), false), Struct_3(vec3<u32>(3154u, 4294967295u, 1995u), false), Struct_3(vec3<u32>(19885u, 4294967295u, 24266u), true), Struct_3(vec3<u32>(71648u, 1061u, 4294967295u), true), Struct_3(vec3<u32>(1u, 69017u, 0u), true), Struct_3(vec3<u32>(1u, 52685u, 71760u), true), Struct_3(vec3<u32>(3374u, 1u, 113140u), true), Struct_3(vec3<u32>(4294967295u, 16792u, 1u), false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = 19517i;
    let var_1 = select(vec4<bool>(arg_2.a.x, arg_2.a.x, any(vec4<bool>(true, false, false, false)) || false, true), select(vec4<bool>(all(vec2<bool>(true, false)) && (global1.a.x && false), arg_2.a.x, arg_1.a.x, !arg_2.a.x), !vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0.x | all(select(global1.a, arg_1.a, arg_0.x))), arg_1.a.x);
    global3 = array<Struct_1, 23>();
    let var_2 = global4[_wgslsmith_index_u32(~((_wgslsmith_sub_u32(4294967295u, u_input.c.x) ^ ~u_input.a) | max(_wgslsmith_clamp_u32(36722u, 1159u, 4294967295u), ~u_input.c.x)) >> ((reverseBits(0u) << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9938u, 5u)], 5u)] % 32u)) % 32u), 14u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1417f), _wgslsmith_f_op_f32(-544f - -546f))))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_3 {
    global1 = Struct_1(!vec3<bool>(global1.a.x, true, true));
    var var_0 = global1.a.zx;
    let var_1 = Struct_1(select(global1.a, vec3<bool>(false, true, !var_0.x), true));
    var var_2 = Struct_2(-53753i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1f, 1228f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -749f)), -1902f)), ~abs(firstLeadingBit(vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(232f, -1925f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1.a.zx, Struct_1(global1.a), var_1)), _wgslsmith_f_op_f32(floor(-942f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-3356f, -233f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-640f, -2222f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(min(-259f, 257f)), -452f, 508f)))), ~((vec4<i32>(-1i) * -vec4<i32>(-52241i, -49468i, -2147483647i, 1i)) >> (vec4<u32>(arg_1.x, _wgslsmith_sub_u32(arg_1.x, u_input.a), u_input.b, ~23742u) % vec4<u32>(32u))));
    var var_3 = select(vec3<bool>(any(select(!vec4<bool>(var_1.a.x, global1.a.x, global1.a.x, false), !vec4<bool>(false, true, global1.a.x, var_0.x), true)), !(!all(var_1.a.zy)), var_1.a.x), vec3<bool>(all(var_1.a), select(select(true, any(vec3<bool>(var_0.x, var_1.a.x, var_0.x)), all(global1.a.xx)), var_0.x, select(var_1.a.x, true, all(vec4<bool>(false, var_0.x, var_1.a.x, global1.a.x)))), all(vec3<bool>(true, var_0.x, global1.a.x)) | !var_0.x), select(!global1.a, vec3<bool>(!select(var_1.a.x, true, var_1.a.x), all(!vec2<bool>(global1.a.x, true)), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 5u)], 5u)] <= arg_1.x), !select(select(var_1.a, global1.a, var_1.a.x), var_1.a, select(vec3<bool>(global1.a.x, var_0.x, false), var_1.a, global1.a.x))));
    return Struct_3(~max(u_input.c.yyy, u_input.c.xzz), !(var_2.c.x <= -var_2.a));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_3(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(false, global1.a.x), arg_0.b), Struct_1(vec3<bool>(global1.a.x, true, arg_0.b)), Struct_1(vec3<bool>(true, false, false)))), arg_1, _wgslsmith_f_op_f32(step(-1211f, arg_1)), arg_1))) - vec4<f32>(480f, arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1)))));
    global0 = arg_0.b;
    global2 = array<u32, 5>();
    var var_1 = select(47547u <= u_input.c.x, global1.a.x | false, any(vec3<bool>(true, true, true)));
    var var_2 = false;
    return global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~reverseBits(4294967295u)), 5u)], 23u)];
}

fn func_1() -> vec3<u32> {
    global1 = func_4(func_2(0u, u_input.c.wz), 655f);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1111f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -761f)))));
    let var_1 = (firstLeadingBit(1u) > u_input.a) | all(vec3<bool>(1i >= _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 1i), !(var_0.x == var_0.x), false));
    var var_2 = ~4294967295u;
    global4 = array<Struct_3, 14>();
    return u_input.c.yzz << (~firstTrailingBit(u_input.c.ywx) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u);
    let var_1 = reverseBits(select(~(func_1() | u_input.c.xxw), vec3<u32>(min(~1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)] ^ u_input.b), 45767u, global2[_wgslsmith_index_u32(~1u, 5u)]), !vec3<bool>(false, any(global1.a.yy), !global1.a.x)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1217f)), -1805f);
    let var_3 = !select(vec4<bool>(global1.a.x && true, global1.a.x, false, global1.a.x), vec4<bool>(func_4(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 5u)], 14u)], 171f).a.x && global1.a.x, global1.a.x, global1.a.x, true), select(select(vec4<bool>(true, global1.a.x, false, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), true), vec4<bool>(true, false, any(global1.a), !global1.a.x), global1.a.x));
    global3 = array<Struct_1, 23>();
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2089f, 133f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1433f, 239f, 184f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1067f, 1394f, 2352f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1707f, 577f, -746f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1887f), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, global1.a.x), global3[_wgslsmith_index_u32(77600u, 23u)], global3[_wgslsmith_index_u32(var_0, 23u)])), _wgslsmith_f_op_f32(ceil(-380f))))), _wgslsmith_add_u32(var_0, 75589u), 2147483647i);
}

