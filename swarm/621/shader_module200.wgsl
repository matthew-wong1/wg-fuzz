struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 25> = array<bool, 25>(true, false, true, true, true, true, false, true, true, true, true, true, true, false, false, false, false, true, false, false, false, false, true, false, false);

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false);

var<private> global4: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<f32>, arg_3: f32) -> vec2<bool> {
    global4 = (select(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, 1i), vec2<i32>(global4.x, u_input.b.x)), 22100i, ~(-31379i)), -vec4<i32>(1i, global4.x, -2147483647i, -44362i), vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global3.b.x, true, global2[_wgslsmith_index_u32(u_input.a.x, 25u)] == true)) | u_input.b) ^ vec4<i32>(-5961i, global4.x, u_input.b.x, global4.x);
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, arg_2.x, 696f))) - _wgslsmith_f_op_vec3_f32(arg_2 * arg_0.yxx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2, arg_0.zyy))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.zwy), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-3211f, 290f, -1263f))), global3.c))), vec3<bool>(all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(40719u, 25u)], false)), true == any(vec4<bool>(false, global3.a.x, true, true)), (arg_3 < -329f) && all(global3.a))))));
    let var_0 = Struct_1(!global3.b, select(select(vec3<bool>(false, u_input.a.x == 18483u, global1.x >= arg_0.x), select(vec3<bool>(global3.b.x, global2[_wgslsmith_index_u32(20415u, 25u)], global2[_wgslsmith_index_u32(37999u, 25u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(5472u, 25u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 25u)], true, global2[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(global3.b.x, global3.b.x, true)), false && global3.b.x), global3.c), vec3<bool>(true, true, true), true), global3.a.x);
    global3 = var_0;
    global0 = _wgslsmith_div_f32(-621f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) * _wgslsmith_f_op_f32(floor(global1.x))) * arg_2.x));
    return vec2<bool>(true, any(!vec4<bool>(arg_2.x > 1216f, global3.c, false, any(vec3<bool>(true, true, false)))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global0 = -710f;
    var var_0 = Struct_1(!(!(!arg_0.zyw)), arg_0.zzx, !all(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -1033f)), reverseBits(4294967295u), vec3<f32>(-306f, 1191f, 1000f), _wgslsmith_div_f32(-1097f, 819f))));
    let var_1 = Struct_1(var_0.a, !(!arg_0.yxw), arg_0.x);
    let var_2 = !var_0.a;
    global2 = array<bool, 25>();
    return var_1;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f * global1.x)))))));
    var var_0 = _wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))))));
    var var_1 = func_2(!(!vec4<bool>(!arg_2.a.x, arg_1, arg_0, all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 25u)], arg_0, arg_0)))));
    let var_2 = func_2(select(!vec4<bool>(false, global1.x <= -1000f, any(vec4<bool>(false, var_1.a.x, global3.a.x, var_1.a.x)), all(vec4<bool>(var_1.a.x, true, false, true))), !select(select(vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_0, true, arg_0, arg_1), vec4<bool>(global2[_wgslsmith_index_u32(105322u, 25u)], global3.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], true)), vec4<bool>(global2[_wgslsmith_index_u32(17028u, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)], true, var_1.b.x), !vec4<bool>(arg_2.b.x, false, arg_2.a.x, true)), true));
    global3 = func_2(select(!vec4<bool>(true, arg_1, all(var_1.a.xy), global3.c), select(!(!vec4<bool>(var_1.b.x, true, true, true)), vec4<bool>(all(arg_2.b.zy), global3.a.x & true, true, func_3(vec4<f32>(1000f, -937f, global1.x, global1.x), u_input.a.x, vec3<f32>(global1.x, global1.x, global1.x), global1.x).x), global3.a.x), select(!select(vec4<bool>(false, false, arg_0, var_1.b.x), vec4<bool>(false, arg_2.c, arg_1, var_2.c), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], var_2.a.x)), vec4<bool>(all(vec3<bool>(var_1.b.x, true, global2[_wgslsmith_index_u32(u_input.a.x, 25u)])), var_2.b.x | global2[_wgslsmith_index_u32(41156u, 25u)], true, global2[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 25u)]), !vec4<bool>(false, global3.c, true, false))));
    return arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.b, global3.a, !func_1(~u_input.b.x < 1i, global2[_wgslsmith_index_u32(abs(25957u), 25u)], Struct_1(vec3<bool>(global3.c, false, false), !global3.a, global2[_wgslsmith_index_u32(89685u, 25u)])));
    var var_1 = !var_0.b.x;
    let var_2 = any(!(!vec4<bool>(global3.b.x, u_input.b.x == global4.x, true, global1.x < 216f)));
    var_0 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-263f * _wgslsmith_f_op_f32(step(139f, global1.x))) == 366f, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(12422u, u_input.a.x), 25u)], all(vec2<bool>(var_2, global3.a.x))), global3.a, false);
    let var_3 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(608f, -868f, global1.x, global1.x), vec4<f32>(-1394f, 1003f, 499f, 2468f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, global1.x, global1.x, 639f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-924f, 782f, -1611f, global1.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, global1.x, -1117f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -560f, 537f))))), _wgslsmith_div_u32(u_input.a.x ^ u_input.a.x, 1u) << (_wgslsmith_sub_u32(~113874u, ~u_input.a.x) % 32u), vec3<f32>(-1385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(461f, _wgslsmith_f_op_f32(round(962f)))) * global1.x), 854f), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-791f + 367f) - -136f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1853f, global1.x)))), global1.x)) * _wgslsmith_div_f32(613f, global1.x)), u_input.b.x, vec3<u32>(4294967295u >> (reverseBits(~4294967295u) % 32u), ~_wgslsmith_mult_u32(u_input.a.x >> (u_input.a.x % 32u), ~u_input.a.x), _wgslsmith_mult_u32(~(~5339u), u_input.a.x)));
}

