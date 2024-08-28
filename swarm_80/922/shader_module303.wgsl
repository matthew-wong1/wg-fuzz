struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<u32>(79u, 0u)), Struct_1(vec2<u32>(0u, 59574u)), Struct_1(vec2<u32>(1u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(35271u, 7135u)), Struct_1(vec2<u32>(0u, 0u))), Struct_2(Struct_1(vec2<u32>(26238u, 39472u)), Struct_1(vec2<u32>(4294967295u, 44952u)), Struct_1(vec2<u32>(95102u, 7482u))), Struct_2(Struct_1(vec2<u32>(1u, 15757u)), Struct_1(vec2<u32>(0u, 11463u)), Struct_1(vec2<u32>(45278u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(9083u, 13067u))), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(0u, 21428u)), Struct_1(vec2<u32>(1u, 6620u))), Struct_2(Struct_1(vec2<u32>(1u, 20256u)), Struct_1(vec2<u32>(65656u, 41864u)), Struct_1(vec2<u32>(78606u, 24649u))), Struct_2(Struct_1(vec2<u32>(95904u, 32241u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(0u, 20081u))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = vec3<bool>((any(vec2<bool>(true, true)) || !select(true, false, true)) && all(vec2<bool>(true, true)), true, !(true | any(vec3<bool>(true, true, true))));
    var var_1 = u_input.b;
    var_0 = vec3<bool>(_wgslsmith_sub_i32(abs(-u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b, -2147483647i), -vec4<i32>(1i, -57698i, 1644i, 1i))) <= _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1488i, -33679i), u_input.b, (-26669i >> (1u % 32u)) ^ u_input.b), var_0.x, var_0.x);
    var_0 = select(select(vec3<bool>(!all(vec3<bool>(false, true, var_0.x)), var_0.x, all(vec3<bool>(false, var_0.x, true))), select(vec3<bool>(var_0.x, !var_0.x, false), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x)), true), !vec3<bool>(var_0.x, false, false)), var_0.x), select(!vec3<bool>(true, all(vec3<bool>(var_0.x, var_0.x, true)), !var_0.x), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_0.x), vec3<bool>(true, false, var_0.x))), select(false, !var_0.x, true), any(!vec4<bool>(true, var_0.x, true, false))), var_0.x), true);
    var_1 = -1i;
    return max(select(~(~(~arg_1.a.a.x)), ~(~72866u), all(var_0.zy)), arg_0.c.a.x);
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    let var_0 = ~(-1i);
    let var_1 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 57787u, min(u_input.a.x, u_input.a.x), func_3(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], Struct_2(Struct_1(vec2<u32>(u_input.a.x, 7899u)), Struct_1(vec2<u32>(u_input.c, u_input.a.x)), Struct_1(u_input.a.wx)))), vec4<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), 55678u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 1u), u_input.a), 0u)));
    var var_2 = arg_0.x;
    var var_3 = i32(-1i) * -(~_wgslsmith_dot_vec3_i32(vec3<i32>(33099i, var_0, u_input.b), select(vec3<i32>(var_0, var_0, -33025i), vec3<i32>(-2147483647i, 1i, u_input.b), arg_0.x)));
    let var_4 = global0[_wgslsmith_index_u32(0u, 8u)];
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1494f) * -839f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f - _wgslsmith_div_f32(-1707f, -533f)))))));
}

fn func_1() -> vec2<i32> {
    global0 = array<Struct_2, 8>();
    var var_0 = false && all(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1357f, -952f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1447f * 1045f)), 840f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_f32(round(-1634f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 1042f, -760f), vec3<f32>(414f, 1000f, 1725f)))))));
    let var_2 = global0[_wgslsmith_index_u32(~u_input.c, 8u)];
    let var_3 = u_input.c >> (u_input.a.x % 32u);
    return firstLeadingBit(~(~select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, -2147483647i), vec2<bool>(false, true)) ^ (vec2<i32>(-1i) * -vec2<i32>(50768i, 10348i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = u_input.a;
    global0 = array<Struct_2, 8>();
    var var_1 = true;
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    let var_0 = true;
    let var_1 = ~(-(-2147483647i | ~u_input.b) | -2147483647i);
    let var_2 = func_4(firstLeadingBit(func_1()) << (u_input.a.zz % vec2<u32>(32u)), Struct_1(_wgslsmith_add_vec2_u32(~max(vec2<u32>(1u, 4182u), u_input.a.zw), vec2<u32>(4294967295u, u_input.c) | reverseBits(vec2<u32>(0u, u_input.a.x)))), u_input.a.zyx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-117f))))), _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(var_2.a, vec2<u32>(127776u, 80863u)), ~(vec2<u32>(1u, u_input.c) << (var_2.a % vec2<u32>(32u))) & abs(vec2<u32>(var_2.a.x, 1u))));
}

