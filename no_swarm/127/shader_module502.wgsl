struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21>;

var<private> global1: array<vec2<i32>, 2>;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec4<u32>(4294967295u, 4294967295u, 5490u, 50021u), Struct_1(false), Struct_1(true), vec4<bool>(false, false, true, true), 43671i), Struct_4(vec4<u32>(60908u, 1408u, 0u, 1u), Struct_1(false), Struct_1(true), vec4<bool>(false, true, true, true), -1i), Struct_4(vec4<u32>(1u, 1u, 45411u, 16653u), Struct_1(false), Struct_1(false), vec4<bool>(false, true, false, false), -20628i), Struct_4(vec4<u32>(45001u, 39487u, 20546u, 105u), Struct_1(false), Struct_1(false), vec4<bool>(true, true, false, false), 1i), Struct_4(vec4<u32>(1u, 4294967295u, 53562u, 0u), Struct_1(false), Struct_1(false), vec4<bool>(true, false, false, true), 56741i), Struct_4(vec4<u32>(31987u, 4294967295u, 18582u, 43719u), Struct_1(false), Struct_1(false), vec4<bool>(false, false, false, false), 0i), Struct_4(vec4<u32>(4294967295u, 4294967295u, 82375u, 42981u), Struct_1(false), Struct_1(true), vec4<bool>(true, false, false, false), 31515i), Struct_4(vec4<u32>(4294967295u, 4294967295u, 5414u, 28113u), Struct_1(true), Struct_1(false), vec4<bool>(true, false, true, false), 2147483647i), Struct_4(vec4<u32>(0u, 0u, 0u, 0u), Struct_1(false), Struct_1(false), vec4<bool>(false, false, false, false), -20061i), Struct_4(vec4<u32>(32285u, 4294967295u, 36401u, 41715u), Struct_1(true), Struct_1(false), vec4<bool>(true, false, false, true), -11361i), Struct_4(vec4<u32>(0u, 4294967295u, 14598u, 71706u), Struct_1(false), Struct_1(true), vec4<bool>(false, true, false, true), i32(-2147483648)), Struct_4(vec4<u32>(12286u, 53746u, 15658u, 4294967295u), Struct_1(false), Struct_1(false), vec4<bool>(true, false, true, false), -36570i), Struct_4(vec4<u32>(6560u, 1u, 46382u, 10330u), Struct_1(false), Struct_1(true), vec4<bool>(true, false, true, false), 1i), Struct_4(vec4<u32>(18249u, 53761u, 1u, 1u), Struct_1(true), Struct_1(true), vec4<bool>(false, false, false, true), 1i), Struct_4(vec4<u32>(4095u, 0u, 13027u, 25232u), Struct_1(false), Struct_1(true), vec4<bool>(false, true, false, true), 946i), Struct_4(vec4<u32>(37851u, 55282u, 18805u, 1u), Struct_1(false), Struct_1(true), vec4<bool>(false, false, true, false), 2147483647i), Struct_4(vec4<u32>(4294967295u, 0u, 4294967295u, 24002u), Struct_1(true), Struct_1(false), vec4<bool>(true, true, true, true), -5607i));

