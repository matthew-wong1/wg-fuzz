struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: array<f32, 6> = array<f32, 6>(271f, 609f, 1000f, -1356f, -1197f, 2644f);

var<private> global3: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> bool {
    var var_0 = vec3<i32>(firstLeadingBit(33697i) << (abs(u_input.d) % 32u), -_wgslsmith_add_i32(-min(u_input.a.x, 1i), -2147483647i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x));
    return _wgslsmith_div_f32(-401f, -1771f) == global2[_wgslsmith_index_u32(1u, 6u)];
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global3 = func_2();
    let var_0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(_wgslsmith_clamp_u32(u_input.d, u_input.b, u_input.b)), 1u, 87645u | ~u_input.c.x), vec3<u32>(8923u, reverseBits(max(62971u, u_input.c.x)), _wgslsmith_add_u32(u_input.d, 0u))), vec3<u32>(u_input.d, u_input.c.x, 0u), true);
    var var_1 = all(select(select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), vec2<bool>(arg_0, false)), vec2<bool>(true, all(vec4<bool>(true, true, false, arg_0))), true), vec2<bool>(false, arg_0 & (u_input.a.x >= -8646i)), false));
    var var_2 = Struct_2(vec2<bool>(false, !(_wgslsmith_f_op_f32(982f * global2[_wgslsmith_index_u32(u_input.d, 6u)]) > _wgslsmith_div_f32(-1630f, global2[_wgslsmith_index_u32(u_input.d, 6u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1604f)))) * -603f), vec4<bool>(func_2(), true, func_2(), !arg_0), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(83468u, u_input.b, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, u_input.d, 1u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(102184u, u_input.c.x, var_0.x, 0u), vec4<u32>(var_0.x, 1u, 29719u, var_0.x))), ~(~(~vec4<u32>(u_input.d, u_input.d, 4294967295u, 3413u)))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-u_input.a.x, -2147483647i)), select(~min(vec2<i32>(13548i, -65939i), vec2<i32>(u_input.a.x, u_input.a.x)), firstTrailingBit(u_input.a.xx << (u_input.c.xx % vec2<u32>(32u))), !vec2<bool>(arg_0, arg_0)), ~vec2<i32>(953i, u_input.a.x ^ u_input.a.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(464f, var_2.b)))), var_2.b)), 330f, -359f)));
    return vec2<i32>(~(-(-16965i | var_2.e.x)), u_input.a.x);
}

fn func_1() -> i32 {
    global3 = true;
    global3 = func_2();
    var var_0 = Struct_2(!vec2<bool>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) <= 1i, true), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9740u, 6u)]), vec4<bool>(true, true, true, any(vec2<bool>(func_2(), all(vec3<bool>(true, true, true))))), vec4<u32>(12905u, _wgslsmith_sub_u32(~0u, u_input.b | u_input.b), 79585u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(130u, u_input.c.x, u_input.d, 4294967295u), vec4<u32>(21229u, u_input.c.x, 76921u, u_input.d)), u_input.b)) << (min(~vec4<u32>(48397u, 4294967295u, u_input.b, 1u), reverseBits(vec4<u32>(58728u, 0u, 4294967295u, 25759u)) | vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.c.x)) % vec4<u32>(32u)), vec2<i32>(u_input.a.x, _wgslsmith_add_i32(-3925i, ~(-162i))) & vec2<i32>(34686i | -u_input.a.x, u_input.a.x));
    var var_1 = var_0.c.x;
    var var_2 = func_3(func_2());
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(u_input.a.x, ~u_input.a.x >> (1u % 32u), !(1i > _wgslsmith_clamp_i32(func_1(), i32(-1i) * -40137i, abs(u_input.a.x))));
    global3 = ~abs(1u) > firstTrailingBit(6573u);
    var var_0 = Struct_1(5142i);
    let var_1 = var_0.a;
    global0 = any(select(select(vec4<bool>(false, any(vec2<bool>(true, false)), func_2(), any(vec3<bool>(false, false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), global2[_wgslsmith_index_u32(3772u, 6u)] > _wgslsmith_f_op_f32(f32(-1f) * -693f)), select(vec4<bool>(all(vec2<bool>(false, true)), true, true, any(vec3<bool>(true, false, false))), vec4<bool>(all(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, true)), false, func_2()), vec4<bool>(false, any(vec3<bool>(true, true, false)), true, var_0.a > -1i)), false));
    var var_2 = Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, 1u != u_input.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-439f)))), vec4<bool>(~_wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x) >= _wgslsmith_mult_i32(-2147483647i, u_input.a.x), any(vec4<bool>(true, true, true, true)), func_2(), select(true, select(false, true, true), all(vec2<bool>(true, true)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~abs(u_input.c.x), ~(~62573u), ~4294967295u, ~_wgslsmith_clamp_u32(31767u, 15632u, u_input.b)), ~(~(~vec4<u32>(9420u, u_input.d, u_input.b, u_input.c.x)))), _wgslsmith_mod_vec2_i32(u_input.a.zw, u_input.a.yx));
    var var_3 = ~(~var_2.d);
    global3 = !var_2.c.x;
    var_0 = Struct_1(-12534i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(54354i, -5211i, 38706i | _wgslsmith_mod_i32(-2898i, u_input.a.x << (var_2.d.x % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(211f, -1532f, global2[_wgslsmith_index_u32(var_2.d.x, 6u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_3.x, 6u)], -1644f, -319f)))))), vec2<i32>(var_2.e.x, func_1()), max(16384i, 10795i));
}

