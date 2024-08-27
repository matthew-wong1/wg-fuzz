struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(51833i), Struct_1(2147483647i), Struct_1(0i), Struct_1(10669i), Struct_1(13519i), Struct_1(-50883i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(38039i), Struct_1(35467i), Struct_1(-1i), Struct_1(0i), Struct_1(-1i), Struct_1(-995i), Struct_1(1i), Struct_1(i32(-2147483648)));

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = ~(~vec3<u32>(~(~0u), _wgslsmith_mod_u32(_wgslsmith_div_u32(36355u, 1395u), ~1u), 1u));
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global2 = array<Struct_1, 11>();
    var var_1 = ~var_0.x;
    return false || arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = Struct_1(abs(_wgslsmith_sub_i32(firstTrailingBit(arg_3), abs(arg_2.a & -2147483647i))));
    let var_1 = select(vec2<bool>(true, func_3(vec2<bool>(select(true, false, true), all(vec4<bool>(false, false, false, false))), 2147483647i, Struct_1(abs(-1i)), false)), vec2<bool>(false, false), !(!all(vec4<bool>(true, true, true, true))));
    let var_2 = ~(-_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, -2147483647i), firstTrailingBit(vec2<i32>(u_input.a, u_input.a))) << (firstTrailingBit(~(~vec2<u32>(64556u, 14233u))) % vec2<u32>(32u)));
    var var_3 = select(vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(all(vec3<bool>(var_1.x, var_1.x, false)), !var_1.x))), true);
    let var_4 = Struct_1(min(select(1i & _wgslsmith_dot_vec3_i32(vec3<i32>(-14944i, 0i, arg_3), vec3<i32>(0i, arg_1.a, -1i)), 1i, false), arg_2.a));
    return ~(~min(1u, 1u));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(u_input.a);
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    return !(!vec2<bool>(true, !any(vec4<bool>(true, true, false, false))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    let var_0 = Struct_1(~0i);
    let var_1 = arg_0;
    let var_2 = vec3<bool>(any(vec2<bool>(true, true)), all(func_5(Struct_1(-10012i), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3, arg_3), vec2<f32>(arg_3, arg_3)), arg_2, func_2(Struct_1(-20168i), global0[_wgslsmith_index_u32(48828u, 19u)], Struct_1(arg_1), u_input.a)), Struct_1(-17798i ^ u_input.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-219f, _wgslsmith_div_f32(238f, arg_3), true)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f), 624f)));
    var var_3 = Struct_1(21151i);
    let var_4 = global2[_wgslsmith_index_u32(min(var_1.x, var_1.x), 11u)];
    return -_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -select(vec2<i32>(arg_1, -2147483647i), vec2<i32>(var_0.a, arg_2.a), true), vec2<i32>(~var_3.a, 2147483647i));
}

fn func_6(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(36990u << (_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(firstLeadingBit(34094u), 18u)], select(vec4<u32>(46478u, 52499u, 25426u, 98532u), vec4<u32>(0u, 0u, 24587u, 4294967295u), vec4<bool>(false, false, false, true))) % 32u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16433u, 94301u, 33097u), vec3<u32>(5732u, 49940u, 0u)), 59455u), _wgslsmith_div_u32(~select(37699u, 4294967295u, false), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 47798u, 0u), vec3<u32>(94047u, 1u, 228u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~25375u, ~92282u, max(21795u, 4294967295u)), vec3<u32>(1u, 1u, 1u))), ~firstLeadingBit(vec4<u32>(~0u, func_2(Struct_1(arg_1.x), Struct_1(7410i), global0[_wgslsmith_index_u32(4294967295u, 19u)], -21308i), ~81033u, _wgslsmith_mult_u32(101853u, 1u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-441f, -884f), _wgslsmith_div_f32(1942f, 897f))), vec2<f32>(1f, 1f))));
    global2 = array<Struct_1, 11>();
    var var_2 = !vec3<bool>(~(~var_0.x) <= func_2(func_4(vec2<f32>(var_1.x, var_1.x), Struct_1(arg_0), var_0.x), global2[_wgslsmith_index_u32(var_0.x, 11u)], global0[_wgslsmith_index_u32(var_0.x, 19u)], u_input.a), true, true || (var_0.x == 1u));
    global2 = array<Struct_1, 11>();
    return Struct_1(arg_1.x);
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 11>();
    global1 = array<vec4<u32>, 18>();
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1601f, 1000f)))))), global2[_wgslsmith_index_u32(~max(1u, 52818u), 11u)], 0u);
    return Struct_1(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a;
    global1 = array<vec4<u32>, 18>();
    let var_1 = ~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(~42649u, min(82712u, 83106u), reverseBits(1u), 30736u >> (1u % 32u))), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(15647u, 25727u, 9539u, 18235u), global1[_wgslsmith_index_u32(36874u, 18u)], false), ~vec4<u32>(1u, 34780u, 0u, 58618u)));
    let var_2 = select(vec2<u32>(1u, _wgslsmith_clamp_u32(var_1.x, var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(57269u, var_1.x, var_1.x), var_1.yxz))), vec2<u32>(52602u, 0u), vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.x, 20095u), global1[_wgslsmith_index_u32(1u, 18u)]) < ~51018u, 18454u < ~var_1.x)) ^ ~vec2<u32>(var_1.x, _wgslsmith_sub_u32(1u, ~var_1.x));
    var var_3 = var_1;
    let var_4 = func_7(vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1372f)), _wgslsmith_f_op_f32(-463f * 120f))) != 1825f, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), func_6(~abs(i32(-1i) * -38967i), _wgslsmith_div_vec2_i32(~func_1(global1[_wgslsmith_index_u32(60336u, 18u)], u_input.a, Struct_1(u_input.a), 1275f), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)))));
    var var_5 = var_4;
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, 4294967295u, var_2.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1403f, _wgslsmith_f_op_f32(-293f + -377f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-836f, -960f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1290f, -1000f))))))), firstLeadingBit(1u), var_2.x << (min(var_2.x, min(var_1.x, 0u)) % 32u));
}

