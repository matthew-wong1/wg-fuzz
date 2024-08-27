struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-130f, -950f, 1016f);

var<private> global1: array<f32, 9> = array<f32, 9>(1154f, -449f, -122f, -384f, 1516f, 1264f, -563f, 804f, 1121f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global0.x, -1080f))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, global0.x, -2419f)), vec3<f32>(arg_2, -283f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-250f, 146f, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<f32>(global0.x, global0.x, 258f))))))))));
    var var_0 = ~4294967295u;
    var var_1 = arg_3.d.x;
    global1 = array<f32, 9>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-244f, _wgslsmith_f_op_f32(step(arg_3.b, 411f)), arg_3.a) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, arg_3.a, 131f)))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1739f, -303f, 651f) * vec3<f32>(arg_2, arg_3.a, 863f)), vec3<f32>(1f, 1f, 1f), arg_3.d.x))));
    return arg_3.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_1 {
    global1 = array<f32, 9>();
    let var_0 = vec4<bool>(!(!(true | func_3(u_input.b.x, arg_3.a.d.c, global0.x, Struct_1(1426f, 696f, arg_0.c, arg_3.a.d.d, 237f)))), (-arg_0.c & -(-26811i >> (1u % 32u))) >= _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~u_input.b.xyz, vec3<i32>(-2147483647i, arg_3.a.d.c, u_input.b.x)), max(arg_0.c >> (arg_3.b.x % 32u), ~arg_0.c)), all(arg_0.d.xw), !all(select(vec3<bool>(false, arg_3.a.d.d.x, arg_3.a.d.d.x), arg_0.d.xwx, true)) && (true || (false | !arg_2.x)));
    global1 = array<f32, 9>();
    var var_1 = 2147483647i;
    global1 = array<f32, 9>();
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-256f + arg_0.e) * -809f)))), arg_0.b, ~(i32(-1i) * -1813i), vec4<bool>(func_3(abs(i32(-1i) * -2147483647i), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f * -124f)), arg_3.a.d), false & (max(-1i, -2147483647i) != min(arg_3.a.d.c, 1i)), arg_0.d.x, true), -808f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(137f))), _wgslsmith_f_op_f32(exp2(func_2(Struct_1(arg_3.e, -1015f, arg_3.c, arg_1.d, global1[_wgslsmith_index_u32(53900u, 9u)]), -617f, arg_1.d.xww, Struct_3(Struct_2(1u, u_input.a, vec4<f32>(arg_1.e, -231f, 471f, arg_3.a), arg_3), vec3<u32>(u_input.a.x, 4294967295u, 10514u), -614f, u_input.a.x)).e))))) >= _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -977f)))));
    let var_1 = Struct_3(Struct_2(u_input.a.x, vec3<u32>(~abs(u_input.a.x), u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global0.x, 453f, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))))), func_2(func_2(Struct_1(-511f, -1267f, arg_1.c, vec4<bool>(arg_3.d.x, true, false, arg_0), -1128f), global1[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_3.d.yyz, Struct_3(Struct_2(u_input.a.x, vec3<u32>(u_input.a.x, 52676u, u_input.a.x), vec4<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 415f, global0.x), Struct_1(1822f, -531f, u_input.b.x, vec4<bool>(var_0, true, arg_3.d.x, false), arg_3.e)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -358f, 4294967295u)), _wgslsmith_f_op_f32(abs(753f)), vec3<bool>(arg_0, true, false), Struct_3(Struct_2(1u, vec3<u32>(u_input.a.x, u_input.a.x, 14970u), vec4<f32>(-180f, -803f, 1607f, -606f), Struct_1(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], 18070i, vec4<bool>(arg_1.d.x, true, arg_1.d.x, false), 1000f)), vec3<u32>(1720u, u_input.a.x, 4294967295u) & u_input.a, arg_3.e, 50683u))), ~(~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) - global0.x) + global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -655f)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x)), ~vec3<u32>(~21990u, countOneBits(u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 4294967295u))));
    global1 = array<f32, 9>();
    let var_2 = vec4<i32>(u_input.b.x, ~_wgslsmith_sub_i32(-arg_3.c ^ ~8602i, (u_input.b.x << (4294967295u % 32u)) << (countOneBits(var_1.a.b.x) % 32u)), abs(select(1i, ~(-u_input.b.x), any(vec4<bool>(var_1.a.d.d.x, arg_2, arg_2, false)))), -22020i);
    var var_3 = var_1.a.d.d.yw;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1706f), var_1.c, _wgslsmith_sub_i32(arg_3.c, _wgslsmith_dot_vec2_i32(var_2.yw, vec2<i32>(arg_3.c, arg_3.c))) ^ (_wgslsmith_mult_i32(~11087i, u_input.b.x) << (((var_1.b.x ^ u_input.a.x) >> (firstTrailingBit(17323u) % 32u)) % 32u)), vec4<bool>(false, all(func_2(func_2(Struct_1(global1[_wgslsmith_index_u32(0u, 9u)], arg_3.a, arg_1.c, arg_3.d, arg_1.e), arg_1.a, arg_3.d.wxy, Struct_3(var_1.a, u_input.a, 531f, var_1.b.x)), _wgslsmith_f_op_f32(floor(arg_1.b)), var_1.a.d.d.xzx, var_1).d.xwz), !arg_1.d.x | !(!arg_2), arg_3.d.x), _wgslsmith_f_op_f32(-675f - -541f));
}

