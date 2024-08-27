struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    global0 = min(_wgslsmith_dot_vec3_i32((min(vec3<i32>(2147483647i, 1850i, arg_1), vec3<i32>(arg_1, 2147483647i, -2147483647i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 50491u, 49645u), vec3<u32>(29171u, 1075u, 23884u)) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x) << (vec3<u32>(31352u, 4294967295u, 33878u) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 28360i)), select(~vec3<i32>(-2439i, 0i, arg_0.x) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, -1i)), vec3<bool>(true, true, true))), 2147483647i);
    let var_0 = Struct_3(Struct_2(Struct_1(true), !vec2<bool>(any(vec2<bool>(true, false)), true), Struct_1(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), vec3<bool>(any(vec2<bool>(true, false)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))))), Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_2(Struct_1(false), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(true), vec3<bool>(true, true, true)), max(u_input.b, vec2<i32>(_wgslsmith_sub_i32(u_input.a, arg_1), u_input.b.x)), 751f);
    let var_1 = ~vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~26011i, _wgslsmith_add_i32(var_0.d.x, u_input.b.x)), ~_wgslsmith_mult_i32(var_0.d.x, 2674i), _wgslsmith_add_i32(arg_1, ~(-2147483647i))), arg_0.x);
    global0 = -_wgslsmith_mult_i32(-20742i, ~var_0.d.x);
    global0 = min(max(-(~18086i), 2147483647i), var_0.d.x);
    return ~4294967295u;
}

fn func_2() -> Struct_4 {
    let var_0 = ~(~(abs(16138u) ^ firstTrailingBit(0u))) & (~func_3(vec2<i32>(u_input.b.x, 21987i), -49179i) | ~_wgslsmith_mult_u32(1u, 4294967295u));
    var var_1 = true;
    var var_2 = vec3<bool>(~(~4294967295u) <= ~var_0, select(all(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, true, true))), all(vec3<bool>(true, true, all(vec2<bool>(false, true)) | true)));
    var var_3 = 119f;
    var_3 = _wgslsmith_f_op_f32(round(1235f));
    return Struct_4(max(~firstTrailingBit(vec2<i32>(-1i, u_input.a)), vec2<i32>(-2147483647i, u_input.b.x) >> (vec2<u32>(~4294967295u, abs(var_0)) % vec2<u32>(32u))), select(!select(vec2<bool>(var_2.x, false), vec2<bool>(false, false), select(vec2<bool>(true, var_2.x), var_2.xz, true)), var_2.yz, true), Struct_3(Struct_2(Struct_1(!var_2.x), var_2.yy, Struct_1(true), !vec3<bool>(true, true, var_2.x)), Struct_1(_wgslsmith_f_op_f32(floor(709f)) <= -1000f), Struct_2(Struct_1(!var_2.x), select(vec2<bool>(false, true), var_2.zy, true), Struct_1(any(vec4<bool>(true, true, true, var_2.x))), vec3<bool>(u_input.a > 2147483647i, all(vec3<bool>(true, var_2.x, true)), false)), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(1i, -2147483647i) >> ((vec2<u32>(4294967295u, var_0) << (vec2<u32>(var_0, 19027u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1736f * 151f))), -(1i | select(35573i ^ u_input.b.x, u_input.b.x, var_2.x)));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec3<i32>) -> bool {
    var var_0 = func_2().c;
    let var_1 = Struct_3(func_2().c.c, Struct_1(any(select(select(vec3<bool>(arg_2.c.a.d.x, true, arg_2.c.a.b.x), arg_2.c.c.d, var_0.a.d), var_0.a.d, select(var_0.a.d, vec3<bool>(arg_2.b.x, arg_2.b.x, var_0.c.d.x), var_0.c.d)))), func_2().c.c, -arg_3.zy, 2455f);
    let var_2 = vec3<bool>(any(var_1.c.d) == any(!(!vec4<bool>(true, var_0.c.b.x, var_1.c.c.a, true))), true, true);
    let var_3 = func_2().c.b;
    var_0 = Struct_3(func_2().c.a, func_2().c.a.a, func_2().c.a, arg_2.c.d >> (vec2<u32>(min(~1u, ~0u), ~27115u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2019f) + 1011f));
    return any(!vec4<bool>(true | select(arg_2.b.x, var_0.b.a, true), _wgslsmith_f_op_f32(step(var_0.e, arg_2.c.e)) != _wgslsmith_f_op_f32(arg_2.c.e * -291f), func_2().c.a.b.x, any(vec4<bool>(true, true, var_3.a, var_1.c.b.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, -1841f, 716f, 1270f)) - vec4<f32>(1f, 1f, 1f, 1f))))) - vec4<f32>(1234f, 1005f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-605f, 1423f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f - -1033f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1318f - 2865f) + -2373f))));
    var var_1 = (select(true, all(vec4<bool>(false, false, true, false)) && any(vec2<bool>(false, true)), false) && all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))) | true;
    let var_2 = 782f;
    var_1 = false;
    var var_3 = Struct_1(func_4(u_input.b.x, u_input.b, func_2(), vec3<i32>(u_input.b.x, firstTrailingBit(-u_input.a), _wgslsmith_div_i32(u_input.b.x, u_input.a) << (64653u % 32u))));
    return all(vec2<bool>(true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(1u, 1u, 1u, ~select(20519u, 46341u, true)));
    global0 = -_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(u_input.b.x, -11429i), ~select(-20693i, u_input.b.x, false) & select(u_input.b.x | u_input.b.x, u_input.b.x, func_1(vec2<u32>(37779u, 31153u), 0u)), -2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(2921f)), 1320f))))));
    global0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, 2147483647i, u_input.b.x), vec3<i32>(-11680i, 46348i, 2147483647i) & vec3<i32>(-50874i, u_input.a, u_input.a), abs(vec3<i32>(19237i, u_input.b.x, -61350i))), min(vec3<i32>(-19740i, u_input.a, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, -1i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(92159i, -2147483647i, u_input.a), vec3<i32>(u_input.a, -45074i, u_input.a), vec3<i32>(u_input.b.x, -2147483647i, -3807i)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), firstLeadingBit(vec3<i32>(abs(18177i), -29086i, ~u_input.b.x))), u_input.a);
    var var_2 = -2147483647i;
    var var_3 = vec4<bool>(func_4(_wgslsmith_mult_i32((i32(-1i) * -31923i) ^ _wgslsmith_mult_i32(u_input.a, u_input.b.x), 0i), min(-vec2<i32>(u_input.b.x, u_input.b.x), u_input.b), Struct_4(max(_wgslsmith_add_vec2_i32(vec2<i32>(-9566i, u_input.a), u_input.b), u_input.b), func_2().b, func_2().c, u_input.b.x), -vec3<i32>(0i, u_input.b.x, u_input.a) >> (var_0.wzx % vec3<u32>(32u))), false, all(func_2().c.c.d), false | (var_1.x == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(61735u, var_0.x, var_0.x, 10787u), vec4<u32>(1u, var_0.x, var_0.x, var_0.x)))), vec4<u32>(14097u, ~(~8917u), var_0.x, 1u), -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1436i, 36898i) >> (vec4<u32>(0u, var_0.x, var_0.x, 1u) % vec4<u32>(32u)), reverseBits(vec4<i32>(0i, 11686i, u_input.b.x, 1i))), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a ^ 2147483647i, _wgslsmith_add_i32(u_input.a, u_input.b.x))));
}

