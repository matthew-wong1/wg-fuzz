struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(false, true, Struct_2(12533u, vec4<i32>(i32(-2147483648), 0i, 0i, -33736i), Struct_1(21225i, true, vec4<bool>(false, false, true, true))), 0u, 347f), Struct_3(false, false, Struct_2(3619u, vec4<i32>(-35718i, -1i, 0i, i32(-2147483648)), Struct_1(2147483647i, true, vec4<bool>(true, true, true, true))), 71853u, 347f), Struct_3(true, false, Struct_2(44234u, vec4<i32>(-45167i, i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(0i, true, vec4<bool>(true, false, true, true))), 48783u, -1644f));

var<private> global1: i32 = -1998i;

var<private> global2: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(true, true, false, true)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(false, true, true, false)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(true, false, false, true)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(false, true, false, true)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(false, false, false, false)), Struct_4(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(false, false, false, true)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(false, true, true, false)), Struct_4(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(true, false, true, true)), Struct_4(vec4<bool>(false, true, false, false)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(true, false, false, true)), Struct_4(vec4<bool>(true, true, false, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: vec2<f32>) -> vec3<u32> {
    global1 = u_input.c.x;
    var var_0 = ~_wgslsmith_add_vec4_i32(-(~(~vec4<i32>(-1i, -12057i, u_input.c.x, -1i))), vec4<i32>(u_input.c.x, 1i, u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)))));
    let var_1 = global0[_wgslsmith_index_u32(~(~u_input.d), 3u)];
    let var_2 = min(vec2<i32>(var_1.c.c.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, var_0.x), -var_0.x)) | ~(var_0.yz << (~vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), abs(~vec2<i32>(abs(1i), var_1.c.c.a)));
    var_0 = vec4<i32>(~_wgslsmith_clamp_i32(2147483647i | ~u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.c.b.zyw, vec3<i32>(var_1.c.b.x, -44062i, 44457i)), _wgslsmith_sub_i32(-1i, var_1.c.c.a)), firstTrailingBit(59411i)), -1i, select(var_1.c.b.x, ~(-(~u_input.c.x)), true), 0i);
    return vec3<u32>(10820u, 1u, ~u_input.a.x);
}

fn func_1() -> vec3<u32> {
    let var_0 = -1000f;
    let var_1 = ~u_input.a;
    return ~(countOneBits(vec3<u32>(abs(0u), _wgslsmith_div_u32(u_input.d, var_1.x), var_1.x)) ^ abs(~func_2(var_0, global2[_wgslsmith_index_u32(var_1.x, 26u)], false, vec2<f32>(var_0, -1818f))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-348f, 1499f)), _wgslsmith_f_op_f32(select(-1569f, 540f, false)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-363f, 901f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, -1106f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(346f, 277f), vec2<f32>(1511f, -427f), arg_2.c.zz)))))));
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    let var_1 = Struct_1(arg_2.a, any(vec3<bool>(!(arg_3 | arg_3), true, arg_0 < func_2(var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 26u)], true, var_0).x)), arg_2.c);
    let var_2 = -_wgslsmith_mult_i32(var_1.a, arg_2.a);
    return _wgslsmith_f_op_f32(ceil(997f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(-(1i ^ u_input.c.x) == (~u_input.c.x >> (21319u % 32u)), true, false, any(vec4<bool>(true, true, false, false)) & all(vec4<bool>(true, true, true, false))));
    global2 = array<Struct_4, 26>();
    var var_1 = func_1() ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.d & _wgslsmith_add_u32(u_input.d, u_input.d), ~_wgslsmith_dot_vec4_u32(vec4<u32>(57071u, 0u, 4006u, u_input.a.x), vec4<u32>(4294967295u, 64571u, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(58165u & u_input.b.x, 4126u, u_input.b.x), ~max(vec3<u32>(u_input.b.x, u_input.a.x, 4294967295u), vec3<u32>(0u, 1u, 4294967295u)), firstLeadingBit(~vec3<u32>(u_input.b.x, 0u, u_input.a.x))));
    var var_2 = -1800f;
    global2 = array<Struct_4, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(450f * -795f), _wgslsmith_f_op_f32(633f + -2212f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1116f, 1447f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f))), _wgslsmith_f_op_f32(func_3(var_1.x | min(_wgslsmith_add_u32(var_1.x, var_1.x), ~var_1.x), vec3<i32>(48690i, u_input.c.x | -1i, 0i) << ((~vec3<u32>(var_1.x, u_input.d, 19119u) >> (vec3<u32>(var_1.x, 122990u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(reverseBits(max(-18466i, 0i)), true && var_0, !vec4<bool>(true, var_0, var_0, false)), !var_0)), ~0u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1361f, -266f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(446f, 655f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(853f))), _wgslsmith_f_op_f32(f32(-1f) * -717f)))), _wgslsmith_div_f32(-716f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-2169f)), _wgslsmith_f_op_f32(1144f + -1860f)))));
}

