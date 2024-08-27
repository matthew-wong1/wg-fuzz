struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11>;

var<private> global1: Struct_1 = Struct_1(false, 2147483647i, 1677i, vec2<u32>(8928u, 36363u), true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = ~((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.a.x, global1.b, 2147483647i)) | min(7812i, 1i)) ^ reverseBits(i32(-1i) * -13766i)) << (_wgslsmith_sub_u32(u_input.c.x, global1.d.x) % 32u);
    var var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(global1.c, -28519i, global1.b), vec3<i32>(-28725i, 33723i, 2147483647i)), -vec3<i32>(u_input.b, global1.b, u_input.a.x)), firstTrailingBit(_wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.b, -15298i, global1.b), vec3<i32>(u_input.a.x, global1.c, 2147483647i))), -vec3<i32>(u_input.b, u_input.a.x, u_input.a.x) << ((vec3<u32>(4294967295u, 1u, global1.d.x) & vec3<u32>(21598u, global1.d.x, u_input.c.x)) % vec3<u32>(32u)))));
    let var_2 = reverseBits(~abs(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -68111i, 25710i), vec3<i32>(global1.c, 2147483647i, global1.c))));
    global1 = Struct_1(global1.e, global1.c << (0u % 32u), -u_input.b, vec2<u32>(~4294967295u, global1.d.x), true);
    let var_3 = ~vec3<i32>(~abs(1i), _wgslsmith_mult_i32(global1.c, _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(var_2, vec3<i32>(28211i, global1.b, var_2.x)))), abs(u_input.b & 36065i));
    return u_input.c;
}

