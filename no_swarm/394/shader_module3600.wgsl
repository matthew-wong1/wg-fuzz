struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(0u, false, vec4<i32>(2147483647i, 0i, 107884i, 10176i)), Struct_3(19878u, true, vec4<i32>(33608i, 32488i, 21312i, 0i)), Struct_3(4294967295u, false, vec4<i32>(40548i, 16869i, 38372i, i32(-2147483648))), Struct_3(1u, true, vec4<i32>(38801i, 6339i, 6383i, i32(-2147483648))), Struct_3(0u, false, vec4<i32>(-1i, 2147483647i, -3194i, 41059i)), Struct_3(1u, false, vec4<i32>(-42532i, i32(-2147483648), -1i, 0i)), Struct_3(4294967295u, true, vec4<i32>(42610i, 1i, 2147483647i, 15875i)), Struct_3(4001u, false, vec4<i32>(41381i, 62006i, 39492i, -1i)), Struct_3(6680u, true, vec4<i32>(9162i, -1i, i32(-2147483648), -14824i)), Struct_3(2842u, true, vec4<i32>(20334i, i32(-2147483648), -37144i, 5175i)), Struct_3(17392u, false, vec4<i32>(2147483647i, -1i, 4997i, -29075i)), Struct_3(4294967295u, true, vec4<i32>(0i, -1i, 3987i, -64826i)), Struct_3(100046u, true, vec4<i32>(1i, -1i, -20133i, i32(-2147483648))), Struct_3(37332u, true, vec4<i32>(35663i, 2147483647i, -64858i, i32(-2147483648))), Struct_3(4294967295u, false, vec4<i32>(21891i, -16437i, -12896i, i32(-2147483648))), Struct_3(0u, false, vec4<i32>(1i, 2147483647i, i32(-2147483648), -1i)), Struct_3(0u, true, vec4<i32>(2147483647i, 11577i, 25210i, -11261i)), Struct_3(34585u, true, vec4<i32>(-26177i, -1401i, 2147483647i, -19097i)), Struct_3(31094u, false, vec4<i32>(-1716i, 65293i, 48834i, i32(-2147483648))), Struct_3(1u, true, vec4<i32>(1i, -1i, 3186i, 5303i)));

var<private> global1: array<f32, 26>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    var var_0 = vec2<bool>((arg_1 & select(u_input.c, 10183i, u_input.a <= 98804u)) <= reverseBits(~(-2147483647i)), true);
    var var_1 = arg_0.a ^ 0u;
    global0 = array<Struct_3, 20>();
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~u_input.a), 26u)] - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(542f)))));
    return var_2;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_1(vec4<i32>(~(-1i), u_input.c, -2035i, firstLeadingBit(-(~u_input.b))), -(_wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_1, u_input.c), vec2<i32>(arg_1, 0i), false), vec2<i32>(-27997i, arg_1)) | ~(~vec2<i32>(2147483647i, u_input.c))), select(vec2<bool>(func_3(Struct_3(arg_0, true, vec4<i32>(arg_1, arg_1, u_input.c, 677i)), 1i), true), vec2<bool>(func_3(Struct_3(42925u, false, vec4<i32>(-7017i, u_input.b, 1i, u_input.b)), 1i), false), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false), true))), global1[_wgslsmith_index_u32(9658u, 26u)]);
    let var_1 = Struct_1(-(-(~var_0.a) ^ var_0.a), _wgslsmith_sub_vec2_i32(-var_0.b, _wgslsmith_div_vec2_i32(var_0.b, countOneBits(~vec2<i32>(var_0.b.x, arg_1)))), !select(vec2<bool>(var_0.c.x, true), vec2<bool>(!var_0.c.x, u_input.a == arg_0), select(select(var_0.c, vec2<bool>(var_0.c.x, var_0.c.x), var_0.c.x), var_0.c, vec2<bool>(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(~u_input.a, ~12961u), 26u)] - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d)))) * -1054f));
    let var_2 = countOneBits(~(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 111967u)) ^ (vec3<u32>(1u, 1u, u_input.a) ^ vec3<u32>(arg_0, 62747u, u_input.a))) << (_wgslsmith_clamp_vec3_u32(max(~vec3<u32>(3059u, 23392u, 42737u), select(vec3<u32>(arg_0, u_input.a, 1u), vec3<u32>(55082u, u_input.a, 4294967295u), var_1.c.x)), vec3<u32>(arg_0, countOneBits(131u), 1u), select(select(vec3<u32>(4294967295u, 45829u, 5193u), vec3<u32>(4294967295u, 4294967295u, arg_0), var_1.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 12565u, arg_0), vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<bool>(true, true, true))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -146f, _wgslsmith_f_op_f32(round(var_0.d))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(91710u, 26u)], _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(select(779f, -1301f, var_1.c.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 26u)]), -433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1410f, -1703f)) - _wgslsmith_f_op_f32(step(var_0.d, -429f))))));
    var var_4 = firstTrailingBit(var_0.a >> (vec4<u32>(firstLeadingBit(var_2.x), ~reverseBits(u_input.a), 1u, ~select(21580u, u_input.a, false)) % vec4<u32>(32u)));
    return vec3<bool>(var_0.c.x, any(var_0.c), false);
}

fn func_1() -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(~19496u, 20u)];
    let var_1 = vec3<bool>(all(vec2<bool>(var_0.c.x <= u_input.c, any(select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(false, var_0.b, var_0.b), false)))), true, true);
    let var_2 = u_input.a;
    let var_3 = vec4<u32>(var_0.a, ~var_0.a, var_0.a, 1u);
    let var_4 = !func_2(~1u, _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(var_0.c.xw, var_0.c.zy), abs(-3146i >> (var_2 % 32u))));
    return Struct_3(56621u, !all(!(!vec4<bool>(var_4.x, false, true, true))), var_0.c);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(36211u, 26u)]));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(arg_1.c, arg_1.c, vec4<i32>(abs(arg_1.c.x >> (u_input.a % 32u)), 0i, 9295i, 21674i)), ~(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(1i, arg_1.c.x))), select(!(!func_2(u_input.a, -2147483647i).xy), select(!func_2(20303u, u_input.c).zy, !(!vec2<bool>(false, arg_1.b)), false), global1[_wgslsmith_index_u32(firstTrailingBit(1u), 26u)] >= global1[_wgslsmith_index_u32(arg_1.a, 26u)]), _wgslsmith_f_op_f32(f32(-1f) * -507f));
    global1 = array<f32, 26>();
    var var_2 = _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(arg_0.a, 64049u, u_input.a)), ~(~vec3<u32>(0u, u_input.a, 12651u)))));
    var var_3 = vec3<u32>(arg_1.a, ~arg_1.a, ~max(arg_1.a, 15322u) | 31258u) ^ firstTrailingBit(select(abs(vec3<u32>(1u, u_input.a, arg_0.a)), vec3<u32>(arg_1.a, arg_0.a, 43565u) ^ ~vec3<u32>(60730u, 38309u, 10325u), func_2(arg_1.a, 0i)));
    return StorageBuffer(_wgslsmith_mod_vec2_u32(~firstLeadingBit(countOneBits(var_3.xy)), var_3.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(217f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(reverseBits(vec3<u32>(87014u, u_input.a, u_input.a))), vec3<u32>(abs(0u), 1u >> (u_input.a % 32u), _wgslsmith_add_u32(u_input.a, 11034u))), 26u)])), true));
    global0 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = func_4(func_1(), func_1());
}

