struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(4294967295u, 4294967295u, 16957u, 0u), -38417i), Struct_1(vec4<u32>(4294967295u, 29979u, 94560u, 1u), 12063i), Struct_1(vec4<u32>(4294967295u, 1u, 40531u, 4294967295u), -1i), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), 2147483647i), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 34071u), 1i), Struct_1(vec4<u32>(4294967295u, 0u, 6797u, 4294967295u), -5516i), Struct_1(vec4<u32>(21986u, 44655u, 28157u, 14012u), 0i), Struct_1(vec4<u32>(43545u, 1u, 25876u, 4294967295u), 2147483647i), Struct_1(vec4<u32>(1u, 0u, 33131u, 24478u), 1667i), Struct_1(vec4<u32>(35572u, 92671u, 15724u, 0u), 2147483647i), Struct_1(vec4<u32>(28522u, 452u, 1u, 4294967295u), 5726i), Struct_1(vec4<u32>(4294967295u, 7661u, 0u, 4173u), 3292i), Struct_1(vec4<u32>(52607u, 55464u, 27712u, 4294967295u), -13350i), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1u), 1i), Struct_1(vec4<u32>(4294967295u, 28059u, 4294967295u, 41997u), i32(-2147483648)), Struct_1(vec4<u32>(25655u, 1649u, 4294967295u, 29156u), 90522i), Struct_1(vec4<u32>(62807u, 4294967295u, 74492u, 4294967295u), 37515i), Struct_1(vec4<u32>(1u, 25585u, 4294967295u, 1u), -1i), Struct_1(vec4<u32>(8149u, 92041u, 28256u, 0u), i32(-2147483648)), Struct_1(vec4<u32>(34572u, 1u, 21288u, 13111u), 17813i), Struct_1(vec4<u32>(69444u, 1u, 4294967295u, 0u), 1i), Struct_1(vec4<u32>(30398u, 18954u, 33697u, 0u), -28283i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(-12650i, arg_0.a.x, 2147483647i, u_input.a.x)), vec4<i32>(0i, 1i, ~arg_0.a.x, ~u_input.a.x)), -1i));
    var var_1 = abs(u_input.a);
    var var_2 = Struct_2(vec2<i32>(var_0.a.x, 2147483647i));
    global0 = array<Struct_1, 22>();
    let var_3 = arg_0;
    return ~0u;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 22>();
    let var_0 = global0[_wgslsmith_index_u32(func_3(Struct_2(vec2<i32>(1i, 247i))) | _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(62984u, 44318u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(30916u, 30951u, 32411u)), vec3<u32>(38668u, 5999u, 61079u), _wgslsmith_mult_vec3_u32(vec3<u32>(53456u, 4294967295u, 29876u), vec3<u32>(0u, 0u, 22093u)))), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(73493u, 4294967295u, 4294967295u)), select(select(vec3<u32>(10083u, 4294967295u, 4294967295u), vec3<u32>(42834u, 1u, 43219u), vec3<bool>(false, true, true)), vec3<u32>(0u, 104406u, 4294967295u), true))), 22u)];
    global0 = array<Struct_1, 22>();
    var var_1 = select(vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>((18472i == var_0.b) != true, true)));
    var_1 = vec2<bool>(false, true);
    return Struct_2(vec2<i32>(_wgslsmith_div_i32(-1i, var_0.b), -firstLeadingBit(2147483647i) >> (var_0.a.x % 32u)));
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = select(select(!vec4<bool>(true, u_input.a.x != 25407i, any(vec4<bool>(false, false, false, false)), true), vec4<bool>(true & select(false, false, false), ~4294967295u == select(0u, 4294967295u, false), true, false), !vec4<bool>(true, 1i < arg_0.a.x, false, true)), vec4<bool>(!(true & any(vec3<bool>(false, false, false))), false, all(vec2<bool>(true, true)), true), min(~u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, arg_0.a.x), abs(u_input.a.x), u_input.a.x)) >= -func_2().a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-325f * 407f), 1149f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-432f)), -345f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(516f, 443f))))));
    var_0 = select(vec4<bool>(true, var_0.x, all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), var_0.x)), all(!vec4<bool>(false, var_0.x, var_0.x, true))), select(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, true, var_0.x, true), !vec4<bool>(false, var_0.x, true, false), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), any(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x)))), select(vec4<bool>(true, any(vec4<bool>(true, true, var_0.x, false)), false, var_0.x), select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_0.x, var_0.x, false), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, false), var_0.x)), !(!vec4<bool>(false, true, var_0.x, true))), select(!select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), true), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, false, false, false), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, true))))), !(all(var_0.wzx) | true));
    return vec4<bool>(true, var_0.x, var_0.x, false);
}

fn func_1(arg_0: u32) -> vec3<f32> {
    let var_0 = func_4(func_2());
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, 31463u, 4294967295u), vec4<u32>(arg_0, 4294967295u, arg_0, arg_0))), ~vec4<u32>(4294967295u, arg_0, 0u, arg_0)), max(vec4<u32>(36941u, 65886u, 21397u, 1u), vec4<u32>(arg_0, arg_0, arg_0, 1u)) ^ ~vec4<u32>(1u, 1u, arg_0, arg_0)), u_input.a.x);
    var var_2 = global0[_wgslsmith_index_u32(~(~countOneBits(~firstLeadingBit(var_1.a.x))), 22u)];
    global0 = array<Struct_1, 22>();
    var_2 = Struct_1(max(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), var_2.a), vec4<u32>(_wgslsmith_mod_u32(var_2.a.x, var_1.a.x), var_1.a.x, arg_0, ~arg_0)), ~(~var_1.a)), _wgslsmith_add_i32(var_1.b, firstLeadingBit(-(~0i))));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, 239f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(532f + -286f)) * _wgslsmith_f_op_f32(select(-485f, 1f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(5891u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(223f, 269f) * _wgslsmith_f_op_f32(468f + 105f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(332f + -2075f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(300f)) - _wgslsmith_f_op_f32(step(365f, 174f)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), !all(vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(386f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1531f * 253f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -273f), -1186f))))));
    let var_1 = func_2();
    global0 = array<Struct_1, 22>();
    let var_2 = 518f;
    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -_wgslsmith_div_i32(-1i, 2147483647i), 19142i ^ ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), vec3<i32>(firstTrailingBit(20883i), 35914i, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_2), 663f, -136f), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.a.xz & -vec2<i32>(-23596i, 0i), abs(vec2<i32>(2147483647i, 1i))), select(vec2<i32>(17715i, var_3.x), vec2<i32>(abs(-1i), 48963i), vec2<bool>(any(vec2<bool>(true, true)), var_0.x >= var_2))), _wgslsmith_sub_vec2_i32(reverseBits(-var_1.a) | _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(21091i, u_input.a.x), var_3.yx, vec2<i32>(-18684i, u_input.a.x)), _wgslsmith_mult_vec2_i32(var_3.yx, vec2<i32>(-65480i, -2147483647i)), var_1.a), vec2<i32>(_wgslsmith_sub_i32(var_3.x, var_3.x) ^ (2147483647i >> (0u % 32u)), u_input.a.x)), vec2<u32>(~(~(~44904u)), 0u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_2)))));
}

