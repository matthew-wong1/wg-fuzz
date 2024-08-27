struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(0i, 29479i, 1i, -28144i, 1i, i32(-2147483648), 13893i, -4381i, -15038i, 2147483647i, 32829i, 29801i, -36638i, 2147483647i, 11971i, 2147483647i, 2147483647i, i32(-2147483648), -1i);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = -(~(u_input.b >> (16439u % 32u)) << (34051u % 32u)) ^ 0i;
    global1 = array<Struct_2, 26>();
    let var_1 = Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    let var_2 = vec4<u32>(arg_0, u_input.c, ~(~1u), _wgslsmith_mod_u32(0u, firstLeadingBit(arg_0)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1) * arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1, arg_1))))));
    return i32(-1i) * -19830i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_u32(u_input.c, 0u, ~1u) & ~4294967295u;
    let var_1 = arg_2;
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~u_input.c, 19u)], -u_input.e & (u_input.b << (u_input.c % 32u))) & _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.c, 19u)], 7059i), vec3<i32>(-44362i, 2147483647i, -2147483647i), vec3<bool>(var_1.b.a.x, var_1.b.a.x, arg_0.a.x)) | vec3<i32>(-19751i, global0[_wgslsmith_index_u32(0u, 19u)], u_input.e), vec3<i32>(abs(-2147483647i), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), func_3(0u, -402f))), countOneBits(_wgslsmith_mod_i32(1i, u_input.b)), 1i, abs(reverseBits(60462i)));
    var var_3 = global1[_wgslsmith_index_u32(countOneBits(u_input.c & (_wgslsmith_sub_u32(u_input.c, u_input.c) ^ 17885u)), 26u)];
    var_3 = Struct_2(arg_2.b, Struct_1(select(vec2<bool>(arg_2.b.a.x, true), vec2<bool>(44842i > var_2.x, var_3.a.a.x), var_1.b.a)));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(floor(1150f)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, -1395f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: u32) -> vec4<bool> {
    var var_0 = !(!(!vec4<bool>(u_input.c < u_input.c, true, all(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, false, false, false)))));
    var var_1 = vec4<i32>(1i, -2147483647i, u_input.b, _wgslsmith_mult_i32(~(~u_input.b), 14610i));
    let var_2 = 1u;
    global0 = array<i32, 19>();
    let var_3 = 2147483647i;
    return vec4<bool>(!(!(true | var_0.x)) || (_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2, 7782u, arg_2, var_2), vec4<u32>(u_input.c, var_2, 71887u, arg_2), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 13115u, arg_2, 0u), vec4<u32>(3692u, arg_2, u_input.c, 0u))) > u_input.c), !var_0.x, true, ~abs(~1u) >= ~u_input.c);
}

fn func_1() -> bool {
    global0 = array<i32, 19>();
    return !select(false, true, true) || all(func_4((global0[_wgslsmith_index_u32(u_input.c, 19u)] << (4294967295u % 32u)) >> (~u_input.c % 32u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<bool>(true, false)), -423f, global1[_wgslsmith_index_u32(u_input.c, 26u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2107f, 433f) * vec2<f32>(411f, -1202f)), select(true, false, false))), min(countOneBits(20682u), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 19>();
    let var_0 = vec4<bool>(func_1() && false, _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, u_input.a.x, 2147483647i), vec4<i32>(-11732i, global0[_wgslsmith_index_u32(4294967295u, 19u)], 1i, -2147483647i)), ~vec4<i32>(2147483647i, 7437i, global0[_wgslsmith_index_u32(0u, 19u)], u_input.e)) >= -24515i, all(vec2<bool>(true, all(vec2<bool>(true, true)))), false);
    global1 = array<Struct_2, 26>();
    var var_1 = var_0;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - 1335f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1034f - -1107f))), 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-720f - -314f), 1538f)));
    let var_3 = abs(~reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 1i, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<i32>(-1i, 2147483647i, global0[_wgslsmith_index_u32(u_input.c, 19u)]), vec3<i32>(23933i, global0[_wgslsmith_index_u32(1u, 19u)], -1i)))) ^ select(abs(vec3<i32>(u_input.e, 1i, 0i) ^ (vec3<i32>(u_input.d, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 19u)]) & vec3<i32>(u_input.a.x, u_input.d, 87962i))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(reverseBits(vec3<i32>(u_input.b, u_input.b, -1i))), ~_wgslsmith_add_vec3_i32(vec3<i32>(22861i, global0[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i), vec3<i32>(49104i, u_input.a.x, 44977i)), _wgslsmith_sub_vec3_i32(select(vec3<i32>(24379i, -13617i, u_input.e), vec3<i32>(2147483647i, -39913i, 10602i), var_1.yzw), vec3<i32>(global0[_wgslsmith_index_u32(34450u, 19u)], -1i, u_input.d))), vec3<bool>(func_1(), var_1.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(~var_3.x), -15660i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_3.yx, vec2<i32>(u_input.b, u_input.a.x)), u_input.a)) & var_3, vec4<f32>(-551f, var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - 956f), var_2.x)))), -780f), ~vec3<u32>(max(1u, 1u), u_input.c, min(66541u, u_input.c)) >> (reverseBits(countOneBits(countOneBits(vec3<u32>(u_input.c, u_input.c, 4294967295u)))) % vec3<u32>(32u)), u_input.e);
}