fn func_2(arg_0: f32) -> vec3<u32> {
    var var_0 = !(!(!(!(!vec4<bool>(true, global1.a, false, false)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(-2204f)), _wgslsmith_f_op_f32(-274f * arg_0));
    var var_2 = ~u_input.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1), var_1, select(var_0.zx, !vec2<bool>(global1.a, global1.e), true)))))));
    var_2 = max(~countOneBits(u_input.a), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(u_input.a), select(vec2<i32>(13365i, 0i), vec2<i32>(0i, var_2.x), var_0.x)), (u_input.a | vec2<i32>(var_2.x, var_2.x)) << (func_3() % vec2<u32>(32u))) & u_input.a);
    return vec3<u32>(global1.d.x | u_input.c.x, reverseBits(global1.d.x), func_3().x);
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~firstLeadingBit(reverseBits(global1.d.x)), _wgslsmith_sub_u32(~global1.d.x, ~_wgslsmith_mod_u32(30813u, u_input.c.x)), reverseBits(min(min(24494u, arg_0.a), arg_0.a))), countOneBits(_wgslsmith_div_vec3_u32(func_2(arg_0.b), func_2(_wgslsmith_f_op_f32(143f + 728f)))), _wgslsmith_div_vec3_u32(~select(countOneBits(vec3<u32>(31969u, 0u, 78285u)), vec3<u32>(1u, 0u, 4294967295u), select(vec3<bool>(arg_1, true, true), vec3<bool>(global1.e, arg_1, global1.a), true)), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 77827u, global1.d.x), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.c.x, 50859u), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.d.x, arg_0.a, 65318u), vec3<u32>(0u, 2360u, 37912u))))));
    var var_1 = max(global1.b, ~52610i);
    let var_2 = select(u_input.a.x, -global1.c, global1.a);
    global1 = Struct_1(global1.e, ~(-2147483647i), arg_0.c.x, ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(111713u, var_0.x), var_0.zy), abs(u_input.c)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(12231u, u_input.c.x), vec2<u32>(global1.d.x, 1u), var_0.zy))), true);
    var var_3 = global1.c;
    return Struct_1(40125i == -countOneBits(-global1.b), ~(-1i), 0i, abs(~u_input.c), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(trunc(202f))) == -174f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(firstLeadingBit(global1.d.x), 829f, ~(-countOneBits(vec4<i32>(-1i, 42877i, u_input.b, 0i)))), all(!select(select(vec3<bool>(global1.e, global1.a, true), vec3<bool>(false, true, false), vec3<bool>(global1.a, false, true)), !vec3<bool>(false, true, global1.e), select(vec3<bool>(false, false, global1.e), vec3<bool>(global1.e, global1.a, global1.a), global1.a))));
    var var_1 = Struct_3(~abs(~global1.d.x & _wgslsmith_mod_u32(8264u, var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(466f)) - _wgslsmith_f_op_f32(step(-263f, -795f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-462f, 445f) + 1246f), _wgslsmith_f_op_f32(836f * -1236f)))), ~vec4<i32>(~abs(u_input.a.x), var_0.b, ~(-2518i), u_input.a.x));
    var_0 = func_1(Struct_3(4294967295u, var_1.b, reverseBits(vec4<i32>(u_input.a.x, -var_1.c.x, _wgslsmith_mult_i32(var_0.b, 1i), _wgslsmith_dot_vec2_i32(u_input.a, var_1.c.xy)))), !(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 1u, global1.d.x, global1.d.x), firstLeadingBit(vec4<u32>(6223u, 1218u, var_0.d.x, 4294967295u))) < _wgslsmith_div_u32(84254u, global1.d.x)));
    global0 = array<Struct_4, 11>();
    let var_2 = ~(~(abs(abs(var_0.d.x)) << (_wgslsmith_add_u32(41173u, 0u) % 32u)));
    var var_3 = _wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(1u, var_1.a, 4294967295u)) ^ vec3<u32>(~0u, countOneBits(var_1.a), var_0.d.x), vec3<u32>(22095u, u_input.c.x, var_2) ^ abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2, 113986u, 1u), vec3<u32>(var_1.a, 4294967295u, 2295u)))) | _wgslsmith_mod_vec3_u32(min(select(vec3<u32>(var_1.a, 0u, 4294967295u) << (vec3<u32>(1u, 4294967295u, u_input.c.x) % vec3<u32>(32u)), select(vec3<u32>(0u, 37540u, 0u), vec3<u32>(var_0.d.x, 30370u, var_2), vec3<bool>(global1.e, global1.e, false)), select(vec3<bool>(false, false, false), vec3<bool>(var_0.a, true, global1.e), vec3<bool>(var_0.e, var_0.a, var_0.a))), ~(~vec3<u32>(var_2, global1.d.x, 24459u))), reverseBits(~abs(vec3<u32>(119325u, u_input.c.x, u_input.c.x))));
    var_1 = Struct_3(func_1(Struct_3(4104u, _wgslsmith_f_op_f32(floor(-183f)), vec4<i32>(-58173i, ~(-9220i), 1i >> (var_2 % 32u), global1.c)), any(select(vec3<bool>(var_0.a, true, false), vec3<bool>(true, false, var_0.e), vec3<bool>(global1.a, false, true))) && (var_3.x > u_input.c.x)).d.x, var_1.b, reverseBits(vec4<i32>(-1i, max(var_0.c, var_0.c) << (~1u % 32u), _wgslsmith_mod_i32(var_0.c, firstTrailingBit(var_1.c.x)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, -2147483647i, -2147483647i), reverseBits(0i), ~var_1.c.x))));
    var var_4 = Struct_2(select(firstLeadingBit(vec4<i32>(var_0.b, _wgslsmith_add_i32(var_0.b, -5779i), countOneBits(var_0.c), 1i)), -vec4<i32>(var_1.c.x, global1.b, 2147483647i, global1.c << (var_2 % 32u)), !vec4<bool>(!var_0.e, var_0.e, any(vec3<bool>(var_0.a, global1.a, global1.a)), var_0.a)), func_1(Struct_3(var_1.a, -2049f, min(vec4<i32>(-1i, global1.c, 0i, var_1.c.x), vec4<i32>(0i, u_input.a.x, 2147483647i, var_0.b))), true), !select(vec2<bool>(true, true), select(!vec2<bool>(global1.a, false), !vec2<bool>(true, global1.e), vec2<bool>(global1.e, global1.a)), !(!vec2<bool>(true, var_0.a))), var_1.c.x, func_1(Struct_3(4294967295u, _wgslsmith_f_op_f32(step(var_1.b, -963f)), firstTrailingBit(var_1.c)), !(!func_1(Struct_3(var_2, var_1.b, vec4<i32>(-2147483647i, 0i, var_0.b, global1.b)), var_0.a).e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-192f + var_1.b) - var_1.b), global1.d.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstTrailingBit(abs(var_3.x)), abs(var_1.a), _wgslsmith_div_u32(var_2, var_3.x) >> (global1.d.x % 32u)), (u_input.c.x >> (var_1.a % 32u)) & func_1(Struct_3(85214u, var_1.b, vec4<i32>(56322i, var_0.c, 28786i, 2147483647i)), var_0.a).d.x));
}

