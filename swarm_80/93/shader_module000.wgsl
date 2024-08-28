struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(23680u, 1u, 0u), vec3<u32>(4294967295u, 11984u, 76900u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 67472u, 30019u), vec3<u32>(1u, 0u, 94868u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 33756u, 52418u), vec3<u32>(1u, 65744u, 87490u), vec3<u32>(4294967295u, 0u, 39055u), vec3<u32>(1u, 1u, 0u), vec3<u32>(13558u, 0u, 43378u), vec3<u32>(0u, 1u, 5136u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 13031u, 4294967295u), vec3<u32>(66831u, 30245u, 53528u), vec3<u32>(12059u, 4294967295u, 78430u));

var<private> global1: Struct_1;

var<private> global2: array<f32, 9>;

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> i32 {
    return ~global1.a;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> vec2<i32> {
    global2 = array<f32, 9>();
    global0 = array<vec3<u32>, 16>();
    let var_0 = abs(~arg_1.a);
    let var_1 = -1389f;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c.c) * vec4<f32>(1724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(trunc(675f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-984f, arg_1.b, arg_1.b, arg_0.d.x) - arg_0.c.c))))));
    return arg_0.c.d >> (reverseBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u));
}

fn func_3(arg_0: Struct_5) -> vec3<i32> {
    global0 = array<vec3<u32>, 16>();
    global3 = arg_0.b;
    var var_0 = arg_0.a;
    global0 = array<vec3<u32>, 16>();
    return ~select(vec3<i32>(-61074i, 1i, 1i), -(vec3<i32>(1i, u_input.a, -2147483647i) << (global0[_wgslsmith_index_u32(4294967295u, 16u)] % vec3<u32>(32u))) << (~arg_0.a.d % vec3<u32>(32u)), select(false, true, -30701i < u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec2<i32>(max(global1.a, u_input.a) & -u_input.a, -u_input.a >> (_wgslsmith_mult_u32(50945u, 16411u) % 32u)) & _wgslsmith_div_vec2_i32(vec2<i32>(func_1(0u, vec3<bool>(false, false, true)), 27426i), _wgslsmith_add_vec2_i32(func_2(Struct_4(-1058f, Struct_1(4285i), Struct_2(1u, global2[_wgslsmith_index_u32(0u, 9u)], vec4<f32>(global2[_wgslsmith_index_u32(80474u, 9u)], global2[_wgslsmith_index_u32(52699u, 9u)], -100f, global2[_wgslsmith_index_u32(1u, 9u)]), vec2<i32>(u_input.a, 49015i), Struct_1(-2147483647i)), vec3<f32>(global2[_wgslsmith_index_u32(49383u, 9u)], 986f, 1817f), vec3<i32>(u_input.a, -1i, 32935i)), Struct_3(0u, -1666f, 0u, global0[_wgslsmith_index_u32(0u, 16u)], Struct_1(global1.a))), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-4083i, -3046i)))));
    global2 = array<f32, 9>();
    global1 = Struct_1(11895i & _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, u_input.a, var_0.x), vec3<i32>(75239i, -2147483647i, global1.a))), func_3(Struct_5(Struct_3(1u, -239f, 0u, global0[_wgslsmith_index_u32(52214u, 16u)], Struct_1(-57397i)), 0u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(773f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(3708u, 9u)], 530f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17157u, 0u, 66087u, 18049u), vec4<u32>(0u, 1u, 113273u, 7678u)), 9u)], _wgslsmith_f_op_f32(f32(-1f) * -1270f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-727f, 608f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], -1000f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1067f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(29376u, 9u)] * global2[_wgslsmith_index_u32(46286u, 9u)]))))));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(-1i, global1.a, -2931i, -1i)), -abs(vec4<i32>(-2147483647i, u_input.a, u_input.a, var_0.x))), _wgslsmith_mod_i32(abs(func_3(Struct_5(Struct_3(4294967295u, 266f, 0u, global0[_wgslsmith_index_u32(60830u, 16u)], Struct_1(-33801i)), 4294967295u)).x), ~(-26604i)));
    let var_3 = Struct_3(1u, _wgslsmith_div_f32(var_1.x, var_1.x), ~(~_wgslsmith_dot_vec3_u32(min(global0[_wgslsmith_index_u32(18101u, 16u)], vec3<u32>(45050u, 23579u, 10530u)), abs(vec3<u32>(1u, 77030u, 1u)))), vec3<u32>(countOneBits(~_wgslsmith_div_u32(4294967295u, 1u)), abs(1u), firstLeadingBit(1u)), Struct_1(var_2));
    var var_4 = global1.a ^ min(~var_3.e.a, -(i32(-1i) * -28098i));
    var var_5 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(var_3.d.x, 9u)], global2[_wgslsmith_index_u32(10018u, 9u)]), vec2<f32>(1000f, global2[_wgslsmith_index_u32(32347u, 9u)])))))))));
    let var_6 = _wgslsmith_mod_vec2_u32(select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3.d.x, var_3.c), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 57565u), var_3.d.xx), ~vec2<u32>(var_3.d.x, var_3.c)), ~var_3.d.zy | (var_3.d.zy >> (vec2<u32>(4294967295u, var_3.c) % vec2<u32>(32u))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), global1.a != 16487i)) >> (_wgslsmith_sub_vec2_u32(var_3.d.zy, countOneBits(firstTrailingBit(vec2<u32>(var_3.d.x, 1u)))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~firstLeadingBit(firstTrailingBit(vec2<u32>(var_3.d.x, var_3.a))), vec2<u32>(4294967295u, ~_wgslsmith_clamp_u32(0u, var_3.a, 23307u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(-85238i)), ~12663i, -1213f);
}

