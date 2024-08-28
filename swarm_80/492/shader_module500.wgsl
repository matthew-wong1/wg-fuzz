struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec4<i32>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, true, false), vec2<f32>(2439f, 565f), vec2<f32>(1422f, 925f), Struct_1(vec4<bool>(true, true, true, false), i32(-2147483648), 1u, vec2<i32>(61252i, 59547i)), i32(-2147483648));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    return _wgslsmith_f_op_f32(1368f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.c.x)))))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_2(select(global0.d.a.xwz, vec3<bool>(global0.d.a.x, global0.d.a.x, true), select(select(global0.d.a.zxz, vec3<bool>(global0.a.x, global0.a.x, global0.a.x), true), global0.d.a.wwz, !global0.d.a.x)), arg_1.xy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.wx), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1000f) - vec2<f32>(arg_0, 1736f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yw + vec2<f32>(1287f, -1845f)) + _wgslsmith_f_op_vec2_f32(-global0.b)), select(vec2<bool>(true, global0.d.a.x), global0.d.a.zw, any(global0.a.yz)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1.wy, global0.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1245f, global0.c.x), arg_1.ww, global0.a.yy))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -746f))))), global0.d, -29835i);
    var var_1 = vec2<i32>(~0i, 2147483647i);
    let var_2 = select(all(select(select(var_0.a.xz, select(var_0.d.a.wy, vec2<bool>(true, var_0.a.x), var_0.a.yz), vec2<bool>(global0.d.a.x, true)), !(!vec2<bool>(global0.d.a.x, true)), any(global0.d.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, false, true), 23728u, u_input.a.zwx)) - 3082f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), all(!(!select(var_0.d.a.wx, global0.d.a.wz, vec2<bool>(var_0.a.x, true)))));
    let var_3 = Struct_1(select(global0.d.a, select(select(!var_0.d.a, global0.d.a, select(vec4<bool>(var_2, true, var_0.d.a.x, global0.a.x), global0.d.a, false)), !vec4<bool>(global0.d.a.x, var_2, var_0.a.x, global0.a.x), select(!global0.d.a, !vec4<bool>(var_0.d.a.x, global0.a.x, false, var_2), select(vec4<bool>(false, var_2, true, false), global0.d.a, false))), any(select(!global0.d.a, select(vec4<bool>(false, global0.d.a.x, true, false), global0.d.a, global0.d.a), false))), ~((_wgslsmith_add_i32(global0.e, var_1.x) << (var_0.d.c % 32u)) >> (abs(~12573u) % 32u)), 1u, vec2<i32>(firstLeadingBit(~(-u_input.b.x)), 7498i));
    var var_4 = Struct_5(false, Struct_3(~((0u ^ global0.d.c) ^ ~global0.d.c), ~4294967295u, ~22707i, var_3.a, vec2<u32>(4294967295u, var_3.c)), select(~vec4<i32>(var_1.x ^ 13250i, u_input.b.x, -48216i, var_0.e | var_1.x), abs(~abs(vec4<i32>(-12433i, 2147483647i, var_1.x, var_1.x))), var_2), var_0.c, global0.d.d.x >= var_1.x);
    return any(select(var_3.a.zyz, var_4.b.d.yzy, true));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    let var_0 = Struct_5(func_4(global0.c.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(func_3(global0.d.a, 1u, u_input.a.yzx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - -1284f)), global0.b.x, global0.b.x)), Struct_3(global0.d.c, u_input.a.x, arg_1.c, select(select(arg_0.d, arg_1.d, !vec4<bool>(true, arg_1.d.x, true, arg_1.d.x)), vec4<bool>(!arg_0.d.x, func_4(899f, vec4<f32>(global0.b.x, global0.c.x, global0.b.x, global0.c.x)), any(vec3<bool>(arg_1.d.x, true, true)), func_4(-554f, vec4<f32>(global0.b.x, global0.b.x, 644f, -1000f))), false), u_input.a.xx), -vec4<i32>(-arg_1.c ^ _wgslsmith_sub_i32(global0.e, 2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(6302i, arg_0.c, arg_1.c, arg_1.c), vec4<i32>(6259i, 59070i, 79237i, u_input.b.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.c, arg_1.c, 1648i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c, 0i, global0.d.d.x), vec3<i32>(-1i, 2147483647i, -2147483647i))), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * global0.c)) - vec2<f32>(-1128f, -1074f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1196f, 1709f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-569f, global0.c.x)))))), arg_1.d.x);
    global0 = Struct_2(!(!(!(!vec3<bool>(var_0.b.d.x, arg_0.d.x, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, global0.c.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.d))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(-global0.c)))), Struct_1(vec4<bool>(true || any(var_0.b.d), any(vec4<bool>(arg_1.d.x, var_0.e, false, false)), !any(vec3<bool>(false, true, arg_1.d.x)), arg_1.d.x | any(var_0.b.d.xzy)), -(-u_input.b.x >> (55417u % 32u)), ~u_input.a.x, vec2<i32>(max(var_0.c.x, i32(-1i) * -3919i), _wgslsmith_clamp_i32(~u_input.b.x, var_0.b.c, -1i))), min(0i, firstLeadingBit(u_input.b.x & max(27668i, -18995i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1672f, _wgslsmith_f_op_f32(-var_0.d.x)), 936f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.d, vec2<f32>(654f, var_0.d.x))) * global0.b)), vec2<f32>(global0.b.x, -151f), true)));
    return min(_wgslsmith_dot_vec4_i32(abs(firstTrailingBit(vec4<i32>(u_input.b.x, 19583i, -24561i, -2147483647i))), vec4<i32>(abs(u_input.b.x), ~(-1i), firstLeadingBit(0i), arg_1.c)), i32(-1i) * -_wgslsmith_mult_i32(u_input.b.x, var_0.c.x)) > ~(-(max(u_input.b.x, -1i) | ~arg_0.c));
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    var var_0 = true;
    let var_1 = 1i;
    var var_2 = Struct_3(_wgslsmith_mod_u32(~u_input.a.x, ~(global0.d.c ^ u_input.a.x)) | 1u, arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(~global0.d.b), -27997i, u_input.b.x), vec3<i32>(24783i, u_input.b.x, select(_wgslsmith_add_i32(var_1, global0.e), ~(-36557i), false | global0.a.x))), vec4<bool>(true, global0.d.a.x, all(vec4<bool>(select(false, global0.d.a.x, false), true, global0.d.a.x & true, func_2(Struct_3(global0.d.c, 0u, 48196i, global0.d.a, u_input.a.xy), Struct_3(12471u, arg_0.x, u_input.b.x, vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), vec2<u32>(u_input.a.x, 0u))))), true), ~reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(4294967295u, 0u))));
    let var_3 = vec3<bool>(var_2.d.x && any(vec3<bool>(false, any(vec4<bool>(global0.a.x, var_2.d.x, var_2.d.x, var_2.d.x)), false)), false, global0.a.x);
    return select(-vec4<i32>(u_input.b.x, ~2147483647i, var_2.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(31889u, arg_0.x), vec2<u32>(var_2.b, 1u)) % 32u), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.d.x, 1i), global0.d.d))), _wgslsmith_div_vec4_i32(vec4<i32>(-(var_1 | 0i), -var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, var_1, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.e, -54207i, u_input.b.x, var_1), vec4<i32>(var_1, 0i, u_input.b.x, -7733i), vec4<i32>(u_input.b.x, u_input.b.x, global0.e, -32872i))), ~u_input.b.x), max(max(~vec4<i32>(1i, -1i, -2147483647i, u_input.b.x), ~vec4<i32>(global0.d.b, var_1, 16356i, var_1)), _wgslsmith_sub_vec4_i32(vec4<i32>(-11876i, var_1, var_1, 51984i), vec4<i32>(-35925i, 0i, 2147483647i, var_2.c)))), select(true, true, select(func_4(global0.c.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1439f, -324f, 2074f, 1093f)))), true, all(vec4<bool>(var_2.d.x, true, global0.d.a.x, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(1u < global0.d.c);
    let var_1 = global0.d.c;
    let var_2 = global0.d.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(sign(global0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1311f, global0.c.x), _wgslsmith_f_op_vec2_f32(-global0.b), true))))));
    let var_4 = reverseBits(u_input.b);
    var var_5 = firstTrailingBit(~(~(vec4<i32>(-1i) * -vec4<i32>(var_4.x, -1i, -9680i, 21756i))));
    global0 = Struct_2(vec3<bool>(false | any(global0.d.a), global0.a.x, global0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)), vec2<f32>(var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), 1000f))), Struct_1(global0.d.a, var_5.x, u_input.a.x, ~reverseBits(~vec2<i32>(-14761i, u_input.b.x))), _wgslsmith_dot_vec4_i32(func_1(vec3<u32>(~u_input.a.x, 19534u | u_input.a.x, u_input.a.x)), vec4<i32>(-var_4.x, _wgslsmith_dot_vec3_i32(var_5.wwx, abs(vec3<i32>(20937i, u_input.b.x, 27886i))), _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, 1i) | (33064i ^ var_4.x), max(-var_4.x, -53040i))));
    let var_6 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -141f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -238f)))))));
    global0 = Struct_2(global0.d.a.zyx, var_3, global0.c, Struct_1(vec4<bool>(global0.a.x, global0.d.a.x, select(global0.a.x, true, true), true), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 21005i, -1i, 17944i), vec4<i32>(-7507i, var_4.x, u_input.b.x, global0.d.b)), vec4<i32>(-64776i, -2147483647i, 1i, 32430i) >> (u_input.a % vec4<u32>(32u))) & abs(2147483647i), 0u, select(select(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.e, var_4.x), global0.d.d), global0.d.d, select(vec2<bool>(false, global0.a.x), vec2<bool>(global0.d.a.x, global0.d.a.x), vec2<bool>(global0.a.x, true))), vec2<i32>(1i, u_input.b.x), select(global0.d.a.xz, vec2<bool>(global0.a.x, true), global0.d.a.xw))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_u32(~countOneBits(global0.d.c), 1u, ~4294967295u), ~1u), _wgslsmith_add_vec2_u32(u_input.a.wz, ~reverseBits(vec2<u32>(global0.d.c, 64201u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.x, 815f, -644f, 585f)))))))));
}

