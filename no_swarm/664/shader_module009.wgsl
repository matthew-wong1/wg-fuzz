struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(-40361i, 20643i, -1i, 43349i), vec4<i32>(1i, 25686i, 0i, -19451i), vec4<i32>(-26370i, 1i, 0i, -14464i), vec4<i32>(33161i, 1i, -1i, 36553i), vec4<i32>(46873i, -27642i, -22130i, 45823i), vec4<i32>(1i, 28375i, -14807i, -58947i), vec4<i32>(-1i, 2147483647i, 1i, 34008i), vec4<i32>(0i, -3219i, -34838i, 2147483647i), vec4<i32>(2147483647i, -1i, 34559i, 42902i), vec4<i32>(i32(-2147483648), -5261i, 2147483647i, -22106i), vec4<i32>(1i, -28556i, -14699i, i32(-2147483648)), vec4<i32>(-20070i, 2147483647i, -40375i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 35599i, 0i), vec4<i32>(2147483647i, 0i, 39602i, -13701i), vec4<i32>(-22600i, -1i, -63768i, -18962i), vec4<i32>(2147483647i, 2147483647i, -1i, -1i), vec4<i32>(-1i, 11499i, 27644i, 2147483647i), vec4<i32>(-1i, 36198i, 1i, 22685i), vec4<i32>(21295i, i32(-2147483648), 1i, -39032i), vec4<i32>(i32(-2147483648), -4050i, -1i, -53821i), vec4<i32>(-25752i, -1i, -43718i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 0i, -3102i), vec4<i32>(0i, 38970i, i32(-2147483648), 3075i), vec4<i32>(2147483647i, 0i, 21355i, i32(-2147483648)), vec4<i32>(13493i, 15863i, 1i, 1i));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 1u)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(23655u, 0u)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, 1u)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(125251u, 76032u)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 891u)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(23087u, 1u)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 109294u)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(28448u, 0u)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(15217u, 39551u)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(1u, 1u)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 4294967295u)));

var<private> global2: vec4<bool>;

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

