struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32> = vec4<u32>(63380u, 0u, 10631u, 4294967295u);

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<f32>(120f, -1076f, 341f, -537f)), Struct_1(vec4<f32>(-417f, -185f, -305f, 494f)), Struct_1(vec4<f32>(905f, 329f, -114f, 248f)), Struct_1(vec4<f32>(3770f, -862f, -1065f, -455f)), Struct_1(vec4<f32>(-371f, 971f, -386f, -161f)), Struct_1(vec4<f32>(-263f, -1282f, -517f, 870f)), Struct_1(vec4<f32>(-871f, 342f, -766f, 1000f)), Struct_1(vec4<f32>(611f, 571f, 1137f, 1685f)), Struct_1(vec4<f32>(-1435f, -1048f, -1652f, 183f)), Struct_1(vec4<f32>(-1084f, -1500f, -1000f, -1032f)), Struct_1(vec4<f32>(-867f, 352f, 1164f, -1000f)), Struct_1(vec4<f32>(-1000f, 1000f, -1818f, -136f)), Struct_1(vec4<f32>(-1894f, 762f, 1000f, 165f)), Struct_1(vec4<f32>(1094f, -772f, -1942f, -669f)), Struct_1(vec4<f32>(609f, -433f, -2347f, -396f)), Struct_1(vec4<f32>(727f, 1351f, -132f, -515f)), Struct_1(vec4<f32>(-1249f, -125f, -1309f, -457f)), Struct_1(vec4<f32>(798f, 481f, -210f, -1000f)), Struct_1(vec4<f32>(480f, -1000f, -1315f, 139f)), Struct_1(vec4<f32>(639f, -252f, -141f, -193f)), Struct_1(vec4<f32>(197f, -138f, -1000f, -1716f)), Struct_1(vec4<f32>(-443f, 912f, 257f, -1443f)));

var<private> global3: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = u_input.b;
    var var_1 = 4294967295u;
    var var_2 = all(!global3[_wgslsmith_index_u32(4294967295u | global1.x, 16u)]);
    var var_3 = -10784i;
    var var_4 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    return _wgslsmith_div_i32(~(~2147483647i), _wgslsmith_div_i32(min(i32(-1i) * -90175i, u_input.b >> (global1.x % 32u)), 2147483647i) | _wgslsmith_dot_vec3_i32(vec3<i32>(-34711i, _wgslsmith_mult_i32(-14417i, u_input.b), 37669i), vec3<i32>(u_input.b, _wgslsmith_mult_i32(var_0, -1i), ~53130i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec4<bool> {
    global0 = 16790i;
    global3 = array<vec2<bool>, 16>();
    global0 = u_input.b;
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~(~(~16287i)), _wgslsmith_mult_i32(~1i, u_input.b), min(_wgslsmith_add_i32(-1i, 0i) << (u_input.a % 32u), firstTrailingBit(0i))), -abs(select(vec3<i32>(u_input.b, u_input.b, u_input.b), -vec3<i32>(u_input.b, 51917i, u_input.b), true)));
    var var_1 = global2[_wgslsmith_index_u32(~4294967295u, 22u)];
    return vec4<bool>(any(select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), select(true, arg_0.x, true)), !(!vec3<bool>(arg_0.x, false, arg_0.x)))), any(vec4<bool>(true, true, true, true)), false, arg_0.x);
}

fn func_1() -> Struct_1 {
    global0 = -func_2(global2[_wgslsmith_index_u32(0u, 22u)], Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-566f, 213f, 452f, -576f), vec4<f32>(-243f, 486f, -628f, -1605f))))), global2[_wgslsmith_index_u32(reverseBits(select(u_input.a, global1.x, all(vec4<bool>(true, false, true, false)))), 22u)]);
    let var_0 = all(func_3(!global3[_wgslsmith_index_u32(global1.x, 16u)], vec4<f32>(327f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-289f, 1092f)), _wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) * _wgslsmith_f_op_f32(max(1865f, 1016f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-805f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(203f, -449f))))))));
    global1 = _wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, _wgslsmith_sub_u32(u_input.a, u_input.a), ~25901u, 61925u), ~firstLeadingBit(vec4<u32>(82744u, 42400u, global1.x, global1.x)), select(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, false, false), false), select(vec4<bool>(false, true, var_0, false), vec4<bool>(true, false, var_0, false), vec4<bool>(var_0, true, false, false)), all(vec3<bool>(true, false, true)))), ~vec4<u32>(global1.x, 48111u, max(1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, u_input.a), vec3<u32>(1u, 36350u, 0u))), ~(min(vec4<u32>(u_input.a, global1.x, u_input.a, 15222u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) | _wgslsmith_mult_vec4_u32(vec4<u32>(50249u, global1.x, 45167u, u_input.a), vec4<u32>(u_input.a, 75292u, global1.x, global1.x)))) << (_wgslsmith_add_vec4_u32(~(~(vec4<u32>(u_input.a, u_input.a, u_input.a, global1.x) & vec4<u32>(global1.x, 0u, 1u, 1u))), vec4<u32>(global1.x, 4294967295u, min(1u, _wgslsmith_add_u32(u_input.a, global1.x)), firstLeadingBit(abs(13725u)))) % vec4<u32>(32u));
    let var_1 = -53760i;
    var var_2 = firstTrailingBit(~countOneBits(min(vec4<i32>(u_input.b, u_input.b, 0i, var_1), vec4<i32>(var_1, -26305i, var_1, 28765i))) >> (~vec4<u32>(u_input.a, global1.x, ~global1.x, max(u_input.a, 4404u)) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, -1131f, 651f, -252f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1532f, 996f, -622f, 2134f) - vec4<f32>(1000f, 1971f, 1000f, 1000f))), !(!vec4<bool>(var_0, var_0, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1800f, -864f, -439f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-832f, -151f, -209f, -167f)), true))), vec4<bool>(true, any(func_3(global3[_wgslsmith_index_u32(10549u, 16u)], vec4<f32>(162f, 1905f, 299f, -618f), vec2<f32>(-205f, -1492f)).zyw), var_0, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = vec4<u32>(u_input.a ^ u_input.a, _wgslsmith_add_u32(1u, u_input.a), select(_wgslsmith_dot_vec2_u32(max(vec2<u32>(40181u, u_input.a), global1.xz), _wgslsmith_div_vec2_u32(global1.yz, global1.ww) & ~global1.wy), ~u_input.a, true), _wgslsmith_div_u32(_wgslsmith_add_u32(~global1.x, ~12485u) & u_input.a, ~95188u));
    var var_1 = all(!(!vec3<bool>(any(global3[_wgslsmith_index_u32(u_input.a, 16u)]), u_input.b > 2147483647i, true)));
    global3 = array<vec2<bool>, 16>();
    var_1 = !all(vec3<bool>(!(global1.x <= u_input.a), true, !any(vec3<bool>(true, true, false))));
    var var_2 = func_1();
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(4294967295u, 83870u), ~_wgslsmith_mult_u32(firstTrailingBit(63992u), ~103897u), ~(~_wgslsmith_mult_u32(u_input.a, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.x))) - var_0.a.x)), vec4<u32>(71245u, _wgslsmith_div_u32(global1.x, 4294967295u), global1.x, global1.x));
}

