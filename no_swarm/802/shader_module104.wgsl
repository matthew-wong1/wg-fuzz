struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = true;

var<private> global2: u32 = 49506u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_4 {
    return Struct_4(2147483647i);
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = 0u;
    var var_1 = Struct_4(-25044i << ((var_0 ^ select(6812u & global0.b.b, min(1u, 42425u), true)) % 32u));
    var var_2 = -1826f;
    global0 = Struct_2(global0.a, global0.b, arg_0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(arg_0.x, -2147483647i) << (vec2<u32>(50728u, 0u) % vec2<u32>(32u))), vec2<i32>(-global0.c, _wgslsmith_mult_i32(var_1.a, arg_0.x))) & -4757i, all(vec2<bool>(true, !global0.e)));
    let var_3 = any(!(!vec3<bool>(global0.c == global0.b.a.x, global0.e, any(vec4<bool>(false, true, global0.e, false)))));
    return countOneBits(reverseBits(vec3<u32>(reverseBits(1u), firstTrailingBit(var_0), 5562u)));
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(func_3(global0.b.a.ww), vec3<u32>(_wgslsmith_add_u32(0u, ~global0.b.b), ~max(global0.b.b, global0.b.b), global0.b.b)), global0.b.b, ~global0.b.b, ~(27877u | _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.b.b, 1u), abs(global0.b.b))));
    let var_1 = ~select(vec3<i32>(_wgslsmith_sub_i32(0i, 30607i) >> (_wgslsmith_dot_vec3_u32(var_0.ywy, vec3<u32>(var_0.x, 15752u, var_0.x)) % 32u), max(_wgslsmith_clamp_i32(18694i, u_input.d.x, 7937i), global0.c), u_input.a & global0.c), vec3<i32>(u_input.d.x, -1i, _wgslsmith_div_i32(-25323i | u_input.d.x, -2147483647i)), vec3<bool>(false, true, any(select(vec4<bool>(global0.e, global0.e, true, false), vec4<bool>(false, false, false, global0.e), global0.e))));
    var var_2 = Struct_4(6027i);
    var var_3 = Struct_4(~_wgslsmith_mult_i32(0i, reverseBits(~global0.c)));
    var_0 = ~firstTrailingBit(vec4<u32>(var_0.x, 142354u | ~var_0.x, global0.b.b, reverseBits(9176u)));
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a + -1125f))), global0.b, i32(-1i) * -2147483647i, -2147483647i, global0.e);
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.c <= reverseBits(-firstTrailingBit(arg_2.b.a.x));
    global2 = reverseBits(66786u);
    let var_1 = _wgslsmith_f_op_f32(-1173f - 1163f);
    var var_2 = 72647u;
    let var_3 = ~_wgslsmith_clamp_vec3_i32(max(firstTrailingBit(~u_input.c), func_2().b.a.wwz), global0.b.a.yxx, arg_2.b.a.zyw);
    return max(~15293u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1f, ~(~max(~vec4<u32>(1u, 4294967295u, global0.b.b, 0u), vec4<u32>(98971u, global0.b.b, 1u, 89073u))));
    var var_1 = i32(-1i) * -37183i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global0.a, 346f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(108f, global0.a, 875f, global0.a))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(123f, global0.a, -480f, 820f), vec4<f32>(global0.a, -447f, 1036f, global0.a))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, _wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_div_f32(1000f, -914f), 2207f)));
    let var_3 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(25711u, ~0u, 1u, _wgslsmith_mult_u32(global0.b.b, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.b.b, global0.b.b, global0.b.b, global0.b.b), max(vec4<u32>(global0.b.b, 1u, 5417u, global0.b.b), vec4<u32>(global0.b.b, global0.b.b, 0u, 0u)))), abs(vec4<u32>(~_wgslsmith_sub_u32(global0.b.b, global0.b.b), ~59689u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(51348u, global0.b.b, 13999u), vec3<u32>(1u, 14527u, global0.b.b))), global0.b.b)));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.a, _wgslsmith_f_op_f32(-global0.a)), ~func_4(_wgslsmith_f_op_vec2_f32(var_2.yz - var_2.wy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1008f * global0.a)), func_2()), _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, func_2().b.b), ~(~countOneBits(4294967295u))), 1f, 2147483647i);
}

