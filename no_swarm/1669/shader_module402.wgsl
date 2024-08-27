struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 249f;

var<private> global1: array<f32, 28>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<i32>(-26029i, -1886i), vec2<u32>(57132u, 0u)), Struct_1(vec2<i32>(40140i, i32(-2147483648)), vec2<u32>(88944u, 4294967295u)), Struct_1(vec2<i32>(56299i, i32(-2147483648)), vec2<u32>(37193u, 20376u)), Struct_1(vec2<i32>(27359i, -1i), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<i32>(-2592i, 16374i), vec2<u32>(29298u, 39169u)), Struct_1(vec2<i32>(0i, 48940i), vec2<u32>(62968u, 15034u)), Struct_1(vec2<i32>(8058i, 61264i), vec2<u32>(4294967295u, 44051u)), Struct_1(vec2<i32>(-1i, 7028i), vec2<u32>(80464u, 0u)), Struct_1(vec2<i32>(1i, -28223i), vec2<u32>(26461u, 35437u)), Struct_1(vec2<i32>(38214i, i32(-2147483648)), vec2<u32>(0u, 61167u)), Struct_1(vec2<i32>(-1i, -1i), vec2<u32>(67325u, 8143u)), Struct_1(vec2<i32>(26362i, 45399i), vec2<u32>(8374u, 115329u)), Struct_1(vec2<i32>(-12429i, -13460i), vec2<u32>(107877u, 8070u)), Struct_1(vec2<i32>(-8938i, 13286i), vec2<u32>(31193u, 49962u)), Struct_1(vec2<i32>(-23402i, 6549i), vec2<u32>(13122u, 105232u)), Struct_1(vec2<i32>(5514i, 7474i), vec2<u32>(26688u, 65528u)), Struct_1(vec2<i32>(-28251i, -57827i), vec2<u32>(5225u, 4294967295u)), Struct_1(vec2<i32>(40079i, 1i), vec2<u32>(15696u, 1u)), Struct_1(vec2<i32>(-1i, 26272i), vec2<u32>(26482u, 4294967295u)), Struct_1(vec2<i32>(1068i, 1614i), vec2<u32>(4294967295u, 58354u)), Struct_1(vec2<i32>(-24884i, 40359i), vec2<u32>(9868u, 0u)), Struct_1(vec2<i32>(2147483647i, 20910i), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<i32>(-42361i, 2147483647i), vec2<u32>(14850u, 4294967295u)), Struct_1(vec2<i32>(2147483647i, -24751i), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<i32>(-11205i, 0i), vec2<u32>(4294967295u, 26359u)), Struct_1(vec2<i32>(-17679i, 13337i), vec2<u32>(53079u, 0u)), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<u32>(1u, 51630u)), Struct_1(vec2<i32>(-1i, 1i), vec2<u32>(57637u, 0u)), Struct_1(vec2<i32>(15401i, 2147483647i), vec2<u32>(4294967295u, 1u)), Struct_1(vec2<i32>(69018i, i32(-2147483648)), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(0u, 1u)));

var<private> global3: array<vec4<i32>, 20>;

