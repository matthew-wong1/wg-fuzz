struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<u32> {
    global0 = Struct_1(!(global1.b.x == _wgslsmith_f_op_f32(global1.a + global1.b.x)), -firstLeadingBit(max(global0.b, vec3<i32>(24120i, 10555i, -5357i) >> (vec3<u32>(4294967295u, arg_0.x, global1.c.x) % vec3<u32>(32u)))), ~0u);
    let var_0 = min(select(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, 2147483647i, u_input.a, -585i), vec4<i32>(global0.b.x, 70520i, global0.b.x, global0.b.x)), global0.b.x, -33756i), _wgslsmith_clamp_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.a, -21214i, u_input.a)), vec3<i32>(~7537i, ~(-33659i), u_input.a), vec3<i32>(2147483647i, min(-1i, 42199i), ~2147483647i)), true), ~(~firstLeadingBit(global0.b)));
    global1 = Struct_3(-1108f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(global1.b)), vec4<f32>(1904f, _wgslsmith_f_op_f32(f32(-1f) * -1194f), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -370f)))), global1.c);
    global1 = Struct_3(646f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-829f - global1.a)))), _wgslsmith_div_f32(227f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, 282f))), global1.a, global1.a), global1.c);
    let var_1 = Struct_4(global0.a, (-_wgslsmith_add_i32(37009i, 1i) << (_wgslsmith_clamp_u32(global0.c ^ global0.c, 23408u, 0u) % 32u)) | var_0.x, Struct_1(!select(false, false || global0.a, true), vec3<i32>(-global0.b.x & -2147483647i, -2147483647i, -1i), 34281u), global0.c, -453f);
    return select(_wgslsmith_add_vec4_u32(global1.c, vec4<u32>(_wgslsmith_clamp_u32(1u, 0u, var_1.c.c), ~0u, 18430u, 0u)) | (~(~vec4<u32>(var_1.c.c, var_1.c.c, 4294967295u, global0.c)) >> (max(global1.c, abs(global1.c)) % vec4<u32>(32u))), global1.c << (global1.c % vec4<u32>(32u)), any(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), global0.a))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = countOneBits(firstTrailingBit(-6425i));
    global0 = Struct_1(true, ~firstTrailingBit(global0.b), arg_1.c.x);
    var var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(118275u, reverseBits(86393u)), global0.c), 117438u);
    return 0u;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    var var_0 = global1.b;
    global1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1245f) + _wgslsmith_f_op_f32(ceil(1139f))), global1.b, _wgslsmith_add_vec4_u32(~vec4<u32>(27312u, arg_3.x, arg_2.c, global1.c.x), arg_0.c) ^ ~(~vec4<u32>(global0.c, arg_3.x, 43061u, 36253u) >> (arg_0.c % vec4<u32>(32u))));
    return abs(abs(func_4(select(select(vec2<bool>(false, true), vec2<bool>(arg_2.a, true), vec2<bool>(true, arg_1.x)), !vec2<bool>(true, global0.a), var_0.x == -183f), Struct_3(-1646f, _wgslsmith_f_op_vec4_f32(-global1.b), func_3(arg_0.c.yw)), global0.a)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.b.x, -111f))) * _wgslsmith_f_op_f32(-global1.a)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(round(global1.a)));
    let var_1 = true;
    return _wgslsmith_add_u32(~(_wgslsmith_mod_u32(global1.c.x, reverseBits(1u)) & _wgslsmith_add_u32(~global0.c, global0.c)), ~reverseBits(_wgslsmith_sub_u32(0u, func_2(Struct_3(global1.a, global1.b, vec4<u32>(global0.c, global0.c, global0.c, global1.c.x)), vec2<bool>(true, false), Struct_1(true, vec3<i32>(arg_1.x, global0.b.x, arg_1.x), global0.c), global1.c.yzy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, ~global0.b.x != u_input.a), !vec3<bool>(all(!vec4<bool>(true, global0.a, true, true)), true, global0.a), !(!global0.a));
    var_0 = vec3<bool>((func_1(vec3<i32>(12882i, global0.b.x, u_input.a) >> (vec3<u32>(global0.c, 67257u, global1.c.x) % vec3<u32>(32u)), vec4<i32>(u_input.a, global0.b.x, 0i, -25195i) & vec4<i32>(-1i, global0.b.x, u_input.a, u_input.a)) > global1.c.x) && false, var_0.x || global0.a, var_0.x);
    var var_1 = i32(-1i) * -firstTrailingBit(-14389i);
    var var_2 = global1.b.wxx;
    let var_3 = vec2<i32>(9273i, -1i);
    var var_4 = Struct_2(var_2.x);
    let var_5 = select(!select(select(select(var_0.yx, vec2<bool>(global0.a, false), var_0.yz), var_0.xy, var_4.a <= global1.a), vec2<bool>(!var_0.x, true), var_0.x & all(vec3<bool>(global0.a, global0.a, true))), vec2<bool>(all(vec3<bool>(any(var_0.zz), var_0.x, u_input.a < -2147483647i)), var_0.x), false);
    global1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.a, _wgslsmith_f_op_f32(exp2(var_2.x))) + var_4.a), vec4<f32>(_wgslsmith_f_op_f32(abs(var_4.a)), -316f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -765f), all(vec3<bool>(var_0.x, false, false)))), _wgslsmith_f_op_f32(-1f)), global1.c);
    let var_6 = select(vec2<i32>(var_3.x, -9882i), min(~(~global0.b.zy), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, global0.b.x), vec3<i32>(var_3.x, 19404i, global0.b.x)))) & ~(-var_3), !any(var_5));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(global0.c, 0u)) & vec2<u32>(4294967295u, _wgslsmith_mod_u32(global1.c.x, func_4(vec2<bool>(var_0.x, true), Struct_3(-1418f, global1.b, vec4<u32>(19474u, 2552u, global0.c, 47383u)), false))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, firstLeadingBit(func_4(vec2<bool>(true, true), Struct_3(864f, vec4<f32>(global1.b.x, var_4.a, -1832f, var_2.x), vec4<u32>(0u, 0u, global1.c.x, global1.c.x)), false))), vec2<u32>(~countOneBits(1u), 18182u)), vec2<i32>(u_input.a, reverseBits(var_6.x)), firstTrailingBit(global1.c.x));
}

