struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = vec3<bool>(~17663u < ~u_input.b.x, true, any(vec4<bool>(global0.x, global0.x, !any(vec3<bool>(global0.x, true, false)), any(!vec4<bool>(true, global0.x, false, global0.x)))));
    global0 = vec3<bool>(true, all(global0.xy), global0.x);
    var var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(abs(vec3<u32>(39032u, 16889u, 1u)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 35652u, u_input.d)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(0u, u_input.b.x, 23445u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.d, u_input.d), vec3<u32>(4294967295u, 0u, u_input.b.x)) | ~vec3<u32>(u_input.b.x, u_input.b.x, 47578u)));
    var_0 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, u_input.b.x, 4294967295u), firstTrailingBit(~vec3<u32>(u_input.d, 33759u, u_input.d))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(73575u, 0u, 55374u), vec3<u32>(44502u, 4294967295u, 0u) >> (vec3<u32>(4294967295u, var_0.x, 0u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(42946u, var_0.x, u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 1u, 5479u), vec3<u32>(var_0.x, 1u, 14859u), vec3<u32>(u_input.b.x, 59269u, var_0.x)))));
    let var_1 = vec3<u32>(20082u, u_input.d, ~1u);
    return _wgslsmith_mod_u32(select(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(35703u, var_0.x), vec2<u32>(0u, 0u))), _wgslsmith_mult_u32(var_0.x, ~var_0.x), !all(vec3<bool>(false, true, global0.x)) | !any(vec4<bool>(false, false, global0.x, true))), 4294967295u);
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    global0 = select(select(!select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), select(false, true, true)), !select(vec3<bool>(global0.x, false, false), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, false), true), !vec3<bool>(true, global0.x, global0.x)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), global0.xz))), vec3<bool>(any(vec3<bool>(true, global0.x, all(vec4<bool>(false, true, global0.x, global0.x)))), !(!global0.x), (all(vec3<bool>(false, global0.x, global0.x)) && (56736u != u_input.b.x)) | !any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), !(((u_input.b.x & 45567u) | 5785u) >= 51116u));
    global0 = !select(vec3<bool>(all(global0.xy), true, global0.x), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, global0.x, global0.x), false), !(!vec3<bool>(true, true, global0.x)), false), -626f >= arg_0.x);
    let var_0 = Struct_1(u_input.e);
    let var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1082f, -1764f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(528f, 202f, 778f, -1333f))))) - vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-1756f + arg_0.x), _wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_div_f32(-1000f, arg_0.x)))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b.x, 4294967295u, 1u, 55927u) | vec4<u32>(77416u, 4294967295u, u_input.d, u_input.b.x), select(vec4<u32>(31866u, u_input.d, 1u, 25563u) ^ vec4<u32>(78121u, 14031u, u_input.b.x, 0u), ~vec4<u32>(25675u, 4294967295u, 4294967295u, u_input.d), true), all(global0.xx)), ~firstLeadingBit(vec4<u32>(u_input.b.x, 65750u, 46168u, 18382u) ^ vec4<u32>(u_input.d, u_input.b.x, 0u, u_input.d))), var_0);
    global0 = vec3<bool>(var_1.a.x >= var_1.a.x, (!global0.x & any(vec3<bool>(global0.x, global0.x, false))) | (all(!vec4<bool>(global0.x, global0.x, global0.x, true)) | !all(vec4<bool>(false, global0.x, false, global0.x))), global0.x);
    return _wgslsmith_add_u32(1u, 70304u);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = global0.x;
    let var_1 = ~func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(250f, arg_1.x, arg_1.x))))), arg_3.x) & ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_2.x), ~arg_2.zx) >> (_wgslsmith_sub_u32(u_input.b.x ^ u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 41120u, arg_2.x, 4294967295u), vec4<u32>(4294967295u, arg_2.x, 1u, u_input.d))) % 32u));
    let var_2 = global0.x;
    let var_3 = vec3<i32>(abs(-(-2147483647i >> (u_input.b.x % 32u))), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_3.x, arg_3.x), _wgslsmith_mult_i32(1i, max(arg_3.x, u_input.e) | u_input.c)), -(~u_input.a));
    let var_4 = reverseBits(max(_wgslsmith_sub_u32(19483u, _wgslsmith_sub_u32(1892u, u_input.b.x)), func_3(vec3<f32>(1000f, arg_0, arg_1.x), ~u_input.c))) & countOneBits(~firstLeadingBit(_wgslsmith_div_u32(u_input.b.x, u_input.b.x)));
    return -var_3;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_3.a + arg_3.a), vec4<f32>(-1329f, arg_3.a.x, 1059f, arg_3.a.x), !vec4<bool>(false, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2213f), arg_3.a.x)))), ~firstTrailingBit(select(~arg_3.b, ~arg_3.b, vec4<bool>(true, true, false, true))), Struct_1(arg_1.x));
    let var_1 = var_0.c;
    let var_2 = !select(vec4<bool>(true, all(!vec4<bool>(global0.x, global0.x, false, global0.x)), !(false && global0.x), true), select(vec4<bool>(true, true || global0.x, false || global0.x, arg_2 > arg_2), !vec4<bool>(global0.x, true, global0.x, global0.x), select(select(vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, global0.x, true, false)), !vec4<bool>(global0.x, global0.x, true, global0.x), global0.x)), any(vec2<bool>(any(vec3<bool>(global0.x, global0.x, global0.x)), false)));
    let var_3 = firstLeadingBit(-29846i);
    global0 = !var_2.wwx;
    return !(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, arg_3.b.x), vec2<u32>(4294967295u, 32717u), global0.x), countOneBits(~vec2<u32>(arg_2, var_0.b.x))) != 33240u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32((u_input.b.x | (u_input.d & 4294967295u)) << (u_input.d % 32u), max(u_input.b.x, abs(firstTrailingBit(17031u)))), max(abs(u_input.b.x), u_input.b.x), u_input.b.x);
    var var_1 = vec4<bool>(global0.x, true, global0.x, (~func_1(Struct_1(1i)) <= (0u ^ (38805u ^ var_0.x))) == func_4(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, 1265i, 0i)), func_2(1510f, vec2<f32>(-199f, 204f), var_0, vec2<i32>(u_input.e, u_input.a)), vec3<i32>(u_input.a, 1i, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-25694i, 15314i), vec2<i32>(2037i, -10897i)), ~_wgslsmith_mod_u32(var_0.x, 52511u), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1327f, -414f, 1030f, -1363f)), ~vec4<u32>(var_0.x, u_input.b.x, var_0.x, 61540u), Struct_1(-2147483647i))));
    var_1 = select(vec4<bool>(false | any(vec4<bool>(true, global0.x, false, global0.x)), !var_1.x, true == (26450u > var_0.x), !any(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, global0.x, var_1.x, var_1.x), vec4<bool>(global0.x, var_1.x, true, true)))), select(select(select(vec4<bool>(false, var_1.x, false, global0.x), vec4<bool>(true, true, var_1.x, false), !global0.x), select(vec4<bool>(true, false, false, true), !vec4<bool>(global0.x, global0.x, global0.x, true), true), all(!vec2<bool>(var_1.x, var_1.x))), vec4<bool>(all(!var_1.xxy), select(!var_1.x, var_1.x, global0.x), true, all(vec3<bool>(true, global0.x, var_1.x))), vec4<bool>(!global0.x, true, any(var_1.wzx), true)), !(!select(select(vec4<bool>(global0.x, true, true, var_1.x), vec4<bool>(global0.x, global0.x, global0.x, var_1.x), vec4<bool>(true, false, true, false)), !vec4<bool>(global0.x, false, true, var_1.x), true)));
    let var_2 = vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u | ~u_input.b.x, u_input.b.x), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, 20457u), vec2<u32>(1u, var_0.x) ^ var_0.zz) | vec2<u32>(446u, abs(0u))));
    var var_3 = _wgslsmith_clamp_vec4_i32(abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -4334i, u_input.e), vec4<i32>(-508i, u_input.c, -1i, u_input.c))), vec4<i32>(-(~(u_input.e ^ u_input.c)), 72519i, u_input.e, _wgslsmith_clamp_i32(select(~37279i, u_input.c, false), -3222i, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, u_input.a))), countOneBits(abs(vec4<i32>(-1i, u_input.a ^ u_input.c, _wgslsmith_clamp_i32(u_input.a, u_input.c, -1i), u_input.e))));
    var_3 = _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(~vec4<i32>(var_3.x, u_input.a, var_3.x, -36770i), vec4<i32>(-1i, 12883i, var_3.x, 1i) >> (vec4<u32>(u_input.b.x, var_0.x, var_0.x, var_2.x) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(-1i, var_3.x, var_3.x, var_3.x)) ^ abs(_wgslsmith_add_vec4_i32(vec4<i32>(25919i, u_input.a, u_input.c, var_3.x), vec4<i32>(u_input.a, var_3.x, -13148i, -12700i)))) ^ ~vec4<i32>(-2147483647i | _wgslsmith_add_i32(u_input.a, -2147483647i), ~(-21859i | var_3.x), var_3.x, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(9139i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1329f, -671f, -638f, -1367f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, -1303f, 1520f, -555f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -113f)), -1844f);
}

