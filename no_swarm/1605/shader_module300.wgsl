struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-1787f, vec3<u32>(4294967295u, 0u, 1u));

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(1u, 7312u), vec2<u32>(2573u, 1u), vec2<u32>(0u, 25220u), vec2<u32>(0u, 4294967295u), vec2<u32>(53800u, 0u), vec2<u32>(42518u, 18586u), vec2<u32>(2658u, 34500u), vec2<u32>(35116u, 4294967295u), vec2<u32>(1u, 58164u), vec2<u32>(29470u, 0u), vec2<u32>(65316u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(27242u, 5212u), vec2<u32>(92030u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1u, 35358u), vec2<u32>(37562u, 21850u), vec2<u32>(1u, 18367u), vec2<u32>(23742u, 1u), vec2<u32>(7166u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(13369u, 0u), vec2<u32>(4294967295u, 53097u), vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1007u, 95965u), vec2<u32>(1u, 1u), vec2<u32>(1u, 42581u));

var<private> global3: Struct_2;

var<private> global4: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-333f, 1000f, 1072f, 456f), vec4<f32>(718f, -401f, -599f, -236f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_2(0i | arg_0.a);
    let var_1 = Struct_3(!vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), true, true), Struct_1(1246f, arg_2.zxz), _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(arg_2.x >> (_wgslsmith_add_u32(54487u, u_input.d.x | global1.b.x) % 32u), 2u)]), vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a, global0.a)) + -1144f)));
    var var_2 = Struct_2(-3037i);
    var var_3 = var_1;
    var var_4 = !var_3.a.xyy;
    return select(select(var_1.a, !var_1.a, true), var_1.a, !(any(vec2<bool>(true, false)) || (var_1.a.x && all(vec3<bool>(var_1.a.x, var_3.a.x, false)))));
}

fn func_2() -> bool {
    var var_0 = Struct_3(!func_3(Struct_2(global3.a & 2147483647i), Struct_4(Struct_2(global3.a), 799f, Struct_1(-563f, vec3<u32>(global0.b.x, global1.b.x, global1.b.x))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(21168u, 10629u, 33675u, 15546u), vec4<u32>(1u, global0.b.x, 4294967295u, 0u)), select(vec4<u32>(71415u, global0.b.x, u_input.a, global1.b.x), vec4<u32>(u_input.c, global0.b.x, global1.b.x, global1.b.x), true))), Struct_1(1000f, firstLeadingBit(firstLeadingBit(select(vec3<u32>(global0.b.x, 45673u, global0.b.x), u_input.d, vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 33541u, global1.b.x, global0.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.x, 54992u, global1.b.x, global1.b.x), vec4<u32>(global1.b.x, global0.b.x, 52322u, 19638u)))), 2u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, -1087f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1482f, global0.a) * vec2<f32>(-712f, -308f)))))));
    let var_1 = var_0.a;
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = !select(vec4<bool>(any(vec2<bool>(false, true)), !all(vec3<bool>(false, true, false)), true, true), vec4<bool>(select(func_2(), true, true), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-global0.a) >= _wgslsmith_f_op_f32(-arg_0.a), false), !select(vec4<bool>(true, true, true, true), func_3(Struct_2(arg_1.x), Struct_4(Struct_2(global3.a), global0.a, arg_0), vec4<u32>(global0.b.x, global1.b.x, global1.b.x, u_input.c)), func_3(Struct_2(arg_1.x), Struct_4(Struct_2(-2147483647i), global0.a, Struct_1(-371f, global0.b)), vec4<u32>(78016u, 69506u, global0.b.x, global0.b.x)).x));
    var var_1 = Struct_3(!vec4<bool>(var_0.x, !(!var_0.x), true, all(vec3<bool>(true, var_0.x, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-393f, _wgslsmith_f_op_f32(arg_0.a * global0.a)) * global1.a), ~(~(~global0.b))), global4[_wgslsmith_index_u32(global1.b.x, 2u)], vec2<f32>(_wgslsmith_div_f32(-848f, global0.a), 1f));
    var var_2 = reverseBits(13648i);
    global1 = Struct_1(1079f, u_input.d);
    global2 = array<vec2<u32>, 29>();
    return Struct_3(vec4<bool>(false, any(var_1.a), var_0.x, var_0.x), var_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1639f), _wgslsmith_f_op_f32(step(1035f, -247f)), _wgslsmith_f_op_f32(global0.a - global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(312f + var_1.c.x) - _wgslsmith_f_op_f32(max(arg_0.a, global1.a))))), _wgslsmith_f_op_vec2_f32(-var_1.d));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec2<bool> {
    let var_0 = vec4<u32>(~(~(~0u) >> (_wgslsmith_clamp_u32(~u_input.b.x, ~4294967295u, firstTrailingBit(4294967295u)) % 32u)), ~_wgslsmith_sub_u32(arg_0.b.b.x, ~(~global0.b.x)), 1u, global0.b.x);
    let var_1 = func_1(arg_0.b, vec2<i32>(~(-countOneBits(2147483647i)), global3.a));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1510f)), -1555f), max(abs(select(select(vec3<u32>(arg_0.b.b.x, 48551u, u_input.c), vec3<u32>(global1.b.x, 106873u, var_1.b.b.x), vec3<bool>(false, false, var_1.a.x)), ~vec3<u32>(0u, var_0.x, 37534u), var_1.a.x)), var_1.b.b));
    var_2 = func_1(arg_0.b, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(19990i, -1i), firstTrailingBit(vec2<i32>(6810i, global3.a))), -(~vec2<i32>(48176i, -4184i))), (_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global3.a), vec2<i32>(0i, global3.a)) << (vec2<u32>(4294967295u, var_2.b.x) % vec2<u32>(32u))) ^ abs(vec2<i32>(1i, global3.a)))).b;
    global1 = Struct_1(_wgslsmith_f_op_f32(-global0.a), var_0.zyy);
    return vec2<bool>(false, arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(83152u);
    let var_1 = !(!select(func_4(func_1(Struct_1(-1456f, vec3<u32>(0u, 4294967295u, 16866u)), vec2<i32>(global3.a, global3.a)), _wgslsmith_f_op_f32(ceil(global1.a))), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = -105f;
    let var_3 = Struct_3(!select(vec4<bool>(var_1.x, any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), 0u < global1.b.x, false), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(!var_1.x, any(vec2<bool>(false, true)), true, func_4(Struct_3(vec4<bool>(false, true, false, true), Struct_1(global0.a, global0.b), vec4<f32>(var_2, 1416f, global1.a, var_2), vec2<f32>(-533f, 2104f)), global1.a).x)), func_1(func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2341f), global1.b), vec2<i32>(-2147483647i, reverseBits(-2370i))).b, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global3.a), ~vec2<i32>(global3.a, 23311i)), ~max(vec2<i32>(0i, global3.a), vec2<i32>(14939i, 0i)))).b, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.b, ~_wgslsmith_sub_vec3_u32(~global1.b, global0.b)), 2u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, _wgslsmith_f_op_f32(406f + global0.a))))));
    global2 = array<vec2<u32>, 29>();
    let var_4 = Struct_2(global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, _wgslsmith_f_op_f32(round(-1703f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 * 565f), _wgslsmith_f_op_f32(abs(539f)))), global1.a)));
}

