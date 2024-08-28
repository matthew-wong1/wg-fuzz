struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_5, 24>;

var<private> global2: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> f32 {
    var var_0 = ~max(1u, min(u_input.a.x, 10480u));
    global1 = array<Struct_5, 24>();
    let var_1 = u_input.a;
    var_0 = ~(~u_input.b.x >> (_wgslsmith_mod_u32(~4294967295u, ~var_1.x) % 32u));
    global2 = (reverseBits(var_1.x) < countOneBits(7054u << (countOneBits(16122u) % 32u))) || arg_1;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(min(1141f, arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> i32 {
    var var_0 = Struct_1(~reverseBits(firstLeadingBit(u_input.b) >> (max(vec4<u32>(0u, arg_0.x, 0u, 9446u), u_input.b) % vec4<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(220f, -2549f, -192f), vec3<f32>(2068f, 281f, -431f))), arg_2.x, any(arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(269f))))), 1677f));
    global1 = array<Struct_5, 24>();
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~min(countOneBits(75190u), firstTrailingBit(11114u)), ~var_0.a.x ^ _wgslsmith_dot_vec2_u32(arg_0.xx, abs(u_input.b.yw)), max(0u, ~22087u) | u_input.b.x, 4294967295u), var_0.a);
    let var_2 = select(select(select(select(arg_2.zzz, arg_2.yxy, true), select(arg_1.wyy, select(vec3<bool>(arg_2.x, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_2.x), arg_2.x), arg_2.wxw), true), !select(arg_2.zww, vec3<bool>(true, arg_2.x, false), any(arg_1)), arg_2.ywy), vec3<bool>((~(-18078i) >> (u_input.a.x % 32u)) != 1i, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1567f, 806f)))) < -287f), arg_1.x);
    return ~(max(1i, -1080i) >> (max(abs(max(40211u, arg_0.x)), 4294967295u << (_wgslsmith_mod_u32(u_input.b.x, 7687u) % 32u)) % 32u));
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    global0 = _wgslsmith_f_op_f32(-1f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + _wgslsmith_f_op_f32(floor(arg_0.x)));
    var var_1 = _wgslsmith_clamp_i32(~(-(_wgslsmith_sub_i32(29014i, 37707i) & func_2(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)))), 2147483647i, _wgslsmith_mod_i32(-firstTrailingBit(select(-5534i, -2147483647i, false)), -_wgslsmith_sub_i32(~(-15938i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -18391i, 29298i), vec3<i32>(2147483647i, 1i, 0i)))));
    global1 = array<Struct_5, 24>();
    return Struct_4(vec3<bool>(true, any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), true)), -202f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), false && (true && (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) == 3946u)), all(select(vec2<bool>(any(vec3<bool>(false, false, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(vec4<bool>(true, false, true, true)))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(-911f, arg_0.x, -216f), true, false)) * 616f) * arg_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -705f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(0i, ~6714i, 2147483647i >> (u_input.b.x % 32u), firstLeadingBit(-16297i));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1286f))), _wgslsmith_f_op_f32(957f + _wgslsmith_div_f32(770f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(f32(-1f) * -521f), select(true, all(vec3<bool>(false, true, false)), true)))), var_0.x);
    global0 = var_1.a.x;
    var var_2 = u_input.b.yyy | ~firstTrailingBit(_wgslsmith_div_vec3_u32(~u_input.b.xxx, ~vec3<u32>(u_input.b.x, 51150u, u_input.b.x)));
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.xy) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(395f, 765f)))));
    var var_4 = var_3;
    var var_5 = ~_wgslsmith_mult_u32(~(var_2.x ^ _wgslsmith_div_u32(62970u, var_2.x)), abs(0u));
    var_2 = ~u_input.b.yyz;
    var var_6 = 39064u >> (u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, -(vec3<i32>(-1i, var_1.b, var_1.b) & var_0.yzx), _wgslsmith_f_op_f32(func_3(var_1.a, var_4.d.x >= var_1.a.x, true)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b >> (0u % 32u), _wgslsmith_mult_i32(var_1.b, var_0.x)), vec2<i32>(var_1.b, -2147483647i), var_0.yx));
}

