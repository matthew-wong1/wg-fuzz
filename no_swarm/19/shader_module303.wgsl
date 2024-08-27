struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<bool>(false, true, true, true), i32(-2147483648), 46221u), Struct_1(vec4<bool>(true, true, true, false), -1i, 1326u), Struct_1(vec4<bool>(false, true, true, false), 13337i, 49860u), Struct_1(vec4<bool>(false, false, true, false), 2147483647i, 0u), Struct_1(vec4<bool>(false, false, false, false), -7124i, 17679u), Struct_1(vec4<bool>(false, false, false, true), 0i, 0u), Struct_1(vec4<bool>(false, false, true, true), 2147483647i, 1u), Struct_1(vec4<bool>(false, false, true, true), 12032i, 47268u), Struct_1(vec4<bool>(true, false, false, true), 2147483647i, 49487u), Struct_1(vec4<bool>(false, false, true, true), 1i, 1u), Struct_1(vec4<bool>(false, true, false, false), -26886i, 55109u), Struct_1(vec4<bool>(true, false, true, false), 2147483647i, 1u), Struct_1(vec4<bool>(false, false, false, false), -3881i, 34996u), Struct_1(vec4<bool>(false, true, true, true), -25290i, 1619u), Struct_1(vec4<bool>(false, true, false, true), 16425i, 0u), Struct_1(vec4<bool>(false, false, false, true), 10794i, 105937u), Struct_1(vec4<bool>(true, true, false, false), -1i, 4294967295u), Struct_1(vec4<bool>(true, false, false, false), -40642i, 19672u), Struct_1(vec4<bool>(false, true, true, true), 808i, 50168u), Struct_1(vec4<bool>(true, true, false, true), 43806i, 1u), Struct_1(vec4<bool>(false, false, true, true), -1i, 18680u), Struct_1(vec4<bool>(false, true, false, true), 2147483647i, 4294967295u), Struct_1(vec4<bool>(false, false, true, true), 0i, 0u), Struct_1(vec4<bool>(false, false, true, false), 0i, 2023u), Struct_1(vec4<bool>(true, true, true, false), 52892i, 0u), Struct_1(vec4<bool>(true, false, true, true), 2147483647i, 93465u), Struct_1(vec4<bool>(true, true, true, false), 1i, 75449u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<bool>) -> f32 {
    let var_0 = !arg_1.a.wyz;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, -159f, -320f, 420f)))), vec4<bool>(all(!arg_1.a.zyx), var_0.x, arg_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-238f)), arg_2.x, all(vec3<bool>(true, false, true)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2873f)))));
    var var_2 = 5257i;
    global1 = array<Struct_1, 27>();
    global0 = array<bool, 3>();
    return var_1.x;
}

fn func_3() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 27u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1383f, -2018f, 173f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-618f, 2066f, -274f) - vec3<f32>(-785f, -549f, 648f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2464f, -578f, -763f) - vec3<f32>(-1373f, -1074f, -118f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-191f, -1653f, 1000f) + vec3<f32>(1078f, -1868f, -1236f)), false)))), vec3<bool>(true, (false == var_0.a.x) && false, any(select(var_0.a.xxx, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, var_0.a.x), true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(323f - -764f), 1f)), -744f))));
    var var_2 = !select(!select(!var_0.a.yy, vec2<bool>(var_0.a.x, true), false), !vec2<bool>(var_0.a.x, var_0.a.x), false);
    let var_3 = Struct_1(var_0.a, -44440i, _wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(60394u, 1u, u_input.c) & vec3<u32>(u_input.c, var_0.c, var_0.c)), ~vec3<u32>(1u, 15805u, var_0.c), !select(var_0.a.wxz, var_0.a.zwz, var_0.a.yxw)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(u_input.c, var_0.c, var_0.c)) | countOneBits(reverseBits(vec3<u32>(u_input.c, 4294967295u, 4294967295u)))));
    var var_4 = _wgslsmith_add_i32(-(-22185i | (firstTrailingBit(28120i) ^ firstLeadingBit(9732i))), ~(-var_0.b & ~(~u_input.b)));
    return 1u;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_f_op_f32(ceil(197f));
    var var_1 = select(vec3<i32>(-11289i, -32647i, 57677i), -(~(vec3<i32>(u_input.b, u_input.b, u_input.b) >> (min(vec3<u32>(41887u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 4294967295u, 1u)) % vec3<u32>(32u)))), global0[_wgslsmith_index_u32(func_3(), 3u)]);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, (u_input.a.x << (1u % 32u)) ^ u_input.a.x), 27u)];
    let var_3 = var_2.c >> (1u % 32u);
    return Struct_1(!select(vec4<bool>(1i == var_1.x, true, global0[_wgslsmith_index_u32(48211u, 3u)] & false, true), vec4<bool>(true, var_3 <= 4294967295u, !var_2.a.x, !global0[_wgslsmith_index_u32(var_3, 3u)]), true), -36113i, 23707u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1929f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(0i, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(24642u, 3u)], global0[_wgslsmith_index_u32(28275u, 3u)], false, false), u_input.b, 1u), vec4<f32>(-135f, 606f, -1165f, 1444f), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 3u)]))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-332f)) - _wgslsmith_f_op_f32(select(-375f, 460f, false))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1525f)), _wgslsmith_f_op_f32(trunc(-378f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-135f)))), _wgslsmith_f_op_f32(-1667f - _wgslsmith_f_op_f32(617f - 517f)))));
    let var_1 = vec2<i32>(u_input.b, u_input.b);
    let var_2 = ~u_input.c;
    let var_3 = global0[_wgslsmith_index_u32(~1u, 3u)];
    global0 = array<bool, 3>();
    let var_4 = func_2();
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b | -var_1.x, max(_wgslsmith_add_i32(u_input.b, 27089i), -var_4.b)), var_0, var_1, u_input.a & _wgslsmith_mod_vec2_u32(~u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(var_1, var_1));
}

