struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-309f, -172f), 1f)))), -1239f, _wgslsmith_div_f32(-1552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-551f - 1113f), 1347f)))), -2007f);
    let var_1 = !any(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(413f * var_0.x))) * -267f);
    var var_3 = Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 10602u, 1u, u_input.a.x), ~vec4<u32>(1u, arg_0.x, arg_0.x, 0u)), select(vec4<u32>(u_input.a.x, 91221u, 67009u, arg_0.x), vec4<u32>(14455u, arg_0.x, arg_0.x, u_input.a.x), vec4<bool>(var_1, true, true, true)) ^ (vec4<u32>(u_input.a.x, 87968u, arg_0.x, arg_0.x) & vec4<u32>(13142u, u_input.a.x, 20805u, 4294967295u)), ~vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, 0u)), -21230i);
    var_3 = Struct_1(~(~vec4<u32>(u_input.a.x, 0u >> (u_input.a.x % 32u), countOneBits(arg_0.x), _wgslsmith_clamp_u32(71984u, 64356u, u_input.a.x))), 2147483647i);
    return arg_0.x;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = -30099i;
    var var_1 = !select(!vec3<bool>(any(vec4<bool>(true, true, false, false)), false, all(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), false, all(vec2<bool>(true, false))), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))), true);
    var var_2 = Struct_1(vec4<u32>(~u_input.a.x, max(~(~37762u), ~38115u), u_input.a.x, _wgslsmith_add_u32(~func_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a.x | 37545u)), max(_wgslsmith_sub_i32(max(arg_0, arg_0), -arg_0) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31628u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 23735u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))) % 32u), -2147483647i));
    let var_3 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mod_u32(0u, ~1u), 1u, ~u_input.a.x), ~(~min(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), var_2.a))), var_2.b);
    global0 = var_2.a.x;
    return abs(arg_0);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    global0 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(step(667f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-342f)), -1048f)), _wgslsmith_f_op_f32(round(-112f))))));
    let var_1 = firstTrailingBit(4294967295u);
    var var_2 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 81385u, arg_2.a.x, u_input.a.x), min(vec4<u32>(u_input.a.x, 4294967295u, 0u, 23934u), vec4<u32>(arg_2.a.x, var_1, arg_1, arg_1))) ^ vec4<u32>(abs(41649u), select(var_1, 0u, false), ~u_input.a.x, select(var_1, arg_1, true)), ~(~vec4<u32>(31952u, 1u, 0u, arg_1) >> (countOneBits(vec4<u32>(arg_1, 57639u, u_input.a.x, 4294967295u)) % vec4<u32>(32u)))), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, arg_2.b, 67003i, arg_0.x), _wgslsmith_add_vec4_i32(arg_0, vec4<i32>(arg_2.b, 0i, arg_2.b, -1i))) & abs(arg_0.x & arg_0.x));
    let var_3 = vec2<u32>(~func_3(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a.x, 1u, 4294967295u), arg_2.a.wyz)), max(97660u, 19561u));
    return select(select(vec3<i32>(arg_0.x, arg_0.x, -21402i), arg_0.xzx, vec3<bool>(select(true, true, all(vec2<bool>(true, true))), true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)))), ~select(abs(arg_0.ywz) ^ arg_0.xzy, ~_wgslsmith_add_vec3_i32(arg_0.xxw, arg_0.xyz), all(vec3<bool>(true, true, false))), !vec3<bool>(true, any(vec2<bool>(true, false)), false));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = func_4(vec4<i32>(-1i, func_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(31649i, -10176i), vec2<i32>(-8808i, -2147483647i))), min(select(0i, _wgslsmith_add_i32(3363i, 0i), true), -abs(2147483647i)), -(i32(-1i) * -2147483647i) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(34643u, 51170u), u_input.a)) % 32u)), u_input.a.x, Struct_1(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), countOneBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u))) % vec4<u32>(32u)), 27730i));
    var var_1 = !(!(!all(vec4<bool>(true, false, true, true)) & any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))));
    var var_2 = ~(~var_0.zy);
    let var_3 = Struct_1((vec4<u32>(~0u, _wgslsmith_mult_u32(u_input.a.x, 0u), ~845u, ~4294967295u) | (max(vec4<u32>(u_input.a.x, 0u, 14677u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 35831u, u_input.a.x)) | _wgslsmith_mult_vec4_u32(vec4<u32>(78332u, 5729u, 4294967295u, 17505u), vec4<u32>(32806u, 4294967295u, u_input.a.x, u_input.a.x)))) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 5947u, u_input.a.x, 4294967295u), firstLeadingBit(vec4<u32>(49077u, u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(vec4<u32>(4294967295u, 74452u, 4294967295u, 1u))) ^ (~vec4<u32>(2578u, u_input.a.x, 5408u, u_input.a.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 37127u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))), select(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, var_2.x, -37596i), vec4<i32>(0i, var_0.x, var_0.x, var_2.x)), var_0.x) >> (~u_input.a.x % 32u), _wgslsmith_div_i32(firstLeadingBit(var_0.x) >> (0u % 32u), _wgslsmith_mult_i32(-var_2.x, var_2.x)), ~u_input.a.x < _wgslsmith_dot_vec3_u32(min(vec3<u32>(97019u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 81967u), vec3<u32>(0u, u_input.a.x, 47768u)))));
    var var_4 = vec4<bool>(select(true, !(!(var_3.a.x != 89443u)), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), (select(~u_input.a.x, ~0u, true) >= (u_input.a.x >> (firstLeadingBit(28274u) % 32u))) || (_wgslsmith_dot_vec4_u32(~vec4<u32>(748u, u_input.a.x, u_input.a.x, 87583u), var_3.a << (var_3.a % vec4<u32>(32u))) > _wgslsmith_mult_u32(u_input.a.x & 10925u, var_3.a.x & 39390u)), all(vec3<bool>(true, any(vec2<bool>(false, true)), true)), 25681u <= _wgslsmith_mult_u32(38743u, ~u_input.a.x));
    return ~var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(2147483647i, ~(i32(-1i) * -2147483647i));
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(13094i << (u_input.a.x % 32u), ~369i, var_0.x), ~firstLeadingBit(vec3<i32>(var_0.x, -1i, -7469i))), -vec3<i32>(var_0.x, _wgslsmith_sub_i32(var_0.x, 14686i), _wgslsmith_div_i32(var_0.x, 2147483647i))), vec3<i32>(firstLeadingBit(~var_0.x), i32(-1i) * -func_1(-409f), -1i));
    var var_2 = -847f;
    let var_3 = vec2<i32>(var_0.x, -var_1.x) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u));
    let var_4 = 2147483647i;
    var_0 = var_1.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(29267u, u_input.a.x), ~4294967295u, 23935u, firstLeadingBit(~(~u_input.a.x))), ~u_input.a.x ^ ~25410u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2924f)))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u >> (1u % 32u), u_input.a.x >> (u_input.a.x % 32u), 0u) & ~abs(vec3<u32>(u_input.a.x, 23800u, 52864u)), ~(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
}

