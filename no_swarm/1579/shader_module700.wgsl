struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, true, false, true), Struct_2(vec3<f32>(-387f, -723f, 403f), -895f), -1490f, 0u);

var<private> global1: Struct_1;

var<private> global2: vec3<f32> = vec3<f32>(-757f, 2377f, 201f);

var<private> global3: Struct_3 = Struct_3(vec4<bool>(false, false, true, false), Struct_2(vec3<f32>(-1838f, -709f, -1101f), -835f), -1000f, 18258u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(175f, -1278f, -671f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.a) - global3.b.a))), 1317f);
    var var_1 = global3.b;
    let var_2 = firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global3.d, global3.d, 4294967295u), ~vec3<u32>(1u, global0.d, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, global0.d, global0.d) << (vec3<u32>(70875u, 10874u, global3.d) % vec3<u32>(32u)), ~vec3<u32>(1u, 1u, global0.d))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(40219u, 33007u, global0.d, global0.d)), firstLeadingBit(vec4<u32>(global0.d, global0.d, global3.d, global0.d)))));
    var var_3 = false;
    let var_4 = u_input.a.x & -2147483647i;
    return arg_0;
}

fn func_3() -> u32 {
    global3 = Struct_3(vec4<bool>(!(!global0.a.x), global3.a.x, true, !global1.b.x), Struct_2(global0.b.a, global2.x), -613f, ~_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(global3.d, global3.d, 0u, 4294967295u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c, 45294u, 0u, u_input.c), vec4<u32>(33791u, global3.d, global0.d, global3.d), global0.a), vec4<u32>(u_input.c, global0.d, global3.d, 61550u))));
    var var_0 = vec4<bool>(all(!global3.a), any(select(global3.a.zxz, global0.a.wwz, global0.a.x)), all(vec2<bool>(true, all(vec2<bool>(true, false)))), false);
    var var_1 = !vec4<bool>(global0.a.x, !(!(false || global0.a.x)), all(!select(vec4<bool>(false, false, global3.a.x, global0.a.x), global0.a, global0.a)), !(!select(false, global1.a, global0.a.x)));
    let var_2 = 0u;
    var var_3 = max(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -20459i, -1i), vec4<i32>(u_input.a.x, 1i, global1.e.x, 1i)), vec4<i32>(10705i, 2147483647i, 2147483647i, u_input.b.x) ^ vec4<i32>(-1i, 27084i, global1.e.x, u_input.b.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-39762i, global1.e.x, global1.e.x, u_input.b.x), vec4<i32>(global1.e.x, 0i, global1.e.x, global1.e.x))), abs(min(u_input.b.x >> (var_2 % 32u), global1.e.x))) | u_input.a.x;
    return 1u;
}

fn func_2() -> StorageBuffer {
    let var_0 = min(_wgslsmith_div_u32(~30438u, select(max(~4294967295u, global3.d), func_3(), true)), ~(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 31175u), ~global3.d) | 8561u));
    let var_1 = Struct_1(all(select(!select(vec2<bool>(false, false), global3.a.zy, global1.a), select(vec2<bool>(false, false), global1.b.yy, select(vec2<bool>(false, global0.a.x), vec2<bool>(false, global1.b.x), vec2<bool>(global0.a.x, global0.a.x))), select(!vec2<bool>(global0.a.x, true), global3.a.xz, global1.b.zy))), !vec3<bool>(select(true, true, any(global3.a)), global1.a, true), _wgslsmith_f_op_vec2_f32(exp2(global0.b.a.yx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1719f - global3.c))))) + _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.c))))).x), select(global1.e, vec2<i32>(firstLeadingBit(u_input.b.x | -25965i), ~(1i >> (global0.d % 32u))), vec2<bool>(firstLeadingBit(12707u) == var_0, global0.a.x)));
    global3 = Struct_3(!vec4<bool>(select(true, false, global3.a.x), true, true, global1.a), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global3.b.a - global0.b.a), _wgslsmith_f_op_vec3_f32(-global3.b.a)))), _wgslsmith_f_op_f32(f32(-1f) * -118f)), var_1.d, 4294967295u);
    var var_2 = Struct_3(global3.a, global0.b, var_1.d, 36987u);
    var var_3 = _wgslsmith_div_u32(u_input.c, ~countOneBits(max(19597u, global0.d) >> (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f) * global0.b.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    let var_1 = ~1u;
    var var_2 = -(~u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1534f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1994f, -1331f) - 592f))));
    let var_4 = _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(470f, -376f) * global3.b.a.yx)))), global3.b.a.yz)));
    var var_5 = true;
    var var_6 = Struct_3(global3.a, global0.b, global3.b.b, ~_wgslsmith_clamp_u32(0u, ~global3.d, u_input.c) | firstTrailingBit(1u));
    let x = u_input.a;
    s_output = func_2();
}

