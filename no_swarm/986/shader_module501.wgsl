struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<i32, 21>;

var<private> global2: vec2<i32> = vec2<i32>(3687i, i32(-2147483648));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = vec3<bool>(true, !arg_2.x, !(!all(!vec4<bool>(true, arg_2.x, false, false))));
    global2 = vec2<i32>(_wgslsmith_mult_i32(~(-1i), -(~global2.x)), 0i);
    var var_1 = var_0;
    var var_2 = global0[_wgslsmith_index_u32(~15671u, 26u)];
    var var_3 = reverseBits(min(~vec3<i32>(2181i, arg_0, arg_0), vec3<i32>(global1[_wgslsmith_index_u32(~arg_1.x, 21u)], arg_0, 1i))) ^ vec3<i32>(~(~arg_0), -30811i >> (var_2.a.x % 32u), arg_0);
    return !select(vec4<bool>(!var_1.x, arg_2.x, var_2.c, true & any(vec4<bool>(var_2.c, var_1.x, var_2.c, var_0.x))), !(!select(vec4<bool>(var_1.x, arg_2.x, true, true), vec4<bool>(var_1.x, false, true, false), arg_2.x)), vec4<bool>(false, arg_2.x, false, select(var_2.c, false, arg_2.x)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> bool {
    var var_0 = vec4<i32>(-(arg_0 | 19660i), -1i, 1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i) * -vec3<i32>(-10026i, arg_0, 0i))) & countOneBits(min(vec4<i32>(-u_input.a.x, -59908i, 1i, _wgslsmith_clamp_i32(40536i, -1i, -32801i)), select(abs(vec4<i32>(29464i, -2147483647i, u_input.c, 6167i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(1u, 21u)], 2147483647i, global1[_wgslsmith_index_u32(20000u, 21u)]), vec4<i32>(0i, 1i, 27096i, -2147483647i), vec4<i32>(-16774i, global2.x, global1[_wgslsmith_index_u32(22077u, 21u)], global1[_wgslsmith_index_u32(arg_2.x, 21u)])), vec4<bool>(false, false, false, false))));
    var var_1 = -1i;
    let var_2 = vec4<i32>(20713i, u_input.a.x, 33544i, i32(-1i) * -12814i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, -113f, arg_1.x, arg_1.x))))));
    var var_4 = Struct_1(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~_wgslsmith_clamp_vec3_u32(arg_2.zzw, vec3<u32>(arg_2.x, 55542u, 1177u), vec3<u32>(0u, arg_2.x, arg_2.x))), arg_2.yxx, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x) & vec3<u32>(arg_2.x, 4294967295u, 54293u), ~vec3<u32>(arg_2.x, arg_2.x, arg_2.x)) << (arg_2.yyx % vec3<u32>(32u))), arg_2.x, var_2.x < _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0, -1i), var_0.ywz), _wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(-1i, u_input.a.x))));
    return !func_2(arg_0, max(vec3<u32>(var_4.a.x, 16153u, 4294967295u) >> (vec3<u32>(var_4.a.x, 4294967295u, var_4.b) % vec3<u32>(32u)), var_4.a), func_2(abs(abs(var_2.x)), ~reverseBits(arg_2.zzw), !select(arg_3.yxy, arg_3.yzy, true), firstLeadingBit(~vec2<i32>(-36986i, -1i))).zyz, ~var_0.xy).x;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<f32>) -> vec4<u32> {
    return _wgslsmith_div_vec4_u32(min(vec4<u32>(countOneBits(firstLeadingBit(4294967295u)), 0u, 4294967295u, 20284u), vec4<u32>(1u, 1u, 1u, 1u) ^ vec4<u32>(1u, 13123u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(56289u, 0u, 0u, 1u), vec4<u32>(1u, 4294967295u, 33632u, 17626u)))), vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 26u)];
    var var_1 = global0[_wgslsmith_index_u32(0u, 26u)];
    global0 = array<Struct_1, 26>();
    global2 = u_input.a.zy;
    global0 = array<Struct_1, 26>();
    return func_4(!vec4<bool>(true, true, !arg_0 && var_0.c, false), !func_3(u_input.c, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(578f, 227f))), reverseBits(vec4<u32>(1u, var_0.b, 1u, 72907u) & vec4<u32>(var_0.a.x, 1u, 1u, var_0.a.x)), !func_2(global1[_wgslsmith_index_u32(arg_2.x, 21u)], vec3<u32>(var_1.a.x, 4294967295u, 83646u), vec3<bool>(arg_0, var_0.c, arg_0), u_input.a.xz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1289f, -864f, 945f)), _wgslsmith_div_vec3_f32(vec3<f32>(-3028f, 955f, -1000f), vec3<f32>(810f, 1283f, 1270f)), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, var_0.c, var_1.c), vec3<bool>(var_1.c, var_1.c, false)))))));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_1(~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4294967295u) & abs(arg_1.zwz), _wgslsmith_mod_vec3_u32(~arg_1.xxx, func_4(vec4<bool>(true, arg_0, arg_0, false), arg_0, vec3<f32>(266f, -622f, 359f)).wwx)), func_1(!(!(!arg_0)), _wgslsmith_clamp_u32(arg_1.x, reverseBits(arg_1.x), 1u), select(func_1(arg_1.x != arg_1.x, ~arg_1.x, select(vec3<u32>(28032u, 74535u, arg_1.x), arg_1.wwy, arg_0)).wxz, vec3<u32>(62352u, arg_1.x | 61302u, ~0u), select(vec3<bool>(false, false, false), !vec3<bool>(arg_0, false, arg_0), false))).x, true);
    global2 = vec2<i32>(u_input.d, i32(-1i) * -23486i);
    global1 = array<i32, 21>();
    var var_1 = Struct_1(vec3<u32>(~arg_1.x & 1u, ~_wgslsmith_mod_u32(1u, var_0.b), arg_1.x) << (abs(arg_1.zxy) % vec3<u32>(32u)), ~var_0.b, !(!(!arg_0 & true)));
    global0 = array<Struct_1, 26>();
    return true;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = vec2<u32>(~(~(1u >> (arg_0.a.x % 32u))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(abs(arg_0.a.x >> (arg_0.a.x % 32u)), arg_0.a.x)));
    let var_1 = 24125i;
    global1 = array<i32, 21>();
    let var_2 = reverseBits(countOneBits(-44705i));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4312u, firstTrailingBit(_wgslsmith_mult_u32(45427u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, arg_0.a.x), _wgslsmith_clamp_vec3_u32(arg_0.a, vec3<u32>(arg_0.b, var_0.x, 0u), arg_0.a))))), 26u)];
    return global0[_wgslsmith_index_u32(1u, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    var var_0 = func_6(global0[_wgslsmith_index_u32(firstLeadingBit(~(~select(34900u, 71420u, false))), 26u)], vec4<bool>(false, false, func_5(true, _wgslsmith_sub_vec4_u32(vec4<u32>(51596u, 24945u, 0u, 85457u), func_1(false, 0u, vec3<u32>(1u, 35490u, 54192u)))), true));
    var var_1 = 679f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-369f, -616f), vec2<f32>(184f, 1963f), false)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(708f, 614f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f + -538f) * _wgslsmith_f_op_f32(-389f - -329f)), -1069f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(select(var_0.a, var_0.a, !select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(false, false, var_0.c), vec3<bool>(var_0.c, true, false))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 72180u, 0u, 4294967295u), vec4<u32>(4294967295u, var_0.b, 1u, var_0.b)), 62327u & var_0.a.x), 0u, 1u), var_0.a), var_2.x, select(var_0.a.yx, var_0.a.zz, _wgslsmith_f_op_f32(trunc(651f)) < _wgslsmith_f_op_f32(min(752f, -449f))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(~var_0.b, 91950u, func_4(vec4<bool>(false, false, false, var_0.c), var_0.c, vec3<f32>(var_2.x, 392f, -1443f)).x), max(~vec3<u32>(var_0.a.x, var_0.a.x, 55705u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 11363u, 7804u), var_0.a)), var_0.c), vec3<u32>(var_0.b, 4294967295u, ~countOneBits(1u))));
}

