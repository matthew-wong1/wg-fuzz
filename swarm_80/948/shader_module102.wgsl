struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = false;
    let var_1 = abs(_wgslsmith_clamp_i32(-((2147483647i ^ arg_0.c.x) & -arg_0.c.x), min(_wgslsmith_sub_i32(-u_input.a, _wgslsmith_mult_i32(-18714i, arg_0.b)), ~(u_input.d << (arg_0.d % 32u))), -2147483647i));
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(abs(arg_0.d), u_input.b.x), vec2<u32>(~u_input.b.x, ~select(arg_0.d << (1u % 32u), u_input.b.x & 1u, false)));
    var var_3 = 1u;
    var_3 = ~73468u;
    return global1[_wgslsmith_index_u32(u_input.b.x, 15u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_1, 15>();
    global0 = array<vec2<bool>, 2>();
    var var_0 = _wgslsmith_dot_vec2_i32(reverseBits(min(arg_1.c.yy, _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_1.a.x), vec2<i32>(-2147483647i, u_input.a)))) | vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_1.a, arg_1.c.zx), -arg_0), -3891i), arg_1.c.yz);
    global0 = array<vec2<bool>, 2>();
    var var_1 = func_2(Struct_1(arg_1.a >> (firstTrailingBit(u_input.b) % vec2<u32>(32u)), arg_1.c.x, vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 2147483647i), arg_1.a), -7035i, i32(-1i) * -1i), abs(arg_1.d << (~arg_1.d % 32u))));
    return select(_wgslsmith_dot_vec3_i32(-firstLeadingBit(var_1.c), var_1.c) >> (_wgslsmith_add_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, 0u, arg_1.d, 4294967295u), vec4<u32>(28773u, arg_1.d, 46382u, 1u))) % 32u), countOneBits(_wgslsmith_mod_i32(arg_0 & arg_1.a.x, var_1.b)), all(vec4<bool>(true, true, true, true)));
}

fn func_3() -> vec2<i32> {
    let var_0 = u_input.b.x;
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    var var_1 = -1468f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1952f - 958f) + -779f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1766f))))));
    return select(reverseBits(vec2<i32>(2147483647i, -1i)), ~(vec2<i32>(-1i) * -(~vec2<i32>(u_input.a, u_input.d))), !all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(~vec2<i32>(-1i, u_input.d)) ^ (vec2<i32>(u_input.d, u_input.a) << (u_input.b % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(-abs(vec2<i32>(1i, 2147483647i)), firstTrailingBit(vec2<i32>(u_input.d, 2147483647i)) | vec2<i32>(-17735i, u_input.a))), vec2<i32>(~(~func_1(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 15u)])), ~u_input.c));
    var var_1 = select(!select(select(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], select(global0[_wgslsmith_index_u32(14863u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], vec2<bool>(false, true)), global0[_wgslsmith_index_u32(~37199u, 2u)]), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 9469u), firstTrailingBit(u_input.b)), 2u)]), select(select(global0[_wgslsmith_index_u32(4294967295u, 2u)], select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), !global0[_wgslsmith_index_u32(44642u, 2u)], false), true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true)) != (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 2147483647i, 0i, var_0.x), vec4<i32>(u_input.d, 35558i, -17478i, var_0.x)) > firstLeadingBit(var_0.x))), true);
    let var_2 = -708f;
    var_0 = reverseBits(func_2(global1[_wgslsmith_index_u32(1u, 15u)]).c.xz | select(vec2<i32>(u_input.c, abs(var_0.x)), vec2<i32>(-u_input.a, 9520i), select(all(vec2<bool>(var_1.x, var_1.x)), any(vec4<bool>(false, false, var_1.x, false)), u_input.b.x > 4294967295u)));
    global1 = array<Struct_1, 15>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, _wgslsmith_f_op_f32(-var_2), var_2, _wgslsmith_f_op_f32(-var_2))))));
    var var_4 = vec3<bool>(var_1.x, u_input.b.x >= u_input.b.x, (-1592f > var_2) && (abs(~var_0.x) < -u_input.d));
    var_0 = _wgslsmith_mod_vec2_i32(min(vec2<i32>(-2147483647i, 37834i), _wgslsmith_div_vec2_i32(func_3(), vec2<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.d), _wgslsmith_mod_i32(u_input.d, 7252i)))), vec2<i32>(u_input.c, _wgslsmith_mult_i32(min(1i, u_input.c), -4840i)) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 45232i) & ~vec2<i32>(u_input.d, var_0.x), _wgslsmith_add_vec2_i32(vec2<i32>(4065i, 56230i), vec2<i32>(u_input.a, var_0.x)) | countOneBits(vec2<i32>(2147483647i, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(164f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-630f)) + -492f))) * var_3.x), vec4<i32>(u_input.a, _wgslsmith_mult_i32(var_0.x, abs(u_input.a)), 4501i, ~u_input.a), ~(~(~u_input.b.x)));
}

