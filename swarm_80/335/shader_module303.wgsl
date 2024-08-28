struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, false, false, true, false, true, true, false, true, false, true, false, true, true, false, true, false, false, false, true, true, false, false, false);

var<private> global1: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1107f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.b + -1658f))), -796f);
    global0 = array<bool, 24>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, _wgslsmith_f_op_f32(round(var_0.x)), 1338f)))));
    var var_1 = Struct_4(_wgslsmith_mod_i32(arg_3.x, arg_2.e), ~firstTrailingBit(reverseBits(u_input.c) | arg_1), Struct_3(u_input.e, Struct_2(!global0[_wgslsmith_index_u32(u_input.c, 24u)], true, arg_0.c, Struct_1(!vec2<bool>(true, arg_2.a), 1265f), ~u_input.a), 532f, firstLeadingBit(-1i), countOneBits(abs(4067u))));
    var var_2 = var_0.x;
    return 1i;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<i32> {
    global0 = array<bool, 24>();
    var var_0 = (arg_1 << (u_input.e.x % 32u)) ^ ~max(~u_input.e.x, ~u_input.e.x);
    global0 = array<bool, 24>();
    let var_1 = !vec2<bool>(global0[_wgslsmith_index_u32(select(0u, 1u | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, arg_1), u_input.e), false), 24u)], global0[_wgslsmith_index_u32(0u, 24u)]);
    var var_2 = Struct_4(_wgslsmith_dot_vec2_i32(~(~(-u_input.d.xx)), vec2<i32>(countOneBits(u_input.a) ^ firstTrailingBit(0i), u_input.a)), 0u, Struct_3(u_input.e, Struct_2(all(vec3<bool>(true, true, true)), false, Struct_1(var_1, _wgslsmith_f_op_f32(-187f + -529f)), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), -402f), u_input.d.x), arg_0, func_3(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(63521u, 0u), 24u)], global0[_wgslsmith_index_u32(13462u, 24u)], Struct_1(var_1, -798f), Struct_1(var_1, arg_0), 1i), ~53871u, Struct_2(false, false, Struct_1(var_1, arg_0), Struct_1(var_1, arg_0), u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -16942i, u_input.a, -30777i), vec4<i32>(u_input.d.x, -2147483647i, u_input.a, 1i)) ^ select(vec4<i32>(u_input.a, 2147483647i, -14907i, -12580i), vec4<i32>(-33850i, u_input.d.x, -1i, 0i), vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], false, var_1.x))), 68445u));
    return vec3<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_2.a, 27877i, 1i) << (vec4<u32>(10257u, 0u, 1362u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, -26136i, var_2.a, var_2.a)), -_wgslsmith_add_i32(-19074i, -11998i)) << (4294967295u % 32u), abs(-_wgslsmith_div_i32(u_input.d.x, 1i)), u_input.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec4<i32> {
    var var_0 = u_input.d >> (min(vec3<u32>(~(0u << (arg_1 % 32u)), 1u, ~1u), ~(vec3<u32>(88929u, 14573u, 4294967295u) & u_input.b.yyx)) % vec3<u32>(32u));
    var_0 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-682f))))))), u_input.b.x);
    let var_1 = i32(-1i) * -var_0.x;
    var var_2 = Struct_3(vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.yx, ~u_input.b.yy)), firstTrailingBit(u_input.e.x) ^ ~(arg_1 << (u_input.c % 32u)), 1u), Struct_2(false, true | !arg_0.x, Struct_1(!select(vec2<bool>(global0[_wgslsmith_index_u32(15082u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2529f, -2720f, global0[_wgslsmith_index_u32(u_input.c, 24u)])) * 1467f)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-495f)) * 1384f)), _wgslsmith_add_i32(min(-1i, reverseBits(var_0.x)), 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(180f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f))), u_input.d.x, 0u);
    let var_3 = select(select(!(!vec3<bool>(var_2.b.c.a.x, global0[_wgslsmith_index_u32(var_2.a.x, 24u)], true)), vec3<bool>(all(var_2.b.c.a), true, true), !(!select(vec3<bool>(arg_0.x, true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], arg_0.x, true), vec3<bool>(true, false, true)))), select(vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c, arg_1), 24u)], any(select(vec4<bool>(false, var_2.b.c.a.x, global0[_wgslsmith_index_u32(var_2.e, 24u)], arg_0.x), vec4<bool>(var_2.b.d.a.x, false, true, true), vec4<bool>(var_2.b.d.a.x, false, true, var_2.b.d.a.x))), !(!var_2.b.d.a.x)), !select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], var_2.b.d.a.x, true), vec3<bool>(true, var_2.b.c.a.x, var_2.b.a), var_2.b.d.a.x), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, var_2.b.a, arg_0.x), global0[_wgslsmith_index_u32(arg_1, 24u)]), true), vec3<bool>(-3900i >= u_input.d.x, true, true)), var_2.b.b);
    return ~(-min(-vec4<i32>(var_2.d, var_2.b.e, -3608i, var_0.x), vec4<i32>(-1i, min(var_1, -2147483647i), -2944i, firstTrailingBit(var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x;
    global0 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer((reverseBits(vec4<i32>(2147483647i, u_input.d.x, -37872i, u_input.a)) | func_1(select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], false)), 23220u)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 55760u, u_input.e.x, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x), vec4<u32>(55472u, 52369u, u_input.e.x, u_input.b.x), vec4<u32>(4294967295u, u_input.e.x, 15512u, 35499u))), abs(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(1u, 29622u, u_input.c, 1u)))) % vec4<u32>(32u)), abs(u_input.c));
}

