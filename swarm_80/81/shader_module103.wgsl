struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
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

var<private> global0: vec4<u32> = vec4<u32>(1u, 6492u, 8268u, 4294967295u);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<vec4<u32>, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    global0 = vec4<u32>(arg_0.x, (~2054u ^ arg_0.x) ^ _wgslsmith_div_u32(firstLeadingBit(~4294967295u), 1u), ~(~4294967295u), ~global0.x);
    var var_0 = Struct_1(select(!select(vec4<bool>(false, global1.x, false, global1.x), !vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, false, global1.x, false)), vec4<bool>(true, true, true && (global1.x & false), global1.x), all(vec3<bool>(true, true, !global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) - -449f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1840f)), _wgslsmith_f_op_f32(-251f + _wgslsmith_div_f32(465f, -217f))));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(global2[_wgslsmith_index_u32(arg_0.x, 9u)]), vec4<u32>(29372u, global0.x, 14194u, _wgslsmith_sub_u32(~4294967295u, abs(0u)))), ~vec4<u32>(~1u, global0.x, ~global0.x, 15471u));
    let var_2 = 48166i;
    return !var_0.a;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = 0u;
    global1 = select(!select(select(arg_0.a.yxw, select(arg_0.a.ywy, vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, false, global1.x)), select(arg_0.a.x, global1.x, arg_0.a.x)), arg_0.a.wwx, true), vec3<bool>(arg_0.a.x && all(!vec2<bool>(global1.x, arg_0.b)), any(vec3<bool>(true, global1.x, false)), any(!func_3(vec3<u32>(4294967295u, global0.x, global0.x)))), !arg_0.a.ywy);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1397f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(320f * -1121f)))) + -209f), 0i, u_input.a, -2953i & _wgslsmith_mult_i32(u_input.a, -1i), 4294967295u);
    global2 = array<vec4<u32>, 9>();
    var var_2 = arg_0;
    return Struct_3(Struct_1(arg_0.a, (func_3(global0.zxy).x | false) | (!global1.x || arg_0.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1406f);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(449f))), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f * 863f) + _wgslsmith_f_op_f32(sign(-1467f))))), firstLeadingBit(u_input.a), reverseBits(_wgslsmith_mult_i32(u_input.a, ~_wgslsmith_mult_i32(23819i, -17734i))), u_input.a, global0.x);
    global0 = ~global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_1.e, ~arg_1.x), 9u)];
    var var_2 = var_1.c;
    var var_3 = ~reverseBits(max(-vec3<i32>(35156i, 32015i, var_1.b), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_1.c, u_input.a), vec3<i32>(-35572i, u_input.a, 17704i))) & vec3<i32>(_wgslsmith_clamp_i32(1i, var_1.b, 1i), u_input.a, min(2147483647i, 10415i)));
    return arg_0;
}