fn func_1() -> vec3<i32> {
    var var_0 = !vec3<bool>(true, !any(vec4<bool>(true, true, true, false)) && true, true);
    global1 = array<f32, 9>();
    global0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1505f + 442f), -534f, -518f > global0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1149f)), -603f)))));
    var var_1 = Struct_3(Struct_2(u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(13050u, 9u)], -1000f, global1[_wgslsmith_index_u32(60384u, 9u)])) - _wgslsmith_div_vec4_f32(vec4<f32>(-1460f, -774f, global0.x, global1[_wgslsmith_index_u32(0u, 9u)]), vec4<f32>(994f, 790f, global0.x, -1628f))), vec4<f32>(global0.x, 223f, global1[_wgslsmith_index_u32(min(u_input.a.x, 4294967295u), 9u)], global0.x)), func_4(var_0.x, func_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], -402f, u_input.b.x, vec4<bool>(true, var_0.x, false, var_0.x), global0.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)] * 436f), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), Struct_3(Struct_2(u_input.a.x, vec3<u32>(0u, u_input.a.x, 1u), vec4<f32>(global0.x, 104f, global0.x, 1014f), Struct_1(-2065f, 139f, -8933i, vec4<bool>(var_0.x, false, false, false), 155f)), vec3<u32>(u_input.a.x, u_input.a.x, 34612u), global1[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.x)), any(!vec4<bool>(true, var_0.x, true, var_0.x)), func_2(func_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], -1309f, -78197i, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), 626f, vec3<bool>(false, var_0.x, var_0.x), Struct_3(Struct_2(102436u, vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec4<f32>(-703f, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(661u, 9u)], -1632f), Struct_1(-1075f, global0.x, u_input.b.x, vec4<bool>(true, var_0.x, var_0.x, var_0.x), 754f)), vec3<u32>(22851u, 4294967295u, u_input.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 4294967295u)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(10079u, 9u)]), vec3<bool>(true, var_0.x, false), Struct_3(Struct_2(7533u, vec3<u32>(u_input.a.x, 92459u, u_input.a.x), vec4<f32>(global1[_wgslsmith_index_u32(30978u, 9u)], global0.x, -1086f, global0.x), Struct_1(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 3586i, vec4<bool>(false, true, true, var_0.x), global1[_wgslsmith_index_u32(15871u, 9u)])), u_input.a, 267f, 38152u)))), u_input.a, global1[_wgslsmith_index_u32(1u, 9u)], u_input.a.x);
    let var_2 = Struct_3(var_1.a, vec3<u32>(var_1.b.x, 56871u, ~countOneBits(~55340u)), func_2(var_1.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.x, 710f)))), _wgslsmith_f_op_f32(-1683f * _wgslsmith_f_op_f32(-281f - -862f))), select(!var_1.a.d.d.wwy, select(vec3<bool>(false, var_0.x, var_0.x), !var_1.a.d.d.zww, !vec3<bool>(true, var_0.x, false)), func_4(true, var_1.a.d, all(vec4<bool>(var_1.a.d.d.x, false, true, true)), Struct_1(1565f, global1[_wgslsmith_index_u32(21297u, 9u)], u_input.b.x, vec4<bool>(true, var_1.a.d.d.x, var_1.a.d.d.x, var_0.x), -1540f)).d.x), Struct_3(Struct_2(var_1.d, u_input.a, vec4<f32>(global0.x, var_1.c, 417f, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), func_4(true, Struct_1(global1[_wgslsmith_index_u32(1u, 9u)], -652f, 1i, var_1.a.d.d, var_1.c), var_1.a.d.d.x, Struct_1(1402f, 245f, var_1.a.d.c, vec4<bool>(true, true, var_1.a.d.d.x, var_0.x), global1[_wgslsmith_index_u32(4294967295u, 9u)]))), countOneBits(var_1.a.b) << (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - var_1.c), ~var_1.a.a)).a, u_input.a.x >> (_wgslsmith_clamp_u32(reverseBits(var_1.b.x), var_1.d, _wgslsmith_add_u32(var_1.b.x, var_1.d)) % 32u));
    return _wgslsmith_mult_vec3_i32(max(_wgslsmith_mod_vec3_i32(select(_wgslsmith_add_vec3_i32(u_input.b.wxw, u_input.b.zxx), min(u_input.b.yyy, vec3<i32>(var_2.a.d.c, 1i, -38928i)), var_0.x), u_input.b.yww), select(-(~vec3<i32>(u_input.b.x, var_1.a.d.c, var_1.a.d.c)), _wgslsmith_sub_vec3_i32(-u_input.b.xwx, vec3<i32>(-31518i, u_input.b.x, var_1.a.d.c) ^ u_input.b.zww), true)), vec3<i32>(_wgslsmith_mult_i32(2147483647i, ~firstTrailingBit(-1i)), -27759i, ~(-2988i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<f32>) -> f32 {
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    var var_0 = false;
    let var_1 = ~vec4<u32>(4294967295u, abs(u_input.a.x), select(4294967295u << (u_input.a.x % 32u), ~84244u, select(arg_0.d.x, arg_0.d.x, arg_0.d.x)) << (0u % 32u), u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.zx);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x - 105f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(Struct_1(220f, global1[_wgslsmith_index_u32(~40219u, 9u)], 69200i, vec4<bool>(true, true, true, false), _wgslsmith_f_op_f32(-global0.x)), func_1(), vec2<f32>(-454f, 120f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(-188f, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), true)))))), global0.x);
    global1 = array<f32, 9>();
    var var_1 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-global0.x)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1185f))), _wgslsmith_f_op_f32(-var_0.x)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 3631u), u_input.a.zy, u_input.a.yz), firstLeadingBit(vec2<u32>(u_input.a.x, 4294967295u))), ~vec2<u32>(0u, 56450u)), ~vec2<u32>(~1486u, u_input.a.x)), 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wx, u_input.b.x, ~u_input.a.x, 1f);
}

