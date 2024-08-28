struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<u32>(34894u, 0u, 0u), Struct_1(4294967295u, -1997f, vec4<u32>(59590u, 4294967295u, 43324u, 10440u), vec2<bool>(false, false)), Struct_1(4294967295u, 1237f, vec4<u32>(0u, 0u, 87498u, 45932u), vec2<bool>(false, false)), vec2<bool>(false, false)), Struct_2(vec3<u32>(56357u, 16975u, 0u), Struct_1(20712u, -1407f, vec4<u32>(1u, 20398u, 1u, 6731u), vec2<bool>(true, false)), Struct_1(1u, -271f, vec4<u32>(27693u, 24137u, 4294967295u, 4294967295u), vec2<bool>(false, false)), vec2<bool>(true, false)), Struct_2(vec3<u32>(33550u, 6665u, 1169u), Struct_1(0u, 955f, vec4<u32>(28494u, 33719u, 1u, 86939u), vec2<bool>(true, false)), Struct_1(1u, -392f, vec4<u32>(78341u, 31122u, 4294967295u, 106695u), vec2<bool>(true, false)), vec2<bool>(true, true)));

var<private> global2: Struct_2;

var<private> global3: u32 = 98060u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool) -> i32 {
    global2 = global1[_wgslsmith_index_u32(global2.c.c.x, 3u)];
    let var_0 = true;
    let var_1 = global2.b.c.x;
    var var_2 = global2.c;
    global1 = array<Struct_2, 3>();
    return u_input.a.x;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    var var_1 = global2.c.b;
    global2 = Struct_2(~_wgslsmith_add_vec3_u32(global2.c.c.yzx, firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 18463u), arg_3.c.yww))), Struct_1(_wgslsmith_mult_u32(~(~global2.b.c.x), 0u), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1028f, arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), all(!vec3<bool>(arg_0, true, false)))), select(reverseBits(~global2.c.c), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_3.c.x), global2.b.c.wz), _wgslsmith_dot_vec4_u32(global2.c.c, vec4<u32>(93395u, 33293u, 0u, 83630u)), _wgslsmith_dot_vec3_u32(global2.b.c.yxz, global2.a), ~arg_3.a), true), select(select(global2.c.d, global2.c.d, !global2.c.d), vec2<bool>(true, true), global2.d.x)), arg_3, vec2<bool>(global2.c.c.x == global2.b.a, arg_0));
    global3 = ~(~select(1u, 4294967295u, global2.d.x) ^ 5704u) ^ _wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(arg_3.a), min(81901u, 0u)), max(~_wgslsmith_dot_vec2_u32(global2.a.xy, global2.a.xx), firstLeadingBit(_wgslsmith_add_u32(0u, arg_3.c.x))));
    var var_2 = Struct_1(~(~1u), arg_2.x, arg_3.c, vec2<bool>((_wgslsmith_f_op_f32(trunc(-1132f)) > var_0.x) | (arg_0 || arg_3.d.x), false));
    return !(!select(!(!var_2.d), !select(vec2<bool>(true, true), vec2<bool>(arg_0, var_2.d.x), vec2<bool>(false, global2.b.d.x)), arg_3.d));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    let var_0 = global2.c;
    global1 = array<Struct_2, 3>();
    global3 = arg_0;
    global2 = Struct_2(var_0.c.wzx, Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_0.a), ~vec2<u32>(arg_0, 4294967295u)), global2.c.b, ~var_0.c, global2.c.d), global2.b, select(vec2<bool>(var_0.d.x, true), func_3(var_0.d.x, -vec2<i32>(u_input.a.x, 2147483647i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(422f, global2.c.b, 1367f) * arg_2), vec3<f32>(-2140f, var_0.b, arg_2.x), var_0.d.x)), global2.c), vec2<bool>(~65632u == var_0.c.x, !any(vec3<bool>(var_0.d.x, var_0.d.x, global2.d.x)))));
    var var_1 = vec4<i32>(-33927i, u_input.a.x, func_1(global2.d.x), countOneBits(~1i));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))), -519f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.c.b)), 859f)), global2.b.b, global2.c.b, 412f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b, 625f, global2.c.b, 1512f)))))));
    let var_1 = vec2<i32>(func_1(true) | ~u_input.a.x, 9851i);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.b, -426f, 2113f, var_0.x) - vec4<f32>(var_0.x, var_0.x, 538f, -2330f)) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -559f, var_0.x, -1437f), vec4<f32>(var_0.x, var_0.x, 649f, -2259f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.b, var_0.x, -993f, global2.b.b) * vec4<f32>(var_0.x, var_0.x, 2205f, 2114f)))) - vec4<f32>(global2.b.b, -870f, _wgslsmith_f_op_f32(f32(-1f) * -2463f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2.c.c.x, 0u, vec3<f32>(-2154f, global2.b.b, -307f)))))));
    let var_2 = 0i;
    var var_3 = Struct_2(~global2.a, global2.c, global2.c, global2.c.d);
    let var_4 = !select(vec3<bool>(all(!vec3<bool>(false, global2.d.x, true)), any(!vec3<bool>(global2.b.d.x, false, global2.b.d.x)), (global2.b.d.x | true) && false), select(!vec3<bool>(global2.d.x, var_3.b.d.x, true), vec3<bool>(true, false, false), true), global2.b.d.x || true);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.b.b, var_0.x, var_3.b.b, 543f), vec4<f32>(global2.b.b, 1579f, 1000f, -593f))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.b), _wgslsmith_div_f32(-533f, var_3.c.b), 1980f, _wgslsmith_f_op_f32(-global2.c.b))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f * -828f), 1000f, var_0.x, global2.c.b)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(543f, 663f, var_0.x, 488f) + vec4<f32>(1265f, 259f, var_3.b.b, 229f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-221f, var_3.b.b, global2.b.b, -284f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -2513f, global2.b.b, var_0.x) * vec4<f32>(183f, 1017f, global2.b.b, -293f)))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_div_f32(var_3.c.b, var_0.x), _wgslsmith_f_op_f32(-257f * global2.b.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, global2.c.c.x), _wgslsmith_mod_i32(32267i, -var_2), (global2.b.c.x & select(global2.c.a, ~0u, any(vec3<bool>(false, true, var_3.d.x)))) << (var_3.b.a % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b - var_3.b.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(479f + 125f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.b - var_0.x)) + global2.c.b)));
}

