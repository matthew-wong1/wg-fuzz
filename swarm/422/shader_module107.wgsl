struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -484f;

var<private> global1: vec2<i32> = vec2<i32>(28912i, -27684i);

var<private> global2: array<u32, 5> = array<u32, 5>(1u, 32686u, 4294967295u, 45980u, 1u);

var<private> global3: u32 = 0u;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    global4 = Struct_1(global4.a, select(!arg_2.b.b, !(!vec2<bool>(arg_0.c, false)), arg_0.b.b));
    global0 = 663f;
    global3 = reverseBits(4294967295u ^ firstLeadingBit(~(global4.a.x | arg_2.b.a.x)));
    let var_0 = Struct_2(27954u, arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.d)) - arg_0.d) + arg_2.d) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(486f + _wgslsmith_f_op_f32(-arg_2.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.d)) + _wgslsmith_f_op_f32(sign(3164f))))));
    global0 = _wgslsmith_f_op_f32(arg_2.d + arg_2.d);
    return 748f;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(106161u, Struct_1(vec4<u32>(39756u, global2[_wgslsmith_index_u32(12250u, 5u)], arg_0.x, 40590u), vec2<bool>(global4.b.x, true)), arg_1.c, arg_1.d), ~0i, arg_1, vec3<i32>(global1.x, -2147483647i, global1.x))), _wgslsmith_f_op_f32(-arg_1.d)))));
    global0 = _wgslsmith_f_op_f32(func_3(arg_1, u_input.a, arg_1, vec3<i32>(-u_input.a, _wgslsmith_mod_i32(~1i, max(select(0i, u_input.a, true), -global1.x)), reverseBits(firstLeadingBit(countOneBits(0i))))));
    let var_0 = Struct_3(arg_1, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(647f, 1717f, _wgslsmith_f_op_f32(ceil(-1785f)), _wgslsmith_f_op_f32(arg_1.d - 1f)))), arg_1, !select(vec3<bool>(true, select(false, true, arg_2.b.x), true), vec3<bool>(global4.b.x | arg_2.b.x, true, all(global4.b)), select(!vec3<bool>(arg_2.b.x, arg_2.b.x, true), vec3<bool>(arg_2.b.x, true, true), arg_1.d >= -1205f)));
    var var_1 = u_input.a;
    let var_2 = all(!arg_2.b);
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> i32 {
    global4 = arg_0.b;
    global0 = 396f;
    global0 = arg_0.d;
    var var_0 = !(!(!select(select(vec4<bool>(true, global4.b.x, arg_0.c, false), vec4<bool>(global4.b.x, false, true, arg_2.b.x), false), !vec4<bool>(arg_2.b.x, false, arg_2.b.x, arg_0.b.b.x), true)));
    let var_1 = ~select(countOneBits(~countOneBits(vec3<i32>(arg_1, -2147483647i, arg_3))), abs(vec3<i32>(arg_1, 2147483647i, arg_1) | abs(vec3<i32>(-1i, -2147483647i, -1i))), arg_2.b.x);
    return ~(~(-2147483647i));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global4 = Struct_1(vec4<u32>(reverseBits(abs(~53398u)), ~global2[_wgslsmith_index_u32(12330u, 5u)], global4.a.x, firstTrailingBit(_wgslsmith_sub_u32(u_input.c, u_input.b) | u_input.c)), arg_1.yx);
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, global1.x, -3401i), arg_0), -vec3<i32>(-13596i, -2147483647i, 1i)), arg_0), select(-1i, 0i, true), abs(_wgslsmith_mult_i32(func_4(func_2(global4.a, Struct_2(74877u, Struct_1(vec4<u32>(24072u, 12365u, 27600u, global4.a.x), arg_1.yx), false, -405f), Struct_1(vec4<u32>(24476u, 51941u, global2[_wgslsmith_index_u32(u_input.c, 5u)], 10760u), arg_1.yy)), -8714i, func_2(global4.a, Struct_2(1u, Struct_1(global4.a, vec2<bool>(true, global4.b.x)), global4.b.x, 745f), Struct_1(global4.a, global4.b)).b, arg_0.x ^ 2147483647i), -1i)));
    global0 = _wgslsmith_f_op_f32(-975f + -747f);
    var var_1 = true;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1915f)), 1000f);
    return func_2(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(88460u, 5u)], global2[_wgslsmith_index_u32(18182u, 5u)], 28709u, 0u), ~vec4<u32>(u_input.b, 21900u, 4294967295u, 29313u)), _wgslsmith_add_vec4_u32(vec4<u32>(func_2(vec4<u32>(0u, u_input.c, 0u, global4.a.x), Struct_2(2972u, Struct_1(vec4<u32>(global4.a.x, 19480u, global2[_wgslsmith_index_u32(16045u, 5u)], 30080u), arg_1.yy), false, -1431f), Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 5u)], 5u)], 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 5u)], 0u), global4.b)).a, global4.a.x, global2[_wgslsmith_index_u32(select(global4.a.x, 6985u, arg_1.x), 5u)], 13945u), ~(~global4.a))), Struct_2(global4.a.x, Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(global4.a, global4.a), vec4<u32>(1u, u_input.b, 4294967295u, global4.a.x), global4.a), !func_2(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.b, 5u)], 13569u, 0u), Struct_2(global4.a.x, Struct_1(vec4<u32>(global4.a.x, global2[_wgslsmith_index_u32(67947u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], u_input.b), vec2<bool>(arg_1.x, false)), true, 208f), Struct_1(vec4<u32>(11278u, 34923u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 5u)]), global4.b)).b.b), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-460f * 1f)))), func_2(global4.a, func_2(~global4.a, Struct_2(~14501u, func_2(global4.a, Struct_2(4294967295u, Struct_1(global4.a, arg_1.xx), arg_1.x, 434f), Struct_1(vec4<u32>(0u, global4.a.x, global4.a.x, global2[_wgslsmith_index_u32(1u, 5u)]), arg_1.yx)).b, global4.b.x | false, 1145f), func_2(vec4<u32>(u_input.b, 4294967295u, 19470u, 42307u), Struct_2(0u, Struct_1(vec4<u32>(1u, 26577u, 1u, 1u), vec2<bool>(false, false)), arg_1.x, 1355f), func_2(vec4<u32>(global4.a.x, u_input.c, 38684u, 4294967295u), Struct_2(u_input.c, Struct_1(global4.a, arg_1.yy), false, 493f), Struct_1(global4.a, vec2<bool>(true, global4.b.x))).b).b), Struct_1((global4.a & global4.a) << (vec4<u32>(global4.a.x, u_input.b, 1u, u_input.b) % vec4<u32>(32u)), vec2<bool>(true, true))).b).b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    return arg_1.a;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = reverseBits(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-987i, 0i), vec2<i32>(global1.x, u_input.a) ^ vec2<i32>(2147483647i, global1.x)), 1i), global1.x));
    let var_1 = firstTrailingBit(select(-1i, ~_wgslsmith_mult_i32(~global1.x, -var_0.x), !arg_0.b.b.x));
    global3 = ~71860u;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, arg_0.d, var_2.d, -446f) - vec4<f32>(-1109f, arg_0.d, 767f, -801f)) - vec4<f32>(-264f, -1000f, 178f, 535f)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f + 296f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-494f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1461f, -670f)))));
    global3 = u_input.c;
    var var_1 = func_6(func_5(vec3<i32>(-1i, max(u_input.a >> (global4.a.x % 32u), u_input.a), u_input.a), Struct_3(Struct_2(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global4.a.x, 5u)], global4.a.x), func_1(vec3<i32>(62125i, -2147483647i, 9648i), vec3<bool>(global4.b.x, false, true)), true, _wgslsmith_f_op_f32(ceil(var_0))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2132f, var_0, var_0, -3123f))), func_2(_wgslsmith_mod_vec4_u32(global4.a, global4.a), Struct_2(global4.a.x, Struct_1(global4.a, global4.b), global4.b.x, var_0), Struct_1(global4.a, global4.b)), select(select(vec3<bool>(false, global4.b.x, true), vec3<bool>(global4.b.x, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, global4.b.x, false), vec3<bool>(global4.b.x, true, global4.b.x))), vec4<bool>(func_2(_wgslsmith_clamp_vec4_u32(global4.a, global4.a, vec4<u32>(global2[_wgslsmith_index_u32(113446u, 5u)], 4945u, 31751u, global4.a.x)), func_2(vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(global4.a.x, 5u)], u_input.b, global2[_wgslsmith_index_u32(4294967295u, 5u)]), Struct_2(0u, Struct_1(global4.a, vec2<bool>(false, global4.b.x)), global4.b.x, 522f), Struct_1(vec4<u32>(1u, global2[_wgslsmith_index_u32(42592u, 5u)], 30024u, global2[_wgslsmith_index_u32(16045u, 5u)]), global4.b)), func_2(global4.a, Struct_2(4294967295u, Struct_1(global4.a, global4.b), false, var_0), Struct_1(global4.a, global4.b)).b).c, true, !global4.b.x || global4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1355f) != _wgslsmith_f_op_f32(ceil(var_0)))));
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = !vec4<bool>(all(!vec4<bool>(var_2.x, global4.b.x, global4.b.x, var_2.x)), !any(func_6(Struct_2(var_1.b.a.x, Struct_1(global4.a, vec2<bool>(var_1.c, var_2.x)), var_1.c, var_1.d)).b.b), !any(!var_2.zy), global4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(u_input.a, 1i)), vec2<i32>(0i | global1.x, u_input.a)) & -select(-vec2<i32>(u_input.a, -93015i), select(vec2<i32>(-1698i, global1.x), vec2<i32>(global1.x, -1i), var_3.yz), false));
}

