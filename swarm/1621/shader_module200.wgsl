struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(37977u, 0u, 36037u, 39826u);

var<private> global1: u32;

var<private> global2: array<vec2<i32>, 18>;

var<private> global3: Struct_1;

var<private> global4: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    return Struct_1(939f, !vec4<bool>(true, true, !global3.b.x, all(vec4<bool>(global3.b.x, false, global3.b.x, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, global3.e, global3.a, -1149f) * vec4<f32>(1000f, 1205f, 364f, 1000f)) - _wgslsmith_f_op_vec4_f32(global3.c * global3.c))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x * global3.e)), _wgslsmith_div_f32(global3.a, global3.c.x), _wgslsmith_f_op_f32(1123f - global3.e), -1408f)), select(global3.d, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0.x, ~u_input.a.x), 18u)] << (u_input.c.wz % vec2<u32>(32u)), !global3.b.ww), _wgslsmith_f_op_f32(f32(-1f) * -1620f));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = ~(~u_input.c);
    var var_0 = Struct_1(_wgslsmith_div_f32(arg_0.b.e, _wgslsmith_f_op_f32(abs(func_1(~vec3<u32>(0u, 72328u, 0u)).a))), arg_3.a.b, arg_2.c, (firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(25931i, global3.d.x), arg_0.b.d)) | min(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 9008u), 18u)], arg_2.d)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, 9815u), ~global0.x), u_input.c.yy) % vec2<u32>(32u)), 1225f);
    let var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(905f, !(!vec4<bool>(false, arg_3.c.b.x, false, global3.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(1352f, var_1.c.c.x)), _wgslsmith_f_op_f32(min(1000f, -550f)), func_1(vec3<u32>(global0.x, u_input.a.x, 4294967295u)).e, _wgslsmith_f_op_f32(max(255f, arg_2.e))), vec4<f32>(_wgslsmith_f_op_f32(global3.e + global3.e), _wgslsmith_f_op_f32(exp2(arg_0.c.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_div_f32(var_0.e, -453f)), _wgslsmith_f_op_f32(floor(-741f)) <= _wgslsmith_f_op_f32(sign(arg_3.a.e)))), _wgslsmith_mod_vec2_i32(arg_2.d, select(-arg_0.c.d, abs(vec2<i32>(0i, var_1.b.d.x)), global3.b.x)), _wgslsmith_f_op_f32(sign(-2469f))), arg_2, arg_3.c);
    var_0 = arg_0.b;
    return arg_3.c;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = func_2(arg_1.d, arg_1.d.c.b.wzz, func_1(select(~(~vec3<u32>(arg_2.x, 28049u, 0u)), ~vec3<u32>(arg_2.x, 4294967295u, 24161u), vec3<bool>(any(vec2<bool>(global3.b.x, global3.b.x)), arg_1.e != -269f, false || global3.b.x))), arg_1.c);
    global1 = var_0.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_1.d.a.c.x))), global3.b, var_1.c, arg_3.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.x)))), func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(892f - 241f), vec4<bool>(global3.b.x, true, arg_1.d.b.b.x, true), _wgslsmith_f_op_vec4_f32(-global3.c), global2[_wgslsmith_index_u32(global0.x, 18u)], _wgslsmith_f_op_f32(-var_1.c.x)), arg_1.c.b, Struct_1(457f, vec4<bool>(arg_1.c.b.b.x, true, var_1.b.x, arg_1.b), _wgslsmith_f_op_vec4_f32(-var_1.c), vec2<i32>(global3.d.x, arg_1.c.c.d.x) ^ vec2<i32>(13877i, var_1.d.x), _wgslsmith_f_op_f32(arg_0 + 904f))), !vec3<bool>(var_1.b.x, true, any(var_1.b)), arg_1.d.b, arg_1.d), arg_1.d.b);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))))), false, Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1675f - arg_0), _wgslsmith_f_op_f32(arg_0 * -984f)), func_1(countOneBits(vec3<u32>(arg_2.x, arg_2.x, 4294967295u))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_2.a.e, arg_1.e, var_2.a.a))), ~(var_1.d | arg_3.ww), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f * global3.e))), arg_1.c.b, func_2(arg_1.d, select(vec3<bool>(var_2.a.b.x, var_2.a.b.x, false), func_1(vec3<u32>(4294967295u, u_input.a.x, 4294967295u)).b.yxw, !var_1.b.yyx), Struct_1(1000f, vec4<bool>(global3.b.x, global3.b.x, true, var_2.a.b.x), _wgslsmith_f_op_vec4_f32(arg_1.c.c.c * arg_1.c.b.c), ~arg_1.c.b.d, var_1.e), Struct_2(Struct_1(var_2.b.c.x, vec4<bool>(true, global3.b.x, global3.b.x, global3.b.x), var_1.c, vec2<i32>(43295i, -20286i), var_2.c.e), Struct_1(global3.c.x, var_1.b, global3.c, global2[_wgslsmith_index_u32(1u, 18u)], var_2.a.a), var_2.c))), arg_1.d, _wgslsmith_f_op_f32(round(arg_1.c.c.e)));
    return func_1(_wgslsmith_mod_vec3_u32(~arg_2, ~global0.xzz));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> f32 {
    global0 = ~reverseBits(u_input.c);
    var var_0 = ~global0.x << (_wgslsmith_dot_vec3_u32(u_input.c.wwx, vec3<u32>(min(1u, firstTrailingBit(global0.x)), _wgslsmith_mod_u32(4294967295u, u_input.a.x), ~abs(45513u))) % 32u);
    var var_1 = reverseBits(global0.yy);
    let var_2 = arg_0;
    var_1 = u_input.c.xw;
    return _wgslsmith_f_op_f32(-arg_1.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_2(Struct_2(Struct_1(global3.a, select(global3.b, vec4<bool>(global3.b.x, true, global3.b.x, true), vec4<bool>(true, global3.b.x, false, false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.a, global3.c.x, -1004f, -113f))), reverseBits(vec2<i32>(u_input.b, global3.d.x)), _wgslsmith_f_op_f32(select(-229f, global3.a, true))), func_1(~global0.xyw), Struct_1(_wgslsmith_f_op_f32(ceil(701f)), select(global3.b, vec4<bool>(true, global3.b.x, true, global3.b.x), false), global3.c, ~global3.d, _wgslsmith_f_op_f32(-global3.a))), vec3<bool>(true, true, global3.b.x), func_1(~global0.wwx), Struct_2(func_1(u_input.a), Struct_1(-1224f, !vec4<bool>(false, global3.b.x, true, global3.b.x), global3.c, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 10241i), global3.d), _wgslsmith_f_op_f32(-476f * global3.c.x)), func_1(firstTrailingBit(vec3<u32>(0u, global0.x, global0.x))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2413f, _wgslsmith_f_op_f32(abs(global3.a)))), !(!select(vec4<bool>(false, global3.b.x, global3.b.x, true), global3.b, vec4<bool>(false, global3.b.x, global3.b.x, global3.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1541f, global3.c.x, 415f, 599f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(590f, global3.c.x, -1596f, -989f))) - global3.c), abs(vec2<i32>(-77314i, 2147483647i)), _wgslsmith_f_op_f32(func_4(Struct_3(global3.a, global3.b.x, Struct_2(Struct_1(global3.a, vec4<bool>(false, false, true, global3.b.x), global3.c, vec2<i32>(u_input.b, global3.d.x), -1394f), Struct_1(743f, global3.b, vec4<f32>(-1501f, global3.a, global3.c.x, -1329f), global2[_wgslsmith_index_u32(68535u, 18u)], 2600f), Struct_1(-178f, global3.b, vec4<f32>(654f, global3.e, 1000f, -543f), global3.d, 1005f)), Struct_2(Struct_1(global3.c.x, vec4<bool>(true, false, global3.b.x, global3.b.x), global3.c, global2[_wgslsmith_index_u32(1u, 18u)], global3.c.x), Struct_1(1391f, vec4<bool>(true, global3.b.x, global3.b.x, global3.b.x), global3.c, global2[_wgslsmith_index_u32(1961u, 18u)], global3.c.x), Struct_1(-1352f, vec4<bool>(global3.b.x, true, global3.b.x, true), global3.c, global3.d, -830f)), _wgslsmith_f_op_f32(floor(-1129f))), Struct_2(func_3(global3.c.x, Struct_3(1472f, true, Struct_2(Struct_1(global3.a, global3.b, global3.c, vec2<i32>(2147483647i, 15891i), global3.a), Struct_1(407f, global3.b, vec4<f32>(global3.c.x, global3.c.x, -1008f, 974f), vec2<i32>(u_input.b, 0i), global3.c.x), Struct_1(global3.c.x, vec4<bool>(true, global3.b.x, false, global3.b.x), global3.c, vec2<i32>(31606i, global3.d.x), global3.c.x)), Struct_2(Struct_1(1653f, vec4<bool>(global3.b.x, false, global3.b.x, global3.b.x), global3.c, vec2<i32>(44602i, global3.d.x), global3.e), Struct_1(global3.c.x, global3.b, global3.c, global3.d, -727f), Struct_1(global3.c.x, vec4<bool>(global3.b.x, true, global3.b.x, false), vec4<f32>(-696f, global3.e, global3.c.x, global3.e), vec2<i32>(-32269i, global3.d.x), 1580f)), 160f), u_input.c.xwy, vec4<i32>(-614i, u_input.b, u_input.b, u_input.b)), Struct_1(-2083f, global3.b, vec4<f32>(531f, global3.e, 496f, global3.e), vec2<i32>(global3.d.x, u_input.b), global3.e), Struct_1(global3.e, global3.b, vec4<f32>(-198f, global3.a, -2528f, 2337f), global3.d, global3.a)), 4294967295u))), Struct_1(3102f, !(!vec4<bool>(global3.b.x, false, true, global3.b.x)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_div_f32(global3.e, global3.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.e, global3.a)), _wgslsmith_div_f32(340f, -419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(global3.e, global3.b.x, Struct_2(Struct_1(1413f, global3.b, global3.c, global2[_wgslsmith_index_u32(4294967295u, 18u)], -782f), Struct_1(1000f, vec4<bool>(false, global3.b.x, global3.b.x, global3.b.x), global3.c, vec2<i32>(u_input.b, u_input.b), global3.a), Struct_1(global3.c.x, vec4<bool>(global3.b.x, true, false, false), vec4<f32>(-616f, 1000f, global3.e, global3.e), global3.d, 833f)), Struct_2(Struct_1(495f, vec4<bool>(global3.b.x, global3.b.x, global3.b.x, true), global3.c, vec2<i32>(global3.d.x, 466i), -1063f), Struct_1(1217f, global3.b, vec4<f32>(-1000f, global3.e, global3.a, 741f), global3.d, global3.c.x), Struct_1(-1071f, global3.b, vec4<f32>(global3.a, -282f, global3.c.x, 721f), vec2<i32>(global3.d.x, 1i), global3.e)), global3.c.x), Struct_2(Struct_1(global3.c.x, vec4<bool>(global3.b.x, global3.b.x, global3.b.x, false), vec4<f32>(global3.c.x, 1300f, global3.a, global3.c.x), vec2<i32>(0i, -42101i), global3.a), Struct_1(global3.c.x, global3.b, vec4<f32>(-967f, -1342f, global3.e, 384f), vec2<i32>(global3.d.x, 1i), global3.a), Struct_1(global3.c.x, global3.b, vec4<f32>(global3.e, global3.e, 189f, 821f), global2[_wgslsmith_index_u32(u_input.c.x, 18u)], -616f)), u_input.a.x))), 1000f), min(-(~global2[_wgslsmith_index_u32(0u, 18u)]), vec2<i32>(-1i, global3.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -544f)));
    let var_1 = Struct_2(func_3(1f, Struct_3(var_0.b.c.x, any(global3.b.wx), Struct_2(func_2(var_0, global3.b.zxx, Struct_1(148f, global3.b, global3.c, var_0.a.d, global3.c.x), var_0), var_0.c, func_3(565f, Struct_3(global3.e, var_0.b.b.x, Struct_2(Struct_1(global3.c.x, var_0.c.b, var_0.a.c, global3.d, var_0.c.a), var_0.c, var_0.a), var_0, var_0.c.a), vec3<u32>(0u, global0.x, 0u), vec4<i32>(2147483647i, var_0.c.d.x, -42719i, u_input.b))), var_0, _wgslsmith_f_op_f32(-global3.a)), vec3<u32>(9645u, min(_wgslsmith_mod_u32(global0.x, 4294967295u), ~u_input.a.x), u_input.c.x), countOneBits(max(vec4<i32>(var_0.c.d.x, 1i, global3.d.x, -71094i) | vec4<i32>(u_input.b, -2147483647i, u_input.b, var_0.b.d.x), ~vec4<i32>(2147483647i, -6725i, u_input.b, -1i)))), func_1(abs(~(u_input.c.wxx >> (vec3<u32>(4294967295u, global0.x, 0u) % vec3<u32>(32u))))), func_1(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 4294967295u), global0.xxx), 1u, global0.x), vec3<u32>(~42233u, global0.x, firstTrailingBit(28333u)))));
    let var_2 = select(vec4<i32>(-1i) * -abs(~vec4<i32>(global3.d.x, u_input.b, -2147483647i, 26684i)), ~(reverseBits(-vec4<i32>(0i, -2147483647i, -974i, var_0.b.d.x)) >> (~(u_input.c << (vec4<u32>(global0.x, 1353u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), select(vec4<bool>(global0.x >= 30604u, var_1.c.b.x, select(var_1.b.b.x, true, !global3.b.x), global3.b.x), var_1.a.b, global3.b.x & any(func_3(global3.a, Struct_3(global3.c.x, false, Struct_2(var_0.a, Struct_1(var_1.c.a, var_0.b.b, var_0.c.c, vec2<i32>(2147483647i, u_input.b), var_1.a.c.x), Struct_1(var_0.a.e, vec4<bool>(var_1.b.b.x, global3.b.x, true, false), var_0.c.c, var_1.a.d, 1427f)), var_0, var_0.b.a), u_input.c.wzx, vec4<i32>(71599i, -7580i, var_0.c.d.x, u_input.b)).b)));
    global4 = var_0.b.a;
    global1 = ~_wgslsmith_sub_u32(~(~(~global0.x)), ~u_input.a.x);
    let var_3 = true;
    global2 = array<vec2<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, firstLeadingBit(-vec3<i32>(_wgslsmith_dot_vec4_i32(var_2, vec4<i32>(-2147483647i, 0i, global3.d.x, global3.d.x)), -var_1.c.d.x, var_1.b.d.x)));
}

