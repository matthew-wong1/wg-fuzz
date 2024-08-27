struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-597f, 391f, 2434f), -27050i, true);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-2297f, -1696f, -206f), -1i, true);

var<private> global2: array<i32, 32> = array<i32, 32>(1i, -11997i, -1i, -58778i, 0i, -26629i, 1i, -1i, -42827i, -28891i, i32(-2147483648), 0i, i32(-2147483648), -4649i, -28376i, -54024i, -25490i, 17776i, -24505i, -32116i, -1647i, i32(-2147483648), -2452i, 1i, 2147483647i, 12948i, 2147483647i, -16604i, 42858i, -32540i, 0i, 572i);

var<private> global3: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>((arg_0 ^ u_input.c) & (u_input.c << (4294967295u % 32u)), ~4294967295u, 0u, _wgslsmith_div_u32(~4294967295u, 25932u)), countOneBits(firstTrailingBit(vec4<u32>(0u, u_input.c, 3342u, 160427u)) << (~vec4<u32>(arg_0, 4294967295u, 4294967295u, arg_0) % vec4<u32>(32u)))), 39272u);
    let var_1 = true;
    let var_2 = Struct_2(4294967295u, u_input.d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)), global1.b ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 32u)], global1.b, u_input.d.x), vec3<i32>(-9197i, u_input.b, global2[_wgslsmith_index_u32(arg_0, 32u)])), true));
    let var_3 = vec4<bool>(true, var_2.c.c, var_2.c.c, any(!(!vec2<bool>(global1.c, var_1))));
    global1 = var_2.c;
    return ~min(-1i, ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], 51039i), var_2.b.xx, vec2<bool>(global1.c, true)), u_input.d.yy));
}

fn func_3(arg_0: vec3<i32>) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + _wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(global0.a.x, -2299f, global1.a.x))) * global1.a))), select(u_input.d.x, _wgslsmith_sub_i32(global1.b, global0.b), true), false);
    var var_0 = Struct_2(u_input.c, abs(_wgslsmith_div_vec4_i32(~u_input.d, u_input.d)) | -vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0, arg_0), u_input.b, -global0.b, 0i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.x, 559f, -1228f)))), arg_0.x, true));
    let var_1 = vec2<i32>(reverseBits(-min(u_input.d.x, global2[_wgslsmith_index_u32(~var_0.a, 32u)])), countOneBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(global0.b, ~var_0.c.b), -arg_0.x & 2147483647i)));
    global3 = 22489i & _wgslsmith_sub_i32(-var_1.x, global0.b);
    global1 = Struct_1(var_0.c.a, 1i, all(select(vec2<bool>(true, !global1.c), select(select(vec2<bool>(global1.c, var_0.c.c), vec2<bool>(false, false), vec2<bool>(global0.c, var_0.c.c)), select(vec2<bool>(false, false), vec2<bool>(true, var_0.c.c), var_0.c.c), true), !var_0.c.c)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) * _wgslsmith_f_op_f32(f32(-1f) * -200f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.c.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(f32(-1f) * -551f))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = vec4<i32>(-1i, firstTrailingBit(~u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(arg_0.x >> (26229u % 32u), 32u)], -global1.b, -global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(arg_0.x, 32u)], -44995i, -1i), u_input.d)), select(firstTrailingBit(vec4<i32>(-2147483647i, 9332i, global2[_wgslsmith_index_u32(1u, 32u)], global0.b)), vec4<i32>(-29929i, global0.b, -3876i, u_input.b), true)) | u_input.b, firstLeadingBit(firstTrailingBit(func_2(u_input.c, _wgslsmith_f_op_f32(-global0.a.x)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) - _wgslsmith_f_op_vec3_f32(-global0.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a, global1.a)) + _wgslsmith_f_op_vec3_f32(func_3(reverseBits(vec3<i32>(-1i, 1i, global1.b)))))), -var_0.x, true);
    var var_1 = _wgslsmith_add_vec4_i32(~u_input.d, select(vec4<i32>(-_wgslsmith_mod_i32(global1.b, -40045i), firstLeadingBit(_wgslsmith_add_i32(-10072i, global1.b)), ~firstLeadingBit(global1.b), ~_wgslsmith_add_i32(-2147483647i, 0i)), vec4<i32>(-38347i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.zz, vec2<u32>(u_input.c, arg_0.x)), ~arg_0.xx), 32u)], global2[_wgslsmith_index_u32(15832u, 32u)], min(global0.b, global2[_wgslsmith_index_u32(1u, 32u)])), global1.c));
    var_1 = vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(6760i, var_0.x, u_input.b, 1i)), reverseBits(vec4<i32>(2147483647i, 2147483647i, 41169i, var_0.x))), 3345i, select(-min(15205i, var_1.x), ~_wgslsmith_mult_i32(1i, global1.b), true), ~(-24796i));
    let var_2 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)));
    return Struct_2(u_input.c, vec4<i32>(6814i, max(-3483i, var_0.x), ~global0.b, -u_input.a ^ 19363i), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1487f, global0.a.x, -1067f))))), -2147483647i, any(select(vec4<bool>(global1.c, global0.c, true, global0.c), vec4<bool>(false, global0.c, true, false), vec4<bool>(global0.c, true, false, global1.c))) && !any(vec3<bool>(false, true, global1.c))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    global1 = arg_3.c;
    let var_0 = arg_3;
    global3 = 41547i;
    let var_1 = abs(_wgslsmith_clamp_vec2_i32(arg_3.b.zx, max(vec2<i32>(2147483647i, -17913i), vec2<i32>(max(var_0.c.b, 0i), global1.b)), vec2<i32>(i32(-1i) * -1i, arg_3.c.b)));
    let var_2 = var_0;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~u_input.c >> (1u % 32u));
    global2 = array<i32, 32>();
    let var_1 = ~(~(-u_input.b));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f - global0.a.x)), 1003f, _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(760f - -317f)), -227f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-global0.a.x), global0.a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 534f, -217f) + vec3<f32>(1467f, global1.a.x, 336f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1.a))))), u_input.d.zz, func_1(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, ~26127u, _wgslsmith_mult_u32(19226u, 89534u)), ~var_0, 4294967295u, u_input.c)));
    let var_3 = var_2;
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), 367f, 706f), ~reverseBits(var_2.c.b), all(select(!select(vec2<bool>(global1.c, global0.c), vec2<bool>(true, var_2.c.c), true), vec2<bool>(select(var_3.c.c, false, true), var_2.c.c), !vec2<bool>(var_3.c.c, global1.c))));
    var var_4 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(1340f, 1094f)), _wgslsmith_f_op_f32(trunc(-717f))))))));
}

