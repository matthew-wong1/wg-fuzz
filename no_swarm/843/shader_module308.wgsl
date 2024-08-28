struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<u32> {
    global1 = array<f32, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(24665u, 25u)]))))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1376f)) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(select(-239f, global1[_wgslsmith_index_u32(~u_input.a | ~u_input.a, 25u)], 502f >= _wgslsmith_f_op_f32(sign(arg_0)))), 1151f, _wgslsmith_f_op_f32(296f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2074f - -1000f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, global1[_wgslsmith_index_u32(u_input.a, 25u)]) - _wgslsmith_f_op_f32(-411f + 443f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 25u)], arg_0)), _wgslsmith_div_f32(arg_0, arg_0)))) - -489f);
    var var_1 = Struct_3(_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 96795u, u_input.a, 0u) ^ vec4<u32>(20144u, 1139u, 0u, 21371u), firstTrailingBit(vec4<u32>(u_input.a, 1u, u_input.a, 22399u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 7443u), vec2<u32>(22222u, u_input.a)))), _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(30955u, u_input.a), vec2<u32>(77304u, 37321u)), vec2<u32>(1u, 7338u)), 0u), Struct_2(vec2<u32>(u_input.a, u_input.a)));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~0u, 0u, u_input.a | ~1u), select(~vec4<u32>(var_1.b, 1u, u_input.a, reverseBits(var_1.b)), ~vec4<u32>(0u, var_1.c.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.a.x, 1u, var_1.b), vec3<u32>(u_input.a, var_1.b, 4294967295u)), reverseBits(u_input.a)), ~(~arg_1) == _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, arg_1), vec4<i32>(28264i, arg_1, 2147483647i, arg_1)), 23059i)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(max(vec2<u32>(_wgslsmith_add_u32(1u, reverseBits(u_input.a)), max(4294967295u, 48181u & u_input.a)), select(vec2<u32>(27014u, 14657u) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), (vec2<u32>(29670u, 1u) & vec2<u32>(1u, u_input.a)) | ~vec2<u32>(u_input.a, u_input.a), u_input.a < u_input.a)));
    global1 = array<f32, 25>();
    var var_1 = -924f;
    global1 = array<f32, 25>();
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~_wgslsmith_sub_u32(var_0.a.x, var_0.a.x | 23053u), _wgslsmith_mod_u32(var_0.a.x, var_0.a.x), _wgslsmith_mult_u32(u_input.a, var_0.a.x)), func_3(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a, 25u)])), -10344i), vec4<u32>(_wgslsmith_add_u32(4294967295u ^ u_input.a, 86623u >> (var_0.a.x % 32u)), 4294967295u, u_input.a | (u_input.a >> (var_0.a.x % 32u)), max(~55005u, _wgslsmith_sub_u32(u_input.a, u_input.a))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 47316u, 27001u, 4294967295u), vec4<u32>(120477u, 945u, u_input.a, var_0.a.x) | vec4<u32>(0u, u_input.a, 10863u, 12809u)), ~vec4<u32>(var_0.a.x, 1u, 0u, u_input.a)) % vec4<u32>(32u)));
    return var_0.a.x;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_2 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~func_2(), 25u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(exp2(arg_0)), all(vec2<bool>(true, arg_2 & true)))));
    global0 = _wgslsmith_f_op_f32(abs(-181f));
    global0 = 537f;
    global1 = array<f32, 25>();
    var var_0 = Struct_3(firstLeadingBit(firstLeadingBit(arg_1)) & (u_input.a << (min(~arg_1, _wgslsmith_mult_u32(8268u, 1u)) % 32u)), _wgslsmith_add_u32(reverseBits(_wgslsmith_sub_u32(arg_1 >> (arg_1 % 32u), ~u_input.a)), arg_1), Struct_2(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 54952u, arg_1, 48411u), vec4<u32>(u_input.a, u_input.a, arg_1, arg_1))), abs(_wgslsmith_mod_u32(39790u, 4866u)))));
    return Struct_2(~vec2<u32>(~(~arg_1), u_input.a));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> Struct_2 {
    var var_0 = !vec3<bool>(all(vec3<bool>(true, false, true)), true, all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, false))));
    global1 = array<f32, 25>();
    let var_1 = Struct_4(~(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -76554i, arg_0.a, 2147483647i), vec4<i32>(-7369i, arg_0.a, arg_0.a, 2147483647i))));
    var_0 = vec3<bool>(!select(var_0.x, !all(vec2<bool>(var_0.x, false)), !any(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), true, !var_0.x);
    let var_2 = ~abs(vec3<u32>(26962u, (1u >> (1u % 32u)) ^ max(3273u, u_input.a), 5330u));
    return arg_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(trunc(-305f));
    var var_2 = max(~max(~var_0, ~var_0) << (abs(1u) % 32u), var_0);
    let var_3 = vec3<u32>(~_wgslsmith_mult_u32(u_input.a & ~var_0, ~4294967295u), 1u, u_input.a);
    let var_4 = Struct_3(0u, var_3.x, func_4(Struct_5(_wgslsmith_sub_i32(i32(-1i) * -41006i, ~(-37567i)), Struct_3(~var_3.x, firstLeadingBit(64738u), func_1(global1[_wgslsmith_index_u32(u_input.a, 25u)], var_0, false))), -1429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 25u)] * global1[_wgslsmith_index_u32(0u, 25u)]))) * 765f)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, firstLeadingBit(u_input.a), vec4<i32>(-select(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(17203i, 29710i), true), 17030i, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 29075i, 0i), vec4<i32>(-1i, -46358i, -42276i, -4687i))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 24916i), vec2<i32>(0i, -1i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_mult_i32(min(6750i, i32(-1i) * -45209i), 0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(586f, _wgslsmith_f_op_f32(max(1440f, global1[_wgslsmith_index_u32(4294967295u, 25u)])), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 17249u), 25u)], 315f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-161f, -714f, 1000f, -496f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1969f, global1[_wgslsmith_index_u32(var_3.x, 25u)], -603f, global1[_wgslsmith_index_u32(1u, 25u)]) * vec4<f32>(-289f, global1[_wgslsmith_index_u32(var_0, 25u)], -1456f, global1[_wgslsmith_index_u32(3032u, 25u)]))))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 4294967295u, 4294967295u), var_3), func_1(-191f, 72093u, false).a.x, 0u), _wgslsmith_sub_vec4_u32(func_3(global1[_wgslsmith_index_u32(u_input.a, 25u)], 11632i), ~vec4<u32>(var_3.x, 0u, 0u, var_0))), vec4<u32>(firstLeadingBit(var_4.c.a.x), 14594u, max(u_input.a << (4294967295u % 32u), 4294967295u << (var_4.a % 32u)), func_3(_wgslsmith_f_op_f32(-1068f + global1[_wgslsmith_index_u32(1u, 25u)]), -47901i).x)));
}

