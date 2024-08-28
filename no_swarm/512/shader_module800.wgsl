struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, true, true, false, true, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>) -> u32 {
    global0 = 0i;
    let var_0 = ~(vec2<u32>(4294967295u, ~_wgslsmith_add_u32(arg_0.a.a.a.x, arg_1.x)) | _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, arg_0.a.c.x), _wgslsmith_mult_vec2_u32(arg_0.a.c, abs(arg_1.xy))));
    var var_1 = Struct_4(~firstTrailingBit(-vec3<i32>(-1i, arg_0.a.d, arg_0.a.a.c)) | u_input.a, vec4<u32>(0u, arg_0.a.c.x << (abs(0u) % 32u), ~(~var_0.x), ~_wgslsmith_dot_vec3_u32(max(arg_1.yyz, arg_0.a.a.a), reverseBits(vec3<u32>(4294967295u, arg_0.a.c.x, 1u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-543f, arg_0.a.b.a))), arg_0.a.b.a) * vec2<f32>(arg_0.a.b.a, _wgslsmith_f_op_f32(-arg_0.a.b.a)));
    var var_3 = arg_0.a.b.a;
    return ~var_0.x;
}

fn func_2() -> f32 {
    let var_0 = vec3<bool>(true, _wgslsmith_add_u32(min(u_input.b, u_input.b) ^ (u_input.b >> (1u % 32u)), reverseBits(1u)) < (_wgslsmith_div_u32(u_input.b, ~12205u) | (u_input.b << (~81889u % 32u))), false);
    global1 = array<bool, 8>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(164f)))));
    let var_2 = Struct_2(vec3<u32>(abs(u_input.b), ~firstLeadingBit(func_3(Struct_5(Struct_3(Struct_2(vec3<u32>(1u, u_input.b, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 8u)], 24151i), var_1, vec2<u32>(u_input.b, u_input.b), u_input.d.x), var_0.x), vec4<u32>(4294967295u, 0u, 2914u, 0u))), 0u), false, reverseBits(u_input.a.x) ^ ~(~(-1i)));
    var var_3 = Struct_4(u_input.a, _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(99972u, u_input.b, var_2.a.x, 21514u), ~vec4<u32>(1u, u_input.b, 73486u, var_2.a.x)), ~max(~vec4<u32>(4294967295u, 51006u, 4294967295u, var_2.a.x), vec4<u32>(u_input.b, var_2.a.x, u_input.b, 0u))));
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = vec3<i32>(arg_0.c, arg_0.c, arg_0.c);
    global1 = array<bool, 8>();
    global1 = array<bool, 8>();
    let var_1 = arg_0;
    let var_2 = Struct_5(Struct_3(Struct_2(abs(arg_0.a), !global1[_wgslsmith_index_u32(~arg_0.a.x, 8u)], select(-1i, var_1.c, arg_0.b)), Struct_1(arg_2.x), vec2<u32>(0u, ~790u), 1i), -12032i >= arg_3.a.x);
    return var_2.a.b;
}

fn func_1() -> f32 {
    let var_0 = !(!(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 8u)], true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)], false, global1[_wgslsmith_index_u32(0u, 8u)]), global1[_wgslsmith_index_u32(42825u, 8u)]))));
    global0 = -u_input.d.x;
    var var_1 = select(var_0.yxw, !var_0.wwz, select(vec3<bool>(true, !(!global1[_wgslsmith_index_u32(4294967295u, 8u)]), true), var_0.wyw, any(var_0.wx)));
    var var_2 = func_4(Struct_2(vec3<u32>(u_input.b, ~1u, firstTrailingBit(76546u) >> (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)), !any(vec3<bool>(false, true, false)), -2147483647i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1495f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -2034f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-823f, 1557f, 1382f, 316f)))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1760f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 203f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f * 264f)))), Struct_4(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(290i, u_input.c, u_input.c), vec3<i32>(59601i, 10172i, u_input.d.x), var_1.x) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<i32>(u_input.a.x ^ -1i, _wgslsmith_add_i32(u_input.d.x, -4997i), countOneBits(u_input.d.x)), firstTrailingBit(u_input.a)), vec4<u32>(~u_input.b, 36438u, ~57330u, _wgslsmith_sub_u32(u_input.b, ~u_input.b))));
    global1 = array<bool, 8>();
    return -401f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_i32(~u_input.a.yy, abs(u_input.d));
    global1 = array<bool, 8>();
    var var_1 = vec3<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(-11252i, 2147483647i, 8212i, var_0.x), vec4<i32>(1i, var_0.x, -43041i, 1i)) ^ -2147483647i, -u_input.d.x, _wgslsmith_div_i32(var_0.x, _wgslsmith_mod_i32(1875i, ~(~u_input.a.x))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -239f), -280f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-714f, _wgslsmith_f_op_f32(func_1()), all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 8u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(32606u, 8u)], true, global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -260f))) + func_4(Struct_2(vec3<u32>(u_input.b, 4294967295u, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 8u)], u_input.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(2346f, 336f, -672f, -755f), vec4<f32>(-172f, 102f, -1072f, 1391f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, 2010f)), Struct_4(vec3<i32>(var_1.x, 15861i, -44441i), vec4<u32>(u_input.b, 72962u, 0u, 4294967295u))).a))));
    var_0 = -var_1.yx;
    let var_3 = Struct_4(select(~_wgslsmith_mult_vec3_i32(vec3<i32>(1420i, -29432i, 1i), vec3<i32>(u_input.c, var_0.x, var_1.x) & vec3<i32>(var_0.x, u_input.a.x, -2007i)), _wgslsmith_clamp_vec3_i32(u_input.a >> (~vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)), ~firstLeadingBit(vec3<i32>(-41841i, var_1.x, var_1.x)), ~vec3<i32>(13387i, 0i, var_1.x) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, var_1.x), u_input.a, u_input.a)), !(u_input.b != ~u_input.b)), firstLeadingBit(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 17556u, 0u, 96819u), vec4<u32>(15861u, 0u, 3049u, u_input.b), vec4<bool>(global1[_wgslsmith_index_u32(45593u, 8u)], true, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)])), ~vec4<u32>(1u, 4294967295u, u_input.b, u_input.b))));
    var_1 = var_3.a & var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

