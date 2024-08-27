struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(9168i, i32(-2147483648), 18198i, 1i, 2147483647i, 1i, -1i, 2147483647i, 23168i, i32(-2147483648), -27128i, 4263i, 2147483647i, -28470i, 59277i, 7134i, -33470i, 13781i, -110372i, 2147483647i, i32(-2147483648));

var<private> global1: i32 = 4706i;

var<private> global2: vec2<i32>;

var<private> global3: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> bool {
    let var_0 = u_input.b.wxw;
    var var_1 = Struct_3(global3.a, global3.b);
    var_1 = Struct_3(vec3<u32>(~global3.a.x, arg_1.x & 1u, 7933u), vec2<u32>(0u, arg_1.x) >> (((var_1.a.yx ^ (vec2<u32>(37310u, arg_1.x) & global3.a.zz)) | ~(global3.b | arg_1)) % vec2<u32>(32u)));
    global0 = array<i32, 21>();
    let var_2 = 4294967295u;
    return any(!vec4<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true)) & true, var_0.x < var_0.x, true));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec4<u32>) -> bool {
    global3 = Struct_3(_wgslsmith_mod_vec3_u32(global3.a, ~_wgslsmith_div_vec3_u32(vec3<u32>(20739u, 0u, arg_0.a.a.x) ^ arg_3.yxx, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.a.x, global3.a.x, global3.a.x), arg_3.xwz))), global3.a.xz);
    let var_0 = Struct_1(-535f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-188f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.c.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a, 744f))), 1173f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))))));
    let var_2 = Struct_3(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~global3.a, global3.a) | (abs(arg_0.a.a) | countOneBits(arg_0.a.a)), arg_3.wyy), arg_3.wz);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(887f - var_0.b.x) - -243f);
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1740f)) + _wgslsmith_f_op_f32(-arg_1.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * var_0.b.x)));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(func_4(Struct_5(Struct_3(~global3.a, _wgslsmith_add_vec2_u32(vec2<u32>(global3.a.x, 4294967295u), vec2<u32>(global3.b.x, u_input.c)))), Struct_4(-1520f, global2.x, vec2<f32>(-437f, -1446f)), !vec4<bool>(all(vec2<bool>(false, true)), true, true, func_3(u_input.c, vec2<u32>(global3.a.x, 62623u))), _wgslsmith_add_vec4_u32(vec4<u32>(global3.a.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(13306u, global3.a.x, global3.a.x), vec3<u32>(38707u, u_input.c, 4294967295u)), min(u_input.c, 52221u)), max(vec4<u32>(4294967295u, 13451u, 4294967295u, u_input.c), vec4<u32>(global3.b.x, global3.a.x, u_input.a, u_input.a)) | reverseBits(vec4<u32>(22193u, 0u, global3.b.x, global3.b.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, _wgslsmith_f_op_f32(-986f * 1681f), -808f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-808f, -262f, -200f) * vec3<f32>(-2246f, 1286f, 426f)), vec3<f32>(-1132f, 712f, -446f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1157f, -1274f, -106f) - vec3<f32>(-945f, -1003f, 1754f)), vec3<f32>(441f, 136f, 627f), vec3<bool>(true, true, true))))));
    return !vec3<bool>(var_0.a, var_0.a, true);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2086f);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(179f))), ~1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-858f, var_0), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(788f, -646f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, var_0)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0))))));
    global1 = -1i;
    let var_2 = select(func_2(), vec3<bool>(!(false | (u_input.b.x < global0[_wgslsmith_index_u32(global3.b.x, 21u)])), !(true & any(vec4<bool>(true, true, false, false))), all(func_2())), vec3<bool>(var_1.c.x == -139f, func_3(countOneBits(global3.a.x), global3.a.yx >> (global3.a.yz % vec2<u32>(32u))) | !all(vec2<bool>(true, false)), 0u <= (_wgslsmith_mult_u32(1u, 24889u) ^ _wgslsmith_add_u32(u_input.c, 1u))));
    global1 = u_input.b.x & -10734i;
    return Struct_3(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(global3.a, select(reverseBits(vec3<u32>(u_input.a, global3.a.x, u_input.c)), ~global3.a, true)), _wgslsmith_clamp_u32(~(~global3.a.x), 1u, global3.a.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(25795u, u_input.c, u_input.c, 32197u) >> (vec4<u32>(1u, u_input.a, 0u, 0u) % vec4<u32>(32u)), reverseBits(vec4<u32>(global3.a.x, u_input.a, u_input.a, global3.a.x))), vec4<u32>(u_input.a, _wgslsmith_mult_u32(0u, 125671u), 1u, ~u_input.a)), global3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    let var_0 = vec4<i32>(global2.x, u_input.b.x, select(-1i, firstLeadingBit(~2147483647i), u_input.c < global3.b.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.x, 0i << (global3.a.x % 32u)) ^ global2.x, -3633i));
    let var_1 = func_2().yy;
    var var_2 = ~0u;
    global1 = ~abs(-2147483647i >> ((global3.a.x >> (4294967295u % 32u)) % 32u)) | -2805i;
    global1 = abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(~u_input.b.x, global2.x, var_0.x ^ -8830i), -(var_0.yyx >> (global3.a % vec3<u32>(32u)))), reverseBits(_wgslsmith_sub_vec3_i32(var_0.ywx, ~var_0.yxx))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f), 638f), _wgslsmith_f_op_f32(abs(-637f)), var_1.x)) - 548f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(966f, 1000f)), var_3, _wgslsmith_f_op_f32(min(-1390f, _wgslsmith_f_op_f32(196f - var_3))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + var_3), _wgslsmith_f_op_f32(-var_3))))), vec3<f32>(var_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3), _wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)), _wgslsmith_f_op_f32(-var_3)), -1i);
}

