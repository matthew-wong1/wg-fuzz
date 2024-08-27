struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    global0 = array<vec3<bool>, 8>();
    let var_0 = arg_1;
    let var_1 = Struct_1(min(_wgslsmith_mult_vec3_i32(-max(var_0.a, var_0.a), (var_0.a & var_0.a) << (firstLeadingBit(vec3<u32>(4294967295u, arg_0, 17566u)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(arg_1.a, arg_1.a)));
    global0 = array<vec3<bool>, 8>();
    let var_2 = arg_1;
    return -((var_2.a.x | 16228i) | min(select(var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-14735i, -2147483647i, u_input.a.x, var_2.a.x), vec4<i32>(arg_1.a.x, -4548i, -36983i, 45232i)), select(false, true, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, u_input.a.x), abs(var_2.a.xx))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = u_input.b;
    global0 = array<vec3<bool>, 8>();
    let var_1 = arg_2.wyz;
    var var_2 = arg_1;
    var_2 = Struct_1(min(_wgslsmith_mult_vec3_i32(arg_1.a, (var_2.a & arg_1.a) | vec3<i32>(u_input.a.x, u_input.a.x, 0i)), vec3<i32>(~arg_1.a.x, func_3(~u_input.b, arg_1), -2147483647i)));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> vec2<bool> {
    global0 = array<vec3<bool>, 8>();
    let var_0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(func_3(~u_input.b, arg_0), _wgslsmith_mult_i32(~arg_0.a.x, arg_1), firstTrailingBit(-36513i)), -(vec3<i32>(_wgslsmith_sub_i32(arg_1, 2147483647i), countOneBits(23332i), 1i) >> (~(~vec3<u32>(arg_2.x, 55511u, 26897u)) % vec3<u32>(32u))));
    var var_1 = vec4<bool>(all(vec4<bool>(true, true, !all(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)))), any(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, any(vec2<bool>(true, true)))), select(true, false, all(select(global0[_wgslsmith_index_u32(~u_input.b, 8u)], !global0[_wgslsmith_index_u32(arg_2.x, 8u)], false))));
    var var_2 = arg_1;
    global0 = array<vec3<bool>, 8>();
    return !(!vec2<bool>(var_1.x, _wgslsmith_f_op_f32(round(-624f)) >= _wgslsmith_f_op_f32(max(-278f, -696f))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<u32>) -> vec3<i32> {
    global0 = array<vec3<bool>, 8>();
    let var_0 = func_4(func_2(Struct_1(~vec3<i32>(arg_0, arg_0, arg_0) ^ (vec3<i32>(u_input.a.x, 2147483647i, arg_0) & vec3<i32>(0i, arg_0, arg_0))), Struct_1(vec3<i32>(u_input.a.x, firstTrailingBit(-2147483647i), ~0i)), !select(arg_1, arg_1, true)), u_input.a.x, _wgslsmith_sub_vec2_u32(~vec2<u32>(10747u, arg_2.x), arg_2));
    return ~vec3<i32>(_wgslsmith_mult_i32(~(-1i), _wgslsmith_div_i32(arg_0, arg_0 ^ arg_0)), arg_0, ~_wgslsmith_div_i32(-1i, arg_0 ^ arg_0));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1004f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1262f)), -1851f))));
    global0 = array<vec3<bool>, 8>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, var_0.x)))) * vec2<f32>(264f, var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-515f * 852f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 516f)));
    var var_1 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(func_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), ~abs(vec2<u32>(78255u, 4294967295u)))));
    global0 = array<vec3<bool>, 8>();
    var var_1 = func_5(func_5(Struct_1(var_0.a)));
    var var_2 = func_5(Struct_1(-(_wgslsmith_mult_vec3_i32(vec3<i32>(33374i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, -20172i)) ^ vec3<i32>(2147483647i, var_1.a.x, -8140i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1230f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(635f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(14000u, u_input.b, 4294967295u), vec3<u32>(4294967295u, u_input.b, 50241u)) & ~_wgslsmith_mult_u32(u_input.b, 0u)), select(~vec3<u32>(u_input.b, u_input.b, u_input.b) | _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 1u) >> (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 0u, u_input.b)), vec3<u32>(firstTrailingBit(17776u >> (u_input.b % 32u)), 3179u, 119897u), true), 48605u ^ ~(~u_input.b));
}

