struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

var<private> global2: u32 = 100030u;

var<private> global3: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(1142f, -1924f, -618f, -1000f), vec4<f32>(182f, 661f, 142f, 541f), vec4<f32>(-1585f, -395f, -2030f, 703f), vec4<f32>(-612f, 318f, 1449f, -756f), vec4<f32>(-3466f, 218f, -293f, 1000f), vec4<f32>(393f, 259f, -1251f, -760f), vec4<f32>(1258f, 250f, 137f, 1159f), vec4<f32>(-923f, -1000f, 677f, 681f), vec4<f32>(-1000f, 289f, 1027f, 661f), vec4<f32>(-1077f, 174f, 536f, 617f), vec4<f32>(-403f, 948f, -643f, -2255f), vec4<f32>(931f, -1123f, 786f, 172f), vec4<f32>(-1472f, -761f, -856f, -848f), vec4<f32>(336f, -2164f, -568f, -263f), vec4<f32>(-668f, 926f, 253f, -689f), vec4<f32>(565f, 1012f, -1000f, -224f), vec4<f32>(1000f, -1441f, 338f, -816f), vec4<f32>(-1372f, 1179f, 930f, 711f));

var<private> global4: array<i32, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global4 = array<i32, 32>();
    global0 = Struct_1(_wgslsmith_div_vec4_i32(~arg_0.a << (~vec4<u32>(4294967295u, u_input.b, u_input.a, 1u) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(arg_1.a, vec4<i32>(29461i, global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 32u)], arg_0.a.x))) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~global0.a, vec4<i32>(global0.a.x, global4[_wgslsmith_index_u32(u_input.b, 32u)], 6320i, -2147483647i)), _wgslsmith_add_vec4_i32(-global0.a, arg_0.a)), vec3<bool>(!arg_0.b.x, true & any(vec4<bool>(true, global0.b.x, global0.b.x, false)), arg_0.b.x), arg_1.c);
    global1 = _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(global0.a.wxx, global1.wwz), global1.x, -56296i, _wgslsmith_dot_vec2_i32(arg_0.a.wx, vec2<i32>(-2147483647i, global1.x))) | vec4<i32>(global0.a.x, global1.x, arg_1.a.x | 0i, -18924i), vec4<i32>(arg_1.a.x, _wgslsmith_clamp_i32(arg_0.a.x, global1.x, firstLeadingBit(_wgslsmith_clamp_i32(-12717i, arg_0.a.x, -554i))), abs(-arg_0.a.x) & _wgslsmith_mult_i32(global1.x << (u_input.b % 32u), ~2916i), -860i));
    let var_0 = arg_1;
    global1 = arg_1.a;
    return abs(0u);
}

fn func_2(arg_0: vec4<bool>) -> vec2<bool> {
    global0 = Struct_1(-global0.a, arg_0.ywz, -133f);
    var var_0 = vec4<u32>(~(~1u), u_input.b, ~13061u, ~_wgslsmith_mod_u32(func_3(Struct_1(global0.a, global0.b, global0.c), Struct_1(vec4<i32>(global4[_wgslsmith_index_u32(1u, 32u)], global1.x, 16157i, 2147483647i), vec3<bool>(true, global0.b.x, arg_0.x), global0.c)), ~u_input.a));
    global3 = array<vec4<f32>, 18>();
    var var_1 = ~reverseBits(~vec4<u32>(~4294967295u, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.x, u_input.a), vec4<u32>(u_input.a, var_0.x, u_input.a, var_0.x)), ~5907u));
    global1 = min(select(reverseBits(global0.a), global0.a ^ vec4<i32>(~(-1i), ~(-12265i), -2147483647i, firstTrailingBit(-1i)), all(select(!global0.b.yy, select(arg_0.wx, global0.b.xy, arg_0.x), select(arg_0.zw, vec2<bool>(global0.b.x, false), true)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(global0.a) << (vec4<u32>(var_1.x, 7958u, 26201u, 19183u) % vec4<u32>(32u)), global0.a), global0.a, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(global0.a.x, -1i, -1i, 43326i)), global0.a) >> ((~vec4<u32>(u_input.b, 428u, var_1.x, var_1.x) & vec4<u32>(var_0.x, 0u, 8067u, var_1.x)) % vec4<u32>(32u))));
    return !select(arg_0.zw, select(vec2<bool>(true, global4[_wgslsmith_index_u32(var_1.x, 32u)] <= global0.a.x), arg_0.xy, arg_0.zy), select(vec2<bool>(false & global0.b.x, false), global0.b.yx, vec2<bool>(arg_0.x, select(arg_0.x, false, global0.b.x))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(!global0.b.x && false, true)), func_2(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(global0.b.x, true, true, global0.b.x), vec4<bool>(false, global0.b.x, true, global0.b.x)))), ~(~7256u) < _wgslsmith_add_u32(0u, max(1u, u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0.c, -544f))))));
    global0 = Struct_1(vec4<i32>(countOneBits(~global1.x), global0.a.x, abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 15615i, arg_0, global4[_wgslsmith_index_u32(u_input.a, 32u)]), vec4<i32>(global4[_wgslsmith_index_u32(u_input.b, 32u)], arg_0, global0.a.x, -1i))), global4[_wgslsmith_index_u32(u_input.a, 32u)]), !global0.b, -1558f);
    global4 = array<i32, 32>();
    let var_2 = Struct_2(28482i & global1.x);
    return Struct_1(global0.a, select(global0.b, vec3<bool>(any(vec4<bool>(var_0.x, false, false, var_0.x)), false, select(true, all(vec4<bool>(true, global0.b.x, true, var_0.x)), true)), select(!vec3<bool>(global0.b.x, global0.b.x, true), global0.b, var_0.x)), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global0.a, global0.a) ^ -vec4<i32>(-2147483647i, global1.x, global4[_wgslsmith_index_u32(10579u, 32u)], 1i), vec4<i32>(i32(-1i) * -20086i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(35651i, 2147483647i, global1.x), global0.a.wzz), 1i)));
    let var_0 = u_input.b;
    let var_1 = Struct_2(min(~2147483647i, 0i));
    let var_2 = vec3<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-381f))), 135f);
    var var_3 = ~(~(~vec4<u32>(var_0, u_input.b, u_input.a, u_input.b))) & vec4<u32>(~(~5476u), reverseBits(1u), 4294967295u, 1u);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u | u_input.b, var_0, ~(~var_3.x), 15714u), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, u_input.a, u_input.a), var_3.yyx)), 1u, 13560u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_3.x, 9699u, 4294967295u, 47063u), vec4<u32>(9926u, 32769u, var_3.x, u_input.b), vec4<bool>(global0.b.x, global0.b.x, false, true)), firstTrailingBit(vec4<u32>(var_0, var_0, 1u, u_input.a))) & _wgslsmith_mult_u32(var_3.x ^ 4294967295u, abs(u_input.b))));
}

