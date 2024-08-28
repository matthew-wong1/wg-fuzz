struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = array<bool, 6>();
    let var_0 = 1629f;
    var var_1 = vec4<bool>(all(arg_0.d.yy), any(!vec4<bool>(true, all(vec4<bool>(true, true, arg_0.c.x, true)), 6454i >= arg_0.a, false)), any(vec3<bool>(global0[_wgslsmith_index_u32(~1u, 6u)], false, true | !arg_2.c.x)), true);
    let var_2 = firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(-(i32(-1i) * -14823i), _wgslsmith_add_i32(-53847i, _wgslsmith_clamp_i32(arg_2.a, 30568i, u_input.c))), u_input.c));
    var var_3 = ~min(min(u_input.a, ~u_input.a), u_input.a);
    return ~_wgslsmith_mod_u32(firstTrailingBit(u_input.b), _wgslsmith_mult_u32(~0u, u_input.a));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32) -> vec3<i32> {
    let var_0 = 294f > arg_1;
    var var_1 = vec2<u32>(~func_3(Struct_1(1i, 1932i, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], var_0), vec3<bool>(var_0, var_0, true)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(502f, 2355f, arg_1))), Struct_1(-2147483647i, u_input.c, vec2<bool>(global0[_wgslsmith_index_u32(58504u, 6u)], true), vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-arg_1)) & u_input.b, 93598u);
    global0 = array<bool, 6>();
    var var_2 = 1000f;
    let var_3 = vec3<bool>(all(select(select(select(vec4<bool>(var_0, global0[_wgslsmith_index_u32(1u, 6u)], false, true), vec4<bool>(false, false, true, var_0), vec4<bool>(false, false, true, var_0)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_1.x, 6u)], true), vec4<bool>(true, false, true, var_0)), true), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 6u)], true, arg_1 < -230f), var_0)), true, global0[_wgslsmith_index_u32(48743u, 6u)]);
    return -vec3<i32>(_wgslsmith_add_i32(u_input.c, countOneBits(~2147483647i)), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -4298i, u_input.c), vec3<i32>(2147483647i, u_input.c, u_input.c))), firstLeadingBit(abs(-67271i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_1(arg_1.x, min(_wgslsmith_mod_i32(arg_1.x, -41621i) & _wgslsmith_dot_vec2_i32(arg_1.zy, vec2<i32>(0i, 0i)), _wgslsmith_dot_vec2_i32(arg_1.xy, vec2<i32>(arg_1.x, u_input.c)) | (2147483647i << (u_input.a % 32u))) | (abs(u_input.c) & _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 1i, 1i), select(vec3<i32>(arg_1.x, arg_1.x, 2147483647i), vec3<i32>(arg_1.x, -1i, u_input.c), true))), arg_0, select(vec3<bool>(false, arg_0.x, all(vec3<bool>(false, true, arg_0.x))), !vec3<bool>(true, all(arg_0), false), global0[_wgslsmith_index_u32(select(27718u, u_input.b, arg_0.x) << (u_input.b % 32u), 6u)]));
    var var_1 = var_0;
    var var_2 = global0[_wgslsmith_index_u32(max(113783u, abs(_wgslsmith_mult_u32(u_input.b | 0u, 1u) >> (_wgslsmith_add_u32(firstTrailingBit(4294967295u), ~u_input.b) % 32u))), 6u)];
    var var_3 = 0u;
    var_2 = true;
    return u_input.c;
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    var var_0 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.x, 0i), -2147483647i) << (0u % 32u), ~u_input.c, ~(arg_0.x << ((u_input.a ^ 0u) % 32u))), _wgslsmith_sub_i32(_wgslsmith_div_i32(func_4(vec2<bool>(true, true), func_2(711f, -601f, u_input.a)), i32(-1i) * -48710i), u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(max(~(-26079i), ~20869i), i32(-1i) * -arg_0.x, firstLeadingBit(-2147483647i)), vec3<i32>(u_input.c, select(i32(-1i) * -1i, func_2(-629f, 154f, 4294967295u).x, global0[_wgslsmith_index_u32(~45212u, 6u)]), arg_0.x)), -1i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -921f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1487f) + _wgslsmith_f_op_f32(f32(-1f) * -1320f)))) + _wgslsmith_f_op_f32(floor(943f))));
    global0 = array<bool, 6>();
    let var_2 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x >> (30071u % 32u), u_input.c, ~u_input.c, arg_0.x | 2147483647i), select(~vec4<i32>(2147483647i, u_input.c, -21086i, var_0.x), -vec4<i32>(var_0.x, 1i, var_0.x, -40813i), global0[_wgslsmith_index_u32(~u_input.a, 6u)])), -1i), 0i, !(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(87575u, 6u)], false), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], true)), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)]), vec2<bool>(true, true), vec2<bool>(false, false)), global0[_wgslsmith_index_u32(2031u, 6u)])), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 6u)], true)));
    let var_3 = 15827i >> (func_3(Struct_1(min(~arg_0.x, firstLeadingBit(var_0.x)), arg_0.x, vec2<bool>(select(false, false, global0[_wgslsmith_index_u32(u_input.b, 6u)]), true), !vec3<bool>(false, false, var_2.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, -1139f, var_1)))))), var_2, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(950f, var_1))))) % 32u);
    return (~reverseBits(~vec2<u32>(0u, u_input.b)) | vec2<u32>(~(~u_input.b), 6327u)) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.a) ^ vec2<u32>(31593u, 0u), abs(vec2<u32>(21430u, 44668u)) | vec2<u32>(u_input.b, 30588u)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstTrailingBit(vec2<i32>(-10278i, u_input.c)));
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-488f, -1397f, 762f) + vec3<f32>(527f, -348f, 280f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-540f, -214f, max(u_input.c, 1i));
}