var<private> global4: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    global3 = array<vec4<i32>, 20>();
    global1 = array<f32, 28>();
    global3 = array<vec4<i32>, 20>();
    let var_0 = vec3<u32>(16857u, _wgslsmith_dot_vec2_u32(vec2<u32>(select(4294967295u, ~39364u, true), 58510u), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(18200u, 34152u), ~vec2<u32>(4294967295u, 4294967295u))), firstLeadingBit(~firstLeadingBit(17497u)));
    var var_1 = global2[_wgslsmith_index_u32(~23943u, 31u)];
    return var_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec2<bool>) -> vec2<u32> {
    let var_0 = ~abs(func_3(~(-vec2<i32>(3378i, 36077i)), !arg_2.x));
    global3 = array<vec4<i32>, 20>();
    var var_1 = arg_0.xz;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2609f)) + global1[_wgslsmith_index_u32(var_0 ^ var_0, 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(42738u, 28u)]), _wgslsmith_div_f32(-1000f, 189f)))), global1[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(1u, 28u)]) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1[_wgslsmith_index_u32(abs(~var_0), 28u)])));
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(23752u, 28u)]) + 126f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(615f, 1223f))))), _wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_f_op_vec2_f32(var_2.wx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_2.x, -2168f)), _wgslsmith_f_op_f32(round(var_2.x))))));
    return vec2<u32>(~(~(~var_0)) & 5640u, 4294967295u);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-431f, arg_3) - _wgslsmith_div_vec2_f32(vec2<f32>(175f, 1941f), vec2<f32>(arg_3, -2060f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(544f, -1889f) * vec2<f32>(945f, 1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.b, arg_3))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(3002f, _wgslsmith_f_op_f32(705f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-566f, 1664f) * -1135f)))));
    global2 = array<Struct_1, 31>();
    let var_1 = select(_wgslsmith_sub_vec2_u32(min(~abs(vec2<u32>(1u, arg_1)), vec2<u32>(arg_1, ~arg_1)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 0u), firstLeadingBit(vec2<u32>(0u, arg_1))), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(arg_1, arg_1)), vec2<u32>(arg_1, arg_1)), ~vec2<u32>(arg_1, arg_1))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~arg_1, arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(4294967295u, arg_1)))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, arg_1)), ~(vec2<u32>(arg_1, arg_1) | vec2<u32>(arg_1, arg_1))), _wgslsmith_sub_vec2_u32(vec2<u32>(15972u, ~arg_1), func_2(vec3<i32>(u_input.b, arg_0.x, 2147483647i), -vec4<i32>(-8455i, arg_0.x, 0i, arg_0.x), vec2<bool>(true, true)))), true);
    global3 = array<vec4<i32>, 20>();
    return vec2<u32>(firstTrailingBit(~arg_1), arg_1);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(-(20849i ^ (u_input.c.x ^ u_input.a))));
    var var_1 = global2[_wgslsmith_index_u32(~arg_1.x, 31u)];
    global1 = array<f32, 28>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 28u)]), global1[_wgslsmith_index_u32(var_1.b.x, 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(75343u, 28u)])) + -932f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b.x, 28u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1436f, -1000f, -1006f, 1000f)) * vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b.x, 28u)]), 705f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 28u)] - global1[_wgslsmith_index_u32(var_1.b.x, 28u)]), _wgslsmith_f_op_f32(min(-669f, -1011f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(9985u, 28u)], 1392f) - vec2<f32>(256f, -709f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, global1[_wgslsmith_index_u32(11213u, 28u)])))))));
    global1 = array<f32, 28>();
    return global2[_wgslsmith_index_u32(arg_1.x >> (~firstTrailingBit(~firstTrailingBit(1u)) % 32u), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_add_i32(max(_wgslsmith_mod_i32(u_input.a, -1i), 15108i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, -1i), vec3<i32>(u_input.b, u_input.c.x, -15544i))) < -abs(2147483647i), ~_wgslsmith_sub_vec2_u32(~select(vec2<u32>(19685u, 4294967295u), vec2<u32>(63991u, 1u), vec2<bool>(true, false)), ~func_1(global3[_wgslsmith_index_u32(28360u, 20u)], 0u, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), -1256f)), select(vec4<bool>(false, true, any(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, true)) & any(vec4<bool>(false, false, false, false))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), true));
    global4 = global1[_wgslsmith_index_u32(var_0.b.x, 28u)];
    var var_1 = -max(vec3<i32>(-2147483647i, u_input.b, -2147483647i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, 1i, var_0.a.x), vec3<i32>(48326i, var_0.a.x, 32136i), vec3<i32>(var_0.a.x, u_input.c.x, var_0.a.x)) & countOneBits(max(vec3<i32>(u_input.a, -82781i, -2147483647i), vec3<i32>(var_0.a.x, u_input.b, var_0.a.x))));
    var var_2 = func_4(false, ~(~vec2<u32>(~var_0.b.x, var_0.b.x)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)));
    var var_3 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(_wgslsmith_mult_i32(18818i, var_1.x), -4296i | ~var_0.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_2.a.x, 67561i, 0i), vec4<i32>(u_input.a, -2147483647i, var_1.x, 2147483647i)), -1i)), vec3<i32>(_wgslsmith_clamp_i32(-34960i, _wgslsmith_add_i32(u_input.a, 17281i), u_input.b), 6923i, u_input.a), !(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, 122700u, 4294967295u), vec3<u32>(0u, var_2.b.x, var_2.b.x)), 28u)] <= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(97553u, 28u)] * global1[_wgslsmith_index_u32(74782u, 28u)]))), -vec3<i32>(17307i, u_input.b, countOneBits(u_input.b)));
    var_2 = func_4(any(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), var_2.b, select(vec4<bool>(!select(false, false, false), true, _wgslsmith_div_f32(296f, global1[_wgslsmith_index_u32(54451u, 28u)]) > _wgslsmith_f_op_f32(select(-1000f, 204f, false)), !select(true, true, true)), select(vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(true, true, false)), true, false), vec4<bool>(all(vec4<bool>(false, true, true, false)), false, true, true), vec4<bool>(all(vec2<bool>(true, true)), false, any(vec3<bool>(true, false, false)), true)), true));
    let var_4 = Struct_1(abs(reverseBits(vec2<i32>(-1i) * -vec2<i32>(20267i, 4062i))), vec2<u32>(~max(_wgslsmith_sub_u32(47965u, var_0.b.x), 1u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(7667u, var_0.b.x, var_2.b.x)), vec3<u32>(var_2.b.x, 50656u, var_2.b.x) & firstLeadingBit(vec3<u32>(var_0.b.x, var_0.b.x, 25418u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_4.b.x >> (abs(var_0.b.x) % 32u), var_4.b.x << (func_2(min(vec3<i32>(-2147483647i, u_input.a, var_1.x), vec3<i32>(var_2.a.x, 0i, var_3.x)), global3[_wgslsmith_index_u32(var_4.b.x, 20u)] << (vec4<u32>(var_4.b.x, 1u, var_2.b.x, 18189u) % vec4<u32>(32u)), select(vec2<bool>(false, true), vec2<bool>(false, true), false)).x % 32u), var_0.b.x));
}

