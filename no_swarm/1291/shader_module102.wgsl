struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-356f, -2176f, -1319f, 1052f);

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: array<bool, 21>;

var<private> global4: Struct_5 = Struct_5(vec3<bool>(true, true, true), Struct_3(Struct_2(vec4<u32>(9367u, 1u, 4294967295u, 0u), Struct_1(vec4<f32>(-1975f, -515f, -487f, 637f), true)), Struct_1(vec4<f32>(1318f, -329f, -1339f, 672f), true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    var var_0 = false;
    global3 = array<bool, 21>();
    global0 = vec4<f32>(282f, 829f, global4.b.a.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(329f)))));
    let var_1 = Struct_3(arg_0.b.a, Struct_1(arg_0.b.a.b.a, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_1.b.a.x)), _wgslsmith_f_op_vec2_f32(sign(global0.wz)), true))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.b.b.a.x, _wgslsmith_f_op_f32(sign(1589f))), _wgslsmith_div_f32(1000f, var_1.a.b.a.x)) - arg_0.b.a.b.a.xw)));
    return select(vec2<bool>(true, true), global4.a.xy, vec2<bool>(!arg_0.b.b.b, true));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 1076f, -638f, global4.b.b.a.x)))))))));
    var var_1 = vec3<bool>(all(select(!(!global4.a.yy), select(vec2<bool>(true, false), global4.a.yz, arg_1 | true), select(global4.a.yz, func_3(Struct_5(vec3<bool>(true, false, false), Struct_3(Struct_2(arg_2.a, Struct_1(arg_2.b.a, global4.a.x)), global4.b.b))), !global4.a.yz))), !all(global4.a.xy), arg_3.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1f)))));
    global2 = !arg_2.b.b;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.b.b.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.b.a.b.a.x, arg_3.x, _wgslsmith_div_f32(414f, -2487f), var_0.x), global4.b.b.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 233f, _wgslsmith_f_op_f32(-1737f * -553f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -898f) * global4.b.b.a.x), var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1437f))), -2084f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(min(-590f, arg_2.b.a.x))))), vec4<bool>(global4.b.a.b.b, global4.b.a.b.b, 257f >= global0.x, any(vec4<bool>(true, arg_2.b.b, var_1.x, false)))));
    return Struct_4(all(!func_3(Struct_5(global4.a, Struct_3(Struct_2(vec4<u32>(1u, u_input.b, 18805u, u_input.b), Struct_1(global4.b.a.b.a, var_1.x)), Struct_1(arg_0, false))))), arg_1, !(!(!any(global4.a))), global4.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~abs(1u), countOneBits(firstTrailingBit(global4.b.a.a.x)), _wgslsmith_div_u32(global4.b.a.a.x, 53873u)), vec4<u32>((33488u ^ u_input.a.x) << (_wgslsmith_add_u32(global4.b.a.a.x, global4.b.a.a.x) % 32u), _wgslsmith_dot_vec4_u32(select(global4.b.a.a, vec4<u32>(4294967295u, arg_2.a.x, 1u, global4.b.a.a.x), false), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 0u, global4.b.a.a.x, 0u), vec4<u32>(4294967295u, 4294967295u, global4.b.a.a.x, arg_2.a.x))), u_input.b, 23945u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: bool) -> vec3<i32> {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global4.b.a.b.a))) + global4.b.b.a) * vec4<f32>(694f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -168f))), -353f, _wgslsmith_f_op_f32(sign(768f)))), global4.a.x, Struct_2(_wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.e, arg_1.x, 8214u, u_input.e) >> (vec4<u32>(15559u, 4294967295u, u_input.e, 1u) % vec4<u32>(32u))), vec4<u32>(firstLeadingBit(u_input.d.x), arg_1.x, _wgslsmith_div_u32(79689u, 66540u), global4.b.a.a.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1000f - global4.b.b.a.x), _wgslsmith_f_op_f32(557f * 802f), -445f), !(-1i != arg_0.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global4.b.b.a.zy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-849f, 2470f)))))));
    let var_1 = Struct_2(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0.e, 4294967295u, global4.b.a.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, global4.b.a.a.x, 0u, 1u), var_0.d.a))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(global4.b.a.b.a)), true));
    let var_2 = -2079i;
    let var_3 = _wgslsmith_dot_vec2_u32(global4.b.a.a.zx, var_0.d.a.zw >> (u_input.d.xz % vec2<u32>(32u)));
    global2 = any(global4.a);
    return vec3<i32>(arg_0.x, 1i, -30732i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec2_i32(-(-vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(global4.b.a.a.x, u_input.e) % vec2<u32>(32u))), firstLeadingBit(~(-vec2<i32>(u_input.c, 13716i))));
    let var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(~(vec3<i32>(var_0, -13231i, var_0) | func_1(vec2<i32>(-2147483647i, u_input.c), u_input.d, global4.b.a.a.yzy, false))), vec3<i32>(select(~0i, select(~(-2147483647i), _wgslsmith_div_i32(u_input.c, u_input.c), true), func_2(global4.b.b.a, global3[_wgslsmith_index_u32(u_input.b, 21u)], global4.b.a, global0.yy).b == !global3[_wgslsmith_index_u32(global4.b.a.a.x, 21u)]), -func_1(vec2<i32>(u_input.c, -1i), u_input.d, abs(vec3<u32>(u_input.e, u_input.a.x, 4704u)), func_2(global4.b.b.a, true, Struct_2(vec4<u32>(1u, global4.b.a.a.x, 0u, global4.b.a.a.x), Struct_1(vec4<f32>(663f, -294f, global0.x, global0.x), global3[_wgslsmith_index_u32(9789u, 21u)])), vec2<f32>(-2415f, -202f)).b).x, min(~(-var_0), -_wgslsmith_mod_i32(2147483647i, u_input.c))));
    let var_2 = global4.b;
    var var_3 = Struct_4(abs(countOneBits(_wgslsmith_mod_i32(-2147483647i, 5840i))) <= func_1(abs(vec2<i32>(var_1, u_input.c) | vec2<i32>(24747i, u_input.c)), ~u_input.d, firstLeadingBit(vec3<u32>(global4.b.a.a.x, 7272u, u_input.e)) ^ countOneBits(vec3<u32>(29001u, var_2.a.a.x, var_2.a.a.x)), true).x, true, !(~global4.b.a.a.x != var_2.a.a.x), Struct_2(~vec4<u32>(~var_2.a.a.x, 1u, 4294967295u, global4.b.a.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-563f, -417f, global4.b.a.b.a.x, var_2.a.b.a.x))), !global3[_wgslsmith_index_u32(~global4.b.a.a.x, 21u)])), 5054u);
    global2 = var_3.c;
    var var_4 = var_2.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(firstTrailingBit(1i), _wgslsmith_div_i32(~var_0, 1i), -1i, ~0i), -1000f, vec3<u32>(func_2(vec4<f32>(_wgslsmith_f_op_f32(-var_3.d.b.a.x), -1087f, _wgslsmith_f_op_f32(-1886f + var_2.a.b.a.x), _wgslsmith_f_op_f32(-global4.b.b.a.x)), u_input.c == -12556i, global4.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_3.d.b.a.wx)))).e, reverseBits(~0u) >> (firstTrailingBit(_wgslsmith_mult_u32(26107u, 31441u)) % 32u), 57677u), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.a.x, 159f, global4.b.a.b.a.x, global4.b.a.b.a.x) + vec4<f32>(-422f, global0.x, var_3.d.b.a.x, var_3.d.b.a.x)))), global3[_wgslsmith_index_u32(4294967295u, 21u)] | true, Struct_2(_wgslsmith_mod_vec4_u32(var_3.d.a, vec4<u32>(4294967295u, u_input.e, global4.b.a.a.x, 18472u) ^ vec4<u32>(1u, u_input.b, 58688u, u_input.a.x)), Struct_1(vec4<f32>(global0.x, -301f, var_2.b.a.x, 1055f), false)), _wgslsmith_div_vec2_f32(var_2.a.b.a.zy, vec2<f32>(-231f, 158f))).d.b.a.x, vec4<u32>(firstTrailingBit(min(_wgslsmith_mod_u32(var_2.a.a.x, 21212u), abs(global4.b.a.a.x))), 13067u, global4.b.a.a.x, ~_wgslsmith_div_u32(_wgslsmith_div_u32(var_3.e, global4.b.a.a.x), min(1u, 24582u))));
}

