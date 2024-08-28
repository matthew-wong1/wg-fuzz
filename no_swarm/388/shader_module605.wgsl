struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(2147483647i, -15824i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(arg_1.x, arg_1.x), arg_1.x) << (arg_1 % vec2<u32>(32u)), ~select(vec2<u32>(arg_1.x, ~arg_1.x), reverseBits(vec2<u32>(arg_1.x, 78302u) ^ arg_1), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_f32(arg_3 * -193f);
    var_0 = firstTrailingBit(0u);
    global0 = array<i32, 2>();
    var var_2 = any(select(select(!vec2<bool>(arg_0.a, false), !vec2<bool>(arg_2, arg_0.a), !select(vec2<bool>(true, false), vec2<bool>(arg_2, false), vec2<bool>(true, arg_0.a))), !select(vec2<bool>(true, true), vec2<bool>(true, arg_0.a), !arg_0.a), vec2<bool>(true, all(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, arg_0.a, arg_2), vec3<bool>(true, true, arg_0.a))))));
    return _wgslsmith_add_u32(arg_1.x, arg_1.x);
}

fn func_2(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = -1164f;
    var var_1 = ~vec2<u32>(11136u, ~(~1u)) & vec2<u32>(countOneBits(reverseBits(0u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 21164u, 20823u, 4294967295u), vec4<u32>(firstTrailingBit(0u), 1u, ~2756u, 1u)));
    var_1 = vec2<u32>(1u, var_1.x) << (vec2<u32>(1u, _wgslsmith_clamp_u32(var_1.x, var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(16162u, 4294967295u))) << ((1u ^ func_3(Struct_3(true), vec2<u32>(var_1.x, var_1.x), true, var_0)) % 32u)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-198f + 947f))));
    return vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(63390u, var_1.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1.x, 15881u, 64250u, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, 19596u)), ~vec4<u32>(var_1.x, 8962u, var_1.x, 4294967295u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x) & vec2<u32>(1u, var_1.x), vec2<u32>(1u, var_1.x))), ~abs(~var_1.x) | var_1.x, ~var_1.x);
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    var var_0 = arg_0;
    var_0 = vec3<u32>(~1u, ~((_wgslsmith_dot_vec2_u32(arg_0.xy, var_0.yx) | ~0u) << (4294967295u % 32u)), abs(firstTrailingBit(_wgslsmith_clamp_u32(1u, ~0u, 1u))));
    let var_1 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(35965u, var_0.x, var_0.x, 954u) >> (vec4<u32>(var_0.x, 98380u, var_0.x, 12115u) % vec4<u32>(32u)), max(vec4<u32>(33365u, 13934u, 1u, 4294967295u), countOneBits(vec4<u32>(var_0.x, var_0.x, arg_0.x, 7323u)))) ^ 50272u;
    return Struct_1(max(_wgslsmith_sub_u32(~var_0.x & ~14058u, ~arg_0.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(4294967295u), 21292u), func_3(Struct_3(true), vec2<u32>(1u, 0u), select(false, true, false), _wgslsmith_f_op_f32(1107f * -475f)))), var_1);
}

fn func_1() -> vec4<i32> {
    var var_0 = func_4(~(~(~func_2(vec2<i32>(u_input.a.x, -28870i)))));
    var var_1 = Struct_2(Struct_1(~(~var_0.a ^ 13771u), var_0.b), vec4<i32>(-11990i, i32(-1i) * -87731i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(4294967295u, var_0.b), ~vec2<u32>(5415u, 26091u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(33998u, 4294967295u))), 2u)], firstTrailingBit(firstLeadingBit(select(0i, -20750i, true)))));
    var_0 = var_1.a;
    let var_2 = ~var_1.a.b;
    let var_3 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), true);
    return select(vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -22557i, var_1.b.x), vec3<i32>(0i, var_1.b.x, global0[_wgslsmith_index_u32(var_2, 2u)]))), ~(~global0[_wgslsmith_index_u32(70133u, 2u)]), (i32(-1i) * -2147483647i) >> (_wgslsmith_clamp_u32(var_2, var_2, var_0.b) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-32219i, var_1.b.x, var_1.b.x, var_1.b.x), vec4<i32>(u_input.b, 2147483647i, global0[_wgslsmith_index_u32(var_0.b, 2u)], -57998i)) ^ (var_1.b ^ vec4<i32>(-1932i, -39570i, 4159i, -2147483647i)), vec4<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), ~0i, -1i, abs(global0[_wgslsmith_index_u32(0u, 2u)])))), min(vec4<i32>(7157i, 0i, -35444i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, global0[_wgslsmith_index_u32(33453u, 2u)]), var_1.b.xzy)), ~abs(var_1.b)) ^ min(countOneBits(vec4<i32>(1i, u_input.b, u_input.a.x, 1i)) & var_1.b, reverseBits(-vec4<i32>(-1i, u_input.a.x, 0i, -35763i))), any(var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(5142u), 0u), _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(17087i), u_input.b, -802i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-40504i, u_input.a.x, -56470i, -44213i)), func_1())), vec4<i32>(-1i) * -(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 2u)], 0i, u_input.a.x, 2147483647i))));
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    var_0 = Struct_2(var_0.a, vec4<i32>(var_0.b.x, _wgslsmith_dot_vec4_i32(var_0.b, ~vec4<i32>(var_0.b.x, u_input.a.x, 53372i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -8235i, var_0.b.x), var_0.b.xyz) << (var_0.a.a % 32u), 2147483647i));
    global0 = array<i32, 2>();
    var var_1 = Struct_3(!select(false, all(vec4<bool>(false, true, false, false)) == true, true));
    global0 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2557f + 130f), _wgslsmith_f_op_f32(min(-1832f, 1188f)), -1883f, -497f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-789f, 907f, -978f, -931f))), vec4<f32>(1691f, _wgslsmith_f_op_f32(abs(-2544f)), _wgslsmith_f_op_f32(step(-1095f, 1132f)), -1360f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-103f, 1553f)), _wgslsmith_mod_u32(var_0.a.b, reverseBits(13662u >> (~var_0.a.a % 32u))), reverseBits(vec2<u32>(_wgslsmith_mod_u32(2299u, var_0.a.b) ^ countOneBits(2299u), firstLeadingBit(abs(32628u)))));
}

