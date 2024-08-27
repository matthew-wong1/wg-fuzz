struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = 1f;
    let var_1 = abs(29833u);
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = min(select(vec4<i32>(min(u_input.a.x, min(u_input.d, -14558i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-60488i, 0i, u_input.b.x), u_input.b), reverseBits(vec3<i32>(41503i, 1i, 62860i))), -42524i, min(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.a.x)), -select(max(vec4<i32>(25724i, u_input.b.x, u_input.d, u_input.d), vec4<i32>(u_input.d, -24513i, u_input.b.x, 36512i)), ~vec4<i32>(1i, u_input.b.x, u_input.d, -75249i), arg_1), any(!select(vec2<bool>(arg_0.a, arg_1), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a)))), vec4<i32>(-1i) * -select(~vec4<i32>(u_input.a.x, -5474i, u_input.b.x, -1i), ~vec4<i32>(-1i, u_input.b.x, u_input.d, 2147483647i), true));
    var var_4 = arg_1;
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(1321f));
    var var_1 = any(vec4<bool>(false, !func_3(Struct_2(true), true), true, all(vec2<bool>(true, true))));
    var_1 = u_input.a.x < arg_0.x;
    let var_2 = Struct_3(Struct_1(u_input.c.x));
    var_1 = true;
    return var_2.a;
}

fn func_1() -> Struct_4 {
    return Struct_4(func_2(vec3<i32>(0i, i32(-1i) * -2147483647i, max(u_input.d, u_input.d ^ u_input.d))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = vec3<bool>(!select(true, any(vec3<bool>(true, false, true)), select(false, false, false)) & false, all(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), any(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(false, false, false))));
    let var_1 = Struct_3(func_2(-reverseBits(vec3<i32>(u_input.a.x, -853i, -59069i))));
    var var_2 = u_input.c.x;
    var var_3 = var_0.x;
    var var_4 = vec2<bool>(var_0.x, !(!all(vec3<bool>(true, true, true))));
    return func_1().a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    let var_0 = ~(~(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 29043u), vec4<u32>(arg_1.a, 63442u, u_input.c.x, arg_1.a)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4166u, 1u, 0u), vec4<u32>(34609u, 4294967295u, u_input.c.x, arg_1.a))) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, arg_1.a), vec2<u32>(u_input.c.x, 0u) << (vec2<u32>(arg_1.a, arg_1.a) % vec2<u32>(32u)))));
    let var_1 = Struct_2(any(!select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_2.a, arg_0.a, arg_0.a), false)));
    var var_2 = arg_2;
    var var_3 = func_1();
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(390f * _wgslsmith_f_op_f32(select(-342f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a.x > arg_3.x))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1616f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1213f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-620f, -667f)) - _wgslsmith_f_op_f32(1561f * -490f)))) - 144f) - 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(true && all(vec2<bool>(false, true)), true), vec2<bool>(all(vec2<bool>(true, false)), false));
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_u32(~(~4294967295u), abs(16952u))));
    var var_2 = _wgslsmith_f_op_f32(290f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(Struct_2(any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), func_4(func_1()), Struct_2(false), firstTrailingBit(vec3<i32>(u_input.a.x, 1i, 1i)))))));
    var_0 = !vec2<bool>(any(!(!vec3<bool>(true, var_0.x, var_0.x))), all(select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false)));
    var var_3 = var_1.a;
    var var_4 = any(vec2<bool>(false, all(vec3<bool>(all(vec2<bool>(var_0.x, false)), !var_0.x, false))));
    var var_5 = vec4<i32>(u_input.d, 0i, -1i, u_input.a.x);
    var var_6 = var_5.x | u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, var_5.x, u_input.a, var_5.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(877f)) - -502f) * _wgslsmith_f_op_f32(f32(-1f) * -775f))));
}