var<private> global4: u32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    global0 = array<vec4<i32>, 25>();
    var var_0 = vec4<i32>(-(~(firstLeadingBit(u_input.c) ^ (i32(-1i) * -2147483647i))), global3.x ^ -1i, global3.x, _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global3.x, u_input.b), vec2<i32>(2147483647i, global3.x)), vec2<i32>(2147483647i, u_input.c)), -2147483647i));
    global2 = vec4<bool>(global2.x, true, 1u > u_input.a.x, !(global2.x & false) && (32022u != (~u_input.a.x >> (0u % 32u))));
    global1 = array<Struct_1, 13>();
    global3 = ~select(reverseBits(vec2<i32>(u_input.c, var_0.x) | _wgslsmith_mult_vec2_i32(var_0.ww, var_0.wy)), firstLeadingBit(var_0.xz), vec2<bool>(arg_3.a.x == true, true));
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: i32) -> Struct_4 {
    global2 = !vec4<bool>(false, false, all(select(vec4<bool>(false, global2.x, false, arg_1), vec4<bool>(global2.x, global2.x, true, arg_1), arg_1)) && false, arg_0.x);
    let var_0 = reverseBits(max(-select(~vec3<i32>(1i, global3.x, -46593i), select(vec3<i32>(global3.x, 68713i, global3.x), vec3<i32>(u_input.c, u_input.b, -1i), false), !global2.x), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 22933i, -1i), vec3<i32>(-35501i, arg_2, -55011i)))));
    global2 = !select(select(!select(vec4<bool>(global2.x, arg_0.x, false, arg_1), vec4<bool>(arg_0.x, arg_0.x, true, false), false), vec4<bool>(true, func_3(-619f, u_input.a.x, Struct_4(0u), global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), false, global2.x), vec4<bool>(true, global2.x, true, any(global2.ww))), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_1), any(select(select(global2.zwz, vec3<bool>(false, arg_1, false), global2.xxw), global2.xxy, all(global2.yzw))));
    var var_1 = Struct_4(_wgslsmith_sub_u32(~(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.zy)), u_input.a.x));
    let var_2 = Struct_2(countOneBits(1702i) == max(var_0.x, var_0.x), Struct_1(!(!(!vec3<bool>(false, arg_0.x, arg_1))), vec2<u32>(abs(61076u) | firstTrailingBit(u_input.a.x), 0u)), ~(~select(vec4<u32>(var_1.a, 0u, var_1.a, u_input.a.x), vec4<u32>(var_1.a, 62266u, var_1.a, u_input.a.x), true)), global1[_wgslsmith_index_u32(~(~37333u), 13u)], ~(~_wgslsmith_add_u32(reverseBits(0u), var_1.a)));
    return Struct_4(reverseBits(var_2.d.b.x));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_0 = global2.x;
    let var_1 = Struct_2(any(!(!vec2<bool>(global2.x, false))), Struct_1(select(!global2.ywy, global2.yww, global2.xww), vec2<u32>(arg_0.a, ~(52358u ^ u_input.a.x))), _wgslsmith_mult_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(5354u, 4294967295u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, 37854u, arg_0.a)) | ~vec4<u32>(1u, 0u, arg_0.a, arg_0.a)), vec4<u32>(1u, ~arg_0.a, 1u, ~(~1u))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~firstTrailingBit(func_2(vec2<bool>(global2.x, global2.x), true, -23637i).a), arg_0.a ^ ~0u), 13u)], 10898u);
    var var_2 = Struct_1(select(!var_1.d.a, !global2.wyy, select(vec3<bool>(var_1.b.a.x, var_1.d.a.x, u_input.a.x > 0u), select(!global2.wxw, select(vec3<bool>(true, true, var_1.d.a.x), var_1.b.a, var_1.b.a), true), vec3<bool>(var_1.b.a.x, global3.x <= 14361i, false))), min(~(~_wgslsmith_div_vec2_u32(var_1.c.ww, u_input.a.xx)), vec2<u32>(arg_0.a, 4294967295u & ~arg_0.a)));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> Struct_4 {
    let var_0 = any(!(!global2.zxx));
    var var_1 = vec4<bool>(global2.x & (min(_wgslsmith_sub_i32(6545i, u_input.c), ~2147483647i) < _wgslsmith_mult_i32(u_input.b, 0i)), false, var_0, any(!arg_0.b.a.zz));
    var var_2 = (_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3.x, arg_2.x, 1i, arg_2.x), _wgslsmith_add_vec4_i32(vec4<i32>(global3.x, arg_2.x, 2147483647i, arg_2.x), vec4<i32>(2333i, -9407i, 36377i, arg_2.x))), global0[_wgslsmith_index_u32(4294967295u, 25u)]) & min(_wgslsmith_div_vec4_i32(vec4<i32>(46850i, u_input.c, u_input.b, -2147483647i), vec4<i32>(2147483647i, global3.x, arg_2.x, 10862i)), select(-global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)] >> (vec4<u32>(0u, 36155u, arg_0.b.b.x, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(arg_0.a, var_0, var_1.x, global2.x)))) ^ vec4<i32>(47541i, reverseBits(-46736i), global3.x, -2147483647i);
    let var_3 = func_2(vec2<bool>(!(false | global2.x) & all(select(vec2<bool>(false, false), var_1.zx, false)), true), global2.x, u_input.b);
    let var_4 = Struct_2(any(!vec4<bool>(true, global2.x, true, var_1.x)), func_4(Struct_4(9044u)).b, abs(arg_0.c), Struct_1(select(vec3<bool>(arg_0.a, arg_0.b.a.x, global2.x), vec3<bool>(var_0 & false, true, var_0), func_4(func_2(vec2<bool>(true, true), true, -2147483647i)).a), u_input.a.xz), 50596u);
    return var_3;
}

fn func_1(arg_0: bool, arg_1: u32) -> StorageBuffer {
    global4 = _wgslsmith_mod_u32(arg_1, ~(~countOneBits(1u)));
    global1 = array<Struct_1, 13>();
    var var_0 = arg_1;
    global0 = array<vec4<i32>, 25>();
    let var_1 = func_5(func_4(func_2(vec2<bool>(true, global2.x), any(global2.zw), 1i)), arg_0, firstLeadingBit(vec2<i32>(global3.x, _wgslsmith_div_i32(select(0i, u_input.b, arg_0), ~18004i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(996f * -1100f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(328f, -211f)) * _wgslsmith_f_op_f32(1453f - -1276f))))));
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1070f, _wgslsmith_f_op_f32(min(442f, -1253f))))), -1004f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-899f * 1707f) + -1683f))), reverseBits(global0[_wgslsmith_index_u32(abs(3475u), 25u)]), ~(~vec4<u32>(u_input.a.x, ~42510u, 0u, 4294967295u)), u_input.a.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1948f)) * -1018f), -1000f, _wgslsmith_f_op_f32(round(1527f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-540f, -842f, -991f), vec3<f32>(-1511f, -1189f, -1321f), vec3<bool>(true, arg_0, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2776f, -713f, -1949f) + vec3<f32>(435f, -1636f, -1224f)), !global2.xzx))), select(global2.wzz, !global2.zzy, select(global3.x, 78425i, false) > u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, true, true, !global2.x);
    let var_1 = vec4<bool>(all(select(!select(vec3<bool>(false, false, global2.x), vec3<bool>(true, var_0.x, true), vec3<bool>(global2.x, global2.x, true)), var_0.xwz, !(var_0.x || true))), false, var_0.x, true);
    var var_2 = countOneBits(u_input.a.x);
    let x = u_input.a;
    s_output = func_1(true, abs(0u));
}

