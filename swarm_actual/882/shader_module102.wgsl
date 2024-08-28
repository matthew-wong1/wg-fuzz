struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(0u, 10983u, 12907u), vec3<u32>(0u, 23380u, 109137u), vec3<u32>(60365u, 110944u, 93245u), vec3<u32>(1u, 9698u, 71792u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 65021u, 31933u), vec3<u32>(35670u, 4294967295u, 1u), vec3<u32>(8380u, 41561u, 0u), vec3<u32>(6363u, 0u, 17272u), vec3<u32>(28403u, 0u, 43729u), vec3<u32>(1u, 24093u, 4294967295u), vec3<u32>(1183u, 42637u, 57186u), vec3<u32>(4294967295u, 22023u, 4294967295u), vec3<u32>(1u, 77387u, 0u));

var<private> global2: array<vec2<u32>, 7>;

var<private> global3: bool = true;

var<private> global4: u32 = 36929u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = vec4<i32>(select(arg_1.b.a & ((u_input.a >> (arg_2 % 32u)) >> (_wgslsmith_add_u32(arg_2, arg_2) % 32u)), 17000i, arg_0.x & true), arg_1.b.a, -abs(2147483647i), u_input.a);
    global0 = array<Struct_3, 20>();
    var_0 = -(vec4<i32>(u_input.a, ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.b.a, 1i, u_input.a), vec4<i32>(-63589i, var_0.x, -1i, u_input.a)), _wgslsmith_clamp_i32(u_input.a, var_0.x, u_input.a)) ^ ~max(vec4<i32>(-49915i, arg_1.b.a, arg_1.b.a, 1i), vec4<i32>(arg_1.b.a, var_0.x, 14532i, var_0.x))) ^ firstLeadingBit(reverseBits(vec4<i32>(var_0.x, ~75i, u_input.a, var_0.x)));
    let var_1 = var_0.yy;
    return select(countOneBits(-max(-3154i, var_1.x)), 2147483647i, arg_1.d);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    global1 = array<vec3<u32>, 14>();
    let var_0 = arg_0;
    var var_1 = -func_3(vec2<bool>(false, !arg_1.b & false), Struct_4(arg_1.b, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1053f, 997f, 1954f, -426f))), true), ~83597u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1507f, -1993f))) - _wgslsmith_f_op_f32(round(-651f))));
    let var_2 = ~abs(-reverseBits(select(vec3<i32>(arg_1.a, -2147483647i, 2147483647i), vec3<i32>(u_input.a, -16589i, 34302i), vec3<bool>(arg_1.b, true, arg_1.b))));
    var var_3 = false;
    return all(vec4<bool>(!any(vec3<bool>(arg_1.b, false, arg_1.b)), arg_1.b, any(select(vec2<bool>(false, true), vec2<bool>(true, arg_1.b), vec2<bool>(arg_1.b, true))), arg_1.b)) && true;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> bool {
    global4 = max(arg_1.a, arg_2.a & ~arg_1.a);
    global1 = array<vec3<u32>, 14>();
    var var_0 = u_input.a;
    var_0 = -1i;
    var var_1 = Struct_1(arg_2.a, 16686u);
    return arg_3;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> u32 {
    global2 = array<vec2<u32>, 7>();
    let var_0 = Struct_2(reverseBits(~(-1i)) | _wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, reverseBits(-12040i)), arg_1.a, -24186i), false);
    var var_1 = all(!select(vec3<bool>(!arg_1.b, arg_1.b, var_0.b & arg_1.b), vec3<bool>(false, all(vec3<bool>(false, arg_1.b, false)), false), !any(vec2<bool>(false, false))));
    var_1 = func_4(Struct_4(false, var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1433f, -1653f, -653f, -123f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-869f, 1319f, -766f, 643f) - vec4<f32>(198f, -274f, 3054f, 1145f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-839f, 196f, -2305f, -2270f) + vec4<f32>(385f, -388f, 707f, 980f)))), false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 9364u, 9212u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 17712u))), 7u)], ~abs(abs(vec2<u32>(0u, 1u)))), 20u)], Struct_3(1u), func_2(global0[_wgslsmith_index_u32(10119u, 20u)], arg_1));
    let var_2 = -(~abs(vec4<i32>(2147483647i, var_0.a, i32(-1i) * -1i, var_0.a)));
    return max(35802u, reverseBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~4294967295u | (min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 8340u), func_1(true, Struct_2(u_input.a, true))), 72392u) << (1u % 32u));
    var var_0 = vec2<f32>(1482f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1647f - -430f)));
    global4 = 1140u | firstTrailingBit(select(4966u, firstLeadingBit(64936u << (0u % 32u)), true));
    global1 = array<vec3<u32>, 14>();
    let var_1 = -(u_input.a | u_input.a) ^ max(~_wgslsmith_mult_i32(-13293i & u_input.a, 21264i), ~_wgslsmith_add_i32(i32(-1i) * -1193i, firstTrailingBit(0i)));
    var var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.x))))));
}

