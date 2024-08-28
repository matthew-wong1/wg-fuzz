struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 18> = array<f32, 18>(396f, 1290f, 1190f, 821f, 1306f, 1048f, -589f, -1000f, -512f, 1196f, -412f, 151f, 1041f, -1969f, -1000f, -387f, 1772f, 799f);

var<private> global2: vec2<f32> = vec2<f32>(-235f, -527f);

var<private> global3: vec3<i32>;

var<private> global4: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-703f - _wgslsmith_f_op_f32(f32(-1f) * -290f)), global1[_wgslsmith_index_u32(~8186u, 18u)]), _wgslsmith_f_op_f32(step(-1316f, -137f)));
    let var_1 = Struct_1(false, vec2<u32>(arg_2, ~_wgslsmith_div_u32(arg_0, arg_1.b.x) << (arg_2 % 32u)), -17757i & global3.x);
    var var_2 = global4.x;
    var_2 = all(global4.xyz);
    let var_3 = false;
    return global3.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = select(!vec2<bool>(arg_2.a, (76511u << (arg_2.b.x % 32u)) > 1u), vec2<bool>(true, global4.x), !(global2.x != global2.x));
    var_0 = select(!(!global4.yy), vec2<bool>(false, func_3(4294967295u, Struct_1(false, arg_2.b, 13997i), 4294967295u) > ~abs(u_input.c)), (arg_2.a || var_0.x) | true);
    let var_1 = _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 1u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_2.b.x, arg_2.b.x, 1u), reverseBits(vec4<u32>(arg_2.b.x, 19289u, 0u, 0u)))), ~(~abs(vec4<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 1u))));
    let var_2 = Struct_1(false, ~(~var_1.wz), _wgslsmith_mult_i32(38592i, -1i));
    let var_3 = _wgslsmith_div_i32(-arg_1, max((_wgslsmith_clamp_i32(-9223i, 2147483647i, global3.x) ^ (global3.x & -2147483647i)) & (i32(-1i) * -803i), ~u_input.a.x));
    return -1i;
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    return 26211u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> u32 {
    var var_0 = max(func_4(vec3<i32>(-(~global3.x), 40728i & func_2(vec4<f32>(arg_1.x, arg_1.x, -265f, arg_1.x), global3.x, Struct_1(false, vec2<u32>(4294967295u, 1u), -1i)), -2147483647i)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), select(select(firstTrailingBit(vec2<u32>(33800u, 43470u)), vec2<u32>(0u, 5662u), vec2<bool>(true, true)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(30384u, 4294967295u)), any(vec2<bool>(false, true)))));
    let var_1 = Struct_1(all(!select(select(vec4<bool>(global4.x, false, true, true), arg_0, arg_0), !arg_0, !arg_0)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(28556u, _wgslsmith_add_u32(4294967295u, 0u))), vec2<u32>(60964u, abs(1u))), ~(~(~u_input.c & ~u_input.c)));
    global4 = select(vec4<bool>(var_1.a, !all(vec4<bool>(true, true, false, var_1.a)), global4.x, !global4.x), !vec4<bool>(true, var_1.b.x >= _wgslsmith_div_u32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(round(arg_1.x)) != global1[_wgslsmith_index_u32(13192u, 18u)], !var_1.a), select(!arg_0, select(!(!arg_0), vec4<bool>(any(arg_0), true, true, all(arg_0.xyy)), false), false));
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    return (79597u << (~(_wgslsmith_sub_u32(4294967295u, var_1.b.x) >> (7129u % 32u)) % 32u)) & (var_1.b.x << (13833u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u ^ func_1(vec4<bool>(global4.x, false, any(vec3<bool>(global4.x, false, false)), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(134456u, 18u)], 405f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1525f, global1[_wgslsmith_index_u32(8385u, 18u)]) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 18u)], 995f)))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -130f);
    let var_1 = ~(~(~vec3<i32>(~u_input.c, global3.x, _wgslsmith_div_i32(2147483647i, -2147483647i))));
    let var_2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), global2.x);
    global1 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xy, firstLeadingBit(vec2<u32>(~4294967295u, var_0)), ~vec2<i32>(-1i, 32367i));
}

