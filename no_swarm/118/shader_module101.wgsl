struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

var<private> global1: Struct_1 = Struct_1(false, vec4<u32>(102338u, 28072u, 58443u, 14987u), 705f, false);

var<private> global2: vec2<i32> = vec2<i32>(-1422i, 0i);

var<private> global3: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec4<u32>(24309u, 4294967295u, 4294967295u, 1u), Struct_2(vec4<f32>(-278f, -1043f, -1000f, 409f))));

var<private> global4: Struct_2 = Struct_2(vec4<f32>(-1765f, -492f, 728f, -359f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_1(!global1.d & true, select(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wxw, global1.b.zzy), 4294967295u, u_input.a.x, ~global1.b.x), ~u_input.a, false), -760f, true);
    let var_1 = Struct_4(~(~vec4<u32>(13702u, ~1u, ~4294967295u, ~u_input.a.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(697f, -771f, -126f, 135f) * global4.a))))));
    var var_2 = true;
    var var_3 = false;
    var var_4 = _wgslsmith_dot_vec2_i32(u_input.b | -(~_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(1i, 5564i))), vec2<i32>(-72501i, select(_wgslsmith_div_i32(0i, 2147483647i), -global2.x, false)) | firstTrailingBit(reverseBits(firstTrailingBit(vec2<i32>(-2147483647i, -23688i)))));
    return -37587i;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: i32) -> Struct_4 {
    global0 = array<vec3<bool>, 7>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - global1.c) - _wgslsmith_f_op_f32(1159f + global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)), _wgslsmith_f_op_f32(sign(-156f))))));
    global2 = -firstLeadingBit(-_wgslsmith_div_vec2_i32(u_input.b, u_input.b)) >> (global1.b.ww % vec2<u32>(32u));
    var var_1 = !vec2<bool>(true, arg_2.x);
    global1 = Struct_1(!var_1.x, vec4<u32>(~(~78452u), 4294967295u, _wgslsmith_mod_u32(~(~arg_1.x), firstLeadingBit(arg_1.x)), 4294967295u), _wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_dot_vec3_i32(-arg_0.yzw, ~(vec3<i32>(arg_3, 2147483647i, -59008i) | arg_0.yxw)) > -11615i);
    return global3[_wgslsmith_index_u32(0u, 1u)];
}

fn func_1() -> bool {
    let var_0 = global3[_wgslsmith_index_u32(global1.b.x, 1u)];
    let var_1 = Struct_4(vec4<u32>(_wgslsmith_mod_u32(countOneBits(var_0.a.x), 0u), reverseBits(var_0.a.x), ~(~_wgslsmith_clamp_u32(var_0.a.x, u_input.a.x, var_0.a.x)), u_input.c), Struct_2(var_0.b.a));
    global2 = select(~_wgslsmith_add_vec2_i32(u_input.b, u_input.b), u_input.b, vec2<bool>(all(vec2<bool>(global1.d, !global1.a)), all(global0[_wgslsmith_index_u32(max(75821u, ~65436u), 7u)])));
    global2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-(global2.x & (i32(-1i) * -1i)), 0i), min(_wgslsmith_add_vec2_i32(select(firstLeadingBit(u_input.b), abs(vec2<i32>(global2.x, 10488i)), vec2<bool>(global1.d, global1.d)), u_input.b), select(select(vec2<i32>(-9362i, u_input.e), u_input.b, true), vec2<i32>(19639i, u_input.b.x), select(global1.a, global1.a, global1.a)) | vec2<i32>(-4048i, -1i)));
    var var_2 = Struct_5(func_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, global2.x, -2147483647i), vec3<i32>(-5486i, 25159i, 1i)) ^ 1i, max(_wgslsmith_div_i32(global2.x, global2.x), -2147483647i), _wgslsmith_div_i32(47931i, -u_input.e), _wgslsmith_add_i32(u_input.b.x, func_2(vec2<f32>(1139f, var_0.b.a.x), global4.a.zxx))), _wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(~var_1.a.x, abs(u_input.d), u_input.d >> (4294967295u % 32u), 1u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36982u | global1.b.x, 1u, ~var_0.a.x, global1.b.x), select(u_input.a, ~u_input.a, vec4<bool>(false, global1.d, global1.a, global1.a))), 7u)], 38567i));
    return !all(vec4<bool>(false, true, any(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a.a.x, var_1.a.x), 7u)]), _wgslsmith_sub_i32(u_input.b.x, 0i) <= firstTrailingBit(58159i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!(!vec4<bool>(true, global1.a, true, global1.d)), !select(!vec4<bool>(global1.d, global1.a, true, global1.d), vec4<bool>(global1.a, false, false, global1.a), !vec4<bool>(true, global1.d, false, global1.d)), !global1.d), !select(!(!vec4<bool>(global1.d, global1.a, true, global1.a)), !select(vec4<bool>(global1.d, true, false, true), vec4<bool>(global1.d, global1.d, false, global1.a), vec4<bool>(false, global1.a, global1.a, false)), vec4<bool>(true, func_1(), !global1.a, !global1.d)), global1.a);
    let var_1 = abs(0i);
    let var_2 = Struct_1(select(func_1(), true, false), reverseBits(func_3(countOneBits(vec4<i32>(2147483647i, var_1, u_input.b.x, global2.x)) >> (vec4<u32>(108752u, u_input.a.x, u_input.d, 25154u) % vec4<u32>(32u)), min(firstLeadingBit(vec4<u32>(global1.b.x, 0u, u_input.c, 57679u)), vec4<u32>(4294967295u, 4294967295u, 1u, 38839u)), var_0.xyz, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-21033i, u_input.b.x)) | firstLeadingBit(global2.x)).a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(971f + global1.c))), true);
    global1 = Struct_1(func_1(), firstLeadingBit(_wgslsmith_mult_vec4_u32(min(var_2.b, func_3(vec4<i32>(0i, var_1, 34724i, var_1), global1.b, vec3<bool>(var_2.d, var_0.x, false), -2147483647i).a), firstTrailingBit(vec4<u32>(48645u, var_2.b.x, 0u, global1.b.x)))), -766f, !(u_input.c == ~(~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~64740u, ~1u), ~var_2.b.yw, 1i);
}

