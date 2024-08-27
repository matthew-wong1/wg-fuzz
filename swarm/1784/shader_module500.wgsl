struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(623f, 459f, -1371f);

var<private> global1: vec3<f32>;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<f32, 29> = array<f32, 29>(1000f, 2137f, 2112f, -576f, -151f, -505f, 1000f, -1000f, -475f, -383f, 742f, -1441f, 1000f, 125f, 966f, -1000f, -627f, 2059f, 959f, 1158f, 536f, 927f, 542f, -759f, 814f, 743f, -2177f, 537f, -500f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, -585f, global0.x), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global3[_wgslsmith_index_u32(arg_1, 29u)], global3[_wgslsmith_index_u32(arg_1, 29u)]), vec3<f32>(-1000f, -776f, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1105f, -1865f, global1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, global3[_wgslsmith_index_u32(arg_1, 29u)], -1050f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 406f, global3[_wgslsmith_index_u32(arg_1, 29u)]))) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global3[_wgslsmith_index_u32(arg_1, 29u)], -107f), vec3<f32>(-129f, global3[_wgslsmith_index_u32(arg_1, 29u)], global0.x)))))));
    let var_1 = false;
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(max(~(-vec4<i32>(arg_0.a.x, 1i, u_input.b, 1754i)), min(vec4<i32>(54339i, arg_2, 1i, arg_0.a.x), vec4<i32>(1i, 24043i, arg_2, arg_2))), max(min(~vec4<i32>(arg_2, 59683i, u_input.b, 27555i), -vec4<i32>(0i, -34253i, arg_0.a.x, -1i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, arg_2, arg_0.a.x, -2147483647i), vec4<i32>(-8167i, arg_2, 0i, u_input.a)))), vec4<i32>(-22864i, arg_0.a.x, u_input.a, ~max(i32(-1i) * -6951i, -2147483647i)));
    return global0.x < global0.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    global3 = array<f32, 29>();
    global2 = _wgslsmith_mult_i32(-arg_0, arg_0 ^ ~(-2147483647i)) | u_input.b;
    global2 = -_wgslsmith_add_i32(_wgslsmith_add_i32(arg_0 << (0u % 32u), i32(-1i) * -2147483647i), -(~arg_0)) >> (abs(~_wgslsmith_mult_u32(23600u >> (1u % 32u), abs(1u))) % 32u);
    let var_0 = select(vec3<bool>(func_3(Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(59271i, arg_0, u_input.b), vec3<i32>(arg_0, u_input.b, u_input.b))), abs(1u), u_input.b), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)), select(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), true, true)), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, any(vec4<bool>(true, false, false, false)), true), select(true, select(false, false, false), any(vec2<bool>(false, false)))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), true), !all(vec4<bool>(true, true, true, false)) && false), false);
    let var_1 = _wgslsmith_f_op_f32(exp2(global0.x));
    return Struct_1(var_1, _wgslsmith_sub_i32(-(~u_input.b), arg_0 & min(~arg_0, u_input.b >> (58201u % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1270f, global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 29u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), func_2(arg_1.x, vec3<f32>(-1318f, 1532f, -116f)).a))), global3[_wgslsmith_index_u32(max(~countOneBits(1u), _wgslsmith_mult_u32(min(arg_0.e.x, arg_0.e.x), ~2030u)), 29u)], global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1038f, 173f)))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + -172f), _wgslsmith_f_op_f32(round(340f)))), global0.x, global1.x, _wgslsmith_f_op_f32(step(1649f, 581f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)), _wgslsmith_f_op_f32(1852f * _wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global1.x))));
    return all(select(vec4<bool>(any(vec3<bool>(true, true, true)), true || any(arg_0.a), arg_0.a.x, true), !vec4<bool>(true, any(vec3<bool>(false, false, arg_0.a.x)), any(vec2<bool>(arg_0.a.x, arg_0.d)), !arg_0.d), arg_0.a.x && arg_0.a.x));
}

fn func_1() -> vec3<f32> {
    let var_0 = any(vec4<bool>(true, true, func_4(Struct_2(vec3<bool>(false, true, false), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 29u)], -2147483647i), func_2(-30719i, vec3<f32>(450f, -395f, 1594f)), true, firstTrailingBit(vec2<u32>(0u, 17722u))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(1065i, -52936i), vec2<i32>(u_input.a, u_input.b))), (_wgslsmith_f_op_f32(abs(global1.x)) < _wgslsmith_f_op_f32(f32(-1f) * -1000f)) != (u_input.a >= abs(2147483647i))));
    var var_1 = true;
    var_1 = true;
    let var_2 = Struct_2(!vec3<bool>(var_0, countOneBits(-2147483647i) >= ~u_input.b, false), func_2(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global3[_wgslsmith_index_u32(26924u, 29u)], 962f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1673f, -160f, -886f))) * vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 29u)] * global3[_wgslsmith_index_u32(17775u, 29u)]), _wgslsmith_f_op_f32(exp2(global0.x)), global0.x))), func_2(select(-42793i, -27868i, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 469f, global0.x)))), false | var_0, firstLeadingBit(vec2<u32>(1u, countOneBits(~24849u))));
    let var_3 = Struct_3(~(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b.b, 22557i, var_2.b.b), vec3<i32>(var_2.c.b, u_input.a, -49319i)))));
    return vec3<f32>(_wgslsmith_f_op_f32(global0.x + 232f), 597f, -396f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(~1i, 2147483647i, u_input.a)), -vec3<i32>(-28446i, 0i, _wgslsmith_div_i32(-40880i, u_input.b)) | firstLeadingBit(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -27155i, -9328i), vec3<i32>(-20280i, u_input.a, 0i)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1164f, 1243f, _wgslsmith_f_op_f32(f32(-1f) * -1181f)))));
    global2 = -2147483647i;
    global3 = array<f32, 29>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * var_0);
    let var_1 = func_2(_wgslsmith_div_i32(func_2(u_input.b, var_0).b, ~1i), var_0);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-1546f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2079f))), var_0.x);
    global2 = _wgslsmith_add_i32(~u_input.b, ~_wgslsmith_mult_i32(u_input.b ^ -2147483647i, 19671i));
    global3 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(~(~95873u), 52366u << (~4294967295u % 32u), 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(37362u, 21230u), vec2<u32>(1u, 1u))), max(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(27331u, 1150u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)))), ~max(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(196u, 4294967295u, 45502u, 49377u), vec4<u32>(1u, 1u, 1u, 1u))));
}

