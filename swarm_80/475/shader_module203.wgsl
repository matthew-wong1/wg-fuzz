struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: Struct_2 = Struct_2(0u);

var<private> global2: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_2(~_wgslsmith_mod_u32((global1.a & u_input.a.x) << (countOneBits(global1.a) % 32u), 28510u >> (~global1.a % 32u)));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(var_0.a, 27u)]);
    global3 = arg_0;
    let var_2 = any(vec2<bool>(true, true));
    var var_3 = var_0;
    return -arg_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> vec4<bool> {
    var var_0 = vec2<f32>(-920f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1353f * -339f), _wgslsmith_f_op_f32(floor(-1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) + 1f)), -480f)));
    let var_1 = u_input.a.x;
    let var_2 = var_0.x;
    global3 = 0i;
    var var_3 = -abs(_wgslsmith_div_vec2_i32(vec2<i32>(672i, -61529i), abs(vec2<i32>(-23702i, 24334i))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(3765u, arg_0.x), ~vec2<u32>(1u, var_1), min(vec2<u32>(arg_0.x, 0u), vec2<u32>(var_1, u_input.a.x))) % vec2<u32>(32u)));
    return select(vec4<bool>(true, global0[_wgslsmith_index_u32(select(~1u, 83431u, true), 27u)], global0[_wgslsmith_index_u32(global1.a, 27u)], true), vec4<bool>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-37653i, var_3.x, 36278i), _wgslsmith_add_i32(var_3.x, var_3.x)) != _wgslsmith_mult_i32(var_3.x, var_3.x), true, true, !any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true, true, global0[_wgslsmith_index_u32(arg_0.x, 27u)])) | true), all(select(!select(vec4<bool>(arg_1, false, global0[_wgslsmith_index_u32(25546u, 27u)], arg_1), vec4<bool>(true, false, false, arg_1), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(arg_0.x, 27u)])), !(!vec4<bool>(true, arg_1, arg_1, false)), arg_1)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: i32) -> vec3<u32> {
    global0 = array<bool, 27>();
    var var_0 = Struct_1(-vec3<i32>(~firstLeadingBit(-1i), -arg_2, max(-1i, abs(3377i))));
    let var_1 = Struct_2(countOneBits(_wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, 1u)) ^ global1.a);
    let var_2 = vec3<i32>(-(_wgslsmith_sub_i32(-7516i, var_0.a.x) >> (_wgslsmith_mod_u32(4294967295u, 17506u) % 32u)), 12392i, var_0.a.x);
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(arg_2, var_2.x), -(~var_2.x), arg_2) ^ max(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, arg_2, 2147483647i), ~var_0.a), vec3<i32>(-53310i, _wgslsmith_mult_i32(var_2.x, arg_2), ~(-1i))));
    return min(vec3<u32>(~4294967295u, max(~firstLeadingBit(1u), ~1u), 32105u), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.x, ~arg_1.x, global1.a), vec3<u32>(reverseBits(arg_1.x), _wgslsmith_mod_u32(0u << (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, arg_1.x, 29364u), vec3<u32>(84194u, 4294967295u, arg_1.x))), 1u)));
}

fn func_2() -> i32 {
    global1 = Struct_2(firstTrailingBit(_wgslsmith_mult_u32(abs(~1u), global1.a)));
    var var_0 = vec2<i32>(~2147483647i, ~(-2147483647i));
    var var_1 = ~((~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, global1.a, global1.a), vec3<u32>(0u, u_input.a.x, u_input.a.x)) << (func_4(func_3(vec4<u32>(497u, global1.a, 4294967295u, u_input.a.x), global0[_wgslsmith_index_u32(global1.a, 27u)]), ~u_input.a, countOneBits(0i)) % vec3<u32>(32u))) << (select(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a, 23979u, global1.a), vec3<u32>(19794u, u_input.a.x, u_input.a.x)), vec3<u32>(global1.a, 4294967295u, 13905u)), firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 5048u)), !vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 27u)], false, true)) % vec3<u32>(32u)));
    var_1 = vec3<u32>(1u, 0u, 4294967295u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f));
    return select(0i, ~(~var_0.x & ~11631i), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(func_1(i32(-1i) * -1i, vec3<f32>(-118f, 389f, _wgslsmith_f_op_f32(f32(-1f) * -903f))), _wgslsmith_dot_vec2_i32(vec2<i32>(min(-1i, -2147483647i), -1i) << (~(~u_input.a) % vec2<u32>(32u)), vec2<i32>(1i, 1i)), _wgslsmith_add_i32(-5722i, ~func_2() | (_wgslsmith_div_i32(-2147483647i, 27880i) >> (global1.a % 32u))), -40427i);
    global0 = array<bool, 27>();
    var var_1 = Struct_3(all(!global2[_wgslsmith_index_u32(~reverseBits(4294967295u), 10u)]));
    var var_2 = select(!(!global2[_wgslsmith_index_u32(0u, 10u)]), select(vec3<bool>(select(all(vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 27u)], true)), true, any(vec4<bool>(global0[_wgslsmith_index_u32(global1.a, 27u)], true, true, global0[_wgslsmith_index_u32(59665u, 27u)]))), false, any(select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, global0[_wgslsmith_index_u32(28001u, 27u)]), vec2<bool>(true, false)))), vec3<bool>(true, all(vec2<bool>(true, true)), false), var_1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(525f, _wgslsmith_f_op_f32(trunc(-625f)), true)))) <= _wgslsmith_f_op_f32(-1175f + _wgslsmith_f_op_f32(f32(-1f) * -720f)));
    var var_3 = select(select(vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 27u)], u_input.a.x >= firstTrailingBit(2122u)), vec2<bool>(false, true | (var_0.x > var_0.x)), vec2<bool>(!var_1.a, var_1.a)), func_3(vec4<u32>(firstTrailingBit(u_input.a.x ^ 0u), max(4294967295u, max(1u, 4294967295u)), global1.a, max(94026u, global1.a) | 44954u), any(global2[_wgslsmith_index_u32(global1.a, 10u)])).zz, 1156f > _wgslsmith_f_op_f32(sign(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-678f, 585f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1019f, 1f)))), min(_wgslsmith_sub_vec2_i32(var_0.zw, vec2<i32>(7538i, var_0.x) & var_0.zz) >> (func_4(vec4<bool>(true, true, false, true), vec2<u32>(0u, 1u), -2147483647i).xx % vec2<u32>(32u)), var_0.xw), 1i);
}

