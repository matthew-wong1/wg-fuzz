struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = ~1u;
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 1000f)), global0[_wgslsmith_index_u32(countOneBits(reverseBits(u_input.a)), 14u)])));
    var var_1 = ~max(select(min(select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<bool>(true, true, false)), vec3<u32>(u_input.a, 78782u, u_input.a)), abs(countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<bool>(func_2(Struct_1(arg_0.a), vec2<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a, 14u)])).a.x, all(arg_0.a.xz), true)), firstTrailingBit(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 1u)), ~vec3<u32>(1197u, u_input.a, u_input.a))));
    var var_2 = !arg_0.a.zz;
    var_2 = vec2<bool>((~(9666u ^ u_input.a) >> (var_1.x % 32u)) < u_input.a, var_2.x);
    global0 = array<f32, 14>();
    return vec2<i32>((~(i32(-1i) * -2147483647i) << (~abs(var_1.x) % 32u)) ^ 1i, ~_wgslsmith_sub_i32(1i, -1i));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(Struct_1(vec3<bool>(arg_0.a.x, true, arg_3.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1889f, global0[_wgslsmith_index_u32(4294967295u, 14u)], arg_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -894f)), -319f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -833f) - vec2<f32>(global0[_wgslsmith_index_u32(32733u, 14u)], 538f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-362f, global0[_wgslsmith_index_u32(u_input.a, 14u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], -737f))))));
    var var_1 = 0u;
    let var_2 = select(_wgslsmith_add_vec2_i32(func_3(func_2(var_0, vec2<f32>(1000f, -1004f))) << (vec2<u32>(0u, 53372u) % vec2<u32>(32u)), reverseBits(arg_1)), arg_1, true);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-452f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 14u)] - 921f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~select(u_input.a, u_input.a, true), 14u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], -1221f, global0[_wgslsmith_index_u32(u_input.a, 14u)]) * vec3<f32>(601f, global0[_wgslsmith_index_u32(1u, 14u)], 1056f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)])))) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a >> (0u % 32u), 14u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 14u)], -651f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)] + -1000f)))));
    global0 = array<f32, 14>();
    return arg_3;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_1.x >= ~(u_input.a >> (92169u % 32u));
    var var_1 = arg_3;
    var_1 = arg_2;
    var var_2 = arg_3;
    global0 = array<f32, 14>();
    return 100507i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, 57410u, _wgslsmith_dot_vec2_u32(vec2<u32>(43743u, 4294967295u), vec2<u32>(u_input.a, u_input.a)))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))));
    var var_1 = true;
    let var_2 = ~(~vec3<i32>(_wgslsmith_div_i32(~1i, -15810i), func_4(vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 14u)], global0[_wgslsmith_index_u32(65996u, 14u)], 999f), vec3<u32>(1u, var_0.x, 66131u), func_1(Struct_1(vec3<bool>(false, true, false)), vec2<i32>(-9639i, -1i), -11684i, Struct_1(vec3<bool>(true, false, true))), func_1(Struct_1(vec3<bool>(true, false, false)), vec2<i32>(-2147483647i, 1i), 0i, Struct_1(vec3<bool>(false, true, false)))), 2147483647i));
    let var_3 = Struct_1(!vec3<bool>(true, func_1(Struct_1(vec3<bool>(true, true, true)), var_2.yx, -74161i, Struct_1(vec3<bool>(false, true, true))).a.x && true, true));
    global0 = array<f32, 14>();
    var_0 = ~(~max(select(vec3<u32>(22264u, u_input.a, 52592u), vec3<u32>(1u, 1u, var_0.x), false), abs(vec3<u32>(43985u, 4294967295u, 4294967295u))) << (_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, var_0.x, 0u)), ~max(vec3<u32>(var_0.x, 1u, u_input.a), vec3<u32>(49313u, 36645u, u_input.a))) % vec3<u32>(32u)));
    var var_4 = !(global0[_wgslsmith_index_u32(var_0.x >> (~u_input.a % 32u), 14u)] >= _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(abs(~4294967295u), 14u)])));
    var var_5 = !var_3.a.x;
    var var_6 = func_2(func_1(func_2(func_2(func_1(var_3, vec2<i32>(var_2.x, var_2.x), 2147483647i, Struct_1(var_3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], -2265f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1530f, global0[_wgslsmith_index_u32(4294967295u, 14u)]) + vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 14u)], global0[_wgslsmith_index_u32(78972u, 14u)])))), var_2.yx, -58873i, func_1(func_2(Struct_1(var_3.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]) - vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 14u)], 797f))), vec2<i32>(~(-28347i), min(48434i, var_2.x)), _wgslsmith_sub_i32(-2147483647i, -9673i) >> (~u_input.a % 32u), Struct_1(vec3<bool>(false, var_3.a.x, var_3.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(2471f, -1486f), -647f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 14u)], global0[_wgslsmith_index_u32(23375u, 14u)])))), var_3.a.xx)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1683f, -540f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 14u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 62174u, 47222u) | vec4<u32>(u_input.a, 117799u, 173u, 92647u), firstTrailingBit(vec4<u32>(13687u, 4294967295u, u_input.a, var_0.x))) & ~(~vec4<u32>(37304u, 76116u, 21824u, 0u)), vec4<u32>(var_0.x, u_input.a, reverseBits(1u), _wgslsmith_clamp_u32(firstTrailingBit(52635u), ~54398u, 0u)), ~(~vec4<u32>(var_0.x, 51596u, 4294967295u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(477f, 202f, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(var_0.x, 14u)]))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-834f, global0[_wgslsmith_index_u32(var_0.x, 14u)], -365f, global0[_wgslsmith_index_u32(u_input.a, 14u)]))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(605f, -241f, -1179f, -1666f) * vec4<f32>(511f, global0[_wgslsmith_index_u32(1u, 14u)], -543f, -362f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1701f, global0[_wgslsmith_index_u32(4294967295u, 14u)], 288f, 1411f) * vec4<f32>(global0[_wgslsmith_index_u32(0u, 14u)], -1000f, global0[_wgslsmith_index_u32(50512u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)])))))), u_input.a, _wgslsmith_dot_vec3_i32(var_2, var_2));
}

