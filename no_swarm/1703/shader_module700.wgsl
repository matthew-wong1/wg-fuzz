struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(8663i, 2147483647i, -30078i, -14349i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = Struct_1(0i);
    var var_1 = true;
    let var_2 = 35028u;
    return 2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = firstTrailingBit(vec2<u32>(0u, _wgslsmith_add_u32(arg_2, u_input.d)));
    global0 = array<i32, 4>();
    return vec2<bool>(any(vec2<bool>(true, true)), true);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(u_input.a);
    var var_1 = func_4(Struct_1(_wgslsmith_sub_i32(func_3(~vec2<i32>(11986i, var_0.a), Struct_1(30210i), Struct_1(var_0.a), -21013i ^ global0[_wgslsmith_index_u32(24519u, 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 1u), 4u)] & (i32(-1i) * -25339i))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(551f, -133f)), _wgslsmith_f_op_f32(f32(-1f) * -1262f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1720f)), 1245f)))), abs(~67361u), Struct_1(-13663i));
    let var_2 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.a, -19849i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34069u, countOneBits(2598u), u_input.d >> (4294967295u % 32u), u_input.d), vec4<u32>(47883u, 4294967295u, u_input.d, u_input.d) | firstTrailingBit(vec4<u32>(32589u, 6383u, 4294967295u, u_input.d))), 4u)]));
    var var_3 = vec3<i32>(5351i, _wgslsmith_add_i32(-(~_wgslsmith_mod_i32(var_2.a, var_2.a)), -29398i), var_0.a);
    let var_4 = !var_1.x;
    return firstLeadingBit(func_3(var_3.zy, var_2, var_2, min(var_2.a, firstTrailingBit(9847i)) >> (min(1u, ~79361u) % 32u)));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = 1i;
    var var_1 = ~func_2();
    var_1 = global0[_wgslsmith_index_u32(u_input.d, 4u)];
    global0 = array<i32, 4>();
    var_1 = ~2147483647i;
    return global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(~(~u_input.d), u_input.d ^ _wgslsmith_clamp_u32(4294967295u, 4294967295u, 43689u)), 4294967295u), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b >> (u_input.d % 32u), 1i), vec2<i32>(-(i32(-1i) * -2147483647i), func_1(true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1078f, -812f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, -253f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 288f) * _wgslsmith_f_op_f32(select(-230f, 278f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(202f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -2401f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, -195f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(var_1.x, var_1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -417f)));
    let var_3 = 1f;
    var var_4 = 219f;
    var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1008f - -197f) * _wgslsmith_div_f32(-874f, -1090f))), -901f)), var_3));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 782f, -430f, var_2.x)) * vec4<f32>(402f, var_2.x, var_2.x, var_3)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1300f, 1000f, var_2.x, var_1.x) - vec4<f32>(-553f, var_3, -416f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, var_2.x, var_1.x, -911f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3)), var_3, -941f, var_2.x)))));
    let var_5 = Struct_1(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-(~select(select(vec3<i32>(var_0.a, global0[_wgslsmith_index_u32(31729u, 4u)], u_input.b), vec3<i32>(var_5.a, -26726i, var_0.a), true), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -13196i, var_0.a), vec3<i32>(19619i, -25073i, u_input.a)), true)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(18070u, u_input.d), vec2<u32>(u_input.d, 4585u)), _wgslsmith_mult_u32(min(_wgslsmith_mult_u32(u_input.d, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.d), vec3<u32>(748u, 4294967295u, 4294967295u))), _wgslsmith_mult_u32(min(u_input.d, 4294967295u), u_input.d)), max(1u, _wgslsmith_sub_u32(66981u, u_input.d) << (firstLeadingBit(u_input.d) % 32u))), 4u)], u_input.d);
}

