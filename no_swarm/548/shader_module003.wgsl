struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 733f;

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 1u, 1u);

var<private> global2: f32;

var<private> global3: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec2<i32>(4966i, 11183i)), Struct_3(vec2<i32>(-4791i, -5177i)), Struct_3(vec2<i32>(1i, -1i)), Struct_3(vec2<i32>(101i, i32(-2147483648))), Struct_3(vec2<i32>(-15371i, -1i)), Struct_3(vec2<i32>(-1i, 69649i)), Struct_3(vec2<i32>(-21635i, 2147483647i)), Struct_3(vec2<i32>(30479i, -30695i)), Struct_3(vec2<i32>(14709i, -75173i)), Struct_3(vec2<i32>(11080i, -16738i)), Struct_3(vec2<i32>(1i, 2147483647i)), Struct_3(vec2<i32>(i32(-2147483648), 1i)), Struct_3(vec2<i32>(-19065i, 0i)), Struct_3(vec2<i32>(-1i, -8241i)), Struct_3(vec2<i32>(2147483647i, 1i)), Struct_3(vec2<i32>(18016i, i32(-2147483648))), Struct_3(vec2<i32>(52766i, -1i)), Struct_3(vec2<i32>(-93i, 30531i)), Struct_3(vec2<i32>(24770i, 0i)), Struct_3(vec2<i32>(-9402i, -1i)), Struct_3(vec2<i32>(11867i, -54237i)), Struct_3(vec2<i32>(-1i, 1i)), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_3(vec2<i32>(2147483647i, -7286i)), Struct_3(vec2<i32>(1i, 1i)), Struct_3(vec2<i32>(-96589i, -18418i)), Struct_3(vec2<i32>(0i, -56921i)), Struct_3(vec2<i32>(3399i, 0i)), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global3 = array<Struct_3, 29>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1099f + -715f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-492f)) - _wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1437f, -1142f))))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(397f)))))));
    global3 = array<Struct_3, 29>();
    let var_1 = vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~11125u, 4294967295u << (0u % 32u), select(108630u, 17865u, true), 4294967295u), ~max(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 4294967295u, u_input.c), vec4<u32>(u_input.a, 4294967295u, 1u, global1[_wgslsmith_index_u32(44150u, 3u)])), reverseBits(~vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 24045u, 40073u))), _wgslsmith_add_vec4_u32(firstLeadingBit(abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 3u)], 0u, 32547u, global1[_wgslsmith_index_u32(54303u, 3u)]))), ~vec4<u32>(1u, 33492u, global1[_wgslsmith_index_u32(89115u, 3u)], u_input.c) ^ vec4<u32>(global1[_wgslsmith_index_u32(18331u, 3u)], 4294967295u, 35784u, u_input.a))), 3u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(countOneBits(global1[_wgslsmith_index_u32(1u, 3u)]), ~0u, _wgslsmith_mod_u32(u_input.a, 1u), min(0u, u_input.c)), select(vec4<u32>(25887u, global1[_wgslsmith_index_u32(u_input.c, 3u)], 65965u, _wgslsmith_div_u32(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)])), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68827u, 3u)], 3u)], u_input.a, global1[_wgslsmith_index_u32(u_input.a, 3u)], 58266u) | ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 16359u, 0u, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(all(vec3<bool>(true, true, true)), false, true, true))));
    return !select(vec3<bool>(all(vec2<bool>(true, true)), false, any(vec4<bool>(false, true, false, true))), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(var_0 + -525f) <= 1127f);
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = array<u32, 3>();
    var var_0 = Struct_2(arg_0);
    let var_1 = -select(-_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.b), reverseBits(vec2<i32>(u_input.b, u_input.b))), u_input.b, !(arg_0.a.x && arg_0.a.x) & var_0.a.a.x);
    var var_2 = Struct_2(Struct_1(vec3<bool>(func_3(global3[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)]), 29u)]).x, true, !all(vec2<bool>(arg_0.a.x, arg_0.a.x)))));
    var var_3 = -2147483647i;
    return _wgslsmith_mod_u32(~40703u, min(~(22480u & _wgslsmith_sub_u32(6026u, u_input.a)), _wgslsmith_div_u32(firstTrailingBit(41521u) | ~u_input.c, abs(~89129u))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> bool {
    global2 = -845f;
    let var_0 = countOneBits(~(~(~vec4<u32>(4960u, arg_0, global1[_wgslsmith_index_u32(1u, 3u)], arg_1.x))));
    let var_1 = firstLeadingBit(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, arg_0, global1[_wgslsmith_index_u32(2508u, 3u)]), var_0.xxz), 0u)) | _wgslsmith_mod_u32(func_4(Struct_1(func_3(global3[_wgslsmith_index_u32(var_0.x, 29u)]))), ~34740u);
    global1 = array<u32, 3>();
    var var_2 = Struct_1(vec3<bool>(any(vec4<bool>(true & arg_2, false, !arg_2, true)), (all(vec3<bool>(false, arg_2, false)) && arg_2) | all(!vec3<bool>(false, false, arg_2)), !arg_2));
    return !any(vec2<bool>(all(!var_2.a), true));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1898f + -933f))) * vec3<f32>(1f, 1f, 1f))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global1 = array<u32, 3>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_dot_vec4_u32(select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(27718u, 3u)], global1[_wgslsmith_index_u32(arg_1.x, 3u)], 60716u), vec4<u32>(u_input.c, u_input.c, global1[_wgslsmith_index_u32(u_input.c, 3u)], 41055u))), vec4<u32>(~5455u, global1[_wgslsmith_index_u32(1u, 3u)], 1u, ~0u), vec4<bool>(arg_0, arg_0 && true, !arg_0, true)), ~vec4<u32>(min(u_input.c, global1[_wgslsmith_index_u32(arg_1.x, 3u)]), global1[_wgslsmith_index_u32(1u, 3u)] >> (11946u % 32u), abs(42961u), ~global1[_wgslsmith_index_u32(arg_1.x, 3u)])), arg_1.x), 29u)];
    var_2 = global3[_wgslsmith_index_u32(~((~_wgslsmith_div_u32(1627u, arg_1.x) | 60248u) >> (reverseBits(1u & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 13746u, 1u), vec3<u32>(76488u, 21926u, u_input.a))) % 32u)), 29u)];
    return Struct_1(!(!vec3<bool>(true, arg_0, arg_0)));
}

