struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 29> = array<f32, 29>(706f, 837f, 130f, 719f, -1121f, 974f, -665f, -1386f, 975f, 1834f, -1000f, -829f, -293f, 387f, 1152f, -1053f, -218f, 1473f, 469f, 542f, 1866f, 1714f, 1398f, 846f, 1084f, 207f, 305f, 1000f, -776f);

var<private> global2: array<bool, 20> = array<bool, 20>(true, true, true, false, true, false, false, false, false, false, true, false, false, true, false, true, true, false, true, false);

var<private> global3: array<i32, 2>;

var<private> global4: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec4<f32>(427f, -833f, -1000f, -254f), false), Struct_2(vec4<f32>(-353f, 1207f, 405f, -1145f), false), Struct_2(vec4<f32>(-252f, -788f, -344f, -562f), true), Struct_2(vec4<f32>(-550f, 391f, 1067f, 236f), true), Struct_2(vec4<f32>(-1045f, 387f, 559f, 380f), true), Struct_2(vec4<f32>(504f, -1000f, -910f, -1000f), false), Struct_2(vec4<f32>(-750f, -206f, 2127f, -297f), true), Struct_2(vec4<f32>(-725f, -946f, -491f, 1181f), false), Struct_2(vec4<f32>(2003f, -162f, -589f, 182f), false), Struct_2(vec4<f32>(-1000f, -1114f, 214f, -3262f), true), Struct_2(vec4<f32>(-1847f, 709f, 1000f, 844f), false), Struct_2(vec4<f32>(-996f, -1000f, -1594f, -239f), true), Struct_2(vec4<f32>(2132f, 696f, 2836f, -296f), false), Struct_2(vec4<f32>(377f, 841f, -303f, 1000f), false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<u32>) -> i32 {
    global4 = array<Struct_2, 14>();
    global0 = global2[_wgslsmith_index_u32(~1u, 20u)];
    var var_0 = 994f;
    let var_1 = arg_1.c;
    let var_2 = _wgslsmith_f_op_f32(step(1151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f * 539f))));
    return 36995i;
}

fn func_3() -> vec2<u32> {
    global2 = array<bool, 20>();
    var var_0 = firstTrailingBit(~firstTrailingBit(vec3<u32>(~41470u, max(0u, 84671u), ~0u)));
    var var_1 = ~var_0.x;
    var_0 = ~vec3<u32>(1u, 19281u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x) << (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u)), vec3<u32>(var_0.x, var_0.x, var_0.x)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(17343u, 29676u, 56024u), vec3<u32>(var_0.x, var_0.x, var_0.x)))));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 29u)] * global1[_wgslsmith_index_u32(var_0.x, 29u)])))), global1[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(select(~var_0.x, max(1u, var_0.x), all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_0.x, 20u)]))), 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 29u)])))), all(!select(select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 20u)], true), global2[_wgslsmith_index_u32(var_0.x, 20u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(45127u, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(61559u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]), vec2<bool>(true, false)), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(var_0.x, 20u)]))));
    return ~(~(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(var_0.x, var_0.x)), ~var_0.yx) ^ abs(abs(var_0.zz))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = countOneBits(~select(max(-vec4<i32>(arg_3, 2147483647i, 30739i, u_input.a), vec4<i32>(-2147483647i, -67155i, 46627i, u_input.a)), vec4<i32>(-20123i, abs(2147483647i), u_input.a, arg_0.a), !(!global2[_wgslsmith_index_u32(0u, 20u)])));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-global3[_wgslsmith_index_u32(~4294967295u, 2u)], arg_0.a, arg_0.b, -firstTrailingBit(_wgslsmith_div_i32(-36004i, -25835i))), vec4<i32>(reverseBits(_wgslsmith_div_i32(~0i, 1i)), _wgslsmith_clamp_i32(min(arg_3, -39011i), ~(i32(-1i) * -1i), (u_input.a | arg_3) ^ global3[_wgslsmith_index_u32(arg_1.x, 2u)]), abs(-31951i & arg_0.c.x), arg_2.c.x));
    global4 = array<Struct_2, 14>();
    var_0 = vec4<i32>(2147483647i, _wgslsmith_div_i32(firstLeadingBit(~(arg_0.a << (arg_1.x % 32u))), -24382i), i32(-1i) * -1i, firstLeadingBit(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-8225i, arg_0.a, 79128i), vec3<i32>(-1i, arg_0.a, arg_2.a)), u_input.a)));
    global0 = true;
    return ~(-arg_3);
}

fn func_1() -> Struct_1 {
    let var_0 = ~4294967295u;
    let var_1 = 1u;
    global2 = array<bool, 20>();
    global4 = array<Struct_2, 14>();
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(var_1, 2u)]), vec2<i32>(global3[_wgslsmith_index_u32(var_1, 2u)], -49178i), vec2<i32>(global3[_wgslsmith_index_u32(var_0, 2u)], -26588i)), vec2<i32>(19623i, -49038i)), -func_2(vec2<f32>(611f, 518f), Struct_1(18164i, global3[_wgslsmith_index_u32(0u, 2u)], vec2<i32>(43403i, u_input.a), global1[_wgslsmith_index_u32(var_1, 29u)]), vec3<bool>(global2[_wgslsmith_index_u32(5834u, 20u)], global2[_wgslsmith_index_u32(var_1, 20u)], true), vec2<u32>(var_1, var_0))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(34291u, 2u)], -2890i), ~vec2<i32>(global3[_wgslsmith_index_u32(1u, 2u)], u_input.a)))) << (1u % 32u);
    return Struct_1(2147483647i, -1i, vec2<i32>(1i, func_4(Struct_1(~2147483647i, ~u_input.a, min(vec2<i32>(u_input.a, 30274i), vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_f_op_f32(min(338f, global1[_wgslsmith_index_u32(var_1, 29u)]))), firstTrailingBit(func_3()), Struct_1(global3[_wgslsmith_index_u32(reverseBits(var_1), 2u)], -1i, reverseBits(vec2<i32>(2147483647i, -24132i)), -432f), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1, ~0u), 2u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(var_1), ~33248u), 29u)]), global1[_wgslsmith_index_u32(~1u, 29u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 29>();
    global2 = array<bool, 20>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1166f, _wgslsmith_f_op_f32(max(var_0.d, var_0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], var_0.d)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(~select(79385u, 22364u, false), 29u)], var_0.d), vec2<f32>(607f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1028f - 1000f)))))));
    let var_2 = func_1();
    let var_3 = countOneBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~34586u), ~max(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(42078u, 4294967295u), ~vec2<u32>(4294967295u, 35813u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-524f))))) * 876f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * var_2.d)))) - _wgslsmith_f_op_f32(sign(707f))));
}

