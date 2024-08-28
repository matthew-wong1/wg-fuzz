struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-127f, -2337f, -695f, 795f), vec4<f32>(924f, -1000f, -556f, -600f), vec4<f32>(-975f, 288f, -144f, -501f), vec4<f32>(1000f, 1586f, 298f, -459f), vec4<f32>(-419f, -396f, -1037f, 586f), vec4<f32>(-2871f, 478f, -1253f, -444f), vec4<f32>(1000f, 2091f, 1127f, 151f), vec4<f32>(1000f, 406f, -165f, -710f), vec4<f32>(-119f, -344f, 493f, -1185f), vec4<f32>(1000f, 1039f, 2116f, -354f), vec4<f32>(650f, 381f, -1000f, 449f), vec4<f32>(542f, 3028f, -1000f, -295f), vec4<f32>(829f, -1000f, -133f, -716f), vec4<f32>(-509f, 125f, -1641f, -125f), vec4<f32>(291f, -780f, -1108f, -717f), vec4<f32>(186f, -1335f, 733f, -1113f), vec4<f32>(1000f, 365f, -336f, 1143f), vec4<f32>(529f, -567f, -734f, 4298f), vec4<f32>(729f, -203f, -2154f, 1930f), vec4<f32>(-674f, 1429f, -304f, -1048f), vec4<f32>(524f, -519f, -646f, -245f), vec4<f32>(-660f, 505f, 635f, -1288f), vec4<f32>(-1454f, 370f, 1022f, -135f), vec4<f32>(221f, -2051f, 241f, 524f), vec4<f32>(-331f, -2025f, -514f, -1084f));

var<private> global2: u32 = 43735u;

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, false)), !all(vec2<bool>(true, true))));
    let var_1 = Struct_1(1200f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global3.b))), -898f, max(_wgslsmith_mod_vec3_i32(countOneBits(abs(vec3<i32>(global3.d.x, 1i, 2147483647i))), -global3.d), vec3<i32>(~2147483647i, global3.d.x & 1i, global3.d.x << (4294967295u % 32u)) & min(vec3<i32>(global3.d.x, -1i, -105934i), vec3<i32>(-2147483647i, global3.d.x, global3.d.x) & global3.d)), global3.e);
    let var_2 = u_input.a;
    let var_3 = 2147483647i;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(811f * _wgslsmith_f_op_f32(exp2(var_1.a))), _wgslsmith_f_op_f32(-var_1.b.x), var_0)) + _wgslsmith_f_op_f32(global3.b.x + global3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(sign(global3.a)))));
    return select(global3.d.x, 2147483647i, !(u_input.c.x == ~(~37306u)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -_wgslsmith_add_i32(-1i, -19048i), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(-2147483647i, global3.d.x)) << (~49918u % 32u)), -(arg_2.e.d.x ^ arg_2.e.d.x), -(func_3() & 2147483647i), firstLeadingBit(~abs(-1i)) << (countOneBits(countOneBits(~global3.e.x)) % 32u));
    global3 = arg_2.e;
    global1 = array<vec4<f32>, 25>();
    var var_1 = arg_2.e.b;
    let var_2 = false;
    return any(select(vec4<bool>((arg_2.d.d.x != arg_2.d.d.x) | arg_0, var_2, arg_2.c.x, global3.e.x == 29337u), !(!vec4<bool>(true, arg_2.c.x, var_2, var_2)), vec4<bool>(true, var_2, true, false)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global2 = 741u;
    var var_0 = false;
    var var_1 = u_input.c << (~firstLeadingBit(~(~u_input.a.zwy)) % vec3<u32>(32u));
    var var_2 = select(!vec4<bool>(arg_3.c.x, !arg_3.c.x || arg_3.c.x, !arg_3.c.x, any(select(arg_3.c, arg_3.c, arg_3.c))), vec4<bool>(all(!select(arg_3.c, arg_3.c, false)), false, true, !(!func_2(true, arg_3.a, arg_3))), true);
    var var_3 = arg_3;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec3<bool>(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(false, true, false, false))), vec3<bool>(any(vec3<bool>(false, true, false)), true, false), vec3<bool>(true, any(vec2<bool>(false, true)), func_1(global3.b.x, u_input.b, Struct_1(541f, vec3<f32>(global3.c, 310f, global3.b.x), global3.b.x, global3.d, u_input.a.zw), Struct_2(18495i, 12797u, vec2<bool>(false, true), Struct_1(-1699f, vec3<f32>(304f, global3.c, global3.c), -1359f, global3.d, vec2<u32>(u_input.b, 4294967295u)), Struct_1(223f, vec3<f32>(global3.a, -236f, global3.b.x), -428f, global3.d, u_input.c.zx))))));
    global2 = ~global3.e.x >> (u_input.b % 32u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2020f, -937f)))))), _wgslsmith_f_op_vec3_f32(sign(global3.b)), -1618f, select(vec3<i32>(global3.d.x, ~reverseBits(38226i), ~global3.d.x), global3.d, false), vec2<u32>(_wgslsmith_clamp_u32(reverseBits(4294967295u), 1u, firstLeadingBit(~global3.e.x)), 1u));
    let var_2 = global3.e.x;
    var var_3 = var_1.d.zz;
    var var_4 = global1[_wgslsmith_index_u32(1u, 25u)];
    let var_5 = vec4<bool>(func_1(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(exp2(global3.a)))), ~(~min(global3.e.x, var_1.e.x)), var_1, Struct_2(2147483647i, 14842u, var_0.yx, var_1, Struct_1(_wgslsmith_f_op_f32(-1780f + var_1.c), global3.b, _wgslsmith_f_op_f32(-var_1.c), -var_1.d, vec2<u32>(66456u, global3.e.x)))), all(!vec3<bool>(false, var_0.x, all(vec2<bool>(var_0.x, var_0.x)))), true, true | all(var_0.zz));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.e.x, u_input.b), func_3());
}