fn func_5(arg_0: Struct_3) -> f32 {
    let var_0 = !(!arg_0.a.a.x);
    let var_1 = vec3<bool>(false, true, false);
    var var_2 = vec4<u32>(~32830u, global0.x, 0u ^ global0.x, ~_wgslsmith_clamp_u32(4294967295u << (global0.x % 32u), abs(global0.x) ^ _wgslsmith_sub_u32(1u, global0.x), global0.x));
    let var_3 = Struct_3(Struct_1(!(!vec4<bool>(var_0, false, var_0, false)), !(false && var_0) && true));
    global1 = !(!vec3<bool>(var_1.x, arg_0.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(66142u, 0u, 1594u, global0.x), vec4<u32>(65163u, 74547u, var_2.x, global0.x)) >= _wgslsmith_mod_u32(global0.x, var_2.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(501f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1623f), -571f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(435f))), _wgslsmith_f_op_f32(459f + 893f))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), arg_0.a, -558f, _wgslsmith_f_op_f32(step(723f, 194f)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * -1561f)), _wgslsmith_f_op_f32(func_5(func_4(func_2(Struct_1(vec4<bool>(false, global1.x, false, true), global1.x)), ~global0.zxw, Struct_3(Struct_1(vec4<bool>(false, global1.x, true, true), global1.x)), func_3(vec3<u32>(global0.x, 4294967295u, global0.x)).zy))))), var_0.x, _wgslsmith_f_op_f32(trunc(1000f)));
    var_1 = var_0.www;
    var var_2 = func_2(func_2(Struct_1(!(!vec4<bool>(global1.x, true, true, global1.x)), global1.x)).a).a;
    return func_2(Struct_1(vec4<bool>(global1.x, global1.x, var_2.a.x, global1.x), false));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: u32) -> vec3<bool> {
    let var_0 = abs(~(~global2[_wgslsmith_index_u32(global0.x, 9u)]));
    global2 = array<vec4<u32>, 9>();
    global2 = array<vec4<u32>, 9>();
    global0 = vec4<u32>(~(~1u), 0u, ~firstTrailingBit(120u), arg_2);
    let var_1 = arg_0;
    return !vec3<bool>(global0.x <= _wgslsmith_add_u32(reverseBits(0u), global0.x), any(vec4<bool>(u_input.a == -1i, func_1(Struct_2(-689f, 17199i, -70079i, u_input.a, 4294967295u)).a.b, true, arg_1.x | global1.x)), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(!select(vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x)), select(vec3<bool>(global1.x, true, false), !vec3<bool>(global1.x, false, global1.x), any(global1.yy)), global1.x), !func_6(func_1(Struct_2(-1025f, u_input.a, -1i, -1i, global0.x)), global1.yy, 1u), !((global1.x & global1.x) || false)), func_6(func_4(Struct_3(Struct_1(vec4<bool>(global1.x, global1.x, false, false), false)), firstLeadingBit(global0.yxx) & ~global0.xxz, func_2(Struct_1(vec4<bool>(false, global1.x, true, global1.x), global1.x)), vec2<bool>(true, all(vec4<bool>(false, true, global1.x, global1.x)))), global1.xx, abs(6609u)), vec3<bool>(func_1(Struct_2(351f, 5863i, 1i, 1i, 1u)).a.b, !(false | (global1.x || global1.x)), any(!vec4<bool>(global1.x, global1.x, global1.x, false)) | global1.x));
    let var_1 = Struct_2(_wgslsmith_div_f32(-645f, -2968f), select(u_input.a, _wgslsmith_mod_i32(u_input.a ^ u_input.a, _wgslsmith_mult_i32(-u_input.a, reverseBits(u_input.a))), any(select(global1.zy, var_0.xz, !global1.xx))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(1197i, -2147483647i), vec2<i32>(u_input.a, 2147483647i) << (global0.xw % vec2<u32>(32u))), vec2<i32>(_wgslsmith_add_i32(u_input.a, 2147483647i), _wgslsmith_add_i32(u_input.a, 1i))), u_input.a, _wgslsmith_div_u32(4294967295u, countOneBits(1u)));
    let var_2 = var_1;
    var_0 = func_1(Struct_2(_wgslsmith_f_op_f32(-var_2.a), abs(1i), ~(abs(var_2.c) << (global0.x % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2869i, 11451i, var_1.b) << (vec4<u32>(var_2.e, var_2.e, 1u, 0u) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, -1i, var_2.d, 1i)) ^ -13992i, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_2.e, var_1.e, 8163u, 27573u), vec4<u32>(global0.x, 11923u, global0.x, var_1.e), true), select(_wgslsmith_mult_vec4_u32(vec4<u32>(71103u, 39235u, 4647u, var_2.e), vec4<u32>(global0.x, 25651u, var_1.e, 39639u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e, global0.x, var_2.e, 20154u), vec4<u32>(6978u, var_1.e, 11878u, 4294967295u), global2[_wgslsmith_index_u32(global0.x, 9u)]), all(vec3<bool>(global1.x, true, true)))))).a.a.wwx;
    let var_3 = -_wgslsmith_mod_vec3_i32(max(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-72510i, var_2.d, var_2.d)), ~vec3<i32>(var_2.c, u_input.a, 30464i)), vec3<i32>(_wgslsmith_sub_i32(u_input.a, var_2.b), abs(0i), var_1.d)), _wgslsmith_div_vec3_i32(select(-vec3<i32>(var_2.b, 0i, var_1.c), ~vec3<i32>(u_input.a, var_1.b, 12204i), false), vec3<i32>(u_input.a, u_input.a, -var_1.d)));
    global2 = array<vec4<u32>, 9>();
    var var_4 = abs(var_1.e);
    var var_5 = ~61455u;
    let x = u_input.a;
    s_output = StorageBuffer(55852u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(Struct_3(func_4(Struct_3(Struct_1(vec4<bool>(true, var_0.x, true, false), false)), vec3<u32>(0u, 46099u, 5352u), Struct_3(Struct_1(vec4<bool>(var_0.x, global1.x, false, true), false)), global1.zx).a))), _wgslsmith_f_op_f32(exp2(var_2.a))));
}

