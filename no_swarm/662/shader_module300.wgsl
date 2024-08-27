struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(true, vec2<bool>(false, false)), Struct_3(false, vec2<bool>(true, false)), Struct_3(false, vec2<bool>(true, true)), Struct_3(false, vec2<bool>(false, true)), Struct_3(false, vec2<bool>(false, true)), Struct_3(false, vec2<bool>(false, true)), Struct_3(true, vec2<bool>(false, false)), Struct_3(false, vec2<bool>(true, true)));

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(false, vec2<bool>(false, true)), Struct_3(false, vec2<bool>(true, false)), Struct_3(true, vec2<bool>(false, true)), Struct_3(false, vec2<bool>(false, true)), Struct_3(false, vec2<bool>(false, true)), Struct_3(true, vec2<bool>(true, true)), Struct_3(true, vec2<bool>(false, true)), Struct_3(false, vec2<bool>(false, false)), Struct_3(false, vec2<bool>(true, true)));

var<private> global3: vec4<u32> = vec4<u32>(29771u, 14216u, 40921u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = !any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2497f, 330f)))))));
    var var_2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(u_input.e.x, u_input.a.x, arg_0.x, 73417i)), 0i, u_input.a.x & u_input.b.x), -(~arg_0)) & reverseBits(vec4<i32>(-1i, -arg_0.x | _wgslsmith_div_i32(u_input.a.x, 6772i), reverseBits(50743i) | arg_0.x, u_input.b.x));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(u_input.d), select(u_input.d, vec3<u32>(countOneBits(0u), global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(29215u, 33469u, 114162u, 0u), vec4<u32>(4294967295u, global3.x, u_input.d.x, 74645u))), true != any(vec2<bool>(false, false))) | select(firstLeadingBit(global3.zyx), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(global3.zww, global3.www), ~global3.xxy), false)), 9u)];
    let var_4 = 892f;
    return select(select(vec3<bool>(true, all(select(vec4<bool>(var_3.a, true, true, false), vec4<bool>(var_3.a, var_3.b.x, var_3.b.x, var_3.b.x), vec4<bool>(false, true, false, var_3.b.x))), !(!var_3.a)), select(vec3<bool>(true, var_3.a, !var_3.a), select(select(vec3<bool>(true, var_3.b.x, false), vec3<bool>(true, false, true), false), vec3<bool>(var_3.a, true, false), any(vec4<bool>(var_3.a, var_3.b.x, false, true))), vec3<bool>(false, !var_3.a, false)), vec3<bool>(var_3.a, var_3.b.x, var_3.b.x)), select(vec3<bool>(any(select(vec4<bool>(var_3.b.x, var_3.b.x, false, true), vec4<bool>(var_3.a, false, true, false), vec4<bool>(false, false, var_3.a, true))), !var_3.b.x, var_3.a), !vec3<bool>(all(vec3<bool>(false, true, var_3.a)), var_3.b.x, true), var_3.a), !vec3<bool>(true, 50998u == _wgslsmith_dot_vec3_u32(global3.zzx, global3.yzz), any(!vec3<bool>(var_3.a, true, false))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = (global3.x << (~1u % 32u)) | global3.x;
    global0 = any(vec3<bool>(true, any(func_3(~vec4<i32>(-1i, 18456i, 0i, 2147483647i))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_1 = reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, u_input.d.x) << (u_input.d.yy % vec2<u32>(32u)), vec2<u32>(0u, countOneBits(36449u))));
    let var_2 = vec4<i32>(arg_0.x, ~u_input.a.x, ~((i32(-1i) * -1i) | u_input.b.x), -49014i);
    let var_3 = var_1.x;
    return firstLeadingBit(vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), var_1.x ^ global3.x), select(13182u, global3.x, true)));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(min(func_2(arg_0.b, min(vec3<u32>(arg_0.a, global3.x, 103261u), _wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(25615u, global3.x, arg_0.a)))), ~firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.d.zy, vec2<u32>(u_input.c, arg_0.a)))), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(u_input.d.zy), ~vec2<u32>(arg_0.a, 0u))), 24386u));
    var var_1 = func_3(firstLeadingBit(vec4<i32>(1i, ~_wgslsmith_dot_vec2_i32(arg_0.b.zx, u_input.e.zx), ~arg_0.b.x, -36733i))).x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1870f, arg_0.c.a)))))), 773f, _wgslsmith_f_op_f32(floor(-1689f)), 461f);
    var var_3 = _wgslsmith_mult_u32((~_wgslsmith_add_u32(24332u, 1u) & _wgslsmith_mult_u32(~u_input.d.x, 4294967295u)) & countOneBits(countOneBits(u_input.c) ^ abs(u_input.d.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(60237u, arg_0.a, global3.x, var_0)), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0, 48616u, var_0), vec4<u32>(var_0, 1u, 42347u, 4294967295u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.a, 1u), vec4<u32>(arg_0.a, 4294967295u, 0u, global3.x))))));
    var var_4 = vec4<bool>(func_3(-abs(~vec4<i32>(-1i, 12032i, 29491i, arg_1))).x, !(select(false, false, false) & false), true, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), func_3(vec4<i32>(u_input.e.x, 4143i, u_input.b.x, arg_0.b.x)).x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(false, true, false)), false, 18045u > global3.x, false))));
    return vec2<i32>(arg_1, ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(func_1(Struct_2(global3.x, vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), Struct_1(779f)), 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x), vec2<i32>(1i, 2147483647i)), vec2<i32>(1i, 2167i) << (global3.yz % vec2<u32>(32u))), firstLeadingBit(u_input.e.yy | vec2<i32>(u_input.a.x, u_input.b.x))), u_input.e.x), 22045i, (u_input.b.x >> (~u_input.d.x % 32u)) << (u_input.d.x % 32u));
    var var_1 = Struct_5(Struct_4(0i), u_input.b.yy);
    global3 = vec4<u32>(_wgslsmith_div_u32(1u, u_input.c), ~firstTrailingBit(1u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, u_input.c, u_input.c), u_input.d)), ~_wgslsmith_mult_u32(0u, global3.x)) ^ ~vec4<u32>(4294967295u, ~u_input.d.x, ~(~1u), ~(~u_input.c));
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(45041i, abs(45679i)), 1i, -20256i) ^ reverseBits(vec3<i32>(0i, u_input.a.x, var_1.a.a) ^ (u_input.e >> (vec3<u32>(u_input.d.x, u_input.c, 32662u) % vec3<u32>(32u)))), var_0.yxx);
    let var_3 = select(vec3<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), all(vec2<bool>(true, true)), true), vec3<bool>(false, true, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2.x), 2147483647i);
}

