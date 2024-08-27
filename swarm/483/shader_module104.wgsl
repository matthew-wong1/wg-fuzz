struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(0u, 785u, 13136u, 0u, 39187u, 21889u, 4294967295u, 43622u, 6192u, 29869u, 4294967295u, 4294967295u, 44662u, 32451u, 1u, 4294967295u, 0u, 111421u, 4294967295u, 0u, 1u, 4294967295u, 1u, 1u, 0u, 26659u, 59287u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    return 4294967295u;
}

fn func_3() -> vec3<u32> {
    let var_0 = false;
    return select(max(vec3<u32>(~global0[_wgslsmith_index_u32(24220u, 27u)], firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), 1149u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 51519u, u_input.a), vec3<u32>(u_input.a, 27401u, 1u))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(31606u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], 1u), vec3<u32>(69643u, global0[_wgslsmith_index_u32(68726u, 27u)], 20049u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 27285u), vec3<u32>(4294967295u, u_input.a, u_input.a)), 1u, ~u_input.a)), vec3<bool>(var_0, var_0, var_0)) ^ max(_wgslsmith_clamp_vec3_u32(~max(vec3<u32>(87631u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19511u, 27u)], 27u)], 27u)], u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(0u, 27u)], u_input.a, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(2290u, 68042u, 4294967295u) << (vec3<u32>(global0[_wgslsmith_index_u32(1u, 27u)], 73458u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(1u, 18468u, 62662u)), ~min(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 27u)], 4554u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], 4294967295u))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 0u, global0[_wgslsmith_index_u32(8570u, 27u)])) ^ max(vec3<u32>(u_input.a, 39098u, 4294967295u), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(33298u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(26185u, 27u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]), vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], 4294967295u, global0[_wgslsmith_index_u32(9081u, 27u)]) % vec3<u32>(32u)))));
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    var var_0 = -1614f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(496f))), true))) - _wgslsmith_f_op_f32(-1f));
    global0 = array<u32, 27>();
    var var_2 = Struct_2(~20732u, Struct_1(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true, true, true), vec4<i32>(~0i & _wgslsmith_dot_vec2_i32(vec2<i32>(29341i, 34069i), vec2<i32>(-21431i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(3574i, 0i, 1i) >> (arg_0 % vec3<u32>(32u)), -vec3<i32>(-18859i, -2661i, 0i)), -6730i, ~1i)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(641f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -237f)))))));
    return _wgslsmith_f_op_f32(min(937f, 910f));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(11006u, 27u)], 0u), vec3<u32>(u_input.a, 1u, u_input.a)) ^ func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - -1065f))))));
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return Struct_2(~24154u, Struct_1(vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), !(-625f != var_0.x), false, true), _wgslsmith_sub_vec4_i32(vec4<i32>(8496i, reverseBits(-1i), ~(-1i), -1i), countOneBits(abs(vec4<i32>(0i, -29280i, -13444i, 2147483647i))))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.a.xwz;
    var var_1 = arg_0;
    var var_2 = Struct_3(arg_1, Struct_2(~select(u_input.a >> (78795u % 32u), _wgslsmith_add_u32(38855u, arg_0.a), any(vec2<bool>(arg_2.a.x, arg_2.a.x))), Struct_1(!(!vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, false, var_0.x)), countOneBits(vec4<i32>(arg_1, -37091i, var_1.b.b.x, -9660i)))), ~(~select(4294967295u, ~1u, func_2(824f).b.a.x)));
    var var_3 = firstLeadingBit(~(~(vec3<u32>(1u, u_input.a, 39947u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 102438u, 37863u), vec3<u32>(1u, global0[_wgslsmith_index_u32(arg_0.a, 27u)], var_1.a)) % vec3<u32>(32u)))));
    var var_4 = var_1.b.a.x;
    return ~(~(~(~u_input.a)) & _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(26983u, u_input.a, arg_0.a, var_1.a), vec4<u32>(0u, 84108u, var_2.c, 1u), vec4<u32>(0u, 48101u, 1u, arg_0.a)), ~vec4<u32>(var_2.b.a, arg_0.a, 0u, 18726u)));
}

