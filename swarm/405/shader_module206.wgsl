struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 2147483647i;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = arg_3;
    let var_1 = vec4<i32>(1601i, var_0.x, _wgslsmith_clamp_i32(arg_0 & _wgslsmith_sub_i32(~2147483647i, firstTrailingBit(arg_0)), -abs(arg_2 >> (global2.c % 32u)), _wgslsmith_clamp_i32(firstTrailingBit(-1i), _wgslsmith_mod_i32(firstLeadingBit(arg_3.x), var_0.x), -29971i)), arg_0);
    var var_2 = Struct_5(Struct_3(vec3<i32>(_wgslsmith_div_i32(arg_3.x, abs(13051i)), 0i, var_0.x)));
    var var_3 = -max(vec2<i32>(arg_3.x, 8261i), -select(arg_3.xz, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -37245i), arg_3.zx), global2.a.x));
    var var_4 = min(var_1.zxx, ~firstTrailingBit(~var_1.xwx));
    return vec3<i32>(~var_0.x, var_0.x, _wgslsmith_sub_i32(~(-_wgslsmith_mult_i32(1i, 0i)), var_1.x ^ min(-14523i, 0i)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_5(Struct_3(min(-vec3<i32>(-18792i, 45053i, u_input.b), -func_3(u_input.b, arg_0, -2147483647i, vec3<i32>(u_input.b, 29465i, u_input.a)))));
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(arg_1.x + var_1.x), _wgslsmith_f_op_f32(select(186f, var_1.x, arg_0)), _wgslsmith_f_op_f32(var_1.x + var_1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 399f, var_1.x, 113f) * arg_1)) * _wgslsmith_f_op_vec4_f32(-arg_1))));
    global2 = Struct_1(global2.a, !global2.b, global2.c, reverseBits(~(~global2.d) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c, 4294967295u, global2.d.x, 4294967295u), vec4<u32>(1u, global2.c, 57749u, global2.c), global2.d)), select(!select(global2.e, vec2<bool>(false, global2.e.x), global2.d.x > 72909u), select(vec2<bool>(global2.a.x, true), select(vec2<bool>(global2.a.x, global2.a.x), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, arg_0)), arg_0), global2.a.yz), global2.c == 23704u));
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, abs(var_0.a.a.x), _wgslsmith_mod_i32(var_0.a.a.x, -8551i)), max(~vec3<i32>(18594i, -34328i, u_input.b), var_0.a.a)), var_0.a.a));
    return select(vec3<bool>(~(-37727i) < -_wgslsmith_mult_i32(var_0.a.a.x, -34849i), any(vec2<bool>(true, true)), false), select(global2.b, vec3<bool>(true, global2.e.x, true), true), global2.b);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = 2147483647i;
    global2 = Struct_1(global2.a, vec3<bool>(global2.e.x, !(true == global2.a.x), global2.a.x), 43577u, _wgslsmith_sub_vec4_u32(global2.d, global2.d), vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_f32(-3886f - arg_1.x);
    var var_2 = reverseBits(vec4<u32>(arg_2, 47329u, 1u, min(_wgslsmith_dot_vec3_u32(global2.d.www, vec3<u32>(global2.c, 0u, 1u)) | 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global2.d.x, global2.d.x), 4294967295u, firstTrailingBit(arg_2)))));
    global1 = ~arg_3.x;
    return Struct_1(!global2.a, select(func_2(all(vec3<bool>(true, false, global2.b.x)), arg_1), vec3<bool>(all(select(global2.a, vec4<bool>(true, global2.a.x, false, global2.b.x), global2.a.x)), global2.e.x, global2.e.x), global2.a.wyw), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, _wgslsmith_clamp_u32(arg_2 | arg_2, abs(757u), ~61469u), ~_wgslsmith_add_u32(1u, var_2.x), ~arg_2 >> (0u % 32u)), (~vec4<u32>(global2.d.x, 36245u, var_2.x, var_2.x) | global2.d) ^ (global2.d | _wgslsmith_div_vec4_u32(global2.d, global2.d))), ~vec4<u32>(arg_2, ~global2.c, firstLeadingBit(~1u), 100010u), global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(2147483647i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1095f, 1330f)), -456f, -777f, _wgslsmith_div_f32(-575f, -403f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, _wgslsmith_f_op_f32(885f + 492f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-1003f))))), global2.c << (1u % 32u), vec3<i32>(32580i, _wgslsmith_div_i32(min(u_input.b, ~u_input.b), countOneBits(u_input.b)), firstTrailingBit(abs(u_input.a)) | 37016i));
    global1 = ~(~(-33421i));
    let var_0 = Struct_5(Struct_3(countOneBits(~max(vec3<i32>(u_input.b, -50957i, u_input.b), vec3<i32>(u_input.a, 1937i, 0i)))));
    let var_1 = Struct_5(Struct_3(_wgslsmith_div_vec3_i32(-var_0.a.a, select(vec3<i32>(0i, var_0.a.a.x, 0i), var_0.a.a, 1i < u_input.b))));
    global1 = ~(-2147483647i);
    global0 = u_input.b;
    global1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) + 132f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)), false)));
}

