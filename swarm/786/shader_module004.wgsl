struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(12236i, true, true, vec2<f32>(-325f, 286f), vec2<i32>(-52487i, i32(-2147483648)));

var<private> global1: i32;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1i, false, true, vec2<f32>(1886f, -385f), vec2<i32>(32177i, -1i)), Struct_1(17122i, true, false, vec2<f32>(203f, -118f), vec2<i32>(96629i, 1i)), Struct_1(i32(-2147483648), true, true, vec2<f32>(-1000f, 1108f), vec2<i32>(i32(-2147483648), 6248i)), Struct_1(-1307i, false, true, vec2<f32>(721f, -387f), vec2<i32>(-23759i, -1i)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = vec2<bool>(true, any(vec3<bool>(u_input.c.x > u_input.d.x, global0.b && false, false)) & global0.b);
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 4u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 785f, global0.d.x, 1148f)), vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), 237f, -531f, -2646f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, -290f, var_1.d.x, -910f), vec4<f32>(-394f, -1159f, var_1.d.x, global0.d.x), vec4<bool>(var_1.b, global0.c, var_1.b, false)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1334f, global0.d.x, var_1.d.x, 1739f) * vec4<f32>(global0.d.x, -1381f, global0.d.x, 688f))))))));
    let var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 4u)];
    global1 = -36828i;
    return !(!select(!select(vec4<bool>(var_3.b, true, true, var_3.c), vec4<bool>(true, var_0.x, var_1.b, var_0.x), vec4<bool>(var_3.b, false, true, true)), !(!vec4<bool>(var_1.b, var_0.x, global0.b, var_0.x)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(var_3.b, global0.b, false, false), vec4<bool>(true, var_3.c, true, false)), vec4<bool>(true, true, true, true), var_1.b)));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = select(select(select(vec4<bool>(false, true, global0.b, true), func_3(), any(vec2<bool>(global0.b, true))), func_3(), global0.c), vec4<bool>(global0.b, !(!all(vec3<bool>(true, true, false))), global0.b, true), vec4<bool>(global0.c, true, !(!global0.b), _wgslsmith_f_op_f32(-363f + global0.d.x) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1045f))))));
    let var_1 = ~(vec2<u32>(~28978u >> (arg_0 % 32u), 46347u >> (~4294967295u % 32u)) | _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a.x, 7847u)));
    global1 = select(_wgslsmith_mod_i32(_wgslsmith_div_i32(-6647i, 1i), global0.e.x), _wgslsmith_dot_vec4_i32(select(~(vec4<i32>(u_input.b, u_input.d.x, -1i, u_input.d.x) >> (vec4<u32>(var_1.x, u_input.a.x, 0u, var_1.x) % vec4<u32>(32u))), ~(vec4<i32>(u_input.d.x, 21518i, global0.a, global0.e.x) << (vec4<u32>(4294967295u, 30863u, arg_0, 0u) % vec4<u32>(32u))), select(global0.b, global0.d.x < 2288f, !global0.c)), vec4<i32>(_wgslsmith_add_i32(u_input.e, 12271i), min(global0.a ^ u_input.d.x, -2147483647i), _wgslsmith_mult_i32(12717i, countOneBits(global0.e.x)), u_input.e)), global0.b);
    let var_2 = Struct_3(~(u_input.a & select(vec3<u32>(80236u, 65850u, var_1.x), ~vec3<u32>(0u, 12265u, var_1.x), select(vec3<bool>(false, true, global0.b), var_0.yzz, var_0.xzy))), Struct_2(firstLeadingBit(vec4<i32>(-1i << (0u % 32u), u_input.d.x, 2147483647i, u_input.c.x)), Struct_1(global0.e.x, true, global0.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, 676f)))), vec2<i32>(~(-33827i), global0.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)))))));
    global0 = Struct_1(-41026i, false, !(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0.e, vec2<i32>(var_2.b.a.x, u_input.c.x)), _wgslsmith_add_i32(u_input.e, global0.a), -var_2.b.a.x) > global0.e.x), vec2<f32>(-1104f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f), 112f)), var_2.b.b.e ^ (((global0.e ^ vec2<i32>(var_2.b.a.x, 23706i)) ^ vec2<i32>(var_2.b.b.e.x, 2147483647i)) | vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -32029i), abs(2147483647i))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-393f, _wgslsmith_f_op_f32(-347f - var_2.b.c.x)), _wgslsmith_f_op_f32(-527f - _wgslsmith_f_op_f32(var_2.b.b.d.x * _wgslsmith_f_op_f32(-global0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.d.x, 1000f))))))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = reverseBits(u_input.a);
    let var_1 = Struct_2(~(~(~vec4<i32>(global0.a, global0.e.x, global0.a, -9251i) & -vec4<i32>(global0.a, 1i, u_input.b, -2147483647i))), global2[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d.x, -701f))), _wgslsmith_f_op_f32(func_2(53183u)), -1679f, -2487f))));
    global1 = var_1.b.a;
    var var_2 = abs(countOneBits(var_0.x));
    global2 = array<Struct_1, 4>();
    return var_1.a;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = 14248u;
    let var_1 = arg_0;
    global2 = array<Struct_1, 4>();
    global1 = 1i;
    global0 = arg_1.b;
    return Struct_2(arg_1.a, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, abs(89763u)), 4u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, arg_1.b.d.x, _wgslsmith_f_op_f32(arg_1.b.d.x + -1000f), arg_1.b.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(0i, ~min(2147483647i, 10957i)), _wgslsmith_add_i32(~(-1i), 22626i) | _wgslsmith_sub_i32(~u_input.d.x, 2147483647i)), Struct_2(func_1(all(vec3<bool>(false, global0.b, false)), vec4<bool>(any(vec3<bool>(global0.c, global0.c, global0.b)), global0.c, !global0.c, false)), global2[_wgslsmith_index_u32(0u, 4u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-224f, global0.d.x, global0.d.x, global0.d.x), vec4<f32>(-1481f, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(false, global0.c, false, true))) + vec4<f32>(global0.d.x, global0.d.x, -1114f, -767f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, -1000f, global0.d.x))))), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 22225u, u_input.a.x, 51693u), reverseBits(~vec4<u32>(u_input.a.x, u_input.a.x, 45515u, 0u))) << (~select(firstTrailingBit(vec4<u32>(47953u, 66582u, 0u, u_input.a.x)), ~vec4<u32>(15348u, 1u, 0u, u_input.a.x), select(vec4<bool>(true, global0.b, false, false), vec4<bool>(global0.b, global0.b, true, true), vec4<bool>(true, global0.b, global0.b, global0.c))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_vec2_i32(func_4(u_input.b, func_4(u_input.b, Struct_2(var_0.a, func_4(u_input.b, var_0, vec4<u32>(22725u, 1u, 4294967295u, 1u)).b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.x, var_0.b.d.x, var_0.b.d.x, global0.d.x)))), ~vec4<u32>(u_input.a.x, u_input.a.x, 4499u, u_input.a.x)), ~(~(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 55354u) & vec4<u32>(55885u, u_input.a.x, u_input.a.x, 12167u)))).b.e, _wgslsmith_div_vec2_i32(abs(reverseBits(u_input.c.yy)), var_0.b.e));
    var var_2 = global2[_wgslsmith_index_u32(28179u, 4u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-var_0.c.yzy);
    var var_4 = Struct_1(func_4(-var_2.a, func_4(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c.xx, var_0.b.e), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 1i, var_0.b.a), var_0.a.xwz)), var_0, ~(vec4<u32>(1u, 41631u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u) % vec4<u32>(32u)))), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(108181u, 4294967295u, 17955u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 4294967295u, 38120u)) << (~vec4<u32>(u_input.a.x, 77333u, 4294967295u, u_input.a.x) % vec4<u32>(32u)))).b.a, select(any(vec3<bool>(true, var_0.b.c, false)), all(vec3<bool>(true, global0.c, false)), false), all(vec2<bool>(any(select(vec4<bool>(false, var_2.c, false, true), vec4<bool>(true, var_2.b, true, var_2.b), false)), all(select(vec2<bool>(var_0.b.c, false), vec2<bool>(var_0.b.c, var_2.c), vec2<bool>(var_2.c, false))))), global0.d, _wgslsmith_mod_vec2_i32(var_2.e, var_0.b.e));
    global1 = min(0i, _wgslsmith_clamp_i32(-2147483647i, -_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, var_0.a.x), var_2.a), global0.a));
    var var_5 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, ~reverseBits(u_input.a.x)), ~u_input.a.yx);
    var var_6 = _wgslsmith_dot_vec2_u32(vec2<u32>(~select(~4638u, 26135u, any(vec2<bool>(false, var_4.b))), 16014u), u_input.a.zy);
    let var_7 = i32(-1i) * -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(18815u);
}

