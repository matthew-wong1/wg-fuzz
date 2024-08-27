struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(0u, 2164u, 4294967295u), vec3<u32>(1u, 50974u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 8854u), vec3<u32>(15126u, 3795u, 62905u), vec3<u32>(32076u, 4294967295u, 28481u), vec3<u32>(1u, 4294967295u, 12812u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 168871u, 21085u), vec3<u32>(68641u, 5011u, 4294967295u), vec3<u32>(4294967295u, 0u, 25526u), vec3<u32>(75718u, 1u, 5434u));

var<private> global1: vec4<f32> = vec4<f32>(151f, 146f, -521f, 793f);

var<private> global2: array<vec4<f32>, 7>;

var<private> global3: array<i32, 29> = array<i32, 29>(-9505i, -1i, 45697i, 45297i, i32(-2147483648), -5008i, 0i, -42011i, 39266i, 12913i, i32(-2147483648), 1i, -1i, -1i, 2147483647i, -1i, -11942i, 26999i, -1i, -60483i, 2147483647i, -1i, 0i, -1i, 1i, -1i, -1i, i32(-2147483648), 2147483647i);

var<private> global4: array<f32, 27> = array<f32, 27>(-938f, -691f, 1125f, 276f, 1658f, 1223f, 274f, -927f, 615f, -1782f, 379f, 1991f, -2080f, 1083f, 2195f, 1059f, -1366f, -1000f, -126f, 473f, 1073f, -483f, -569f, 812f, 192f, -166f, -502f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> vec4<i32> {
    global4 = array<f32, 27>();
    let var_0 = false;
    global4 = array<f32, 27>();
    global0 = array<vec3<u32>, 13>();
    global1 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~50645u, 7u)]);
    return arg_1;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.zw - vec2<f32>(-2354f, _wgslsmith_f_op_f32(global1.x * global1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1.yx)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_1.c.x))) + global1.xw)));
    let var_1 = arg_1;
    var var_2 = var_1;
    let var_3 = _wgslsmith_mod_u32(select(1u, 31713u, any(select(vec4<bool>(true, var_1.e, false, false), vec4<bool>(var_1.a.x, var_2.a.x, arg_1.e, false), vec4<bool>(true, var_1.e, arg_1.a.x, arg_1.a.x)))), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 87112u), vec2<bool>(true, false)), select(vec2<u32>(u_input.a, 3381u), vec2<u32>(u_input.a, u_input.b), var_1.a.xz) & select(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 4294967295u), var_1.a.yy))) | 0u;
    var var_4 = var_1;
    return ~_wgslsmith_add_u32(var_3, ~(4294967295u | select(18602u, 0u, var_2.e)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = ~vec3<i32>(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(4294967295u, 29u)] ^ -2147483647i, global3[_wgslsmith_index_u32(~1u, 29u)], 1i), 1i & _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(75118u, 29u)], -6557i, arg_1), func_2(-210f, vec4<i32>(43706i, global3[_wgslsmith_index_u32(18318u, 29u)], arg_2.d, -30653i))), _wgslsmith_mod_i32(-32884i, _wgslsmith_sub_i32(2147483647i, arg_1)));
    var var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = vec3<u32>(~(~func_3(select(var_2.a.yx, var_1.a.zz, var_1.a.zy), Struct_1(vec3<bool>(true, arg_0.x, arg_2.e), global1.x, var_2.c, var_1.d, var_1.a.x))), _wgslsmith_mult_u32(u_input.b, ~(1u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 24576u), vec2<u32>(1u, u_input.b)))), ~u_input.b);
    return vec3<bool>(!(!var_1.e), _wgslsmith_f_op_f32(max(-137f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_3.x, 27u)]))))) < global1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(34012u, 38264u), 7u)];
    var var_1 = var_0.xx;
    var var_2 = Struct_1(func_1(vec2<bool>(true, true), firstTrailingBit(-_wgslsmith_mult_i32(7260i, -13336i)), Struct_1(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), 158f, _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(4294967295u, 7u)]), -_wgslsmith_mod_i32(56121i, global3[_wgslsmith_index_u32(0u, 29u)]), true)), -884f, _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~(~u_input.a), 7u)] * global2[_wgslsmith_index_u32(1u, 7u)]), reverseBits(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.b, 29u)], u_input.c)), true);
    let var_3 = 1i;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(var_0.zzz, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, 1615f, global4[_wgslsmith_index_u32(u_input.b, 27u)]) - global1.xwz) + vec3<f32>(1886f, 805f, var_2.b))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, var_0.x) + var_2.c.yzx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xww)), var_2.a)))), func_1(vec2<bool>(true, true), 8573i, Struct_1(!func_1(var_2.a.zx, 2147483647i, Struct_1(var_2.a, 927f, vec4<f32>(var_1.x, 482f, var_0.x, 2056f), global3[_wgslsmith_index_u32(u_input.a, 29u)], true)), global4[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(0u, u_input.a)), 27u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c)), ~0i, all(vec4<bool>(var_2.e, true, var_2.a.x, true)) | true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 21806u, u_input.a), ~global0[_wgslsmith_index_u32(u_input.a, 13u)]), ~_wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], vec3<u32>(36122u, 4294967295u, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 13u)])), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.b), 1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, u_input.a), _wgslsmith_mod_u32(u_input.b, 4294967295u)), u_input.b), vec4<i32>(38256i, min(-(~(-7801i)), -u_input.c), ~_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(1i, -3822i)), abs(countOneBits(reverseBits(var_3)))), vec2<i32>(var_2.d, max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, -13865i, 39205i, -4386i), vec4<i32>(u_input.c, var_2.d, var_2.d, var_2.d)), 21050i) ^ reverseBits(24203i)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, u_input.a)), ~vec3<u32>(79042u, 23747u, u_input.b)), _wgslsmith_div_u32(4294967295u | u_input.a, min(u_input.b, 0u))));
}

