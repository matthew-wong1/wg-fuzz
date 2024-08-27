struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<bool, 8> = array<bool, 8>(true, false, false, false, false, false, false, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    global1 = array<bool, 8>();
    var var_0 = arg_1.x;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1224f)), _wgslsmith_f_op_f32(max(876f, _wgslsmith_f_op_f32(-700f * 627f))), _wgslsmith_f_op_f32(492f + _wgslsmith_f_op_f32(742f - 1228f)), _wgslsmith_f_op_f32(-419f - 1f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, -202f, _wgslsmith_f_op_f32(max(-1543f, 1224f)), _wgslsmith_div_f32(-1387f, -824f)))), ~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(u_input.a, arg_0))) ^ vec2<u32>(~4294967295u ^ ~u_input.a, arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-341f, 277f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-746f, -329f), vec2<f32>(-321f, -2684f), true)))))), global0[_wgslsmith_index_u32(~40241u, 7u)]);
    var var_2 = var_1.d;
    var var_3 = ~(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_2.c, 47366u, 36757u, 103895u)), ~(~vec4<u32>(1u, u_input.a, u_input.a, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(104894u, var_1.b.x, var_1.b.x, 1u), vec4<u32>(arg_0, arg_0, 27611u, var_1.b.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d.d, 4294967295u, arg_0, 0u), vec4<u32>(u_input.a, 0u, var_2.c, u_input.a))) | vec4<u32>(~_wgslsmith_div_u32(84749u, 4294967295u), ~67505u, 13735u, min(~81762u, 1u)));
    return 390f;
}

fn func_2(arg_0: Struct_1) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_0.c, !arg_0.b.yy))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))))) * var_0);
    let var_2 = Struct_3(Struct_1(-47065i, arg_0.b, _wgslsmith_mult_u32(arg_0.c, abs(arg_0.d)), 0u, true), _wgslsmith_mult_vec2_i32(~vec2<i32>(-u_input.b, -u_input.b), select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(arg_0.a, u_input.b)), 16040i & u_input.b), select(vec2<i32>(5758i, arg_0.a), vec2<i32>(u_input.b, -2147483647i), arg_0.b.xz) | firstTrailingBit(vec2<i32>(arg_0.a, -21612i)), u_input.a <= 59770u)), !vec3<bool>(any(select(arg_0.b, vec4<bool>(global1[_wgslsmith_index_u32(49208u, 8u)], true, arg_0.e, false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]))), true, all(arg_0.b)));
    var var_3 = arg_0.b;
    let var_4 = Struct_5(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(var_0)), -1242f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return var_4;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_5 {
    global1 = array<bool, 8>();
    var var_0 = _wgslsmith_add_u32(select(4294967295u, u_input.a, arg_0.d.e), 14548u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1152f, 972f))))) * -287f));
    var var_2 = arg_0.d.c;
    var var_3 = vec2<f32>(-1550f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(250f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(940f - -2292f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) * _wgslsmith_f_op_f32(-arg_0.c.x))))));
    return func_2(arg_0.d);
}

fn func_4(arg_0: Struct_5) -> i32 {
    var var_0 = ~(~_wgslsmith_add_vec2_i32(min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.b, -1i)), vec2<i32>(0i, u_input.b))) << ((~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 23204u), ~vec2<u32>(8643u, u_input.a)) & ~vec2<u32>(u_input.a & 17652u, ~u_input.a)) % vec2<u32>(32u));
    var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(min(0i, ~var_0.x), -2147483647i), ~(select(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(37039u, u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 6665i), vec2<i32>(var_0.x, 22931i)), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)])) << (vec2<u32>(1u, ~33435u) % vec2<u32>(32u))));
    global0 = array<Struct_1, 7>();
    let var_1 = -18724i;
    var var_2 = ~vec4<u32>(abs(0u), u_input.a, ~(~u_input.a) | ~u_input.a, (~u_input.a >> (~4294967295u % 32u)) | _wgslsmith_div_u32(0u, ~0u));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = array<Struct_1, 7>();
    let var_1 = ~(~(-vec3<i32>(var_0, 22483i, u_input.b)) >> (vec3<u32>(~u_input.a, ~4294967295u, ~8426u) % vec3<u32>(32u))) | vec3<i32>(~func_4(func_1(Struct_2(vec4<f32>(240f, 2387f, -2176f, -893f), vec2<u32>(u_input.a, 54373u), vec2<f32>(1334f, 1005f), Struct_1(u_input.b, vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 8u)], true, false), 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(0u, 8u)])), 7265i)), _wgslsmith_clamp_i32(var_0, -2147483647i, 1i) >> (u_input.a % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 2147483647i, var_0, 1i), vec4<i32>(u_input.b, _wgslsmith_sub_i32(u_input.b, -1i), 14117i, -25217i & var_0)));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1f, 80388u, vec3<u32>(94370u, reverseBits(4294967295u), u_input.a), var_1.x);
}