fn func_6(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    var var_0 = Struct_1(!select(vec4<bool>(!arg_1, arg_1, true, global0[_wgslsmith_index_u32(9378u, 27u)] >= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 27u)], 27u)]), !select(vec4<bool>(true, false, false, arg_1), vec4<bool>(true, true, false, arg_1), arg_1), !(!vec4<bool>(true, arg_1, arg_1, false))), vec4<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-22033i, -10140i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(31797i, -5830i, 2147483647i), vec3<i32>(-10037i, 17946i, 2147483647i)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(11027i, 46619i, -45433i, -1i) << (abs(vec4<u32>(u_input.a, 49675u, 6301u, 1667u)) % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-60828i, -4116i, -1i, 0i), vec4<i32>(-2147483647i, 17915i, 2147483647i, -2147483647i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2555i, -1i, ~(-1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(68333i, -40138i, -16232i), vec3<i32>(-2147483647i, -23163i, -25594i), vec3<i32>(1918i, -1i, 2147483647i)) >> (vec3<u32>(4294967295u, 0u, 22757u) % vec3<u32>(32u))), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -9411i), vec2<i32>(1i, 4000i) << (vec2<u32>(20325u, u_input.a) % vec2<u32>(32u)))));
    let var_1 = func_2(-667f);
    let var_2 = Struct_2(~u_input.a, var_1.b);
    let var_3 = vec4<i32>(-countOneBits(0i) & -(~(~var_0.b.x)), _wgslsmith_add_i32(-2147483647i, var_1.b.b.x), _wgslsmith_add_i32(-var_2.b.b.x, 2147483647i), -countOneBits(abs(1i)));
    var var_4 = func_2(_wgslsmith_f_op_f32(-1f)).b;
    return var_4.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i, func_6(vec4<u32>(abs(28261u), func_1(vec3<bool>(true, true, true), 4294967295u, select(vec2<bool>(true, false), vec2<bool>(false, true), false)), reverseBits(0u), func_5(func_2(-276f), -1925i, func_2(820f).b)), any(func_2(_wgslsmith_f_op_f32(f32(-1f) * -303f)).b.a.yzw)), 0i);
    global0 = array<u32, 27>();
    var var_1 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-53515i, 8603i, var_0.x) | vec3<i32>(var_0.x, var_0.x, var_0.x), ~vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(var_0.x, 7729i, 26379i)), vec3<i32>(var_0.x, _wgslsmith_sub_i32(2147483647i, var_0.x), -1i & var_0.x)), -22100i), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(26206u, 0u) >> (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(56349u, 49015u)) | vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], 1u)), func_2(-637f).b), 1u);
    let var_2 = ~firstTrailingBit(max(~vec4<u32>(var_1.c, var_1.c, var_1.c, var_1.c), min(vec4<u32>(global0[_wgslsmith_index_u32(101711u, 27u)], 88047u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19624u, 27u)], 27u)], 27u)], var_1.b.a), vec4<u32>(global0[_wgslsmith_index_u32(var_1.c, 27u)], u_input.a, var_1.c, var_1.c) ^ vec4<u32>(1u, 0u, 25983u, 1u))));
    var_1 = Struct_3(_wgslsmith_div_i32(~_wgslsmith_sub_i32(func_6(var_2, true), var_1.a), -2147483647i), var_1.b, ~global0[_wgslsmith_index_u32(var_1.b.a, 27u)]);
    var var_3 = Struct_3(var_0.x, func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(429f * -767f), _wgslsmith_f_op_f32(1000f * 940f)))))), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], var_1.c, 0u, 4294967295u), vec4<u32>(52504u, 7442u, 2656u, u_input.a)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.a) << (vec4<u32>(global0[_wgslsmith_index_u32(45290u, 27u)], var_1.b.a, 4294967295u, 14366u) % vec4<u32>(32u)), var_2), var_2, ~109369u >= func_2(-376f).a)));
    var var_4 = max(vec3<i32>(-1i) * -(~(~var_3.b.b.b.xzx)), var_1.b.b.b.wzw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1338f - -595f)) - 477f), 0u, ~abs(~firstTrailingBit(22089u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2379f), _wgslsmith_f_op_f32(f32(-1f) * -582f)) - vec2<f32>(2390f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

