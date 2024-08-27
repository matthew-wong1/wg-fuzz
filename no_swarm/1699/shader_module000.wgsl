struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: Struct_4,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false));

var<private> global1: array<vec4<f32>, 15>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    global1 = array<vec4<f32>, 15>();
    var var_0 = select(_wgslsmith_dot_vec2_u32(~(arg_1.yz & arg_0.d), ~arg_0.d), u_input.b, !(u_input.c <= reverseBits(1u)));
    global0 = array<vec4<bool>, 23>();
    let var_1 = Struct_3(select(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-88526i, 6031i), vec2<i32>(arg_2.b.x, 1i)), ~arg_0.c.c.b.b.x) == (select(-1i, arg_0.c.c.b.b.x, false) | reverseBits(2147483647i)), true, true), Struct_2(arg_0.c.d.a, countOneBits(vec4<i32>(1i, firstTrailingBit(arg_0.c.c.b.b.x), 2147483647i << (u_input.c % 32u), min(-38848i, arg_2.b.x)))));
    var_0 = u_input.b;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 40865u, 61246u, u_input.b), vec4<u32>(1u, arg_0.d.x, 0u, arg_1.x))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(arg_0.d.x, 27115u, arg_1.x, 42398u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 44588u, arg_0.d.x, u_input.a), vec4<u32>(33422u, u_input.a, 1u, 75008u)))), vec4<u32>(~_wgslsmith_div_u32(arg_0.d.x, 4294967295u), 1u, 48037u, ~(0u >> (arg_0.d.x % 32u)))), ~countOneBits(vec4<u32>(4294967295u >> (arg_1.x % 32u), ~1u, _wgslsmith_clamp_u32(arg_1.x, arg_0.d.x, 119799u), u_input.c >> (arg_0.d.x % 32u))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> bool {
    global1 = array<vec4<f32>, 15>();
    let var_0 = min(func_3(Struct_5(vec2<bool>(true, true), ~14893i, Struct_4(589f, Struct_1(304f), Struct_3(true, Struct_2(Struct_1(-941f), vec4<i32>(-2147483647i, -1i, -2147483647i, 10587i))), Struct_2(Struct_1(-1715f), vec4<i32>(2147483647i, -2147483647i, -1i, 17009i)), -257f), vec2<u32>(54250u, 12488u)), vec3<u32>(1u << (u_input.c % 32u), 0u, 1u), Struct_2(Struct_1(307f), vec4<i32>(0i, -14554i, 1i, 34900i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_div_f32(1892f, -202f))), _wgslsmith_div_u32(arg_1.x, u_input.a)) | ~24273u;
    var var_1 = Struct_2(Struct_1(1000f), -vec4<i32>(46691i, i32(-1i) * -2147483647i, 15669i << (min(41933u, var_0) % 32u), 1i));
    global1 = array<vec4<f32>, 15>();
    let var_2 = true;
    return false & all(!vec3<bool>(true, all(vec4<bool>(true, var_2, var_2, var_2)), var_2));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_5, arg_3: i32) -> vec4<bool> {
    var var_0 = arg_2.c.d.b & arg_2.c.c.b.b;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1546f - -932f)), -vec4<i32>(countOneBits(~var_0.x), -1i, ~3873i, arg_1.b.b.x));
    let var_2 = true == !(!func_2(arg_2.d.x, vec4<u32>(4294967295u, 0u, arg_2.d.x, arg_2.d.x)) && all(select(vec4<bool>(true, true, arg_2.a.x, true), global0[_wgslsmith_index_u32(4182u, 23u)], false)));
    let var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-349f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.a, var_1.a.a)))), 146f, _wgslsmith_div_f32(arg_2.c.b.a, _wgslsmith_f_op_f32(abs(1000f)))));
    return select(global0[_wgslsmith_index_u32(1u, 23u)], vec4<bool>(true, !arg_2.a.x, arg_2.c.c.a, any(!vec2<bool>(arg_1.a, var_3.c.c.a))), vec4<bool>(func_2(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.d.x, 0u, var_3.d.x), vec3<u32>(1u, var_3.d.x, u_input.b))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.d.x, var_3.d.x, 4294967295u, 22439u), vec4<u32>(var_3.d.x, u_input.a, 157295u, 20017u), vec4<u32>(65862u, u_input.b, u_input.a, 92971u)) & vec4<u32>(arg_2.d.x, var_3.d.x, 0u, 4839u)), !any(arg_2.a), func_2(countOneBits(arg_2.d.x | 11072u), vec4<u32>(~95974u, _wgslsmith_add_u32(1u, 54167u), abs(arg_2.d.x), countOneBits(58938u))), !arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 15>();
    var var_0 = select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true);
    var_0 = select(global0[_wgslsmith_index_u32(35752u, 23u)], !global0[_wgslsmith_index_u32(u_input.b, 23u)], true);
    var_0 = !(!select(global0[_wgslsmith_index_u32(0u, 23u)], !func_1(Struct_1(-508f), Struct_3(true, Struct_2(Struct_1(102f), vec4<i32>(1i, 2147483647i, 80501i, 13282i))), Struct_5(vec2<bool>(true, var_0.x), -42747i, Struct_4(481f, Struct_1(-330f), Struct_3(var_0.x, Struct_2(Struct_1(-1568f), vec4<i32>(2147483647i, 19143i, 1i, 72968i))), Struct_2(Struct_1(-464f), vec4<i32>(0i, -25986i, -2147483647i, 32004i)), -1447f), vec2<u32>(0u, 13249u)), 16127i), var_0.x));
    global1 = array<vec4<f32>, 15>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-212f, -1573f, var_0.x)) * -755f))), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -15229i, 6329i, -9127i, -1i), (vec4<i32>(0i, -2147483647i, -35025i, 43871i) >> (vec4<u32>(0u, 0u, u_input.c, u_input.b) % vec4<u32>(32u))) << (vec4<u32>(41574u, 0u, u_input.c, 1u) % vec4<u32>(32u))) ^ ~vec4<i32>(15437i, 0i, max(2147483647i, 0i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~min(u_input.b, u_input.b), u_input.c, 0u) ^ select(_wgslsmith_mult_vec3_u32(vec3<u32>(15544u, 4294967295u, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 25530u, 1u), vec3<u32>(u_input.a, u_input.a, 1u))), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a, u_input.c, u_input.c)), ~vec3<u32>(4294967295u, 49715u, 53162u)), select(var_0.x, func_2(u_input.a, vec4<u32>(u_input.b, 4294967295u, 42056u, 21358u)), var_1.a.a > -1328f)), abs(abs(vec3<u32>(u_input.b, abs(15538u), abs(15915u)))), firstTrailingBit(0u), ~0i, vec3<u32>(101880u, _wgslsmith_mult_u32(u_input.b, (42632u & u_input.c) ^ 12627u), firstTrailingBit(u_input.a)));
}

