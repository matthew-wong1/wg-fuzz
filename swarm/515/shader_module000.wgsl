struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<f32, 17>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> i32 {
    let var_0 = min(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 49153u, 4294967295u, 4294967295u), vec4<u32>(68704u, 4294967295u, arg_0.a.a.x, 19706u)), arg_0.a.b.x, _wgslsmith_dot_vec3_u32(arg_0.a.b, vec3<u32>(4294967295u, arg_0.a.a.x, 37660u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0.d.x, 0u) | vec4<u32>(u_input.b, 1u, arg_0.d.x, 36201u), max(vec4<u32>(arg_0.d.x, 4294967295u, arg_0.a.b.x, 42764u), vec4<u32>(20386u, 52412u, 1u, u_input.b)), vec4<u32>(44990u, u_input.b, 1u, arg_0.d.x) & vec4<u32>(60329u, arg_0.d.x, 1u, 68202u))), ~abs(vec4<u32>(_wgslsmith_mod_u32(u_input.b, arg_0.a.a.x), 8096u, _wgslsmith_mult_u32(0u, arg_0.d.x), _wgslsmith_sub_u32(arg_0.d.x, 4294967295u))));
    global1 = array<f32, 17>();
    global0 = array<bool, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.x, -1483f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_0.b), -473f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, -682f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1033f, arg_1.x)), select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.d.x, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 19u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 19u)], true))))))));
    let var_2 = true;
    return arg_0.c & -arg_0.a.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~(~arg_1), reverseBits(arg_1), ~(0i << (arg_1.x % 32u))), _wgslsmith_f_op_f32(floor(-1218f)), firstLeadingBit(~func_3(Struct_2(Struct_1(vec3<u32>(31654u, 1u, arg_1.x), vec3<u32>(u_input.a, arg_1.x, 2428u), 2147483647i), 240f, -38041i, arg_1.xx), vec3<f32>(1455f, 669f, 409f))), arg_1.xy);
    var var_1 = var_0.a;
    global1 = array<f32, 17>();
    var_0 = Struct_2(var_0.a, global1[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 17u)], ~_wgslsmith_clamp_i32(var_1.c, -34176i, -41076i), var_1.a.zz);
    let var_2 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, ~50470u, var_1.b.x), 17u)] * global1[_wgslsmith_index_u32(1u, 17u)])), 38515i, ~countOneBits(~(~var_0.a.a.zx)));
    return var_2.a;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, -2434i, arg_2.c)), reverseBits(vec3<i32>(arg_2.c, -2147483647i, arg_2.c))) & arg_2.c, firstTrailingBit(-1i) >> (1u % 32u), 1i), vec3<i32>(arg_2.c, abs(_wgslsmith_clamp_i32(-1i & arg_2.c, -arg_2.c, -2147483647i)), arg_2.c));
    var var_1 = arg_2;
    global1 = array<f32, 17>();
    global0 = array<bool, 19>();
    var var_2 = vec2<i32>(min(1i, arg_2.c & func_3(Struct_2(arg_2, arg_3, var_0.x, vec2<u32>(4294967295u, 27275u)), vec3<f32>(arg_3, global1[_wgslsmith_index_u32(41502u, 17u)], arg_3))), _wgslsmith_dot_vec3_i32(vec3<i32>(func_2(vec3<f32>(arg_3, -1225f, -442f), vec3<u32>(arg_2.a.x, 1u, 0u)).c, 0i, min(17479i, 0i)), vec3<i32>(var_1.c, _wgslsmith_div_i32(var_1.c, 0i), -1i))) & vec2<i32>(var_1.c, min(var_1.c, _wgslsmith_div_i32(var_0.x, arg_2.c) << (9350u % 32u)));
    return func_3(Struct_2(Struct_1(vec3<u32>(1u, var_1.a.x, 16145u), ~var_1.b, var_2.x ^ 3366i), arg_3, firstLeadingBit(var_0.x) | max(var_0.x, -2147483647i), arg_2.a.zy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(57522u, 17u)]), _wgslsmith_div_f32(-698f, global1[_wgslsmith_index_u32(u_input.a, 17u)]), _wgslsmith_div_f32(-1345f, global1[_wgslsmith_index_u32(0u, 17u)])))) | func_3(Struct_2(Struct_1(var_1.b, max(vec3<u32>(var_1.b.x, 4294967295u, 75113u), var_1.b), 1i), -2533f, ~2147483647i, vec2<u32>(arg_2.b.x, var_1.b.x ^ arg_2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1948f, 643f, arg_3), vec3<f32>(arg_3, -1243f, 1014f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1206f, global1[_wgslsmith_index_u32(17083u, 17u)], -1000f))))));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    global1 = array<f32, 17>();
    let var_0 = 4294967295u;
    global1 = array<f32, 17>();
    global1 = array<f32, 17>();
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(func_4(4294967295u, true, func_2(vec3<f32>(-2021f, arg_0, -742f), vec3<u32>(20074u, u_input.b, 4294967295u)), arg_0), ~select(11475i, 8321i, global0[_wgslsmith_index_u32(1u, 19u)])), max(vec2<i32>(_wgslsmith_mult_i32(func_3(Struct_2(Struct_1(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(0u, var_0, 79094u), -34845i), global1[_wgslsmith_index_u32(var_0, 17u)], 1i, vec2<u32>(4294967295u, 0u)), vec3<f32>(global1[_wgslsmith_index_u32(var_0, 17u)], global1[_wgslsmith_index_u32(var_0, 17u)], 187f)), 2147483647i), -2147483647i), vec2<i32>(~abs(-1i), _wgslsmith_mod_i32(1i, -65309i))));
    return _wgslsmith_mult_vec3_u32(min(_wgslsmith_div_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 347u, 53011u), vec3<u32>(var_0, u_input.a, 0u)), func_2(vec3<f32>(-702f, 1734f, 246f), vec3<u32>(4294967295u, var_0, var_0)).a, vec3<bool>(global0[_wgslsmith_index_u32(0u, 19u)], true, true)), ~vec3<u32>(27922u, u_input.a, var_0) | (vec3<u32>(63874u, 19512u, u_input.a) ^ vec3<u32>(u_input.a, 4294967295u, 12373u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 29646u, 0u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, 1u, u_input.b), vec3<u32>(u_input.b, 17390u, u_input.b), vec3<u32>(var_0, 4294967295u, 0u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 36104u, 1428u), vec3<u32>(u_input.b, u_input.b, 1u)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0, 59627u), vec3<u32>(30790u, 4294967295u, var_0)), countOneBits(vec3<u32>(0u, u_input.b, var_0))))), ~(~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, arg_0, 1664f)), countOneBits(vec3<u32>(var_0, 17017u, 0u))).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -103f)), _wgslsmith_mod_vec3_u32(vec3<u32>(20077u, u_input.a, 355u) & vec3<u32>(4294967295u, u_input.b, 32301u), ~vec3<u32>(4294967295u, u_input.b, u_input.b))), _wgslsmith_add_u32(~u_input.b, countOneBits(u_input.b)), u_input.b, 8176u), _wgslsmith_sub_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a), vec4<u32>(55424u, 18895u, u_input.b, 34808u))), select(vec4<u32>(22639u, func_1(global1[_wgslsmith_index_u32(u_input.b, 17u)]).x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 33304u, 0u), vec3<u32>(37481u, 1u, 1u)), max(27301u, u_input.b)), ~vec4<u32>(61168u, u_input.a, u_input.a, u_input.a), false)));
    var var_1 = !vec2<bool>(all(vec2<bool>(true, var_0.x < var_0.x)), true);
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(var_0.x, 17u)], -2499f)))))), ~var_0.wxz >> (var_0.yzw % vec3<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b << (u_input.b % 32u), 17u)] + _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(33706u, 17u)], -1000f))), 1000f)))), 2147483647i, ~var_0.yw);
    global1 = array<f32, 17>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1513f, -1120f), vec2<f32>(588f, var_2.b)))), vec2<f32>(-305f, var_2.b))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1539f, var_3.x, var_1.x)), -1000f))), _wgslsmith_f_op_f32(step(-1048f, -729f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_clamp_i32((-1i >> (select(u_input.a, var_2.d.x, global0[_wgslsmith_index_u32(u_input.a, 19u)]) % 32u)) << (4294967295u % 32u), var_2.c, var_2.a.c));
}

