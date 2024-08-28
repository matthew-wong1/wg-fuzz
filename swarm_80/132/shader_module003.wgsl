struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_1, 26>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    global0 = vec2<bool>(!global0.x, all(vec2<bool>(17308u >= arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -248f) <= _wgslsmith_f_op_f32(step(1174f, 1489f)))));
    global0 = vec2<bool>(select(!all(!vec2<bool>(global0.x, arg_1)), false, true), global0.x);
    let var_0 = -1i;
    global1 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(496f, -3611f, 1173f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-210f, 686f, -907f), vec3<f32>(356f, 2186f, -229f)) - vec3<f32>(354f, -1542f, -658f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1904f, -213f, 939f) - vec3<f32>(205f, -958f, 343f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1188f * -1444f))), var_1.x) * var_1.x);
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    var var_0 = vec4<u32>(1u, ~34589u, u_input.c, _wgslsmith_mult_u32(arg_0.b, _wgslsmith_mod_u32(arg_0.b, abs(~u_input.c))));
    var var_1 = Struct_2(arg_0, global1[_wgslsmith_index_u32(1u, 26u)], vec2<i32>(-_wgslsmith_mult_i32(arg_0.d.x, u_input.d.x) >> (arg_0.b % 32u), firstTrailingBit(arg_0.d.x) | 28702i), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), ~_wgslsmith_sub_u32(var_0.x, u_input.c), _wgslsmith_f_op_f32(func_3(var_0.xz, global0.x)), vec4<i32>(1i, u_input.d.x, abs(1i), u_input.d.x)));
    var_1 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), var_0.x, arg_0.c, var_1.b.d), -(var_1.b.d.xy ^ var_1.d.d.xx), Struct_1(var_1.d.a, 34722u, -1000f, u_input.d));
    global1 = array<Struct_1, 26>();
    global0 = !(!(!vec2<bool>(!global0.x, true)));
    return Struct_4(Struct_3(vec3<u32>(_wgslsmith_add_u32(20519u, _wgslsmith_dot_vec2_u32(vec2<u32>(113263u, arg_0.b), vec2<u32>(arg_0.b, u_input.b))), _wgslsmith_add_u32(var_0.x, 36292u) ^ 38641u, var_0.x)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    return func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 1u), 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -479f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) - _wgslsmith_f_op_f32(trunc(-182f))), -1028f))));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(~reverseBits(~185u), 26u)], global1[_wgslsmith_index_u32(41408u, 26u)], -u_input.d.zx, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, ~(~4294967295u), ~7965u), vec4<u32>(_wgslsmith_clamp_u32(6376u, 1u, u_input.b), u_input.c, ~_wgslsmith_add_u32(25924u, u_input.a.x), u_input.e.x & (u_input.b >> (u_input.e.x % 32u)))), 26u)]);
    let var_2 = var_1;
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -890f))))));
    global0 = !vec2<bool>(false, global0.x);
    global1 = array<Struct_1, 26>();
    let var_4 = ~var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(firstLeadingBit(abs(~vec4<i32>(var_2.a.d.x, -1i, 47162i, var_4.x))), max(firstTrailingBit(vec4<i32>(var_2.b.d.x, 0i, 2147483647i, u_input.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.c.x, var_1.a.d.x, 0i, u_input.d.x), u_input.d)) | max(select(vec4<i32>(var_4.x, var_2.d.d.x, 17748i, 29050i), vec4<i32>(var_4.x, 2147483647i, -5760i, u_input.d.x), vec4<bool>(global0.x, false, true, true)), var_1.a.d), var_1.a.d), ~abs(vec3<u32>(var_3.a.a.x, min(u_input.c, u_input.c), ~2789u)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(var_2.d.d.x, -2147483647i, _wgslsmith_mod_i32(63489i, var_4.x))), -abs(var_2.d.d.zxy) >> (u_input.e.wzw % vec3<u32>(32u))), var_2.d.a.x, ~(~(~u_input.e) >> (~(~vec4<u32>(1u, var_2.a.b, var_2.d.b, 1u)) % vec4<u32>(32u))));
}

