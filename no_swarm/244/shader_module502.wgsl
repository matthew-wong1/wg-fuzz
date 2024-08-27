struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32> = vec2<u32>(122967u, 0u);

var<private> global2: array<u32, 23> = array<u32, 23>(15581u, 35204u, 14199u, 107511u, 54444u, 0u, 4747u, 46449u, 0u, 1u, 0u, 22859u, 41884u, 1u, 4835u, 4294967295u, 4294967295u, 56762u, 20235u, 85939u, 44086u, 15318u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> vec2<f32> {
    var var_0 = u_input.a.x;
    var var_1 = vec4<i32>(u_input.a.x, -1i, u_input.a.x >> (~(~124856u) % 32u), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(0i, ~2147483647i), -35534i));
    var_1 = ~_wgslsmith_sub_vec4_i32(-vec4<i32>(var_1.x, -u_input.a.x, 27822i, u_input.a.x), vec4<i32>(-1i) * -select(vec4<i32>(var_1.x, -21962i, -9138i, -58337i), vec4<i32>(-21289i, u_input.a.x, -1i, 1i), false));
    global0 = 422f;
    let var_2 = Struct_1(arg_1.xy);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(587f, 647f)), vec2<f32>(1152f, 621f), select(false, true, var_2.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1878f, 1884f) - vec2<f32>(-1000f, -126f))), arg_0)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1049f, 2307f)))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(573f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f - _wgslsmith_f_op_f32(f32(-1f) * -2074f)) * _wgslsmith_f_op_f32(floor(-167f)))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1869f)) + 1006f);
    var var_0 = Struct_2(~reverseBits(global2[_wgslsmith_index_u32(global1.x, 23u)]), ~_wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.a.x, 2147483647i, 1i, u_input.a.x) << (vec4<u32>(global2[_wgslsmith_index_u32(1u, 23u)], 30809u, 7052u, global1.x) % vec4<u32>(32u))), vec4<i32>(~u_input.a.x, 21316i, -3463i, u_input.a.x)), _wgslsmith_f_op_vec2_f32(func_3(true, !select(vec4<bool>(false, arg_0, arg_0, arg_1.x), vec4<bool>(false, false, arg_1.x, arg_0), vec4<bool>(arg_1.x, arg_1.x, arg_0, arg_1.x)), ~_wgslsmith_mod_u32(101109u, _wgslsmith_sub_u32(38075u, global2[_wgslsmith_index_u32(3125u, 23u)])))), Struct_1(select(select(arg_1.xz, vec2<bool>(false, arg_1.x), !arg_1.yz), vec2<bool>(arg_1.x, any(vec3<bool>(false, arg_1.x, arg_1.x))), arg_0)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.c.x)))))), _wgslsmith_f_op_f32(sign(-1464f)));
    let var_1 = Struct_2(global1.x, vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.b.x, var_0.b.x) | (i32(-1i) * -1i), min(var_0.b.x, _wgslsmith_div_i32(u_input.a.x, -1329i))), u_input.a.x, reverseBits(var_0.b.x)), _wgslsmith_f_op_vec2_f32(ceil(var_0.c)), Struct_1(!select(!arg_1.zz, select(arg_1.xz, arg_1.yy, var_0.d.a.x), !arg_1.x)));
    let var_2 = firstLeadingBit(var_1.b.x);
    return !(((var_1.a <= ~14668u) && !(true | arg_0)) && false);
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = arg_0.a;
    let var_1 = arg_0.c;
    global1 = ~vec2<u32>(~abs(reverseBits(20302u)), countOneBits(~firstTrailingBit(19260u)));
    var var_2 = select(vec3<bool>(!arg_0.d.a.x, arg_0.d.a.x, false), select(vec3<bool>(true, !any(vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, arg_0.d.a.x)), all(select(vec3<bool>(false, arg_0.d.a.x, arg_0.d.a.x), vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, arg_0.d.a.x), true))), vec3<bool>(false, arg_0.d.a.x, any(arg_0.d.a)), arg_0.d.a.x), vec3<bool>(arg_0.d.a.x, !func_2(arg_0.d.a.x, vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, arg_0.d.a.x)) | arg_0.d.a.x, arg_0.d.a.x));
    var var_3 = Struct_3(Struct_1(select(select(vec2<bool>(true, arg_0.d.a.x), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(var_2.x, var_2.x), var_2.xy, !arg_0.d.a), select(select(arg_0.d.a, vec2<bool>(arg_0.d.a.x, true), vec2<bool>(arg_0.d.a.x, false)), !var_2.xy, true))));
    return arg_0.b | countOneBits(vec4<i32>(u_input.a.x ^ 1i, arg_0.b.x, firstTrailingBit(u_input.a.x), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(-2147483647i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-19719i, -1i, ~_wgslsmith_sub_i32(17460i, u_input.a.x), 1i), _wgslsmith_mod_vec4_i32(-func_1(Struct_2(global2[_wgslsmith_index_u32(39535u, 23u)], vec4<i32>(u_input.a.x, -26079i, -998i, u_input.a.x), vec2<f32>(-2034f, -379f), Struct_1(vec2<bool>(true, true)))), -vec4<i32>(0i, u_input.a.x, 7275i, -2147483647i))), min(-_wgslsmith_mult_i32(u_input.a.x, 7241i), _wgslsmith_mult_i32(u_input.a.x, abs(reverseBits(u_input.a.x)))));
}