var<private> global3: f32 = -1850f;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> f32 {
    global0 = array<vec3<u32>, 21>();
    return _wgslsmith_f_op_f32(-1596f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(493f))))))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    let var_0 = vec3<bool>(!arg_0.d.x, all(!vec4<bool>(arg_0.c.a | false, select(true, false, false), arg_0.b.a, true)), false);
    var var_1 = select(!vec2<bool>(any(vec2<bool>(var_0.x, true)), false), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(106f * -1718f) - _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x, arg_0.a.x, arg_0.a.x, 50598u), arg_0.c, true, var_0.x))) != _wgslsmith_f_op_f32(round(-509f)), ((var_0.x && false) & arg_0.b.a) && all(!var_0)), any(!select(vec2<bool>(false, arg_0.b.a), vec2<bool>(var_0.x, false), arg_0.b.a)) && (reverseBits(arg_0.a.x) < u_input.a.x));
    let var_2 = -countOneBits(_wgslsmith_sub_i32(~arg_0.e, -36834i));
    return Struct_1(~(~(~u_input.a.x)) < 0u);
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global4 = u_input.a.x;
    var var_0 = true;
    var var_1 = -1726f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    var var_3 = 0i & (18848i << (countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 82310u), u_input.a.xy), 1u)) % 32u));
    return Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u & u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, 56018u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), u_input.a), abs(~vec3<u32>(32949u, u_input.a.x, u_input.a.x)) & vec3<u32>(u_input.a.x, 0u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(816f, 995f, var_2, 747f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, arg_0.x, arg_0.x, var_2)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -210f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, -642f, var_2))))))), true, -1000f);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~abs(22151u), 2u)];
    global4 = ~(12190u >> (u_input.a.x % 32u));
    var var_1 = ~(_wgslsmith_mod_i32(min(~var_0.x, i32(-1i) * -49397i), -_wgslsmith_sub_i32(0i, var_0.x)) << (u_input.a.x % 32u));
    var var_2 = select(select(!select(select(vec3<bool>(arg_2.a.a, false, arg_1.c), vec3<bool>(false, arg_1.c, arg_1.c), arg_0), select(vec3<bool>(true, false, arg_1.c), vec3<bool>(true, arg_0, arg_0), arg_0), select(vec3<bool>(arg_2.a.a, false, false), vec3<bool>(arg_0, true, false), arg_1.c)), select(!(!vec3<bool>(true, true, arg_0)), !(!vec3<bool>(false, true, arg_1.c)), vec3<bool>(func_4(arg_1.b.zy, -14813i, var_0.x, arg_2.a).c, true, all(vec3<bool>(arg_0, true, arg_2.a.a)))), vec3<bool>(all(!vec4<bool>(true, arg_1.c, true, false)), true, arg_0)), select(select(!(!vec3<bool>(arg_2.a.a, false, arg_2.a.a)), select(select(vec3<bool>(false, arg_1.c, arg_2.a.a), vec3<bool>(false, arg_2.a.a, arg_1.c), true), vec3<bool>(arg_1.c, true, arg_2.a.a), arg_0 & false), true), !vec3<bool>(true, arg_1.c, true), select(select(select(vec3<bool>(arg_0, true, arg_2.a.a), vec3<bool>(false, false, true), vec3<bool>(true, true, arg_1.c)), vec3<bool>(false, arg_1.c, arg_1.c), !arg_2.a.a), select(select(vec3<bool>(true, false, arg_2.a.a), vec3<bool>(true, arg_2.a.a, false), vec3<bool>(true, true, true)), vec3<bool>(arg_2.a.a, false, true), -233f > arg_1.d), true)), false);
    var var_3 = arg_1.b.xxz;
    return firstLeadingBit((~0u << (firstLeadingBit(~28182u) % 32u)) | _wgslsmith_mod_u32(arg_1.a.x, firstLeadingBit(1u) & ~u_input.a.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> vec2<f32> {
    var var_0 = 39842i;
    global4 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~(~u_input.a.x), ~40921u, 0u), vec4<u32>(_wgslsmith_clamp_u32(66054u, ~4294967295u << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 76494u), vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, countOneBits(1u)), 39993u), func_5(!(!arg_3.x), func_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, -146f))), -arg_0.x, arg_0.x, func_2(Struct_4(vec4<u32>(0u, 5424u, u_input.a.x, 26775u), Struct_1(false), Struct_1(arg_3.x), arg_3, arg_0.x))), Struct_3(Struct_1(false))), 1u));
    var_0 = arg_0.x;
    global0 = array<vec3<u32>, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1, 329f, 341f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, arg_2, arg_1, 847f), vec4<f32>(662f, -633f, arg_2, arg_1), false))))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(538f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, var_1.x) - var_1.xz)))) + var_1.xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<i32>(-21063i, 25883i, 1i), 938f, -1010f, vec4<bool>(true, false, false, true))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 697f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(498f, 401f), vec2<f32>(-192f, -361f))), true))) - vec2<f32>(921f, 1211f));
    let var_1 = global2[_wgslsmith_index_u32(~(0u | firstTrailingBit(func_5(true, func_4(var_0, -2147483647i, -1441i, Struct_1(false)), Struct_3(Struct_1(true))))), 17u)];
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_1.a.yw, _wgslsmith_mod_vec2_u32(u_input.a.xx, u_input.a.xz)) & (0u >> (func_5(var_1.c.a, Struct_2(u_input.a, vec4<f32>(var_0.x, -1212f, 733f, var_0.x), false, var_0.x), Struct_3(Struct_1(false))) % 32u)), u_input.a.x) >> (var_1.a.x % 32u);
    var var_3 = Struct_3(Struct_1(true));
    global2 = array<Struct_4, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(-firstTrailingBit(firstTrailingBit(vec4<i32>(37194i, 20158i, var_1.e, var_1.e))), abs(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_1.e, var_1.e, var_1.e, -2147483647i)), -vec4<i32>(-2147483647i, 36917i, var_1.e, var_1.e)))), u_input.a.x, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(-15565i, countOneBits(var_1.e)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, -54284i, 2147483647i)), ~(~vec3<i32>(-5045i, var_1.e, -1i)))), 1u, ~(vec4<u32>(var_2, u_input.a.x, var_1.a.x, var_2) >> (vec4<u32>(_wgslsmith_sub_u32(3185u, var_1.a.x), var_1.a.x, 4294967295u >> (u_input.a.x % 32u), _wgslsmith_sub_u32(var_1.a.x, 4294967295u)) % vec4<u32>(32u))));
}

