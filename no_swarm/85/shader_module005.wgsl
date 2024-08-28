struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(434f, 1u, 0i);

var<private> global1: array<f32, 30>;

var<private> global2: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-481f, -1000f, -1000f, -621f), vec4<f32>(628f, -184f, 528f, 828f), vec4<f32>(-1193f, -297f, 1268f, -364f), vec4<f32>(435f, 407f, 383f, -292f), vec4<f32>(712f, -131f, 694f, 281f), vec4<f32>(434f, 1000f, -311f, 838f), vec4<f32>(746f, -195f, -1151f, -154f), vec4<f32>(-235f, 1000f, -190f, 1000f), vec4<f32>(2993f, -1778f, 624f, -699f), vec4<f32>(-575f, -1431f, -2414f, 506f));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global2 = array<vec4<f32>, 10>();
    global1 = array<f32, 30>();
    var var_0 = u_input.d;
    global3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(69242u, 30u)])))), _wgslsmith_f_op_f32(trunc(2629f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(188f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f), -667f)))), ~31162u, reverseBits(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.c, arg_1.c, global3.c)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.c, 0i, global3.c), u_input.b))));
    var_0 = firstLeadingBit((u_input.d | arg_0.x) >> (_wgslsmith_add_u32(83898u, _wgslsmith_add_u32(u_input.a, 1u)) % 32u)) & global3.c;
    return u_input.c;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    let var_0 = u_input.a;
    var var_1 = vec4<u32>(_wgslsmith_div_u32(abs(34615u), ~abs(global0.b)), _wgslsmith_clamp_u32(4294967295u, ~(reverseBits(global0.b) >> (~4294967295u % 32u)), u_input.a), func_3(u_input.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1376f)), ~select(1u, u_input.a, true), 20520i), _wgslsmith_sub_u32(global3.b << (~u_input.a % 32u), 16684u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, ~global3.b), abs(~vec2<u32>(global3.b, 16481u))), 11518u));
    global2 = array<vec4<f32>, 10>();
    var var_2 = _wgslsmith_f_op_f32(-1661f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c, 30u)]))));
    var var_3 = vec4<bool>(!(all(vec3<bool>(false, false, true)) || true), !any(!select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, false, arg_1, arg_1), false)), any(vec2<bool>(all(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, true, false), vec4<bool>(true, arg_1, false, false))), !arg_1)), true);
    return var_0;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = true;
    var var_1 = 1f;
    var var_2 = u_input.b.zz;
    var var_3 = 0u;
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.a, 297f, -312f, global0.a), vec4<f32>(arg_2.a.x, -952f, -762f, global3.a))))))));
    return vec3<u32>(0u, global0.b, _wgslsmith_div_u32(global3.b, 4294967295u));
}

fn func_1(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_add_i32(u_input.d, ~(_wgslsmith_mult_i32(~(-32375i), -u_input.b.x) << (_wgslsmith_mult_u32(global0.b, _wgslsmith_add_u32(u_input.a, 0u)) % 32u)));
    var var_1 = func_4(~func_2(Struct_2(global2[_wgslsmith_index_u32(global0.b, 10u)]), true, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, 690f, global0.a, -234f))), true, Struct_2(global2[_wgslsmith_index_u32(0u, 10u)])) & ~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a, 47334u, u_input.c)), vec3<u32>(reverseBits(global0.b), ~global3.b, u_input.c));
    global2 = array<vec4<f32>, 10>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-229f, _wgslsmith_f_op_f32(279f * -300f), -722f, global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -478f, global3.a, -398f) * vec4<f32>(-1000f, global0.a, global3.a, global1[_wgslsmith_index_u32(global3.b, 30u)])) * _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(global0.b, 10u)], vec4<f32>(162f, -584f, 161f, 337f), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(global0.c, u_input.d))) + global2[_wgslsmith_index_u32(4294967295u, 10u)])))));
    var var_1 = true || !((false || any(vec2<bool>(true, true))) || !select(false, false, false));
    var var_2 = -2147483647i;
    var var_3 = abs(reverseBits(18925u));
    var var_4 = ~vec4<u32>(1u, 107082u, _wgslsmith_mult_u32(34489u, global0.b), _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.b, global0.b, 42917u), vec4<u32>(20766u, 4294967295u, 71026u, global3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, vec4<u32>(global3.b, func_3(u_input.b, Struct_1(global1[_wgslsmith_index_u32(u_input.a, 30u)], global0.b, -24090i), ~4294967295u), 26991u, 24234u) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(35434u, 60548u, global3.b, global3.b) & vec4<u32>(var_4.x, global0.b, u_input.c, global3.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.a, u_input.a, 4294967295u), vec4<u32>(51671u, 0u, global3.b, 5270u))), ~vec4<u32>(0u, global0.b, u_input.a, global3.b)));
}

