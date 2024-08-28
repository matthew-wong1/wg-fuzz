struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = arg_2;
    let var_2 = arg_2;
    let var_3 = min(u_input.a, -(~(-u_input.a) & 1i));
    let var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_3, _wgslsmith_clamp_i32(-1i, 166i, var_3)), u_input.a, var_3, u_input.a), vec4<i32>(reverseBits(-1i), -_wgslsmith_sub_i32(var_3, var_3), -(~38792i), -48656i)) ^ -_wgslsmith_sub_i32(max(u_input.a << (4294967295u % 32u), u_input.a), _wgslsmith_mult_i32(-9101i, u_input.a) & 1i);
    return true;
}

fn func_2() -> u32 {
    var var_0 = true;
    let var_1 = vec3<bool>(!(!func_3(vec2<f32>(-580f, 590f), true, Struct_1(u_input.d.x, vec2<bool>(true, true), true))), true, false);
    var_0 = !func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(-1634f, 631f, false)), _wgslsmith_f_op_f32(abs(1101f))))), any(vec3<bool>(true, false, true)), Struct_1(4294967295u, vec2<bool>(all(var_1), var_1.x), var_1.x));
    let var_2 = vec2<u32>(~(~firstTrailingBit(0u)), u_input.d.x);
    var_0 = true;
    return var_2.x;
}

fn func_1() -> u32 {
    let var_0 = u_input.a;
    var var_1 = vec3<u32>(func_2() ^ 33055u, firstTrailingBit(0u), abs(96953u | ~u_input.e.x)) ^ (u_input.e << (u_input.e % vec3<u32>(32u)));
    var var_2 = 1i;
    var var_3 = select(!vec3<bool>(any(vec3<bool>(false, false, true)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.a, u_input.a), vec4<i32>(28717i, u_input.a, -46569i, u_input.a)) <= -48140i), vec3<bool>(any(vec2<bool>(false, false)), max(_wgslsmith_sub_u32(85283u, 37819u), abs(1u)) <= _wgslsmith_add_u32(firstLeadingBit(1u), ~u_input.e.x), true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return max(u_input.e.x, 1u);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1698f, -369f)) + -1771f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-617f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2329f - -1247f)), _wgslsmith_f_op_f32(714f + -553f), !any(vec2<bool>(true, arg_3.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(579f, 135f, arg_2.c)))))));
    var var_1 = vec3<bool>(var_0.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1743f)), arg_3.c, any(select(!vec3<bool>(arg_2.b.x, true, arg_2.c), !select(vec3<bool>(false, true, false), vec3<bool>(arg_2.c, arg_3.b.x, arg_2.b.x), false), !select(vec3<bool>(arg_2.c, arg_2.b.x, false), vec3<bool>(false, true, arg_3.c), arg_3.b.x))));
    var var_2 = arg_3;
    var_1 = vec3<bool>(!var_1.x && (reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-62512i, arg_1, 1i), vec3<i32>(-12054i, -2147483647i, arg_1))) > ~1i), true, !arg_3.c);
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), 629f, var_1.x)));
    return firstLeadingBit(vec2<u32>(~1u, func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, min(0u, 1u)), u_input.d.zy);
    var_0 = _wgslsmith_add_vec2_u32(u_input.d.xy, ~_wgslsmith_sub_vec2_u32(u_input.e.zz, u_input.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-542f, 1109f, -1055f, 1000f), vec4<f32>(757f, 770f, -1314f, 758f), vec4<bool>(true, true, false, false))), vec4<f32>(166f, -130f, -1533f, 1682f))))))));
    var_0 = func_4(-42904i, u_input.a, Struct_1(func_1(), vec2<bool>(!(var_1.x >= var_1.x), true), all(vec2<bool>(func_3(var_1.wy, false, Struct_1(u_input.c, vec2<bool>(false, false), false)), true))), Struct_1(~(~u_input.c), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), any(vec3<bool>(true, var_1.x >= 1047f, true))));
    let var_2 = ~vec3<i32>(-1i, 1i, _wgslsmith_sub_i32(~(~0i), _wgslsmith_mod_i32(u_input.a, -21547i)));
    var var_3 = abs(-countOneBits(i32(-1i) * -u_input.a));
    let var_4 = Struct_1(~37903u, !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, true)), true), false), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, any(vec3<bool>(true, false, true))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yx + _wgslsmith_f_op_vec2_f32(max(var_1.wx, vec2<f32>(1f, 1f))))), _wgslsmith_dot_vec4_u32(max(vec4<u32>(16855u, var_4.a, 55020u, 40421u), vec4<u32>(var_0.x, 4294967295u, var_4.a, var_4.a)) & u_input.d, ~firstLeadingBit(vec4<u32>(0u, 47900u, 7443u, u_input.d.x))), -2263f, var_4.a, ~(-(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, var_2.x, var_2.x))));
}

