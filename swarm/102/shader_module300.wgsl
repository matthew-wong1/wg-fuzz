struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-1i, -27548i, 28360i, -8176i, 1i, i32(-2147483648), i32(-2147483648), 2147483647i, -35632i, -1i, 10305i, 0i, 1i, 52200i, -72853i, -1i, 1i, -1i, 1i, 88244i, 40567i, 0i, -10529i, -1i, -1i, -78496i);

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(77591i, 2147483647i, 1i, 2516i), vec4<i32>(14222i, 1i, 1032i, -15597i), vec4<i32>(12426i, -15205i, -37367i, 28393i), vec4<i32>(-16733i, 39824i, 37258i, -29577i), vec4<i32>(-19261i, -23890i, 8197i, 20146i), vec4<i32>(1i, -18635i, -7978i, 276i), vec4<i32>(4383i, i32(-2147483648), 1i, 26813i), vec4<i32>(58658i, 26618i, -42357i, 0i), vec4<i32>(-1i, -13561i, 1i, -30595i), vec4<i32>(2147483647i, -1i, 1i, 2147483647i), vec4<i32>(1i, 2147483647i, -11150i, -22434i), vec4<i32>(7893i, -32405i, 2147483647i, 25663i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1582f + -1285f), 311f))), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(abs(-678f))));
    let var_1 = ~vec3<i32>(~countOneBits(i32(-1i) * -21423i), firstLeadingBit(global1.x), -(_wgslsmith_mult_i32(u_input.a.x, -6248i) >> (u_input.d % 32u)));
    var var_2 = Struct_4(false, Struct_2(u_input.d, _wgslsmith_div_vec4_i32(-global2[_wgslsmith_index_u32(countOneBits(u_input.d), 12u)], _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], var_1.x, -55141i) >> (vec4<u32>(4294967295u, 50940u, 39996u, u_input.d) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(u_input.d, 12u)]))), 2147483647i);
    let var_3 = Struct_4(true, var_2.b, abs(global1.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), 427f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -790f, 862f))))))));
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 5054i), -_wgslsmith_dot_vec3_i32(-var_1, countOneBits(var_2.b.b.www))) >> (~var_3.b.a % 32u);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<bool>) -> bool {
    let var_0 = Struct_4(select(any(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)) || !any(vec3<bool>(arg_2.x, false, arg_2.x)), false, arg_2.x), Struct_2(abs(~arg_1), vec4<i32>(global0[_wgslsmith_index_u32(31320u, 26u)], func_2(), ~global1.x, 54254i)), ~u_input.a.x);
    global0 = array<i32, 26>();
    var var_1 = countOneBits(_wgslsmith_add_vec4_i32(max(_wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(15293u, 12u)], vec4<i32>(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(arg_0, 26u)], 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, u_input.c.x, 12678i, 57451i), vec4<i32>(54706i, u_input.c.x, global0[_wgslsmith_index_u32(10577u, 26u)], -15176i))) | var_0.b.b, min(global2[_wgslsmith_index_u32(arg_0, 12u)], vec4<i32>(-2147483647i, global1.x, 6638i, global1.x) << (countOneBits(vec4<u32>(arg_1, 16286u, u_input.b, arg_1)) % vec4<u32>(32u)))));
    var var_2 = var_0;
    let var_3 = Struct_2(var_0.b.a, var_2.b.b);
    return true;
}

fn func_3(arg_0: bool) -> bool {
    global0 = array<i32, 26>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(906f * 1650f))) + _wgslsmith_f_op_f32(-998f * -1068f)) + -899f)));
    global0 = array<i32, 26>();
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 26u)], min(abs(global1.x), _wgslsmith_div_i32(_wgslsmith_div_i32(-1i, 1185i), _wgslsmith_sub_i32(global1.x, global0[_wgslsmith_index_u32(19923u, 26u)])))), _wgslsmith_mult_i32(_wgslsmith_add_i32(1i >> (u_input.b % 32u), _wgslsmith_add_i32(0i, global0[_wgslsmith_index_u32(u_input.b, 26u)])), countOneBits(2147483647i ^ u_input.c.x)) | ~24932i);
    global0 = array<i32, 26>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), all(vec4<bool>(false, true, false, true))), !vec3<bool>(true, all(vec3<bool>(false, false, true)), select(true, false, true)), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, func_1(4294967295u, u_input.d, vec2<bool>(true, true))))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, func_3(true), true))));
    global0 = array<i32, 26>();
    var var_1 = vec2<i32>(_wgslsmith_add_i32(-global1.x << (u_input.b % 32u), -34504i), -8285i);
    let var_2 = Struct_2(abs(firstLeadingBit(~(u_input.d & 1u))), global2[_wgslsmith_index_u32(4294967295u, 12u)]);
    global1 = countOneBits(firstLeadingBit(u_input.a));
    var_1 = max(-vec2<i32>(~var_1.x, -59392i), _wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 26u)], 2147483647i), vec2<i32>(1i, -43203i)) | ~vec2<i32>(u_input.c.x, 33670i), _wgslsmith_add_vec2_i32(firstTrailingBit(var_2.b.wy << (vec2<u32>(var_2.a, u_input.b) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), var_2.b.zx, var_0.yz), _wgslsmith_mult_vec2_i32(var_2.b.yz, vec2<i32>(-2147483647i, 2147483647i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 40720u, var_2.a, var_2.a), vec4<u32>(53958u, u_input.d, u_input.d, 39087u))), 26u)], -(~1i), -min(var_2.b.x, -2147483647i), -11196i), vec4<i32>(72632i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.x, var_1.x, -37939i), vec4<i32>(global1.x, global0[_wgslsmith_index_u32(var_2.a, 26u)], -2147483647i, -1i)), -9511i, i32(-1i) * -36006i) << (~(~vec4<u32>(1u, 8004u, 4294967295u, 2874u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(-2082f, 502f)), -655f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1093f * -1089f), _wgslsmith_f_op_f32(f32(-1f) * -267f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-214f, -205f, true)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1213f * -316f))))), u_input.d);
}

