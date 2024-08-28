struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 48283u, 4294967295u);

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true));

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = select(_wgslsmith_mod_vec3_u32(global0.wxz, countOneBits(global0.zwy)) ^ (vec3<u32>(83271u | global0.x, min(1232u, global1.a), 0u >> (global1.a % 32u)) & abs(firstTrailingBit(global0.zzy))), vec3<u32>(global0.x, firstTrailingBit(34319u), abs(~(~8894u))), select(vec3<bool>(global4.x, true, global4.x), select(select(vec3<bool>(global4.x, false, false), global4.yzy, !global4.wyx), global4.wxy, !global4.wzz), !select(global4.zww, !vec3<bool>(true, global4.x, false), global4.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -630f);
    var var_2 = 116297u;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.b.ywy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.yzx) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(224f, -1178f, global1.b.x))) - global1.b.zyx)), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, var_1, _wgslsmith_f_op_f32(step(var_1, 773f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.yxz) + global1.b.www))));
    var var_4 = Struct_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(65873u, 89942u, var_0.x, var_0.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(37488u, 4294967295u, 1u, var_0.x), vec4<u32>(29734u, global1.a, 1u, 69732u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1312f * -1208f)), _wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(-global1.b.x), !(global4.x | false))), var_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - var_1), _wgslsmith_div_f32(var_3.x, -110f))), _wgslsmith_f_op_f32(abs(global1.b.x)), global4.x))));
    return all(global4.yx);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = ~(arg_0.x >> (~(~(~46158u)) % 32u));
    global4 = select(!(!(!(!vec4<bool>(global4.x, true, false, false)))), vec4<bool>(false, true, false, func_3()), !any(vec4<bool>(u_input.a.x < u_input.a.x, true, global4.x, true)));
    var var_1 = func_3();
    let var_2 = select(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, global4.x, global4.x), global4.x), vec3<bool>(global4.x, global4.x, global4.x), global4.x)), !global4.zxx, false);
    var var_3 = var_2.x;
    return 0u;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = -1i;
    global4 = !(!select(select(vec4<bool>(global4.x, arg_1, global4.x, arg_1), select(global3[_wgslsmith_index_u32(global1.a, 5u)], global3[_wgslsmith_index_u32(62788u, 5u)], vec4<bool>(arg_1, global4.x, true, true)), global3[_wgslsmith_index_u32(4294967295u, 5u)]), select(global3[_wgslsmith_index_u32(func_2(vec4<u32>(42130u, 1u, 33689u, global0.x), arg_0), 5u)], vec4<bool>(false, arg_1, arg_1, global4.x), global3[_wgslsmith_index_u32(global1.a, 5u)]), !select(vec4<bool>(global4.x, false, arg_1, arg_1), vec4<bool>(true, arg_1, false, true), false)));
    var var_1 = _wgslsmith_mult_i32(var_0, countOneBits(1i));
    var var_2 = !any(global4.wx);
    var var_3 = -940f;
    return !(!vec4<bool>(global4.x, var_0 <= var_0, func_3() | true, true));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-376f)) * 487f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.x + -904f)))) + global1.b.x));
    let var_1 = firstLeadingBit(countOneBits(u_input.a.xw));
    global4 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2.a, 4294967295u), global0.xzw)), _wgslsmith_add_vec3_u32(~global0.zxx, select(vec3<u32>(arg_2.a, arg_2.a, global0.x), firstLeadingBit(vec3<u32>(33177u, global0.x, 15321u)), vec3<bool>(false, false, arg_0.x)))), 5u)];
    let var_2 = var_1.x;
    var var_3 = global0.zx & ~min(select(vec2<u32>(global0.x, 1u), ~global0.zy, !arg_0.xw), global0.yw);
    return Struct_1(min(_wgslsmith_mod_u32(global1.a, abs(1u)), _wgslsmith_clamp_u32(countOneBits(min(1u, var_3.x)), ~1u, global0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(Struct_2(global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b))), func_4(select(func_1(_wgslsmith_f_op_f32(-global1.b.x), !global4.x, firstTrailingBit(vec2<i32>(-1i, u_input.a.x))), !(!vec4<bool>(false, global4.x, true, global4.x)), true || global4.x), _wgslsmith_div_u32(firstLeadingBit(~1u), 5911u), Struct_2(~global0.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, global1.b.x, 404f, global1.b.x), global1.b, 956f < global1.b.x)))), 1380i <= min(u_input.a.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, select(-2147483647i, u_input.a.x, global4.x))), vec4<f32>(_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.x * -552f), _wgslsmith_f_op_f32(trunc(global1.b.x))))), _wgslsmith_div_f32(-1202f, -1607f), -515f, -1182f));
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(global1.b.xz));
    global2 = _wgslsmith_mod_u32(select(~1u, 4294967295u, true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global1.a, countOneBits(global0.x))));
    var var_1 = select(select(func_1(-191f, global0.x != reverseBits(4294967295u), abs(~vec2<i32>(u_input.a.x, u_input.a.x))).xxw, vec3<bool>(true, true, global4.x), true), global4.yyx, !global4.wwz);
    global4 = !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global0.wyy, ~(~(global0.wwx ^ global0.wxy))), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-201f, var_0.x, var_1.x)))), _wgslsmith_f_op_f32(abs(global1.b.x)))), firstLeadingBit(global0.xxy >> (firstLeadingBit(~global0.yyy) % vec3<u32>(32u))));
}

