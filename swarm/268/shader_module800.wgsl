struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(true, false, global0.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_5(firstLeadingBit(arg_3.a.yww), arg_1.b, arg_1.c, arg_1.d);
    var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = Struct_2(true | !any(func_2()), vec4<bool>(arg_2, select(true, arg_3.a.x > -28175i, false) && all(select(global0.yz, vec2<bool>(true, global0.x), false)), !arg_0.x, !all(arg_0)), (var_0.c.a.xzx & (vec3<i32>(-2147483647i, -2147483647i, 1i) | abs(arg_1.c.a.www))) ^ _wgslsmith_mult_vec3_i32(-(arg_1.c.a.zxy ^ arg_3.a.xyw), vec3<i32>(~(-2147483647i), firstTrailingBit(arg_1.a.x), _wgslsmith_div_i32(1i, 1966i))), true, vec3<i32>(firstLeadingBit(var_0.a.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i & arg_3.a.x, select(var_0.c.a.x, arg_1.a.x, false)), -_wgslsmith_mult_i32(arg_3.a.x, arg_1.a.x)), arg_1.c.a.x));
    var_0 = arg_1;
    return firstLeadingBit(vec4<i32>(var_0.a.x, firstLeadingBit(arg_1.a.x), arg_3.a.x >> ((_wgslsmith_add_u32(u_input.b.x, u_input.c) >> (abs(u_input.a.x) % 32u)) % 32u), var_1.e.x));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = vec4<u32>(u_input.a.x, 4294967295u, ~_wgslsmith_dot_vec3_u32(countOneBits(u_input.b), vec3<u32>(u_input.a.x, 1u, u_input.c) >> (vec3<u32>(0u, u_input.b.x, u_input.c) % vec3<u32>(32u))), ~66909u) << (~_wgslsmith_clamp_vec4_u32(u_input.a, ~firstTrailingBit(vec4<u32>(81676u, 1u, u_input.c, 657u)), select(min(u_input.a, u_input.a), ~u_input.a, arg_0 || false)) % vec4<u32>(32u));
    let var_1 = global0.x;
    global0 = !select(vec3<bool>(true, any(!vec4<bool>(arg_0, global0.x, false, arg_0)), global0.x), select(vec3<bool>(true, arg_0 && false, false), !select(vec3<bool>(true, false, false), vec3<bool>(false, arg_0, false), false), true), select(!(!vec3<bool>(global0.x, arg_0, global0.x)), func_2(), any(!vec3<bool>(arg_0, true, false))));
    var var_2 = Struct_3(true, Struct_2(arg_0, !(!vec4<bool>(false, arg_0, arg_0, true)), abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(60315i, 93i, -7958i), ~vec3<i32>(-6461i, -35973i, 1i))), true, vec3<i32>(-1i) * -(~vec3<i32>(1i, 2147483647i, -1i))));
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(func_3(var_2.b.b, Struct_5(var_2.b.e, vec4<f32>(596f, 258f, -410f, 892f), Struct_1(vec4<i32>(-6668i, var_2.b.e.x, var_2.b.e.x, var_2.b.c.x)), vec2<f32>(702f, -567f)), true, Struct_1(vec4<i32>(1561i, 26316i, -3020i, var_2.b.c.x))) ^ func_3(var_2.b.b, Struct_5(var_2.b.c, vec4<f32>(1244f, -959f, 707f, 460f), Struct_1(vec4<i32>(var_2.b.c.x, var_2.b.e.x, 8151i, var_2.b.c.x)), vec2<f32>(-1377f, -2180f)), false, Struct_1(vec4<i32>(-1i, var_2.b.c.x, var_2.b.e.x, 40538i))), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_2.b.c.x, var_2.b.c.x, 1i, var_2.b.e.x), vec4<i32>(var_2.b.c.x, -21029i, 524i, -54215i) << (u_input.a % vec4<u32>(32u)))), abs(select(vec4<i32>(var_2.b.e.x, var_2.b.e.x, 2147483647i, var_2.b.c.x), -vec4<i32>(2147483647i, -2147483647i, var_2.b.c.x, -1i), global0.x)), vec4<i32>(2147483647i, 0i, var_2.b.c.x, var_2.b.c.x)));
    return -8314i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(all(!(!vec4<bool>(global0.x, false, global0.x, global0.x))), false, -_wgslsmith_mult_i32(func_1(false), ~(-1i)) < 2147483647i, true);
    let var_1 = u_input.a;
    global0 = vec3<bool>(false & (1027u > _wgslsmith_mod_u32(reverseBits(u_input.b.x), ~1u)), true, all(var_0));
    let var_2 = Struct_3(-22217i == (~abs(78993i) >> (u_input.c % 32u)), Struct_2(var_0.x, vec4<bool>(false, true, var_0.x, false), vec3<i32>(~_wgslsmith_sub_i32(-2147483647i, 0i), ~firstTrailingBit(66514i), _wgslsmith_sub_i32(45397i, ~(-53031i))), false, _wgslsmith_mult_vec3_i32(~(-vec3<i32>(14629i, 15583i, -1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -16613i), vec2<i32>(1i, -17475i)), _wgslsmith_mult_i32(1i, -2147483647i), 0i))));
    var var_3 = ~vec2<u32>(57341u, ~(~(0u >> (var_1.x % 32u))));
    var var_4 = func_3(var_2.b.b, Struct_5(var_2.b.e, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, 873f, -320f)))))), Struct_1(vec4<i32>(-1i) * -vec4<i32>(var_2.b.e.x, 1i, var_2.b.e.x, var_2.b.e.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-831f, -1848f), vec2<f32>(556f, 1229f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1877f, -363f), vec2<f32>(-416f, 1060f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(996f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 781f) * vec2<f32>(733f, -1042f)))))), var_2.b.c.x >= abs(-var_2.b.c.x), Struct_1(~(-_wgslsmith_div_vec4_i32(vec4<i32>(-67739i, 0i, 19731i, 2147483647i), vec4<i32>(-2147483647i, var_2.b.c.x, var_2.b.e.x, var_2.b.c.x))))).yyz;
    var var_5 = Struct_3(true, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.b.e.x, var_5.b.e.zy, vec3<i32>(-33317i, var_4.x, ~var_5.b.c.x), var_1.x, var_5.b.c);
}

