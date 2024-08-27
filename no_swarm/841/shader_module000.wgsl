struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2 = Struct_2(vec4<u32>(22699u, 1u, 4294967295u, 6475u), -853f, vec4<i32>(i32(-2147483648), 26809i, 8349i, 0i), Struct_1(vec3<f32>(269f, 1412f, 1198f), 1014f, i32(-2147483648), 788f, vec4<bool>(true, true, true, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_2(global1.a, global1.d.d, select(-vec4<i32>(global1.c.x, global1.d.c, 1i, 1i), reverseBits(-vec4<i32>(global1.c.x, -2147483647i, global1.d.c, global1.d.c)), arg_0) & vec4<i32>(firstTrailingBit(81897i) ^ 1i, reverseBits(22860i), (global1.c.x ^ -29008i) | (global1.d.c >> (u_input.a.x % 32u)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(global1.d.c, global1.c.x)), ~vec2<i32>(41126i, global1.d.c))), Struct_1(global1.d.a, global1.b, global1.d.c, global1.d.b, !vec4<bool>(all(vec2<bool>(false, true)), !arg_0.x, all(vec4<bool>(arg_0.x, false, false, global1.d.e.x)), false)));
    var_0 = Struct_2(global1.a, _wgslsmith_f_op_f32(global1.d.d + 131f), abs(vec4<i32>(~(-2147483647i), select(-1i, global1.c.x, true), abs(global1.d.c), 19280i)) ^ max(-firstTrailingBit(vec4<i32>(global1.c.x, -21305i, global1.d.c, 2147483647i)), countOneBits(global1.c)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.d, -2418f, -806f) + global1.d.a))), _wgslsmith_div_f32(var_0.d.d, _wgslsmith_f_op_f32(f32(-1f) * -1272f)), -_wgslsmith_clamp_i32(-41653i, 0i, ~global1.d.c), -271f, !vec4<bool>(var_0.d.c >= 1i, !var_0.d.e.x, var_0.d.e.x && var_0.d.e.x, false)));
    var var_1 = select(-2147483647i, 3651i, true);
    let var_2 = global1.d;
    var var_3 = Struct_2(vec4<u32>(0u, global1.a.x, ~_wgslsmith_sub_u32(global1.a.x, 4294967295u), _wgslsmith_sub_u32(var_0.a.x, 64854u) ^ _wgslsmith_dot_vec3_u32(var_0.a.yxw, global1.a.xwz)) << (var_0.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1.d.d, _wgslsmith_f_op_f32(floor(var_0.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) + _wgslsmith_f_op_f32(f32(-1f) * -292f)))))), firstLeadingBit(vec4<i32>(1i >> (global0.x % 32u), ~(-1i), _wgslsmith_div_i32(_wgslsmith_add_i32(23123i, global1.c.x), max(-26958i, 5048i)), var_0.c.x)), Struct_1(vec3<f32>(var_0.d.b, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b)) * -511f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * var_2.a.x)), var_0.c.x, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f * var_0.d.a.x))), vec4<bool>((global1.b <= -550f) & all(arg_0.zzw), false, all(!vec2<bool>(false, var_0.d.e.x)), _wgslsmith_div_i32(var_2.c, 0i) >= _wgslsmith_sub_i32(9945i, var_0.c.x))));
    return _wgslsmith_f_op_vec2_f32(min(global1.d.a.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(670f, var_3.d.a.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    var var_0 = 13059u;
    let var_1 = -vec4<i32>(arg_1.c, reverseBits(arg_1.c), _wgslsmith_mod_i32(reverseBits(_wgslsmith_div_i32(2147483647i, global1.c.x)), global1.d.c), ~arg_1.c);
    let var_2 = !global1.d.e.zz;
    let var_3 = Struct_1(arg_1.a, -919f, arg_1.c, 1535f, vec4<bool>(false, global1.d.e.x | false, all(select(select(vec2<bool>(global1.d.e.x, true), vec2<bool>(arg_1.e.x, false), true), select(vec2<bool>(arg_1.e.x, false), arg_1.e.zz, var_2.x), arg_1.e.zw)), global1.d.e.x));
    var var_4 = firstLeadingBit(global1.a | global1.a);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d - var_3.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) * -1406f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = -1177f;
    let var_1 = global1.d.a;
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(abs(global1.d.c), _wgslsmith_sub_i32(select(global1.c.x, global1.c.x, global1.d.e.x), ~global1.c.x), 6202i), global1.c.zwx) | -min(select(-vec3<i32>(global1.c.x, global1.c.x, 0i), vec3<i32>(global1.d.c, 2147483647i, global1.d.c), vec3<bool>(false, false, false)), vec3<i32>(firstLeadingBit(global1.c.x), global1.d.c, global1.c.x));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1303f * var_1.x))));
    return Struct_2(arg_0, _wgslsmith_f_op_f32(min(1161f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, global1.d.e.x, global1.d.e.x, true))), Struct_1(global1.d.a, -372f, 1i, _wgslsmith_f_op_f32(-var_3), select(global1.d.e, vec4<bool>(global1.d.e.x, global1.d.e.x, global1.d.e.x, global1.d.e.x), false)), ~(~vec3<u32>(global1.a.x, 104349u, 4294967295u)))))), abs(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-global1.c, global1.c), vec4<i32>(_wgslsmith_mod_i32(-52947i, -2147483647i), var_2.x | var_2.x, global1.c.x, 2147483647i))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-175f)), global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_1.x, select(abs(_wgslsmith_clamp_i32(var_2.x, var_2.x, var_2.x)), var_2.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b))), select(vec4<bool>(all(vec3<bool>(false, true, false)), select(global1.d.e.x, false, true), global1.d.e.x, any(vec2<bool>(true, true))), global1.d.e, false)));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = func_2(select(~(~global1.a), global1.a >> (global1.a % vec4<u32>(32u)), global1.d.e.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1366f, 1500f, var_0.b, global1.d.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, global1.b, 1263f, -718f) * vec4<f32>(global1.b, var_0.b, global1.d.b, -702f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a.x, global1.b, -106f, var_0.d.a.x) * vec4<f32>(var_0.b, 368f, global1.b, 1151f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 1220f, global1.b, 1000f) + vec4<f32>(var_0.d.d, var_0.d.a.x, 1603f, global1.d.a.x))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1198f, global1.d.d, var_0.b, -552f)) - vec4<f32>(var_0.b, 454f, 122f, var_0.d.d))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-557f, global1.d.b, 348f, -2260f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.d.d, -1242f, var_0.d.a.x, -372f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -483f, 840f, var_0.d.d) + vec4<f32>(global1.d.d, -805f, global1.d.b, -167f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a.x, _wgslsmith_div_f32(var_0.b, global1.b), global1.b, _wgslsmith_f_op_f32(-var_0.b)))));
    var var_2 = var_0.d.e;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 667f, _wgslsmith_f_op_f32(sign(850f))), _wgslsmith_f_op_vec3_f32(-var_1.zxz)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_1.x) - -989f)), 475f), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, var_0.d.c), -43494i, countOneBits(-1i), global1.c.x), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(global1.c, vec4<i32>(var_0.c.x, global1.c.x, var_0.c.x, var_0.d.c)), _wgslsmith_clamp_vec4_i32(var_0.c, global1.c, var_0.c))), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(57975i, var_0.c.x, 0i, -1i), _wgslsmith_div_vec4_i32(var_0.c, var_0.c), ~var_0.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1f, 969f, !var_2.x && all(var_0.d.e.xx))))), !select(global1.d.e, vec4<bool>(true, var_2.x, !var_2.x, !var_2.x), vec4<bool>(select(true, false, true), true, var_2.x, any(vec3<bool>(var_2.x, var_0.d.e.x, true)))));
    let var_4 = var_0.d;
    return StorageBuffer(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -189f;
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(~abs(10881u), 4419u ^ abs(global1.a.x)), ~1u, ~44670u, global0.x), global1.d.a.x, global1.c, Struct_1(global1.d.a, -878f, _wgslsmith_dot_vec4_i32(global1.c, global1.c), global1.d.a.x, select(global1.d.e, !global1.d.e, global1.d.e)));
    let x = u_input.a;
    s_output = func_1(~(~56296u));
}

