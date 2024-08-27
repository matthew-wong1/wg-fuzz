struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 239f;

var<private> global1: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> vec2<i32> {
    global1 = array<vec4<bool>, 17>();
    global1 = array<vec4<bool>, 17>();
    var var_0 = any(select(vec3<bool>(true, true, true), !vec3<bool>(false, true, arg_0.x), ~arg_3.b.x < arg_1.b.x)) || !all(select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_1.b.x), 17u)], !vec4<bool>(false, arg_0.x, false, true), select(false, true, arg_0.x)));
    var var_1 = arg_1.c;
    let var_2 = Struct_2(~(~firstLeadingBit(u_input.a.yzw)), u_input.a.xzx, any(select(select(!vec4<bool>(arg_3.a, arg_0.x, true, arg_0.x), vec4<bool>(arg_3.a, arg_3.a, arg_0.x, true), any(vec4<bool>(false, arg_3.a, false, arg_3.a))), select(vec4<bool>(arg_0.x, false, arg_0.x, true), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_3.a), true), !vec4<bool>(true, true, true, arg_3.a))));
    return arg_1.d;
}

fn func_2() -> Struct_3 {
    global1 = array<vec4<bool>, 17>();
    let var_0 = ~_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(-vec2<i32>(-36748i, -1i), ~vec2<i32>(25843i, 10791i)), abs(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-37781i, -26694i)))));
    var var_1 = vec2<u32>(u_input.a.x >> (7538u % 32u), _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 0u))), u_input.a.x));
    let var_2 = Struct_1(-784f, ~_wgslsmith_mult_vec2_u32(vec2<u32>(~var_1.x, 42980u), u_input.a.xx | u_input.a.wz), _wgslsmith_f_op_f32(ceil(-423f)), firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(-16522i, var_0)), func_3(vec2<bool>(false, true), Struct_1(220f, u_input.a.xx, 1676f, vec2<i32>(var_0, var_0)), Struct_3(1u), Struct_4(false, vec3<u32>(var_1.x, 1u, u_input.a.x)))), func_3(vec2<bool>(false, false), Struct_1(1000f, vec2<u32>(var_1.x, 46233u), -599f, vec2<i32>(var_0, var_0)), Struct_3(8685u), Struct_4(true, vec3<u32>(u_input.a.x, 10720u, 4294967295u))) ^ -vec2<i32>(var_0, 1i))));
    var var_3 = 31239u;
    return Struct_3(_wgslsmith_add_u32(0u, var_1.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_4) -> i32 {
    global1 = array<vec4<bool>, 17>();
    var var_0 = func_2();
    var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(327f, _wgslsmith_div_f32(-317f, arg_1.x)))));
    let var_1 = arg_2.b;
    return -(firstTrailingBit(1i) << (21425u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32((vec3<i32>(-2147483647i, 0i, func_1(vec3<bool>(true, true, true), vec3<f32>(-220f, 142f, 560f), Struct_4(true, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))) | -vec3<i32>(-2147483647i, 2147483647i, 0i)) << ((~reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), _wgslsmith_mod_vec3_u32(u_input.a.zyw, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(~vec3<i32>(-21183i, ~1i, min(2147483647i, 0i))));
    global0 = 1307f;
    var var_1 = Struct_1(-521f, max(u_input.a.xy, vec2<u32>(~(~0u), ~max(u_input.a.x, 17170u))), -390f, var_0.zz);
    var var_2 = abs(var_1.d.x);
    let var_3 = Struct_2(u_input.a.yxz, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(~var_1.b.x, 1067u ^ var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 86638u, 31515u), ~vec3<u32>(1u, u_input.a.x, var_1.b.x))), vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 42037u, u_input.a.x, 4294967295u), u_input.a), ~(~0u))), any(select(vec2<bool>(any(vec3<bool>(true, false, false)), false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a)))) - 1264f), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, 4294967295u, 1u) ^ vec3<u32>(u_input.a.x, u_input.a.x, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, var_1.b.x, var_3.a.x), vec3<u32>(1u, var_1.b.x, 4294967295u)))), _wgslsmith_f_op_f32(var_1.a * var_1.c), _wgslsmith_mult_vec2_i32(firstLeadingBit(var_1.d), vec2<i32>(-var_1.d.x, -7330i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, abs(~_wgslsmith_div_u32(~u_input.a.x, ~var_3.a.x)), ~u_input.a.x, var_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-262f, 1229f), 929f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, 2889f), vec2<f32>(-1334f, 1000f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(881f, var_1.c)))))));
}

