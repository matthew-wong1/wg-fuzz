struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false));

var<private> global1: array<bool, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    global0 = array<vec4<bool>, 5>();
    let var_0 = vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, arg_3.a), select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(arg_3.a, 4294967295u), arg_3.b.x)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, arg_3.a))) ^ 0u, 14u)], arg_3.b.x, _wgslsmith_f_op_f32(517f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f + arg_1.x) - -773f)) <= _wgslsmith_f_op_f32(min(arg_0, -563f)));
    let var_1 = 124f;
    global0 = array<vec4<bool>, 5>();
    let var_2 = Struct_1(~(u_input.b | 53104u), arg_3.b);
    return _wgslsmith_add_i32(88005i, ~19963i);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    var var_0 = Struct_1(~_wgslsmith_div_u32(~countOneBits(36407u), 1401u), select(!vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(73152u, 14u)], global1[_wgslsmith_index_u32(14194u, 14u)])), !global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(75534u, arg_1, u_input.b), 14u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_1), vec2<u32>(u_input.b, 33272u)), 14u)]), !vec4<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], true, false)), false, false), select(global0[_wgslsmith_index_u32(~56235u, 5u)], select(select(vec4<bool>(global1[_wgslsmith_index_u32(36850u, 14u)], true, global1[_wgslsmith_index_u32(16036u, 14u)], true), global0[_wgslsmith_index_u32(arg_1, 5u)], true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 5u)], !global1[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(arg_0.x, 1i, arg_0.x)) >= arg_0.x)));
    var_0 = Struct_1(0u, var_0.b);
    var var_1 = _wgslsmith_f_op_f32(sign(-1308f));
    let var_2 = 163f;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-975f + var_2), -1460f, any(vec4<bool>(var_0.b.x, false, true, global1[_wgslsmith_index_u32(1u, 14u)]))))))), _wgslsmith_f_op_f32(var_2 * -591f));
    return arg_0.x;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.a, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(47365u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.b, 70181u, u_input.b, 41137u)), firstTrailingBit(vec4<u32>(36322u, 22395u, u_input.a, u_input.a))), abs(min(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(24304u, 16083u, u_input.b, u_input.a)))), 5u)]);
    var var_1 = var_0.a < ~max(~(~31596u), ~_wgslsmith_clamp_u32(32039u, 30088u, 26496u));
    global0 = array<vec4<bool>, 5>();
    let var_2 = Struct_1(_wgslsmith_div_u32(4294967295u, var_0.a), vec4<bool>(true, select(!(!global1[_wgslsmith_index_u32(13348u, 14u)]), any(vec2<bool>(true, true)), false), !(true != !global1[_wgslsmith_index_u32(1u, 14u)]), any(vec3<bool>(false, var_0.b.x, false)) && (_wgslsmith_f_op_f32(min(arg_0, arg_0)) != arg_0)));
    var var_3 = var_2.b.x;
    return var_2;
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 14>();
    let var_0 = !select(vec2<bool>(false, false), !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(20471u, 14u)])), !global1[_wgslsmith_index_u32(52891u, 14u)]);
    global1 = array<bool, 14>();
    global1 = array<bool, 14>();
    global1 = array<bool, 14>();
    return func_4(-519f, vec3<i32>(countOneBits(countOneBits(-1i)), func_3(vec3<i32>(_wgslsmith_add_i32(-34033i, 5659i), func_2(-498f, vec4<f32>(440f, 142f, 937f, -1296f), vec2<f32>(-1248f, -639f), Struct_1(u_input.b, global0[_wgslsmith_index_u32(6630u, 5u)])), -2147483647i), ~u_input.b), i32(-1i) * -50985i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, ~u_input.b, ~34017u) >> (vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 36838u), vec3<u32>(60923u, u_input.a, u_input.a)), ~19235u) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, 0u, u_input.b) & vec3<u32>(0u, u_input.b, 4294967295u))), ~(~max(vec3<u32>(u_input.b, u_input.a, 1u), vec3<u32>(u_input.a, u_input.b, 0u))));
    var var_1 = func_1();
    let var_2 = vec2<u32>(u_input.b, 31226u & ~func_4(1000f, firstTrailingBit(vec3<i32>(-2147483647i, 21051i, 2454i))).a);
    var var_3 = var_1.b.xyx;
    var var_4 = var_1.b.x;
    let var_5 = vec4<i32>(firstLeadingBit(-1i), -1i, 18446i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_5.x, _wgslsmith_mod_i32(var_5.x, var_5.x & ~(-2147483647i))), 7593u, firstLeadingBit(-_wgslsmith_mult_i32(~2147483647i, -var_5.x)), ~countOneBits(var_5.x));
}

