struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(65686u, vec2<bool>(true, false), vec3<u32>(28322u, 4294967295u, 1u)), Struct_1(1u, vec2<bool>(true, true), vec3<u32>(4294967295u, 69233u, 0u)), Struct_1(4294967295u, vec2<bool>(true, true), vec3<u32>(4294967295u, 59352u, 1u)));

var<private> global1: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false));

var<private> global2: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(31945u, 1u, 26626u), vec3<u32>(36764u, 4294967295u, 55533u), vec3<u32>(4294967295u, 4294967295u, 24828u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(3326u, 11215u, 1u), vec3<u32>(0u, 46087u, 1u), vec3<u32>(53240u, 1u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 55619u, 14731u), vec3<u32>(4294967295u, 0u, 83705u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 4294967295u, 48171u), vec3<u32>(51619u, 31051u, 0u), vec3<u32>(1u, 0u, 20576u), vec3<u32>(10245u, 4294967295u, 1u), vec3<u32>(2606u, 1u, 38394u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global1 = array<vec4<bool>, 17>();
    let var_0 = 14824u;
    global2 = array<vec3<u32>, 17>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) - _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)), -288f, arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -159f))), vec4<u32>(50064u, arg_0.b.x, ~22815u, arg_0.c.a), global0[_wgslsmith_index_u32(0u, 3u)], ~(~42951u));
    var var_2 = _wgslsmith_dot_vec3_u32(abs(~max(vec3<u32>(65071u, 1u, 39911u) ^ var_1.b.yxz, var_1.c.c)), ~global2[_wgslsmith_index_u32(0u, 17u)]);
    return var_1.d;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    global2 = array<vec3<u32>, 17>();
    let var_0 = ~arg_1.c.x;
    global2 = array<vec3<u32>, 17>();
    var var_1 = u_input.a;
    var var_2 = ~_wgslsmith_clamp_i32(2147483647i, -u_input.b, u_input.b) | ~(_wgslsmith_mod_i32(1i >> (var_0 % 32u), 28300i) & u_input.a);
    return select(reverseBits(-vec4<i32>(-u_input.b, -2147483647i, ~u_input.b, -1i)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, u_input.a & 1i), -(~(-8508i))), ~(-12477i), reverseBits(~u_input.b), u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, 16958u), 17u)]);
}

fn func_2() -> f32 {
    let var_0 = abs(1u);
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 687f, 758f), vec3<f32>(-534f, -2159f, 524f)))))), global0[_wgslsmith_index_u32(var_0, 3u)], 1000f);
    global1 = array<vec4<bool>, 17>();
    let var_2 = firstLeadingBit(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-568f, -469f, 573f)))), Struct_1(4294967295u, vec2<bool>(u_input.a > -29351i, true), abs(min(global2[_wgslsmith_index_u32(var_0, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-387f * 548f)))))).xx);
    global0 = array<Struct_1, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(609f, 357f)) + _wgslsmith_f_op_f32(f32(-1f) * -144f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(~((_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-2001i, 2147483647i)) << (~vec2<u32>(23945u, 4294967295u) % vec2<u32>(32u))) << (max(firstLeadingBit(vec2<u32>(25415u, 18219u)), vec2<u32>(8503u, 75980u)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(u_input.a << (16132u % 32u), u_input.b), ~(-2147483647i) << (func_1(Struct_2(vec4<f32>(-511f, -671f, 1000f, -457f), vec4<u32>(47326u, 63776u, 0u, 4294967295u), global0[_wgslsmith_index_u32(21942u, 3u)], 4294967295u)) % 32u)) | vec2<i32>(2147483647i, u_input.b));
    let var_1 = Struct_1(select(0u, abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 19968u), global2[_wgslsmith_index_u32(~0u, 17u)])), true), vec2<bool>(true, true && all(vec2<bool>(true, true))), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(select(1u, 4294967295u, true), ~1u), 17u)]);
    var var_2 = true;
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1581f, 140f))), _wgslsmith_f_op_f32(sign(-133f)), all(select(vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(var_1.a, 17u)], true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1240f) * 1f))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.x, ~(~var_1.c.x), 4294967295u, 1u), vec4<u32>(select(var_1.a, var_1.a, true), ~var_1.a, 45159u, 84775u)), global0[_wgslsmith_index_u32(4294967295u, 3u)], 0u & var_1.c.x);
    let var_4 = select(abs(59828i), u_input.b, !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_3.a.x)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * -370f) - var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, ~(-2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(max(~var_4, func_3(var_3.a.zzy, global0[_wgslsmith_index_u32(var_1.a, 3u)], var_3.a.x).x), -6115i), vec2<i32>(var_0.x, _wgslsmith_add_i32(min(u_input.b, var_0.x), -34565i))), _wgslsmith_div_vec4_f32(var_3.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_3.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a + vec4<f32>(var_3.a.x, -1041f, 1000f, var_3.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, -1836f, var_3.a.x, 1492f))), !var_1.b.x))));
}

