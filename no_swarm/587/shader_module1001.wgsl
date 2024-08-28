struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(-1516f, -557f, 468f), Struct_2(0i, 426f, Struct_1(false, vec4<f32>(-423f, 697f, -702f, -1891f)), vec4<i32>(2147483647i, -17653i, 2147483647i, 17527i)));

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<Struct_2, 24>;

var<private> global4: f32 = -1347f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = global1.b.a < _wgslsmith_div_i32(-1677i, -27197i ^ (-global1.b.d.x & (-30701i << (u_input.a % 32u))));
    global0 = array<bool, 7>();
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + -1579f)), 952f, global0[_wgslsmith_index_u32(~u_input.a, 7u)])));
    global3 = array<Struct_2, 24>();
    let var_1 = Struct_3(global1.a, global1.b);
    return select(vec4<bool>(var_1.b.c.a & all(vec2<bool>(var_1.b.c.a, true)), any(select(select(vec2<bool>(false, var_1.b.c.a), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 7u)]), true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global1.b.c.a), select(vec2<bool>(false, global0[_wgslsmith_index_u32(47096u, 7u)]), vec2<bool>(var_1.b.c.a, global0[_wgslsmith_index_u32(1u, 7u)]), global0[_wgslsmith_index_u32(u_input.a, 7u)]))), var_1.b.c.a, true), vec4<bool>(false, var_1.b.c.a, global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(~u_input.a, u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a))), 7u)], global1.b.c.a), false);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    let var_0 = !(!(!select(vec4<bool>(global1.b.c.a, false, true, global0[_wgslsmith_index_u32(10906u, 7u)]), vec4<bool>(true, true, true, true), func_3())));
    let var_1 = countOneBits(reverseBits(~5495i));
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(0i, -3735i, _wgslsmith_sub_i32(~global1.b.d.x, 0i)) & abs(global1.b.d.x >> (_wgslsmith_clamp_u32(23852u, u_input.a, u_input.a) % 32u)), global1.b.d.x);
    let var_3 = global1.b.c;
    global3 = array<Struct_2, 24>();
    return false;
}

fn func_4(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = global2[_wgslsmith_index_u32(reverseBits(min(~(~u_input.a), u_input.a)), 25u)];
    let var_1 = Struct_1(func_2(vec4<i32>(~global1.b.d.x >> (17011u % 32u), -2147483647i, ~1i >> (0u % 32u), 1i)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), 870f, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1111f - _wgslsmith_div_f32(var_0.b, 631f)), 1156f))));
    var_0 = global1.b;
    global2 = array<Struct_2, 25>();
    var var_2 = ~(~_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(u_input.a, 53509u)), min(vec2<u32>(27915u, u_input.a), vec2<u32>(u_input.a, u_input.a)) ^ max(vec2<u32>(1u, 1001u), vec2<u32>(95323u, 0u))));
    return select(!(!select(func_3(), vec4<bool>(true, true, true, true), true)), vec4<bool>(global1.b.d.x <= (-var_0.a | ~var_0.a), global1.b.c.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + global1.a.x)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1605f, 1072f))))), true);
}

fn func_1(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = !func_4(select(vec3<bool>(false & global0[_wgslsmith_index_u32(55158u, 7u)], any(vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 7u)], true)), func_2(global1.b.d)), vec3<bool>(true, true, true), func_3().wyx));
    var var_1 = vec4<bool>(global1.b.a == global1.b.a, func_4(var_0.zwy).x, !var_0.x, true);
    let var_2 = arg_0;
    var var_3 = vec4<bool>(var_0.x, global1.a.x == _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(59992i, global1.b.a, global1.b.d.x, -22500i), global1.b.d), vec4<i32>(_wgslsmith_mult_i32(global1.b.d.x, 2147483647i), _wgslsmith_dot_vec2_i32(global1.b.d.zz, vec2<i32>(-11593i, 0i)), 1i, _wgslsmith_sub_i32(global1.b.d.x, global1.b.d.x))) != global1.b.d.x, false);
    let var_4 = !var_1.yxz;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1u, u_input.a);
    let var_1 = select(!select(vec3<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)])), global1.b.c.a), vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], true, false)), false, func_3().x), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], true, true), func_3().wxz, global1.b.c.a)), vec3<bool>(!(_wgslsmith_f_op_f32(step(global1.b.c.b.x, 133f)) >= _wgslsmith_f_op_f32(-global1.a.x)), global1.b.c.a, !global1.b.c.a), func_4(vec3<bool>(true, !all(vec2<bool>(global1.b.c.a, false)), false)).zxz);
    var var_2 = global1.b.c;
    global0 = array<bool, 7>();
    let var_3 = global1.b.c;
    var var_4 = abs(firstTrailingBit(firstTrailingBit(vec3<i32>(global1.b.d.x, global1.b.a, global1.b.a)) | select(global1.b.d.zyy, vec3<i32>(global1.b.a, 0i, -20476i), var_1)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 73096u, u_input.a), abs(vec3<u32>(1u, u_input.a, 98152u)), ~vec3<u32>(36676u, 0u, 4294967295u)), ~vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u)));
    let var_5 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -692f), global1.b.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b * 804f) - 863f), _wgslsmith_f_op_f32(trunc(1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_2.b.x, var_3.b.x, var_2.b.x) - var_2.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_2.b))) + var_3.b), Struct_2(~var_4.x, _wgslsmith_f_op_f32(abs(global1.b.c.b.x)), global1.b.c, global1.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xx, ~0u, firstLeadingBit(var_5.c.a));
}