fn func_1() -> f32 {
    let var_0 = u_input.b;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f * -239f))))), _wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1731f)));
    var var_2 = func_5(func_2(25980u, vec4<u32>(reverseBits(4294967295u), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 3u)], 51808u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18605u, 3u)], 3u)], 2094u, 4294967295u)), ~global1[_wgslsmith_index_u32(u_input.c, 3u)]), true) | true, abs(~vec2<u32>(~15062u, _wgslsmith_mod_u32(17515u, 54426u))));
    global1 = array<u32, 3>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(601f))))) + var_1.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(-11187i, u_input.b, -20668i, -2147483647i), -select(vec4<i32>(2147483647i, 49890i, -40906i, -34508i), vec4<i32>(4090i, u_input.b, 0i, u_input.b), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-120f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(439f * 349f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -863f)) + _wgslsmith_div_f32(var_1.x, var_1.x)) - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2383f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - _wgslsmith_f_op_f32(var_1.x - var_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(-579f)))))))), var_1.x);
    var var_2 = -max(_wgslsmith_add_vec4_i32(firstLeadingBit(var_0) ^ min(var_0, var_0), abs(vec4<i32>(3111i, var_0.x, u_input.b, 0i) | var_0)), vec4<i32>(u_input.b, -u_input.b, -52077i, firstLeadingBit(1i)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 1599f, _wgslsmith_f_op_f32(abs(var_1.x)));
    global0 = -1064f;
    let var_4 = vec2<u32>(func_4(Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))) & firstLeadingBit(4294967295u), ~_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 3u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 34919u, ~(~vec3<u32>(var_4.x, 4294967295u, 1u) >> (vec3<u32>(12337u, 4294967295u, 59087u) % vec3<u32>(32u))) << (~(~max(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 4294967295u, 43955u), vec3<u32>(u_input.a, var_4.x, 4294967295u))) % vec3<u32>(32u)), abs(vec2<i32>(var_2.x, ~reverseBits(var_0.x))), var_2.x);
}

