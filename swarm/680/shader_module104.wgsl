struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, true, false, false, true, false);

var<private> global1: array<f32, 7>;

var<private> global2: array<u32, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = vec3<f32>(-344f, global1[_wgslsmith_index_u32(arg_2.a, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 7u)]))));
    global0 = array<bool, 6>();
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(arg_1), func_2(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.a, u_input.b.x, -20201i)), firstLeadingBit(vec4<i32>(arg_1.a, arg_1.a, 0i, 0i))) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(28138u, 23u)], 3582u, arg_1.c.a, u_input.d), vec4<u32>(5232u, 19374u, u_input.c, arg_0.a))) % vec4<u32>(32u)), 21987u, arg_0, ~26697i), Struct_2(max(1874i, u_input.b.x), !(_wgslsmith_f_op_f32(round(566f)) != _wgslsmith_f_op_f32(-arg_1.c.b)), arg_1.c), ~(~(~(vec4<u32>(arg_1.c.a, 1u, arg_1.c.a, arg_1.c.a) ^ vec4<u32>(1u, 33164u, 12963u, 75988u)))));
    global2 = array<u32, 23>();
    var var_1 = -2022f;
    var var_2 = arg_1;
    var_1 = arg_1.c.b;
    return Struct_1(~u_input.d << (var_2.c.a % 32u), 610f);
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    return ~vec3<u32>(~_wgslsmith_add_u32(1u, arg_0.c.a), _wgslsmith_mult_u32(1u, (72612u << (arg_0.c.a % 32u)) >> (arg_0.c.a % 32u)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.d, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(u_input.d, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 23u)], 23u)], 4294967295u)), reverseBits(max(u_input.c, u_input.d))), 23u)], 23u)], 7u)] - -218f));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(613f, global1[_wgslsmith_index_u32(0u, 7u)], var_0.b)))))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a, 23u)], 7u)]), _wgslsmith_f_op_f32(var_0.b + 1000f), -1728f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 7u)], -599f, var_0.b) - vec3<f32>(-1259f, 446f, -398f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(216f, -1163f, -1311f), vec3<f32>(var_1.x, global1[_wgslsmith_index_u32(var_0.a, 7u)], -387f), global0[_wgslsmith_index_u32(4294967295u, 6u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 847f, 1131f)))))));
    let var_2 = func_3(Struct_2(-88563i, true, func_1(Struct_1(min(27511u, 36652u), _wgslsmith_f_op_f32(-var_0.b)), Struct_2(~u_input.a, true, Struct_1(1u, var_0.b)))));
    var var_3 = Struct_1(0u ^ (_wgslsmith_mod_u32(4294967295u, var_2.x | var_0.a) | u_input.d), var_0.b);
    let var_4 = vec4<i32>(_wgslsmith_clamp_i32(~abs(-1i), -(~(i32(-1i) * -9046i)), select(0i, min(firstTrailingBit(u_input.a), 1i ^ u_input.a), all(vec3<bool>(false, true, false)))), u_input.a | (~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) >> (global2[_wgslsmith_index_u32(1u, 23u)] % 32u)), firstTrailingBit(abs(u_input.a) & u_input.b.x), -u_input.b.x);
    let var_5 = func_1(func_1(func_2(countOneBits(vec4<i32>(0i, u_input.a, -68712i, u_input.a)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, var_3.a, 1u), vec4<u32>(var_3.a, 501u, global2[_wgslsmith_index_u32(var_2.x, 23u)], var_2.x), vec4<u32>(4294967295u, 44277u, 4294967295u, var_0.a)) % vec4<u32>(32u)), _wgslsmith_sub_u32(var_3.a, global2[_wgslsmith_index_u32(~var_0.a, 23u)]), Struct_1(~1280u, _wgslsmith_f_op_f32(-var_1.x)), -11378i), Struct_2(-1i, true, Struct_1(59746u >> (1u % 32u), _wgslsmith_f_op_f32(-1154f + 704f)))), Struct_2(-var_4.x, !(global0[_wgslsmith_index_u32(var_2.x, 6u)] & true) | false, Struct_1(~82294u, 748f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2.yy), vec4<f32>(func_1(func_2(_wgslsmith_mult_vec4_i32(var_4, var_4), 4294967295u, Struct_1(global2[_wgslsmith_index_u32(var_2.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_clamp_i32(0i, 1i, 22775i)), Struct_2(u_input.b.x, true, Struct_1(40523u, var_3.b))).b, var_5.b, _wgslsmith_f_op_f32(sign(1096f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.b, var_3.b), var_3.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2219f * 953f) * var_5.b))), global2[_wgslsmith_index_u32(0u, 23u)]);
}

