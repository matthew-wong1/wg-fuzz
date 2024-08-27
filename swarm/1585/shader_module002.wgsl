struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-328f, 1032f, -1000f, 1056f, -1033f, -474f, -1000f, -563f, 2277f, 1682f, -1257f, -1144f, 512f, -338f, 202f, -1089f, -567f, -1000f, -436f, 2169f, -1044f, 916f, 1221f, -614f, -978f, 733f, -436f, -423f, 1518f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> i32 {
    var var_0 = arg_0.a;
    var_0 = arg_0.a;
    let var_1 = arg_0;
    var_0 = arg_0.a;
    var_0 = var_1.a;
    return var_1.a.d.a;
}

fn func_2(arg_0: bool) -> Struct_4 {
    global0 = array<f32, 29>();
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -(~func_3(Struct_5(Struct_2(vec4<f32>(1449f, global0[_wgslsmith_index_u32(65542u, 29u)], -586f, global0[_wgslsmith_index_u32(1u, 29u)]), 1u, vec2<bool>(arg_0, true), Struct_1(u_input.b, -1i, vec2<f32>(global0[_wgslsmith_index_u32(47981u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), false), vec2<bool>(arg_0, true)))), u_input.b), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, -13841i, u_input.b) ^ select(vec3<i32>(8918i, -2673i, 71696i), u_input.a.xyw, select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, arg_0))), vec3<i32>(u_input.a.x, 38321i, u_input.a.x) & vec3<i32>(abs(u_input.a.x), ~u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b, u_input.b, u_input.b, -15836i)))));
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    let var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(12424i, 0i, -2147483647i, -42707i), u_input.a)), ~u_input.a) | select(_wgslsmith_add_i32(var_0, u_input.a.x), u_input.b, !(global0[_wgslsmith_index_u32(13022u, 29u)] == -1000f) | arg_0);
    return Struct_4(Struct_3(-abs(-2147483647i)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(~arg_3.x, 29u)], global0[_wgslsmith_index_u32(arg_3.x, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) * 384f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1372f))) * -203f)), abs(select(~1u, arg_3.x & arg_3.x, true)) | 4294967295u, vec2<bool>(~1u != ~_wgslsmith_add_u32(arg_3.x, 2261u), !(-2147483647i > firstTrailingBit(0i))), Struct_1((_wgslsmith_add_i32(arg_2.a.a, arg_2.a.a) | arg_2.a.a) | 1395i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, arg_0.a.a, 0i, arg_2.a.a) >> (select(vec4<u32>(arg_3.x, 1u, 1u, 66158u), vec4<u32>(arg_3.x, 83304u, arg_3.x, arg_3.x), vec4<bool>(false, true, false, false)) % vec4<u32>(32u)), abs(vec4<i32>(-1i, arg_2.a.a, -24299i, -42503i) | vec4<i32>(-1i, 9755i, arg_1.a, arg_2.a.a))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-533f)), global0[_wgslsmith_index_u32(29117u, 29u)])), select(true, all(vec3<bool>(true, true, true)), !(_wgslsmith_div_i32(34812i, -1i) >= arg_0.a.a)));
    let var_1 = u_input.a;
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = arg_3.x;
    let var_1 = Struct_5(func_4(Struct_4(Struct_3(-arg_1.a.d.b)), Struct_3(arg_1.a.d.a), func_2(arg_0), vec3<u32>(~arg_1.a.b & 0u, 63621u & arg_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.b, 14676u, 31679u), arg_3.xzx) & (16529u & arg_3.x))), !vec2<bool>(arg_0, true));
    global0 = array<f32, 29>();
    let var_2 = Struct_4(func_2(true).a);
    global0 = array<f32, 29>();
    return func_4(var_2, Struct_3(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.d.a, u_input.a.x, 35649i, var_2.a.a) >> (vec4<u32>(arg_3.x, arg_1.a.b, 51174u, arg_3.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.d.b, arg_2, 1i, -32662i), vec4<i32>(arg_1.a.d.a, -1i, var_2.a.a, 2147483647i), vec4<i32>(arg_1.a.d.b, arg_1.a.d.b, arg_1.a.d.a, -8369i))))), Struct_4(Struct_3(var_2.a.a)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(arg_3, arg_3), _wgslsmith_dot_vec3_u32(abs(arg_3.yyz), vec3<u32>(arg_3.x, arg_3.x, 0u)), arg_1.a.b));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = select(vec4<bool>(arg_3.e, all(select(!vec3<bool>(true, true, arg_3.c.x), vec3<bool>(true, true, true), !vec3<bool>(arg_3.c.x, true, arg_3.c.x))), false, _wgslsmith_add_i32(arg_3.d.b, 1i) <= firstLeadingBit(arg_3.d.b << (arg_3.b % 32u))), vec4<bool>(arg_3.b != 4294967295u, _wgslsmith_dot_vec2_i32(u_input.a.ww, ~arg_1.yz) != -2147483647i, arg_3.e, !((arg_3.e & arg_3.e) & (arg_3.e || false))), vec4<bool>(arg_3.c.x, !arg_3.e, false, arg_3.e));
    global0 = array<f32, 29>();
    var var_1 = min(vec3<i32>(-max(u_input.b, func_4(Struct_4(Struct_3(u_input.a.x)), Struct_3(2147483647i), Struct_4(Struct_3(0i)), vec3<u32>(arg_3.b, 0u, arg_3.b)).d.a), _wgslsmith_div_i32(2147483647i, -25906i), u_input.b ^ func_5(var_0.x, Struct_5(arg_3, arg_3.c), ~7640i, countOneBits(vec4<u32>(arg_3.b, 10364u, arg_3.b, arg_3.b))).d.b), min(u_input.a.xyy, countOneBits(arg_1.yxy >> ((vec3<u32>(31058u, arg_3.b, arg_3.b) | vec3<u32>(1u, 3907u, 4294967295u)) % vec3<u32>(32u)))));
    global0 = array<f32, 29>();
    return Struct_1(47316i, ~arg_3.d.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_3.a.xy, arg_0)) - arg_0), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1016f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)])), 1979f)));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = -u_input.a;
    var var_1 = any(!vec3<bool>(any(vec2<bool>(false, true)), true, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -482f))), -2236f)), arg_0, arg_0)));
    var var_3 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.wy) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.wz), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(630f, -638f) + vec2<f32>(var_2.x, 1733f))))))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-999f, arg_0)) - global0[_wgslsmith_index_u32(~1u, 29u)])), func_5(true, Struct_5(func_4(func_2(false), Struct_3(u_input.b), Struct_4(Struct_3(1i)), select(vec3<u32>(689u, 4330u, 1u), vec3<u32>(41856u, 0u, 16653u), false)), vec2<bool>(true, true)), -14089i, vec4<u32>(4294967295u, firstTrailingBit(79202u), 21185u, min(0u, 4294967295u)) | vec4<u32>(1u, 1u, 1u, 1u)));
    global0 = array<f32, 29>();
    return global0[_wgslsmith_index_u32(select(~1u >> (1u % 32u), 4294967295u, true), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-910f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 29u)] + -2015f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(39695u, 29u)] + global0[_wgslsmith_index_u32(1u, 29u)]))), 404f)), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 0u, ~37544u), 1u), vec2<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, false))), any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))), func_5(true, Struct_5(func_4(Struct_4(Struct_3(20441i)), Struct_3(u_input.b), func_2(false), vec3<u32>(1988u, 28450u, 7197u)), vec2<bool>(true, true)), _wgslsmith_dot_vec3_i32(~u_input.a.wyx, _wgslsmith_sub_vec3_i32(-u_input.a.xxx, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), u_input.a.wyy))), ~vec4<u32>(1u, 1u, 1u, 1u)).d, true);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(true, Struct_5(var_0, func_4(Struct_4(Struct_3(2147483647i)), func_2(false).a, func_2(var_0.c.x), ~vec3<u32>(4294967295u, var_0.b, 0u)).c), var_0.d.b, abs(~vec4<u32>(var_0.b, var_0.b, 2468u, 61159u))).a.x, _wgslsmith_f_op_f32(func_1(-745f)), u_input.a, vec4<i32>(var_0.d.a, var_0.d.a, 11060i, -max(var_0.d.a, _wgslsmith_add_i32(-1i, var_0.d.a))));
}

