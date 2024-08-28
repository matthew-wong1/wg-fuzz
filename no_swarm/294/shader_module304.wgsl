struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = -1163f;

var<private> global2: f32 = -1413f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, 1000f)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-global0.a));
    global0 = var_1;
    global2 = var_1.a;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + var_1.a);
    return false;
}

fn func_2() -> bool {
    global1 = global0.a;
    var var_0 = func_3(Struct_1(vec4<bool>(true, true, true, true), 10674i), all(vec2<bool>(true, true)), ~2147483647i, Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), 0i)) || false;
    let var_1 = Struct_1(select(!vec4<bool>(true, any(vec2<bool>(false, false)), true, all(vec2<bool>(false, false))), vec4<bool>(all(vec2<bool>(true, true)), (28271u ^ u_input.a) == 47349u, true, false), true), _wgslsmith_mod_i32(firstTrailingBit(select(reverseBits(1i), _wgslsmith_add_i32(21413i, 0i), true)), 1i));
    return any(var_1.a.ywx);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2128f) + -1985f)), 1265f);
    var var_0 = arg_1.b;
    var var_1 = 1u & ~u_input.a;
    var_1 = reverseBits(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a) & ~vec2<u32>(u_input.a, 929u), ~(~vec2<u32>(u_input.a, u_input.a)))));
    var var_2 = arg_1;
    return Struct_1(var_2.a, ~10732i);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_1(!select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, all(vec4<bool>(false, true, true, false))), !all(vec3<bool>(true, false, false))), firstLeadingBit((~(-33051i) << (~u_input.a % 32u)) & 99i));
    global1 = _wgslsmith_f_op_f32(1594f * -157f);
    global0 = Struct_2(_wgslsmith_f_op_f32(-327f * arg_0.x));
    var_0 = func_4(-(~(-17552i)) > -var_0.b, Struct_1(vec4<bool>(func_2(), var_0.a.x, any(var_0.a.wy), !func_2()), max(reverseBits(5181i), _wgslsmith_div_i32(abs(var_0.b), firstTrailingBit(var_0.b)))));
    var_0 = func_4(!(_wgslsmith_mult_u32(~4294967295u, u_input.a) == u_input.a), func_4(func_3(func_4(any(vec2<bool>(true, var_0.a.x)), func_4(true, Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), 9152i))), select(true, true, var_0.a.x & false), -75029i, func_4(false, Struct_1(var_0.a, var_0.b))), func_4(true, Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_mult_i32(var_0.b, var_0.b)))));
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -1426f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))))), global0.a), -834f);
    global0 = Struct_2(_wgslsmith_f_op_f32(step(global0.a, -1844f)));
    var var_0 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 21277i, -978i), vec4<i32>(-45482i, -2147483647i, 0i, -29153i)), -2147483647i << (u_input.a % 32u), _wgslsmith_mod_i32(27210i, -21840i), _wgslsmith_add_i32(-2147483647i, 4330i)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7772u), vec3<u32>(53832u, u_input.a, 10977u)), u_input.a, 1u ^ u_input.a, u_input.a) % vec4<u32>(32u))), ~(-vec4<i32>(0i, -1i, firstTrailingBit(62224i), 0i)));
    let var_1 = Struct_2(_wgslsmith_div_f32(-1321f, global0.a));
    var var_2 = !vec3<bool>(func_4(all(vec4<bool>(false, true, false, false)), func_4(false, Struct_1(vec4<bool>(false, false, false, false), var_0.x))).a.x && ((1138f >= global0.a) && any(vec2<bool>(false, false))), false, true);
    let var_3 = Struct_1(func_4(true, Struct_1(func_4(false, Struct_1(vec4<bool>(true, true, true, var_2.x), var_0.x)).a, _wgslsmith_div_i32(var_0.x << (u_input.a % 32u), func_4(var_2.x, Struct_1(vec4<bool>(var_2.x, var_2.x, true, var_2.x), var_0.x)).b))).a, (firstTrailingBit(~var_0.x) & _wgslsmith_clamp_i32(abs(var_0.x), var_0.x, -1i)) >> (~(~u_input.a) % 32u));
    var var_4 = firstLeadingBit(vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 79522u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a))), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(u_input.a, _wgslsmith_add_u32(var_4.x, ~4294967295u), _wgslsmith_sub_u32(firstLeadingBit(13828u), var_4.x)), abs(~(~vec3<u32>(var_4.x, var_4.x, 18477u)))), global0.a, vec4<i32>(-85656i, ~1i, max(var_0.x, ~select(var_3.b, 2147483647i, false)), ~(-43618i)));
}

