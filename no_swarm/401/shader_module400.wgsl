struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_4;

var<private> global2: array<Struct_3, 13>;

var<private> global3: array<Struct_1, 23>;

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(4294967295u, 19693i), Struct_1(29581u, -2450i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    return global1.a.x != _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~global1.a.zz, ~vec2<i32>(u_input.c, u_input.c)), -20204i), -select(~(-49286i), 1i, true));
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_3, 13>();
    var var_0 = select(vec2<bool>(false, func_3(true) | any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))), vec2<bool>(true, true));
    let var_1 = Struct_1(u_input.b, i32(-1i) * -10921i);
    var var_2 = Struct_2(abs(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, -14051i), vec4<i32>(2147483647i, u_input.c, 28137i, 2147483647i)), countOneBits(vec4<i32>(-24967i, 0i, var_1.b, var_1.b))) << ((abs(vec4<u32>(0u, 0u, u_input.a.x, 1u)) & ~vec4<u32>(4294967295u, 0u, var_1.a, var_1.a)) % vec4<u32>(32u))));
    var var_3 = Struct_2(~abs(var_2.a));
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.b << ((u_input.b >> (~u_input.a.x % 32u)) % 32u), u_input.b), 17264u), 13u)];
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(0u, 13u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(var_0.c.x, arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-870f, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -758f) * _wgslsmith_f_op_f32(-var_0.c.x)))));
    let var_2 = vec4<i32>(max(~global1.a.x, 1i), -(~_wgslsmith_mod_i32(var_0.a.b, u_input.c)), select(-4625i, u_input.c, true), ~(-1i)) << (~(~select(~vec4<u32>(26477u, var_0.a.a, var_0.a.a, u_input.b), ~vec4<u32>(95151u, var_0.a.a, var_0.a.a, 1u), !vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x))) % vec4<u32>(32u));
    var var_3 = 493f;
    var var_4 = ~_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.yz >> (vec2<u32>(~4294967295u, var_0.a.a) % vec2<u32>(32u)));
    return func_2();
}

fn func_4(arg_0: Struct_3) -> f32 {
    global4 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.c.yy)) - _wgslsmith_f_op_vec2_f32(select(arg_0.c.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.c.wz)))), any(arg_0.b))));
    var var_1 = Struct_4(_wgslsmith_mult_vec3_i32(firstTrailingBit((vec3<i32>(-39355i, 0i, 25920i) | vec3<i32>(u_input.c, -16122i, 7686i)) | global1.a), reverseBits(vec3<i32>(global1.a.x ^ u_input.c, 0i, _wgslsmith_mult_i32(-1i, u_input.c)))));
    let var_2 = Struct_2(_wgslsmith_add_vec4_i32(-vec4<i32>(global1.a.x, u_input.c, -41889i, ~5071i), -select(max(vec4<i32>(global1.a.x, var_1.a.x, u_input.c, var_1.a.x), vec4<i32>(arg_0.a.b, 11502i, 1i, u_input.c)), min(vec4<i32>(2147483647i, u_input.c, 10459i, 2147483647i), vec4<i32>(u_input.c, -2147483647i, arg_0.a.b, -64382i)), !vec4<bool>(true, false, false, arg_0.b.x))));
    var var_3 = arg_0.b.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -303f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 23>();
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(select(1307f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_1(-340f)))))), true));
    var var_2 = ~(global1.a.x ^ 2147483647i);
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(528f, 1331f)), func_1(-421f).c.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(232f, -397f) - vec2<f32>(-1931f, -1791f)) - _wgslsmith_div_vec2_f32(vec2<f32>(227f, -716f), vec2<f32>(1213f, 1225f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(779f, 1860f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(359f, -582f)))))));
}

