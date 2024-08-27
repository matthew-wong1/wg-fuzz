struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<bool, 27> = array<bool, 27>(true, false, true, true, false, false, true, false, true, false, false, false, false, true, true, false, true, false, true, false, false, false, false, false, true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    let var_0 = u_input.c;
    let var_1 = -1i;
    let var_2 = -_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(u_input.e, u_input.e));
    global1 = array<bool, 27>();
    global0 = array<u32, 15>();
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25203u, 15u)], 15u)];
}

fn func_2(arg_0: vec4<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f - -2427f)), arg_0.x)) - vec2<f32>(arg_0.x, arg_0.x));
    let var_1 = ~(~firstTrailingBit(~(~vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(60045u, 15u)]))));
    global1 = array<bool, 27>();
    var var_2 = vec4<u32>(global0[_wgslsmith_index_u32(~(~func_3(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 15u)], 27u)], global1[_wgslsmith_index_u32(16862u, 27u)]))), 15u)], var_1.x, reverseBits(4294967295u ^ _wgslsmith_div_u32(firstLeadingBit(var_1.x), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], 15u)], 15u)], 15u)], var_1.x))), min(15626u, abs(_wgslsmith_clamp_u32(u_input.d, 4294967295u, firstTrailingBit(u_input.d)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, var_0.x, -1037f) - _wgslsmith_f_op_vec3_f32(arg_0.yxx - vec3<f32>(580f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(sign(arg_0.ywx))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-367f, -516f, -1000f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -440f, 214f), vec3<f32>(-432f, arg_0.x, var_0.x))), !global1[_wgslsmith_index_u32(u_input.d, 27u)])), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -120f)))), select(select(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)]), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(51371u, 27u)], false), vec3<bool>(false, true, true))), !vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(28602u, 27u)]), false))), arg_0.x, arg_0.x, select(vec4<bool>(arg_0.x != _wgslsmith_f_op_f32(1000f - arg_0.x), (var_2.x << (21767u % 32u)) == (4294967295u | global0[_wgslsmith_index_u32(4294967295u, 15u)]), true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(1u, 15u)], var_2.x), 27u)]), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)], false, global1[_wgslsmith_index_u32(var_1.x, 27u)]), vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(u_input.d, 27u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(26727u, 27u)], false, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(13985u, 27u)])), all(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 27u)], false))), all(select(!vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 27u)], global1[_wgslsmith_index_u32(50953u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 27u)], true, global1[_wgslsmith_index_u32(var_2.x, 27u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 27u)], false, global1[_wgslsmith_index_u32(22734u, 27u)])))));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, u_input.c), 0i)), reverseBits(select(reverseBits(vec2<i32>(11870i, -1056i)) ^ ~vec2<i32>(u_input.e, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(53267i, u_input.a), vec2<i32>(u_input.e, u_input.e)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 64646u), var_2.yw) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(var_2.x << (40224u % 32u), 27u)])));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = var_0.a.yy;
    let var_2 = select(var_0.d.ywy, arg_2.d.wxy, true);
    let var_3 = !(firstTrailingBit(abs(u_input.e) ^ firstTrailingBit(6560i)) > 1i);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 999f, arg_2.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2029f, var_1.x, 1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(829f, 1259f, var_1.x)))))), var_1.x, -169f, vec4<bool>(!arg_0, any(arg_2.d), true, (var_0.c == -423f) & var_0.d.x));
    return arg_2;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(648f, 929f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + 1000f) * _wgslsmith_f_op_f32(abs(-365f)))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2389f, _wgslsmith_f_op_f32(-1012f - 492f))), -((-vec2<i32>(u_input.e, -29563i) & func_2(vec4<f32>(1226f, -1276f, 1000f, -611f))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1u), vec2<u32>(9283u, u_input.d)) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1030f, 1345f, 1054f))))), 420f, -337f, vec4<bool>(-u_input.c != countOneBits(-14976i), global1[_wgslsmith_index_u32(4294967295u, 27u)], select(all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 27u)])), global1[_wgslsmith_index_u32(4294967295u, 27u)], true), select(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 15u)], 27u)], true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-534f, var_0.c))) * _wgslsmith_f_op_vec2_f32(-var_0.a.xy)))) + var_0.a.zx));
    global0 = array<u32, 15>();
    return func_4(var_0.d.x, ~(~vec2<i32>(~u_input.e, _wgslsmith_clamp_i32(-1i, -1i, -9976i))), var_0);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    global1 = array<bool, 27>();
    var var_0 = arg_0.a.yy;
    var var_1 = u_input.a;
    var_1 = u_input.a;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))) - arg_1), _wgslsmith_f_op_f32(f32(-1f) * -591f), 227f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + -765f), _wgslsmith_f_op_f32(-var_0.x), arg_0.d.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-956f)), arg_0.c)))), arg_0.d);
    return ~(~(max(vec4<u32>(u_input.b, 1u, 49958u, u_input.d), vec4<u32>(1u, 0u, 38391u, 0u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(93254u, 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], u_input.d, 1u), vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18612u, 15u)], 15u)], global0[_wgslsmith_index_u32(u_input.d, 15u)], 4294967295u)))) ^ ~firstLeadingBit(vec4<u32>(~global0[_wgslsmith_index_u32(u_input.d, 15u)], abs(1u), ~u_input.b, ~global0[_wgslsmith_index_u32(4294967295u, 15u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f * -203f)))))));
    global0 = array<u32, 15>();
    let var_1 = func_5(func_1(), var_0);
    let var_2 = !vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 15u)], 15u)], 27u)], select(true, false, global1[_wgslsmith_index_u32(28738u, 27u)]), all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 27u)])))), global1[_wgslsmith_index_u32(0u, 27u)]);
    var var_3 = var_1;
    let var_4 = !(!(!var_2));
    var var_5 = Struct_1(vec3<f32>(-765f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, -183f), _wgslsmith_f_op_f32(step(var_0, 282f))) - var_0), _wgslsmith_f_op_f32(abs(707f))), 880f, _wgslsmith_f_op_f32(ceil(-974f)), vec4<bool>(func_1().d.x, !(var_1.x >= 1u), !(!all(var_4)), var_2.x));
    let var_6 = Struct_1(vec3<f32>(func_1().b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_5.a.x)))))), var_0), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-618f, var_5.a.x)), _wgslsmith_f_op_f32(513f - var_0))), var_5.d);
    let x = u_input.a;
    s_output = StorageBuffer(max(i32(-1i) * -u_input.a, (u_input.a << (54501u % 32u)) & 1i) << ((~(var_3.x >> (18070u % 32u)) << (u_input.d % 32u)) % 32u));
}

