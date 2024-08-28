struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(745f, vec4<u32>(0u, 54693u, 0u, 0u), vec3<f32>(771f, -669f, -1000f));

var<private> global1: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(0u, 10433u), vec2<u32>(4294967295u, 7954u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(474u, 89937u), vec2<u32>(41853u, 42062u), vec2<u32>(1u, 1u), vec2<u32>(32420u, 25424u), vec2<u32>(100603u, 35020u), vec2<u32>(65340u, 26158u), vec2<u32>(1u, 89659u), vec2<u32>(1492u, 25782u), vec2<u32>(70862u, 59306u), vec2<u32>(4294967295u, 1u), vec2<u32>(48736u, 0u), vec2<u32>(1124u, 1u), vec2<u32>(7877u, 24909u), vec2<u32>(4520u, 70567u), vec2<u32>(1u, 0u), vec2<u32>(7857u, 4294967295u), vec2<u32>(4294967295u, 54663u), vec2<u32>(29727u, 35962u), vec2<u32>(4294967295u, 0u), vec2<u32>(20332u, 20482u), vec2<u32>(3287u, 22151u));

var<private> global2: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-557f, -362f, -135f, 706f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(34094u, 14327u, 20447u, 1u)), max(u_input.b, vec4<u32>(global0.b.x, arg_1.x, 1u, global0.b.x))), vec4<u32>(global0.b.x, 44500u, arg_1.x, global0.b.x) ^ u_input.b) | vec4<u32>(4294967295u, _wgslsmith_mod_u32(firstLeadingBit(51068u), 1u), 19082u, arg_2), global0.c);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))) - _wgslsmith_f_op_f32(exp2(global0.c.x))), vec4<u32>(39128u, arg_2, ~1u, _wgslsmith_clamp_u32(4294967295u, ~(~u_input.c), _wgslsmith_sub_u32(~arg_1.x, arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -299f), global0.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204f, 584f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) + global0.c.x)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(ceil(-1388f)), _wgslsmith_f_op_f32(round(-1986f)))));
    let var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(-2965i, u_input.a, arg_3.a.x, _wgslsmith_clamp_i32(~u_input.a, countOneBits(arg_3.a.x), 2147483647i)), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(0i, 12970i, u_input.a, -1i)), 5480i ^ arg_3.a.x, -abs(-8601i), arg_0.a.x) << (var_0.b % vec4<u32>(32u)));
    var var_2 = var_0;
    let var_3 = 34031i;
    return vec4<u32>(var_0.b.x, ~1481u, firstLeadingBit(26343u), ~var_0.b.x);
}

fn func_4(arg_0: vec4<u32>) -> vec4<u32> {
    let var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, true, false)), !vec4<bool>(all(vec4<bool>(false, true, false, false)), true, false, true)));
    let var_1 = false;
    var var_2 = Struct_1(global0.a, global0.b, vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1577f * _wgslsmith_f_op_f32(f32(-1f) * -1661f)))), global0.c.x));
    var var_3 = 11424i != u_input.a;
    var var_4 = Struct_1(-491f, ~(~var_2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1899f, -504f, -931f)) * var_2.c) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), 680f, -255f)));
    return select(_wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(42930u), global0.b.x, var_4.b.x, 4294967295u), firstLeadingBit(global0.b)), ~vec4<u32>(firstTrailingBit(0u), 11511u, 20046u, ~56917u) ^ ~(~(~vec4<u32>(71445u, 1u, var_2.b.x, arg_0.x))), true);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = any(vec3<bool>(true, true, true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(global0.c.x)), func_4(func_3(Struct_2(vec2<i32>(u_input.a, arg_0)), u_input.b.xy, ~21986u, Struct_2(vec2<i32>(arg_0, -18346i) & vec2<i32>(u_input.a, 27009i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(849f, -112f, -460f), vec3<f32>(2314f, 1287f, global0.a))), _wgslsmith_f_op_vec3_f32(global0.c + _wgslsmith_div_vec3_f32(global0.c, global0.c)), vec3<bool>(true, var_0, 0u > u_input.c))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f + global0.a)), _wgslsmith_div_f32(-923f, _wgslsmith_f_op_f32(f32(-1f) * -181f)))));
    global1 = array<vec2<u32>, 24>();
    var var_2 = true;
    global1 = array<vec2<u32>, 24>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1366f)))), _wgslsmith_add_vec4_u32(~global0.b, u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a, global0.c.x)), _wgslsmith_div_f32(global0.a, var_1.c.x)), global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, -829f) * 976f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 288f, _wgslsmith_f_op_f32(-var_1.a)))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-263f)))))), vec4<u32>(~3285u, global0.b.x, u_input.b.x, u_input.c) << (~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 10177u, global0.b.x, 1u), vec4<u32>(4294967295u, 74625u, 10760u, 0u)) >> ((vec4<u32>(global0.b.x, 32058u, 0u, 1u) ^ vec4<u32>(4294967295u, u_input.b.x, 23129u, global0.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.c))));
    var var_0 = func_2(u_input.a);
    global0 = Struct_1(global0.a, vec4<u32>(1u, u_input.b.x, _wgslsmith_mod_u32(~var_0.b.x | 1u, 4294967295u), max(~u_input.c, 34257u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + var_0.c))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), global0.c.x, var_0.c.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(418f, 210f, -271f), vec3<f32>(1000f, -525f, 1132f))))));
    let var_1 = _wgslsmith_mod_vec4_u32(countOneBits(func_3(Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(-3429i, 12151i), vec2<i32>(u_input.a, u_input.a))), countOneBits(vec2<u32>(4294967295u, 1u)) >> (global0.b.ww % vec2<u32>(32u)), max(u_input.b.x, u_input.b.x) >> (func_3(Struct_2(vec2<i32>(-22518i, 1i)), var_0.b.xw, global0.b.x, Struct_2(vec2<i32>(-1i, 32970i))).x % 32u), Struct_2(vec2<i32>(u_input.a, u_input.a) >> (global0.b.wx % vec2<u32>(32u))))), vec4<u32>(~0u, ~var_0.b.x, u_input.b.x, ~(_wgslsmith_sub_u32(1u, u_input.b.x) >> (_wgslsmith_div_u32(0u, 124410u) % 32u))));
    return Struct_2(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-796i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), -vec2<i32>(-36896i, u_input.a) ^ (vec2<i32>(-2147483647i, u_input.a) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(vec2<bool>(true, true)));
    global1 = array<vec2<u32>, 24>();
    var var_1 = _wgslsmith_f_op_f32(round(global0.a)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a)) - _wgslsmith_f_op_f32(min(global0.c.x, -414f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global0.c.yz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1193f, _wgslsmith_f_op_f32(step(global0.c.x, global0.a))))), abs(-_wgslsmith_mod_i32(u_input.a, var_0.a.x)), 38747u, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(countOneBits(u_input.b)), u_input.b));
}

