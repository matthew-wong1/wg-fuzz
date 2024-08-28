struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(1u, 1u);

var<private> global1: Struct_4;

var<private> global2: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5, arg_3: bool) -> i32 {
    var var_0 = 2697u;
    global2 = arg_0;
    var var_1 = abs(arg_2.d.x);
    let var_2 = _wgslsmith_div_vec2_i32(abs(~(~reverseBits(vec2<i32>(5222i, -2147483647i)))), arg_2.a.a.a.xy);
    var var_3 = _wgslsmith_f_op_f32(-614f + 1441f);
    return -1i;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a & (countOneBits(vec4<i32>(1i, 1i, u_input.a.x, -2147483647i)) | vec4<i32>(-10916i, global2.b, global1.a.a.x, u_input.a.x)));
    var_0 = -min(u_input.a.x, ~_wgslsmith_mod_i32(0i, 2147483647i)) >> (_wgslsmith_sub_u32(~global2.d.x | global0[_wgslsmith_index_u32(48449u, 2u)], firstLeadingBit(global2.d.x)) % 32u);
    global1 = global2.a;
    global2 = Struct_5(global2.a, _wgslsmith_sub_i32(func_3(Struct_5(Struct_4(global2.a.a, global2.c.x, arg_0), global2.a.a.a.x, vec2<bool>(true, global1.c), global2.d >> (global2.d % vec2<u32>(32u))), _wgslsmith_sub_i32(1i, global2.a.a.a.x & 0i), Struct_5(global2.a, _wgslsmith_mult_i32(-52086i, global1.a.a.x), global2.c, abs(vec2<u32>(global0[_wgslsmith_index_u32(30506u, 2u)], global2.d.x))), true), 37337i), !(!vec2<bool>(u_input.a.x < -60253i, global2.a.c)), vec2<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, global0[_wgslsmith_index_u32(56364u, 2u)], global2.d.x)), vec3<u32>(40269u, 1u, select(global2.d.x, global0[_wgslsmith_index_u32(1u, 2u)], global1.b))), abs(select(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(~global2.d.x, 2u)], true))));
    let var_1 = global2.a;
    return firstLeadingBit(u_input.a.x);
}

fn func_1() -> Struct_2 {
    global1 = Struct_4(Struct_3(u_input.a.yxw), true, true);
    let var_0 = 55387i;
    return Struct_2(_wgslsmith_add_vec2_u32(global2.d, global2.d), vec3<i32>(reverseBits(min(-2147483647i, func_2(global1.c))), global1.a.a.x, var_0), global2.b, !select(!vec3<bool>(true, global2.c.x, false), !select(vec3<bool>(global2.c.x, global2.a.b, false), vec3<bool>(false, global2.c.x, global2.a.b), vec3<bool>(true, false, true)), !global1.c & true));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = vec4<bool>(~(~abs(global2.d.x)) < (19168u << (~arg_0 % 32u)), select(true, true, select(global2.c.x, false, any(func_1().d.yx))), global2.a.b, any(!vec2<bool>(all(vec2<bool>(arg_1.d.x, arg_1.d.x)), any(vec2<bool>(global1.b, true)))));
    let var_1 = vec3<i32>(0i, -(~60064i), ~countOneBits(~global1.a.a.x));
    var var_2 = Struct_3(_wgslsmith_mult_vec3_i32(var_1 << (vec3<u32>(_wgslsmith_dot_vec2_u32(global2.d, global2.d), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(0u, arg_0, global2.d.x)), 4294967295u | global2.d.x) % vec3<u32>(32u)), u_input.a.zyz));
    var_0 = select(!(!(!select(vec4<bool>(global1.b, global1.c, false, global1.c), vec4<bool>(true, arg_1.d.x, true, true), vec4<bool>(true, global2.c.x, false, var_0.x)))), vec4<bool>(true || var_0.x, true, !all(vec4<bool>(true, false, arg_1.d.x, var_0.x)), !((1446u ^ arg_2) < min(global2.d.x, 70567u))), arg_1.d.x);
    let var_3 = vec2<u32>(~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(13064u, 80341u, arg_0, arg_2), vec4<u32>(6725u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)], arg_2, arg_2), vec4<u32>(arg_2, global2.d.x, global0[_wgslsmith_index_u32(arg_0, 2u)], 55573u))), ~reverseBits(vec4<u32>(0u, global2.d.x, arg_0, arg_1.a.x))), ~global2.d.x | max(global2.d.x, ~(~global2.d.x)));
    return all(!vec2<bool>(!all(vec3<bool>(arg_1.d.x, arg_1.d.x, global1.b)), all(select(vec4<bool>(false, global2.c.x, false, false), vec4<bool>(false, true, arg_1.d.x, global1.b), vec4<bool>(global1.c, true, global1.b, global2.c.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_5(Struct_4(global2.a.a, global2.c.x, all(vec3<bool>(true, arg_1, false)) && false), _wgslsmith_add_i32(u_input.a.x >> (31691u % 32u), arg_2.x), !global2.c, global2.d);
    let var_1 = select(arg_1, true, !((_wgslsmith_mod_u32(1u, 14581u) << (var_0.d.x % 32u)) < (30916u | (global0[_wgslsmith_index_u32(76844u, 2u)] ^ global2.d.x))));
    var_0 = Struct_5(global2.a, -34596i, select(var_0.c, vec2<bool>(var_0.c.x, !var_1), global2.c), vec2<u32>(~var_0.d.x, ~(_wgslsmith_clamp_u32(4294967295u, 28478u, 0u) & 1u)));
    var_0 = Struct_5(var_0.a, -var_0.b, !var_0.c, var_0.d);
    let var_2 = global2.a;
    return Struct_1(var_2.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-6959i);
    let var_1 = func_5(Struct_1(-8609i), func_4(20015u, func_1(), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, global2.d.x, global2.d.x), 2u)], 53747u)) || false, select(vec2<i32>(var_0.a, -19276i | var_0.a) >> (~max(vec2<u32>(37772u, 17879u), global2.d) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(firstLeadingBit(global2.a.a.a.yy), ~global2.a.a.a.zz), vec2<bool>(!all(vec3<bool>(true, global1.b, true)), true && (38017u > global0[_wgslsmith_index_u32(0u, 2u)]))));
    global1 = global2.a;
    let var_2 = Struct_4(Struct_3(vec3<i32>(~firstLeadingBit(1114i), firstLeadingBit(var_1.a), func_2(func_1().d.x))), !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-942f)))) < _wgslsmith_f_op_f32(ceil(-1661f))), all(vec3<bool>(func_1().d.x, !any(vec4<bool>(false, false, true, global1.c)), !global1.c)));
    var var_3 = ~((i32(-1i) * -(~u_input.a.x)) | ~_wgslsmith_clamp_i32(u_input.a.x, 1i, var_2.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global2.a.a.a, func_1().b), var_2.a.a.x), _wgslsmith_mod_u32(max(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(18021u, 2u)], global0[_wgslsmith_index_u32(44970u, 2u)]), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(48414u, 2u)], 4294967295u), 2u)], global2.d.x >> (global0[_wgslsmith_index_u32(0u, 2u)] % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4012u, 37113u, global2.d.x) | ~vec4<u32>(6744u, global0[_wgslsmith_index_u32(21072u, 2u)], 83534u, global2.d.x), vec4<u32>(global2.d.x ^ global2.d.x, 50890u, ~global0[_wgslsmith_index_u32(0u, 2u)], ~0u))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(784f + 837f) - _wgslsmith_f_op_f32(sign(-1000f))))), -361f), 1u);
}

