struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = -1317f;

var<private> global2: array<vec3<bool>, 16>;

var<private> global3: Struct_1 = Struct_1(4294967295u, vec4<f32>(-2100f, -420f, 397f, -842f), vec2<u32>(16807u, 0u), -825f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = arg_0.a;
    global2 = array<vec3<bool>, 16>();
    var var_1 = Struct_1(var_0.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, arg_0.a.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-155f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(943f, -571f)) * -576f))), vec2<u32>(0u, (~u_input.b.x >> (var_0.c.x % 32u)) << (1u % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1095f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d + -773f), arg_0.c.b.d)), global3.b.x), any(select(vec4<bool>(arg_0.c.a, arg_2, arg_0.c.a, arg_2), !vec4<bool>(arg_0.c.a, true, arg_0.c.a, false), false)))));
    global0 = 35353i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f * -463f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2228f), 388f, arg_0.c.a)))))), -666f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b.x))) * var_1.d));
    return arg_0.a.b;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = -193f;
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, -61629i, -1i, u_input.a.x), vec4<i32>(-16344i, u_input.a.x, -1i, u_input.a.x)), select(vec4<i32>(0i, -31813i, u_input.a.x, arg_0.c.c), vec4<i32>(arg_0.c.c, -2147483647i, arg_0.d, 0i), true)) | u_input.a.x, -1i >> (arg_0.c.b.c.x % 32u)), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_div_i32(countOneBits(u_input.a.x), ~(-40559i)), -12090i)));
    var var_1 = vec3<u32>(arg_0.b, _wgslsmith_mult_u32(~firstTrailingBit(62069u), ~4294967295u), ~u_input.b.x) ^ countOneBits(vec3<u32>(41308u, _wgslsmith_clamp_u32(1u, countOneBits(0u), 26643u), ~(~1u)));
    let var_2 = -1i;
    global2 = array<vec3<bool>, 16>();
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_1.x, 17056u) >> (vec3<u32>(950u, 4294967295u, 0u) % vec3<u32>(32u)), ~vec3<u32>(37982u, 8170u, 38816u)), arg_0.b, arg_0.c.b.a, _wgslsmith_sub_u32(var_1.x, 11972u)), ~(~(~vec4<u32>(4294967295u, arg_0.a.a, var_1.x, 4294967295u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, -995f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(788f))), arg_0.a.b.x)), firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.b.zz, max(global3.c, vec2<u32>(4294967295u, 0u)) << (var_1.zz % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1394f)) + _wgslsmith_f_op_f32(f32(-1f) * -1180f))));
}

fn func_1() -> vec3<i32> {
    let var_0 = false;
    var var_1 = Struct_2(!var_0 || true, func_3(Struct_3(Struct_1(global3.c.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_3(Struct_1(0u, global3.b, vec2<u32>(u_input.b.x, 0u), global3.b.x), global3.c.x, Struct_2(var_0, Struct_1(u_input.b.x, vec4<f32>(global3.d, global3.b.x, -397f, 136f), u_input.b.zx, global3.b.x), u_input.a.x, global3.b.x), u_input.a.x), Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, -44652i)), var_0, u_input.b)), global3.c, global3.d), reverseBits(u_input.b.x >> (0u % 32u)), Struct_2(!var_0, Struct_1(0u, global3.b, global3.c, global3.b.x), _wgslsmith_div_i32(29578i, 25532i), _wgslsmith_f_op_f32(floor(global3.b.x))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i), max(vec4<i32>(-1i, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(1i, -17595i, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(619f, 134f, global3.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global3.b.xwz)) * _wgslsmith_f_op_vec3_f32(global3.b.wzz - global3.b.yww)), select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, global3.c.x), 16u)], select(vec3<bool>(var_0, false, false), vec3<bool>(true, var_0, false), true), !var_0)))), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(0u, 68266u, u_input.b.x) % vec3<u32>(32u)), select(vec3<i32>(12051i, u_input.a.x, 6512i), vec3<i32>(-1i, u_input.a.x, 18590i), vec3<bool>(false, true, false))), _wgslsmith_add_vec3_i32(max(vec3<i32>(-58221i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), u_input.a), 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.d)))))));
    global2 = array<vec3<bool>, 16>();
    global0 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-570f + -961f), 844f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d + var_1.b.d) * _wgslsmith_f_op_f32(floor(global3.b.x))))));
    return -(~vec3<i32>(1i, u_input.a.x, -max(-15839i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global3.d);
    var var_1 = ~_wgslsmith_div_i32(1i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x));
    let var_2 = vec4<f32>(global3.d, global3.b.x, 1710f, _wgslsmith_f_op_f32(f32(-1f) * -945f));
    var var_3 = _wgslsmith_mult_vec3_i32(select(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, 15539i))), select(func_1(), vec3<i32>(u_input.a.x, u_input.a.x, firstTrailingBit(u_input.a.x)), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.a, 1u), 16u)]), !global2[_wgslsmith_index_u32(max(6947u, 1u), 16u)]), vec3<i32>(19593i, 41315i, _wgslsmith_sub_i32(u_input.a.x | 1i, 2147483647i)) | ~(-vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) >> (~u_input.b % vec3<u32>(32u))));
    var_0 = -841f;
    let var_4 = ~13887u;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-529f)) - var_2.x))), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, countOneBits(-7541i), vec3<i32>(-min(_wgslsmith_div_i32(u_input.a.x, var_3.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -39060i, u_input.a.x), vec3<i32>(-4173i, 40814i, 7043i))), var_3.x, 70213i), -15762i, _wgslsmith_add_u32(~global3.c.x, 4294967295u));
}

